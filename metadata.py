#metadata for sorting
CORR_MD = {
	'cast_info' 		: 		{'id':1, 'movie_id':0.00578, 'person_id':0.70344, 'person_role_id':0.489554, 'nr_order':0.004, 'role_id':1},
	'ci'				: 		{'id':1, 'movie_id':0.00578, 'person_id':0.70344, 'person_role_id':0.489554, 'nr_order':0.004, 'role_id':1},
	'movie_info'		: 		{'movie_id':0.11, 'info_type_id':0.12},
	'mi'				: 		{'movie_id':0.11, 'info_type_id':0.12},
	'link_type'			: 		{'id':1},
	'lt'				: 		{'id':1},
	'movie_keyword' 	:		{'movie_id':0.99, 'keyword_id':0.0167},
	'mk'				:		{'movie_id':0.99, 'keyword_id':0.0167},
	'movie_companies'	:		{'movie_id':0.454579}
}

DUP_MD = {
	'cast_info'			:		{'id':0, 'movie_id':0.93, 'person_id':0.88, 'person_role_id':0.91, 'nr_order':1, 'role_id':1},
	'ci'				:		{'id':0, 'movie_id':0.93, 'person_id':0.88, 'person_role_id':0.91, 'nr_order':1, 'role_id':1},
	'movie_info'		:		{'movie_id':0.83, 'info_type_id':1},
	'mi'				:		{'movie_id':0.83, 'info_type_id':1},
	'link_type'			:		{'id':0},
	'lt'				:		{'id':0},
	'movie_keyword' 	:		{'movie_id':0.89, 'keyword_id':0.97},
	'mk'				:		{'movie_id':0.89, 'keyword_id':0.97},
	'movie_companies'	:		{'movie_id':0.454579}
}

MIN_MD = {
	'link_type': {'id':0},
	'lt': {'id':0},
	'cast_info': {'movie_id':1},
	'ci':{'movie_id':1},
	'movie_info': {'movie_id':1},
	'mi': {'movie_id':1}
}

MAX_MD = {
	'link_type': {'id':100},
	'lt': {'id':100},
	'cast_info': {'movie_id':2525975},
	'ci':{'movie_id':2525975},
	'movie_info': {'movie_id':2526430},
	'mi': {'movie_id':2526430}
}

#metadata for join
UNIQUE_ATTRIBUTES_MD = {
	'company_type' : ['id','kind'],
	'comp_cast_type' : ['id','kind'],
	'kind_type' : ['id','kind'],
	'role_type' : ['id', 'role'],
	'link_type' : ['id', 'link'],
	'info_type' : ['id', 'info'],
	'movie_link' : ['id'],
	'keyword' : ['id'],
	'complete_cast' : ['id'],
	'company_name' : ['id'],
	'aka_title' : ['id'],
	'aka_name' : ['id'],
	'movie_info_idx' : ['id'],
	'title' : ['id'],
	'movie_companies' : ['id'],
	'person_info' : ['id'],
	'char_name' : ['id'],
	'name' : ['id'],
	'movie_keyword' : ['id'],
	'movie_info' : ['id'],
	'cast_info' : ['id'],
}

if __name__ == "__main__":

	relname = 'lt'
	print(relname)
	if relname in CORR_MD:
		print(CORR_MD[relname]['id'])
	else:
		print('not found')