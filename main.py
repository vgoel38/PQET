import json
from display_plan import display_plan
from postgres_cost_model import *
from predictions import *
from qerror import qerror
from init import init

def revise_corr(node):
	print('INCOMPLETE: revise_corr')

def revise_dup(node):
	print('INCOMPLETE: revise_dup')

def find_output_plan(input_plan_dict):

	output_plan_dict = {}

	#Initialising few plan-level properties displayed in the root of the output plan
	output_plan_dict['Actual Plan Time'] = input_plan_dict[0]['Plan']['Actual Total Time']
	output_plan_dict['Postgres Estimated Plan Time'] = 0
	output_plan_dict['Our Estimated Plan Time'] = 0
	output_plan_dict['Postgres Weighted Qerror'] = 0
	output_plan_dict['Our Weighted Qerror'] = 0

	#Node Type of a node is found in a pre-order fashion
	output_plan_dict['Node Type'] = input_plan_dict[0]['Plan']['Node Type']

	#DFS on the input plan
	parse_plan_json(input_plan_dict[0]['Plan'], output_plan_dict, output_plan_dict, {})

	#Setting more plan-level properties in the root of the output plan
	output_plan_dict['Postgres Weighted Qerror'] /= output_plan_dict['Actual Plan Time']
	output_plan_dict['Our Weighted Qerror'] /= output_plan_dict['Actual Plan Time']

	output_plan_dict['Postgres Qerror'] = qerror(output_plan_dict['Actual Plan Time'], output_plan_dict['Postgres Estimated Plan Time'])
	output_plan_dict['Our Qerror'] = qerror(output_plan_dict['Actual Plan Time'], output_plan_dict['Our Estimated Plan Time'])	

	return output_plan_dict

#INCOMPLETE
def parse_plan_json(input_current_node, output_current_node, output_plan_root, parent_node):

	#setting current operator keys
	output_current_node['Node Type'] = input_current_node['Node Type']
	output_current_node['Actual Rows'] = input_current_node['Actual Rows']
	output_current_node['Actual Loops'] = input_current_node['Actual Loops']
	output_current_node['Actual Time'] = 0	#important for the correct order of keys
	output_current_node['Postgres Estimated Time'] = 0 #important for the correct order of keys
	output_current_node['Our Estimated Time'] = 0 #important for the correct order of keys

	#exploring the subtree of the current operator
	subtree_time = 0
	if 'Plans' in input_current_node:
		output_current_node.setdefault('Nodes', [])
		for i in range(len(input_current_node['Plans'])):
			output_current_node['Nodes'].append({'Node Type':input_current_node['Plans'][i]['Node Type']})
			subtree_time += input_current_node['Plans'][i]['Actual Total Time'] * input_current_node['Plans'][i]['Actual Loops']
			parse_plan_json(input_current_node['Plans'][i], output_current_node['Nodes'][i], output_plan_root, input_current_node)

	#finding current operator's predictions
	output_current_node['Actual Time'] = input_current_node['Actual Total Time'] * input_current_node['Actual Loops'] - subtree_time
	output_current_node['Postgres Estimated Time'] = postgres_cost_model(input_current_node, parent_node)
	output_current_node['Our Estimated Time'] = predictions(input_current_node, parent_node)
	
	#calculating qerror on current operator's estimates
	output_plan_root['Postgres Estimated Plan Time'] += output_current_node['Postgres Estimated Time']
	output_plan_root['Our Estimated Plan Time'] += output_current_node['Our Estimated Time']
	output_plan_root['Postgres Weighted Qerror'] += qerror(output_current_node['Actual Time'], output_current_node['Postgres Estimated Time']) * output_current_node['Actual Time']
	output_plan_root['Our Weighted Qerror'] += qerror(output_current_node['Actual Time'], output_current_node['Our Estimated Time']) * output_current_node['Actual Time']

	#revising corr and dup values in the metadata
	revise_corr(input_current_node)
	revise_dup(input_current_node)

def main(filename):
	file = open(filename)
	input_plan_dict = json.load(file)
	output_plan_dict = find_output_plan(input_plan_dict)
	display_plan(output_plan_dict, 'output.json')

if __name__ == "__main__":

	main('sample_plans/seq_scan.json')
	main('sample_plans/index_scan.json')
	main('sample_plans/nlj_seq_seq.json')
	main('sample_plans/nlj_seq_index.json')
	main('sample_plans/nlj_index_index.json')

	

	
