import json

def display_plan(output_plan_dict, output_file):

	j = json.dumps(output_plan_dict, indent=2)
	f = open(output_file, 'w')
	print(j, file=f)
	f.close()