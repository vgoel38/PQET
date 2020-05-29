import sys
import math
from postgres_cost_model import *
from init import *
from cost_parameters import *
from metadata import *
from index_scan_predictor.index_scan_predictor import *
from nestloop_index_predictor.nestloop_index_predictor import *
import numpy as np

#-------------------Supporting Methods---------------------------
#INCOMPLETE
def extract_rel_col(col):
	print(col)
	return col.split('.')[0].strip(), col.split('.')[1].strip()

def find_corr(cols):
	corr = []
	for col in cols:
		rel_name, col_name = extract_rel_col(col)
		if rel_name in CORR_MD and col_name in CORR_MD[rel_name]:
			corr.append(CORR_MD[rel_name][col_name])
		else:
			print(col, 'not found in CORR_MD! Default value of 0.5 applied!')
			corr.append(0.5)
	return corr

def find_dup(cols):
	dup = []
	for col in cols:
		rel_name, col_name = extract_rel_col(col)
		if rel_name in DUP_MD and col_name in DUP_MD[rel_name]:
			dup.append(DUP_MD[rel_name][col_name])
		else:
			print(col, 'not found in DUP_MD! Default value of 0.5 applied!')
			dup.append(0.5)
	return dup

def find_att_values(node, col):
	relname, colname = extract_rel_col(col)
	low = int((MIN_MD[relname])[colname])
	high = int((MAX_MD[relname])[colname])

	key = ''
	if node['Node Type'] == 'Seq Scan':
		key = 'Filter'
	elif node['Node Type'] == 'Index Scan':
		key = 'Index Cond'
	else:
		print("unidentified node being looked for attributes")

	if key in node:
		if '>=' in node[key]:
			try:
				low = ((node[key].split('>='))[1].split(')'))[0]
			except:
				low = ((node[key].split('>='))[1].split(' '))[0]
		elif '>' in node[key]:
			try:
				low = ((node[key].split('>'))[1].split(')'))[0]
			except:
				low = ((node[key].split('>'))[1].split(' '))[0]
			low = int(low)+1
		if '<=' in node[key]:
			try:
				high = ((node[key].split('<='))[1].split(')'))[0]
			except:
				high = ((node[key].split('<='))[1].split(' '))[0]
		elif '<' in node[key]:
			try:
				high = ((node[key].split('<'))[1].split(')'))[0]
			except:
				high = ((node[key].split('<'))[1].split(' '))[0]
			high = int(high)-1
	return int(low), int(high)

def find_left_col(node):
	return node['Index Cond'].split('=')[1].split(')')[0].strip()

def find_index_col(node):
	relname = node['Relation Name']
	if 'pkey' in node['Index Name']:
		return 'id'
	elif relname in node['Index Name']:
		return node['Index Name'].split('_'+relname)[0]
	else:
		print('Unable to find index col')

def revise_corr(node):
	if node['Node Type'] == 'Seq Scan':
		return
	elif node['Node Type'] == 'Index Scan':
		index_col = find_index_col(node)
		for col in REL_MD[node['Relation Name']]:
			if col != index_col:
				CORR_MD[node['Relation Name']][col] *= CORR_MD[node['Relation Name']][index_col]
				CORR_MD[ALIAS_MD[node['Relation Name']]][col] *= CORR_MD[ALIAS_MD[node['Relation Name']]][index_col]
		CORR_MD[node['Relation Name']][index_col] = 1
		CORR_MD[ALIAS_MD[node['Relation Name']]][index_col] = 1

def revise_dup(node):
	if node['Node Type'] == 'Seq Scan':
		return
	elif node['Node Type'] == 'Index Scan':
		return
#----------------------------------------------------------------

#---------------------Main Method---------------------------------
def predictions(node, parent_node, query):
	#Seq Scan
	if node['Node Type'] == 'Seq Scan':
		if node['Actual Loops'] > 1:
			print('ERROR! Seq scan has multiple loops! CANNOT Predict')
		unfiltered_input_card = node['Actual Rows']
		if 'Rows Removed by Filter' in node:
			unfiltered_input_card += node['Rows Removed by Filter']
		return seq_scan(node['Shared Read Blocks'], unfiltered_input_card, node['Actual Rows'], node['Actual Loops'] , find_num_preds(node))
	
	#Index Scan
	elif node['Node Type'] == 'Index Scan':
		return index_scan(node, parent_node)

	#Materalize
	elif node['Node Type'] == 'Materialize':
		if node['Plans'][0]['Actual Loops'] > 1:
			print('ERROR! Child node of Materialize has multiple loops: ', node['Node Type'])
		if node['Actual Loops'] > 1 and parent_node['Actual Loops'] > 1:
			print('ERROR! Parent node of Materialze also has multiple loops: ', node['Node Type'])
		is_unique = 0
		if node['Parent Relationship'] == 'Inner':
			is_unique = find_if_unique(node['Plans'][0], parent_node)
		return mat_rescan(node['Plans'][0]['Actual Rows'],  node['Actual Loops'], parent_node['Actual Rows'] * parent_node['Actual Loops'], is_unique)

	#Nested Loop Join
	elif node['Node Type'] == 'Nested Loop':
		outer_rel_card, inner_rel_card = find_join_children_cards(node)
		if node['Actual Loops'] > 1:
			print('ERROR! NLJ has multiple loops!')
		is_unique = 0
		if node['Plans'][1]['Node Type'] == 'Materialize':
			is_unique = find_if_unique(node['Plans'][1]['Plans'][0], node)
		return nlj(outer_rel_card, inner_rel_card, node['Actual Rows'] * node['Actual Loops'], find_num_preds(node), is_unique)

	#Sort
	elif node['Node Type'] == 'Sort':
		if node['Plans'][0]['Actual Loops'] > 1:
			print('ERROR! Child of sort has multiple loops!')
		
		sort_cols = node['Sort Key']
		if parent_node == {} or parent_node['Node Type'] == 'Aggregate':
			for i in range(len(sort_cols)):
				sort_cols[i] = node['Plans'][0]['Relation Name'] + '.' + sort_cols[i]
			return sort(find_corr(sort_cols), find_dup(sort_cols), node['Plans'][0]['Actual Rows'], len(sort_cols), 0)
		else:
			if parent_node['Actual Loops'] > 1:
				print('ERROR! Parent of Sort has multiple loops!')
			if node['Parent Relationship'] == 'Outer':
				return sort(find_corr(sort_cols), find_dup(sort_cols), node['Plans'][0]['Actual Rows'], len(sort_cols), 0)
			elif node['Parent Relationship'] == 'Inner':
				return sort(find_corr(sort_cols), find_dup(sort_cols), node['Plans'][0]['Actual Rows'], len(sort_cols), parent_node['Actual Rows'])
			else:
				print('sort node parent relationship unidentified')

	#Merge Join
	elif node['Node Type'] == 'Merge Join':
		outer_rel_card, inner_rel_card = find_join_children_cards(node)
		if node['Actual Loops'] > 1:
			print('ERROR! SMJ has multiple loops!')
		return smj(outer_rel_card, inner_rel_card, find_num_preds(node), node['Actual Rows'] * node['Actual Loops'])

	#Group By
	elif node['Node Type'] == 'Aggregate':
		if node['Plans'][0]['Actual Loops'] > 1:
			print('ERROR! group by child operator has multiple loops!')
		if node['Actual Loops'] > 1:
			print('ERROR! group by operator has multiple loops!')
		num_avg_cols, num_other_cols = find_num_agg_cols(query)
		return groupby(node['Strategy'], node['Plans'][0]['Actual Rows'], node['Actual Rows'], len(node['Group Key']), num_avg_cols, num_other_cols, find_num_preds(node))
		
	#ERROR
	else:
		print("ERROR! Node not identified: ", node['Node Type'])
		return 0.1
#-----------------------------------------------------------------


#--------------------Operator Cost Models--------------------------------

#Sequential Scan
#INCOMPLETE
def seq_scan(num_pages, total_input_card, filtered_input_card, num_loops, num_filters):
	return pg_seq_scan(num_pages, total_input_card, filtered_input_card, num_loops, num_filters)


#Index Scan
def index_scan(node, parent_node):
	if parent_node == {}:
		col = find_index_col(node)
		print(col)
		path = 'index_scan_predictor/' + node['Relation Name'] + '/' + col + '/'
		attStart, attEnd = find_att_values(node, node['Relation Name']+'.'+col)
		predTime, predCard = index_scan_predict(path, attStart, attEnd)
		return predTime
	elif node['Parent Relationship'] == 'Outer' or parent_node['Node Type'] == 'Merge Join':
		col = find_index_col(node)
		path = 'index_scan_predictor/' + node['Relation Name'] + '/' + col + '/'
		attStart, attEnd = find_att_values(node, node['Relation Name']+'.'+col)
		predTime, predCard = index_scan_predict(path, attStart, attEnd)
		return predTime
	else:
		leftcol = find_left_col(node)
		rightcol = find_index_col(node)
		leftCorr = find_corr([leftcol])[0]
		leftDup = find_dup([leftcol])[0]
		path = 'index_scan_predictor/' + node['Relation Name'] + '/' + rightcol + '/'
		attStart, attEnd = find_att_values(parent_node['Plans'][0], leftcol)

		timeInIsolation, cardInIsolation = index_scan_predict(path, attStart, attEnd)
		timeInIsolation = timeInIsolation * (1 - leftDup)
		timeInIsolation += parent_node['Plans'][0]['Actual Rows'] * leftDup * TIME_PER_DUPLICATE_TUPLE

		path = 'nestloop_index_predictor/' + node['Relation Name'] + '/' + rightcol + '/'
		timeInJoin = nestloop_index_scan_predict([parent_node['Plans'][0]['Actual Rows']*(1 - leftDup)], [parent_node['Actual Rows']], path)
		if parent_node['Actual Loops'] > 1:
			print('Parent Node of Index Scan has multiple loops!')

		return timeInIsolation * leftCorr + timeInJoin * (1 - leftCorr)

#Materalisation with Rescan
def mat_rescan(input_card, num_loops, parent_output_card, is_unique):
	if not is_unique:
		return NLJ_RESCAN_MAT_COST * input_card * num_loops
	else:
		if num_loops - parent_output_card < 0:
			print('ERROR! output cardinality more than inner relation cardinality: ', node['Node Type'])
		return NLJ_RESCAN_MAT_COST * ((num_loops - parent_output_card) * input_card + parent_output_card * input_card / 2)


#Nested Loop Join
def nlj(outer_rel_card, inner_rel_card, output_card, num_join_preds, is_unique):

	if not is_unique:
		processing_cost = NLJ_PROCESSING_COST * inner_rel_card * outer_rel_card
		predicate_evaluation_cost = JOIN_PRED_EVAL_COST * num_join_preds * inner_rel_card * outer_rel_card
		output_cost = CPU_TUPLE_COST * output_card
		return processing_cost + predicate_evaluation_cost + output_cost
	else:
		processing_cost = NLJ_PROCESSING_COST * ((outer_rel_card - output_card) * inner_rel_card + output_card * inner_rel_card / 2)
		predicate_evaluation_cost = num_join_preds * JOIN_PRED_EVAL_COST *((outer_rel_card - output_card) * inner_rel_card + output_card * inner_rel_card / 2)
		output_cost = CPU_TUPLE_COST * output_card
		return processing_cost + predicate_evaluation_cost + output_cost


#Sort
def sort_single_col(corr, dup, input_card):
	scan_cost = CPU_TUPLE_COST * input_card
	comparison_cost = SORT_COMPARISON_COST * input_card * math.log(input_card, 2)
	moving_cost = (1 - (2 * corr + 3 * dup) / 5) * SORT_MOVING_COST * input_card * math.log(input_card, 2)

	return scan_cost + comparison_cost + moving_cost

def sort(corr, dup, input_card, num_cols, parent_output_card):

	total_cost = 0
	current_dup = 1
	current_corr = 1

	for i in range(num_cols):
		total_cost += current_dup * sort_single_col(current_corr * corr[i], dup[i], input_card)
		current_corr = current_corr * corr[i]
	
	output_cost = CPU_TUPLE_COST * parent_output_card
	
	if max(parent_output_card - input_card, 0) == 0: 
		return total_cost + output_cost
	else:
		return total_cost + SORT_RESCAN_NONMAT_COST * max(parent_output_card - input_card, 0)


#Merge Join
def smj(outer_rel_card, inner_rel_card, num_join_preds, join_card):

	rescan_cost = CPU_TUPLE_COST * (outer_rel_card + inner_rel_card)
	join_pred_eval_cost = JOIN_PRED_EVAL_COST * num_join_preds * join_card
	smj_processing_cost = SMJ_PROCESSING_COST * join_card
	output_cost = CPU_TUPLE_COST * join_card
	extra_processing_cost = join_card/(outer_rel_card + inner_rel_card) * SMJ_EXTRA_PROCESSING_COST

	return rescan_cost + join_pred_eval_cost + smj_processing_cost + output_cost + extra_processing_cost


#INCOMPLETE
def hash_join(outer_card, inner_card, num_join_preds, join_card):

	#postgres_cost = (cpu_operator_cost * num_join_preds + cpu_tuple_cost) * inner_path_rows + cpu_operator_cost * num_join_preds * outer_path_rows	

	hash_cost = 0.000293683 * (inner_card + outer_card)
	join_pred_eval = cpu_operator_cost * num_join_preds * join_card
	output = cpu_tuple_cost * join_card
	
	return hash_cost + join_pred_eval + output


#GROUP BY WITH AGG
def groupby(strategy, input_card, output_card, num_groups_cols, num_avg_cols, num_other_cols, num_filters):
	
	comparison_cost = CPU_OPERATOR_COST * num_groups_cols * input_card
	aggregation_cost = (2 * CPU_OPERATOR_COST * num_avg_cols +  CPU_OPERATOR_COST * num_other_cols) * input_card
	filter_cost = CPU_OPERATOR_COST * num_filters * input_card
	output_cost = CPU_TUPLE_COST * output_card
	
	if strategy == 'Sorted':
		return comparison_cost + aggregation_cost + filter_cost + output_cost
	elif strategy == 'Hashed':
		hashing_cost = HASHING_COST * input_card
		return comparison_cost + aggregation_cost + filter_cost + output_cost + hashing_cost
	else:
		print('Agg Strategy unknown!')

if __name__ == "__main__":

	print(nlj(5000, 5009, 3125, 1, 0))

