#metadata for sorting
CORR_MD = {}
DUP_MD = {}

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