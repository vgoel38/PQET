import sys
import math
from cost_parameters import *
from metadata import *


#--------The following are a few rules of thumb for joins:----------------------------
# Nested loop joins are preferred if one of the sides of the join has few rows. Nested loop joins are also used as the only option if the join condition does not use the equality operator.
# Hash Joins are preferred if the join condition uses an equality operator and both sides of the join are large and the hash fits into work_mem.
# Merge Joins are preferred if the join condition uses an equality operator and both sides of the join are large, but can be sorted on the join condition efficiently (for example, if there is an index on the expressions used in the join column).
#---------------------------------------------------------------------------

#----------------------Supporting methods-------------------------------------

#finds number of predicate conditions for a given node
def find_num_preds(node):

	if node == {}:
		return 0

	pred = ""

	if 'Filter' in node:
		pred = node['Filter']
	elif node['Node Type'] == 'Nested Loop' and 'Join Filter' in node:
		pred = node['Join Filter']
	elif node['Node Type'] == 'Merge Join' and 'Merge Cond' in node:
		pred = node['Merge Cond']
	#ADD FOR HASH JOIN
	else:
		return 0
	
	return pred.count('AND') + pred.count('OR') + 1

#INCOMPLETE
def find_if_unique(node, parent_node):

	if find_num_preds(parent_node) > 1:
		print('ERROR! Number of join columns more than one! Dont know how to process uniqueness!')
	elif node['Relation Name'] in UNIQUE_ATTRIBUTES_MD:
		joining_col = ''
		if parent_node['Node Type'] == 'Nested Loop':
			try:
				joining_col = parent_node['Join Filter'].split(node['Alias']+'.')[1].split(')')[0]
			except:
				joining_col = parent_node['Join Filter'].split(node['Alias']+'.')[1].split(' ')[0]
		elif parent_node['Node Type'] == 'Merge Join':
			try:
				joining_col = parent_node['Merge Cond'].split(node['Alias']+'.')[1].split(')')[0]
			except:
				joining_col = parent_node['Merge Cond'].split(node['Alias']+'.')[1].split(' ')[0]
		else:
			print('ERROR! node not identified in find_if_unique!')
		for col in UNIQUE_ATTRIBUTES_MD[node['Relation Name']]:
			if col == joining_col:
				return 1
	return 0

def find_join_children_cards(node):
	outer_rel_card = node['Plans'][0]['Actual Rows']
	inner_rel_card = 0

	if node['Node Type'] == 'Nested Loop':
		if node['Plans'][1]['Node Type'] == 'Materialize':
			inner_rel_card = node['Plans'][1]['Plans'][0]['Actual Rows']
		else:
			inner_rel_card = node['Plans'][1]['Actual Rows'] * node['Plans'][1]['Actual Loops']
	elif node['Node Type'] == 'Merge Join':
		if node['Plans'][1]['Node Type'] == 'Sort':
			inner_rel_card = node['Plans'][1]['Plans'][0]['Actual Rows']
		else:
			inner_rel_card = node['Plans'][1]['Actual Rows'] * node['Plans'][1]['Actual Loops']
	
	return outer_rel_card, inner_rel_card

def find_num_agg_cols(query):
	query = query.lower()
	query = query.split('from')[0]
	num_avg_cols = query.count('avg')
	num_other_cols = query.count('count') + query.count('sum') + query.count('min') + query.count('max')

	return num_avg_cols, num_other_cols
#-----------------------------------------------------------------------------

#---------------------Main Method--------------------------------------------
def postgres_cost_model(node, parent_node, query):

	print(node['Node Type'])
	if node['Node Type'] == 'Seq Scan' or node['Node Type'] == 'Index Scan':
		print(node['Relation Name'])
	
	#Seq Scan
	if node['Node Type'] == 'Seq Scan':
		if node['Actual Loops'] > 1:
			print('ERROR! Seq scan has multiple loops!')
		unfiltered_input_card = node['Actual Rows']
		if 'Rows Removed by Filter' in node:
			unfiltered_input_card += node['Rows Removed by Filter']
		# is_unique = 0
		# parent_rows = 0
		# if parent_node != {} and node['Parent Relationship'] == 'Inner':
		# 	is_unique = find_if_unique(node, parent_node)
		# 	parent_rows = parent_node['Actual Rows']
		return pg_seq_scan(node['Shared Read Blocks'], unfiltered_input_card, node['Actual Rows'], node['Actual Loops'], find_num_preds(node))
	
	#Index Scan
	elif node['Node Type'] == 'Index Scan':
		return pg_index_scan(node, parent_node)

	#Materalize
	elif node['Node Type'] == 'Materialize':
		if node['Plans'][0]['Actual Loops'] > 1:
			print('ERROR! Child node of Materialize has multiple loops: ', node['Node Type'])
		if node['Actual Loops'] > 1 and parent_node['Actual Loops'] > 1:
			print('ERROR! Parent node of Materialze also has multiple loops: ', node['Node Type'])
		is_unique = 0
		if node['Parent Relationship'] == 'Inner':
			if 'Scan' in node['Plans'][0]['Node Type']:
				is_unique = find_if_unique(node['Plans'][0], parent_node)
		return pg_mat_rescan(node['Plans'][0]['Actual Rows'], node['Plans'][0]['Actual Rows'] * node['Plans'][0]['Plan Width'], node['Actual Loops'], parent_node['Actual Rows'] * parent_node['Actual Loops'], is_unique)

	#Nested Loop Join
	elif node['Node Type'] == 'Nested Loop':
		outer_rel_card, inner_rel_card = find_join_children_cards(node)
		if node['Actual Loops'] > 1:
			print('ERROR! NLJ has multiple loops!')
		is_unique = 0
		if node['Plans'][1]['Node Type'] == 'Materialize':
			if 'Scan' in node['Plans'][1]['Plans'][0]['Node Type']:
				is_unique = find_if_unique(node['Plans'][1]['Plans'][0], node)
		if node['Plans'][1]['Node Type'] == 'Index Scan':
			return pg_nlj(node['Actual Rows'] * node['Actual Loops'], 1, node['Actual Rows'] * node['Actual Loops'], find_num_preds(node), is_unique)
		return pg_nlj(outer_rel_card, inner_rel_card, node['Actual Rows'] * node['Actual Loops'], find_num_preds(node), is_unique)

	#Sort
	elif node['Node Type'] == 'Sort':
		if node['Plans'][0]['Actual Loops'] > 1:
			print('ERROR! Child of sort has multiple loops!')
		if parent_node == {}:
			if node['Sort Method'] == 'quicksort':
				return pg_sort('Outer', node['Plans'][0]['Actual Rows'], 0)
			else:
				return pg_ext_sort(node['Parent Relationship'], node['Plans'][0]['Actual Rows'], node['Plans'][0]['Actual Rows']*node['Plan Width'], 0)
		else: 
			if parent_node['Actual Loops'] > 1:
				print('ERROR! Parent of Sort has multiple loops!')
			if node['Sort Method'] == 'quicksort':
				return pg_sort(node['Parent Relationship'], node['Plans'][0]['Actual Rows'], parent_node['Actual Rows'] * parent_node['Actual Loops'])
			else:
				return pg_ext_sort(node['Parent Relationship'], node['Plans'][0]['Actual Rows'], node['Plans'][0]['Actual Rows']*(node['Plan Width']+30), parent_node['Actual Rows'] * parent_node['Actual Loops'])

	#Merge Join
	elif node['Node Type'] == 'Merge Join':
		outer_rel_card, inner_rel_card = find_join_children_cards(node)
		return pg_smj(outer_rel_card, inner_rel_card, find_num_preds(node), node['Actual Rows'] * node['Actual Loops'])
	
	#Hash Join
	elif node['Node Type'] == 'Hash Join':
		#INCOMPLETE
			print('Hash Join')

	#Group By
	elif node['Node Type'] == 'Aggregate':
		if node['Plans'][0]['Actual Loops'] > 1:
			print('ERROR! group by child operator has multiple loops!')
		if node['Actual Loops'] > 1:
			print('ERROR! group by operator has multiple loops!')
		num_avg_cols, num_other_cols = find_num_agg_cols(query)
		num_groups_cols = 0
		if 'Group Key' in node:
			num_groups_cols = len(node['Group Key'])
		return pg_groupby(node['Plans'][0]['Actual Rows'], node['Actual Rows'], num_groups_cols, num_avg_cols + num_other_cols, find_num_preds(node))
	
	#ERROR
	else:
		print("ERROR! Node not identified: ", node['Node Type'])
		return 0.1
#----------------------------------------------------------------------------

#--------------------Operator cost models----------------------------------
#CHECK "UNIQUE MODELS FOR ACCURACY; FUZZ FACTOR IS FUZZY


#Sequential Scan
def pg_seq_scan(num_pages, total_input_card, filtered_input_card, num_loops, num_filters):
	scan_cost = RAND_PAGE_COST + SEQ_PAGE_COST * max(num_pages-1,0)
	cpu_cost = (CPU_TUPLE_COST + CPU_OPERATOR_COST * num_filters) * total_input_card

	# if num_loops > 1 and is_unique:
		# if num_loops - parent_output_card < 0:
			# print('ERROR! output cardinality more than inner relation cardinality: ', node['Node Type'])
		# return scan_cost + cpu_cost + CPU_TUPLE_COST * ((num_loops - parent_output_card) * filtered_input_card + parent_output_card * filtered_input_card / 2)
	# else:
	return scan_cost + cpu_cost + CPU_TUPLE_COST * filtered_input_card * num_loops

#index scan
#INCOMPLETE
def pg_index_scan(node, parent_node):
	if node['Actual Loops'] == 1:
		try:
			return float(node['Total Cost'])
			# return float(node['Total Cost']) * float(parent_node['Actual Rows']) * float(parent_node['Actual Loops']) / float(node['Plan Rows'])
		except:
			print('unable to find postgres index scan cost')
			return 0
	else:
		try:
			return float(node['Total Cost']) * float(parent_node['Actual Rows']) * float(parent_node['Actual Loops']) / float(node['Plan Rows'])
		except:
			print('unable to find postgres index scan cost')
			return 0

#Materalize with rescan
def pg_mat_rescan(input_card, input_bytes, num_loops, parent_output_card, is_unique):
	materialisation_cost = (2 * CPU_OPERATOR_COST) * input_card

	if input_bytes > 10*1024*1024:
		BLCKSZ = 8192
		num_pages = int(input_bytes / BLCKSZ)
		materialisation_cost += SEQ_PAGE_COST * num_pages
		print("external materialisation")

	if not is_unique:
		return materialisation_cost + CPU_OPERATOR_COST * input_card * num_loops
	else:
		if num_loops - parent_output_card < 0:
			print('ERROR! output cardinality more than inner relation cardinality: ', node['Node Type'])
		return materialisation_cost + CPU_OPERATOR_COST * ((num_loops - parent_output_card) * input_card + parent_output_card * input_card / 2)


#Nested Loop Join
def pg_nlj(outer_rel_card, inner_rel_card, output_card, num_join_preds, is_unique):
	
	if not is_unique:
		processing_cost = CPU_TUPLE_COST * inner_rel_card * outer_rel_card
		predicate_evaluation_cost = CPU_OPERATOR_COST * num_join_preds * inner_rel_card * outer_rel_card
		return processing_cost + predicate_evaluation_cost
	else:
		processing_cost = CPU_TUPLE_COST * ((outer_rel_card - output_card) * inner_rel_card + output_card * inner_rel_card / 2)
		predicate_evaluation_cost = num_join_preds * CPU_OPERATOR_COST * ((outer_rel_card - output_card) * inner_rel_card + output_card * inner_rel_card / 2)
		return processing_cost + predicate_evaluation_cost


#Sort
def pg_sort(node_type, input_card, parent_output_card):
	if input_card == 0:
		return 0
	if node_type == 'Outer':
		comparison_cost = 2 * CPU_OPERATOR_COST * input_card * math.log(input_card,2)
		output_cost = CPU_OPERATOR_COST * input_card
		return comparison_cost + output_cost
	elif node_type == 'Inner':
		comparison_cost = 2 * CPU_OPERATOR_COST * input_card * math.log(input_card,2)
		rescan_cost = CPU_OPERATOR_COST * (input_card + max(0, parent_output_card - input_card))
		return comparison_cost + rescan_cost
	else:
		print("Unidentified node type for sort")


#External Sort
def pg_ext_sort(node_type, input_card, input_bytes, parent_output_card):
	BLCKSZ = 8192
	sort_mem_bytes = 10*1024*1024
	merge_order = 38
	output_cost = 0

	if input_card == 0 or input_bytes < sort_mem_bytes:
		return 0
	if node_type == 'Outer':
		output_cost = CPU_OPERATOR_COST * input_card
	elif node_type == 'Inner':
		output_cost = CPU_OPERATOR_COST * (input_card + max(0, parent_output_card - input_card))
	else:
		print("Unidentified node type for sort")

	comparison_cost = 2 * CPU_OPERATOR_COST * input_card * math.log(input_card,2)
	
	num_pages = math.ceil(input_bytes / BLCKSZ)
	log_runs = math.ceil(math.log(math.log(input_bytes/sort_mem_bytes,2),math.log(merge_order,2)))
	num_page_accesses = 2 * num_pages * log_runs
	
	print('input_bytes=', input_bytes, 'num_pages=',num_pages, 'log_runs=',log_runs, 'num_page_accesses=', num_page_accesses)
	disk_cost = num_page_accesses * (SEQ_PAGE_COST * 0.75 + RAND_PAGE_COST * 0.25)

	return comparison_cost + disk_cost + output_cost


#Merge Join
def pg_smj(outer_rel_card, inner_rel_card, num_join_preds, output_card):

	print(outer_rel_card, inner_rel_card, num_join_preds, output_card)

	processing_cost = CPU_OPERATOR_COST * (outer_rel_card + inner_rel_card)
	predicate_evaluation_cost = CPU_OPERATOR_COST * num_join_preds * output_card
	output_cost = CPU_OPERATOR_COST * output_card

	return processing_cost + predicate_evaluation_cost + output_cost


#Hash Join
#INCOMPLETE
def pg_hash_join(outer_card, inner_card, num_join_preds, output_card, is_unique):

	nbuckets = max(inner_card, 1024)
	nbuckets = 1 << math.log(nbuckets,2)

	inner_scan_cost = CPU_TUPLE_COST * inner_card
	hashing_cost = CPU_OPERATOR_COST * num_join_preds * (output_card + inner_card)
	comparison_cost = 0
	processing_cost = CPU_TUPLE_COST * join_card

	#got from cardinality estimator
	mcv_freq = 0
	ndistinct = max(0,0.1)
	null_frac = 0
	
	bucketsize_frac = max(0.1, mcv_freq)
	avgfreq = (1.0 - null_frac) / ndistinct
	estfrac = max(1/ndistinct, 1/nbuckets)
	if avgfreq > 0 and mcv_freq > avgfreq:	#account for skew
	 	estfract *= (mcv_freq / avgfreq)
	inner_rel_bucket_size = estfract * nbuckets

	if not is_unique:
		comparison_cost = (CPU_OPERATOR_COST / 2) * output_card * inner_rel_bucket_size
	else:
		comparison_cost = (CPU_OPERATOR_COST / 2) * inner_card * inner_rel_bucket_size + (CPU_OPERATOR_COST / 20) * (outer_card - output_card) * (inner_path_rows / nbuckets)

	return inner_scan_cost + hashing_cost + comparison_cost + processing_cost


#GROUP BY WITH AGG
def pg_groupby(input_card, output_card, num_groups_cols, num_agg_cols, num_filters):
	comparison_cost = CPU_OPERATOR_COST * num_groups_cols * input_card
	aggregation_cost = CPU_OPERATOR_COST * num_agg_cols * input_card
	filter_cost = CPU_OPERATOR_COST * num_filters * input_card
	output_cost = CPU_TUPLE_COST * output_card

	return comparison_cost + aggregation_cost + filter_cost + output_cost


if __name__ == "__main__":

	# print(pg_groupby(177388547, 1303652, 3, 3, 0))
	print(pg_ext_sort('Outer', 36244344, 36244344*(42+31), 0))