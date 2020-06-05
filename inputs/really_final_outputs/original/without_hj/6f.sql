                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                           +
   {                                                                                                                                                         +
     "Plan": {                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                             +
       "Parallel Aware": false,                                                                                                                              +
       "Startup Cost": 1173.94,                                                                                                                              +
       "Total Cost": 1173.94,                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                       +
       "Plan Width": 96,                                                                                                                                     +
       "Actual Startup Time": 1405423.694,                                                                                                                   +
       "Actual Total Time": 1405423.695,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                    +
       "Shared Hit Blocks": 3853944,                                                                                                                         +
       "Shared Read Blocks": 266080,                                                                                                                         +
       "Shared Dirtied Blocks": 0,                                                                                                                           +
       "Shared Written Blocks": 0,                                                                                                                           +
       "Local Hit Blocks": 0,                                                                                                                                +
       "Local Read Blocks": 0,                                                                                                                               +
       "Local Dirtied Blocks": 0,                                                                                                                            +
       "Local Written Blocks": 0,                                                                                                                            +
       "Temp Read Blocks": 0,                                                                                                                                +
       "Temp Written Blocks": 0,                                                                                                                             +
       "Plans": [                                                                                                                                            +
         {                                                                                                                                                   +
           "Node Type": "Nested Loop",                                                                                                                       +
           "Parent Relationship": "Outer",                                                                                                                   +
           "Parallel Aware": false,                                                                                                                          +
           "Join Type": "Inner",                                                                                                                             +
           "Startup Cost": 0.07,                                                                                                                             +
           "Total Cost": 1172.78,                                                                                                                            +
           "Plan Rows": 4974,                                                                                                                                +
           "Plan Width": 48,                                                                                                                                 +
           "Actual Startup Time": 111.771,                                                                                                                   +
           "Actual Total Time": 1403771.297,                                                                                                                 +
           "Actual Rows": 785477,                                                                                                                            +
           "Actual Loops": 1,                                                                                                                                +
           "Inner Unique": true,                                                                                                                             +
           "Shared Hit Blocks": 3853944,                                                                                                                     +
           "Shared Read Blocks": 266080,                                                                                                                     +
           "Shared Dirtied Blocks": 0,                                                                                                                       +
           "Shared Written Blocks": 0,                                                                                                                       +
           "Local Hit Blocks": 0,                                                                                                                            +
           "Local Read Blocks": 0,                                                                                                                           +
           "Local Dirtied Blocks": 0,                                                                                                                        +
           "Local Written Blocks": 0,                                                                                                                        +
           "Temp Read Blocks": 0,                                                                                                                            +
           "Temp Written Blocks": 0,                                                                                                                         +
           "Plans": [                                                                                                                                        +
             {                                                                                                                                               +
               "Node Type": "Nested Loop",                                                                                                                   +
               "Parent Relationship": "Outer",                                                                                                               +
               "Parallel Aware": false,                                                                                                                      +
               "Join Type": "Inner",                                                                                                                         +
               "Startup Cost": 0.06,                                                                                                                         +
               "Total Cost": 1075.72,                                                                                                                        +
               "Plan Rows": 4974,                                                                                                                            +
               "Plan Width": 37,                                                                                                                             +
               "Actual Startup Time": 94.800,                                                                                                                +
               "Actual Total Time": 1081664.256,                                                                                                             +
               "Actual Rows": 785477,                                                                                                                        +
               "Actual Loops": 1,                                                                                                                            +
               "Inner Unique": false,                                                                                                                        +
               "Join Filter": "(t.id = ci.movie_id)",                                                                                                        +
               "Rows Removed by Join Filter": 0,                                                                                                             +
               "Shared Hit Blocks": 777230,                                                                                                                  +
               "Shared Read Blocks": 198126,                                                                                                                 +
               "Shared Dirtied Blocks": 0,                                                                                                                   +
               "Shared Written Blocks": 0,                                                                                                                   +
               "Local Hit Blocks": 0,                                                                                                                        +
               "Local Read Blocks": 0,                                                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                                                    +
               "Local Written Blocks": 0,                                                                                                                    +
               "Temp Read Blocks": 0,                                                                                                                        +
               "Temp Written Blocks": 0,                                                                                                                     +
               "Plans": [                                                                                                                                    +
                 {                                                                                                                                           +
                   "Node Type": "Nested Loop",                                                                                                               +
                   "Parent Relationship": "Outer",                                                                                                           +
                   "Parallel Aware": false,                                                                                                                  +
                   "Join Type": "Inner",                                                                                                                     +
                   "Startup Cost": 0.04,                                                                                                                     +
                   "Total Cost": 1036.75,                                                                                                                    +
                   "Plan Rows": 148,                                                                                                                         +
                   "Plan Width": 41,                                                                                                                         +
                   "Actual Startup Time": 64.014,                                                                                                            +
                   "Actual Total Time": 105392.657,                                                                                                          +
                   "Actual Rows": 14165,                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                        +
                   "Inner Unique": true,                                                                                                                     +
                   "Shared Hit Blocks": 133520,                                                                                                              +
                   "Shared Read Blocks": 32456,                                                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                                                               +
                   "Shared Written Blocks": 0,                                                                                                               +
                   "Local Hit Blocks": 0,                                                                                                                    +
                   "Local Read Blocks": 0,                                                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                                                +
                   "Local Written Blocks": 0,                                                                                                                +
                   "Temp Read Blocks": 0,                                                                                                                    +
                   "Temp Written Blocks": 0,                                                                                                                 +
                   "Plans": [                                                                                                                                +
                     {                                                                                                                                       +
                       "Node Type": "Nested Loop",                                                                                                           +
                       "Parent Relationship": "Outer",                                                                                                       +
                       "Parallel Aware": false,                                                                                                              +
                       "Join Type": "Inner",                                                                                                                 +
                       "Startup Cost": 0.03,                                                                                                                 +
                       "Total Cost": 1025.23,                                                                                                                +
                       "Plan Rows": 270,                                                                                                                     +
                       "Plan Width": 20,                                                                                                                     +
                       "Actual Startup Time": 46.052,                                                                                                        +
                       "Actual Total Time": 22479.534,                                                                                                       +
                       "Actual Rows": 35548,                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                    +
                       "Inner Unique": false,                                                                                                                +
                       "Shared Hit Blocks": 8737,                                                                                                            +
                       "Shared Read Blocks": 14908,                                                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                                                           +
                       "Shared Written Blocks": 0,                                                                                                           +
                       "Local Hit Blocks": 0,                                                                                                                +
                       "Local Read Blocks": 0,                                                                                                               +
                       "Local Dirtied Blocks": 0,                                                                                                            +
                       "Local Written Blocks": 0,                                                                                                            +
                       "Temp Read Blocks": 0,                                                                                                                +
                       "Temp Written Blocks": 0,                                                                                                             +
                       "Plans": [                                                                                                                            +
                         {                                                                                                                                   +
                           "Node Type": "Index Scan",                                                                                                        +
                           "Parent Relationship": "Outer",                                                                                                   +
                           "Parallel Aware": false,                                                                                                          +
                           "Scan Direction": "Forward",                                                                                                      +
                           "Index Name": "keyword_idx_keyword",                                                                                              +
                           "Relation Name": "keyword",                                                                                                       +
                           "Alias": "k",                                                                                                                     +
                           "Startup Cost": 0.01,                                                                                                             +
                           "Total Cost": 49.06,                                                                                                              +
                           "Plan Rows": 8,                                                                                                                   +
                           "Plan Width": 20,                                                                                                                 +
                           "Actual Startup Time": 19.017,                                                                                                    +
                           "Actual Total Time": 246.108,                                                                                                     +
                           "Actual Rows": 8,                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                +
                           "Index Cond": "(keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))",+
                           "Rows Removed by Index Recheck": 0,                                                                                               +
                           "Shared Hit Blocks": 15,                                                                                                          +
                           "Shared Read Blocks": 20,                                                                                                         +
                           "Shared Dirtied Blocks": 0,                                                                                                       +
                           "Shared Written Blocks": 0,                                                                                                       +
                           "Local Hit Blocks": 0,                                                                                                            +
                           "Local Read Blocks": 0,                                                                                                           +
                           "Local Dirtied Blocks": 0,                                                                                                        +
                           "Local Written Blocks": 0,                                                                                                        +
                           "Temp Read Blocks": 0,                                                                                                            +
                           "Temp Written Blocks": 0                                                                                                          +
                         },                                                                                                                                  +
                         {                                                                                                                                   +
                           "Node Type": "Index Scan",                                                                                                        +
                           "Parent Relationship": "Inner",                                                                                                   +
                           "Parallel Aware": false,                                                                                                          +
                           "Scan Direction": "Forward",                                                                                                      +
                           "Index Name": "keyword_id_movie_keyword",                                                                                         +
                           "Relation Name": "movie_keyword",                                                                                                 +
                           "Alias": "mk",                                                                                                                    +
                           "Startup Cost": 0.01,                                                                                                             +
                           "Total Cost": 122.02,                                                                                                             +
                           "Plan Rows": 39,                                                                                                                  +
                           "Plan Width": 8,                                                                                                                  +
                           "Actual Startup Time": 29.737,                                                                                                    +
                           "Actual Total Time": 2773.335,                                                                                                    +
                           "Actual Rows": 4444,                                                                                                              +
                           "Actual Loops": 8,                                                                                                                +
                           "Index Cond": "(keyword_id = k.id)",                                                                                              +
                           "Rows Removed by Index Recheck": 0,                                                                                               +
                           "Shared Hit Blocks": 8722,                                                                                                        +
                           "Shared Read Blocks": 14888,                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                       +
                           "Shared Written Blocks": 0,                                                                                                       +
                           "Local Hit Blocks": 0,                                                                                                            +
                           "Local Read Blocks": 0,                                                                                                           +
                           "Local Dirtied Blocks": 0,                                                                                                        +
                           "Local Written Blocks": 0,                                                                                                        +
                           "Temp Read Blocks": 0,                                                                                                            +
                           "Temp Written Blocks": 0                                                                                                          +
                         }                                                                                                                                   +
                       ]                                                                                                                                     +
                     },                                                                                                                                      +
                     {                                                                                                                                       +
                       "Node Type": "Index Scan",                                                                                                            +
                       "Parent Relationship": "Inner",                                                                                                       +
                       "Parallel Aware": false,                                                                                                              +
                       "Scan Direction": "Forward",                                                                                                          +
                       "Index Name": "title_idx_id",                                                                                                         +
                       "Relation Name": "title",                                                                                                             +
                       "Alias": "t",                                                                                                                         +
                       "Startup Cost": 0.01,                                                                                                                 +
                       "Total Cost": 0.04,                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 21,                                                                                                                     +
                       "Actual Startup Time": 2.329,                                                                                                         +
                       "Actual Total Time": 2.329,                                                                                                           +
                       "Actual Rows": 0,                                                                                                                     +
                       "Actual Loops": 35548,                                                                                                                +
                       "Index Cond": "(id = mk.movie_id)",                                                                                                   +
                       "Rows Removed by Index Recheck": 0,                                                                                                   +
                       "Filter": "(production_year > 2000)",                                                                                                 +
                       "Rows Removed by Filter": 1,                                                                                                          +
                       "Shared Hit Blocks": 124783,                                                                                                          +
                       "Shared Read Blocks": 17548,                                                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                                                           +
                       "Shared Written Blocks": 0,                                                                                                           +
                       "Local Hit Blocks": 0,                                                                                                                +
                       "Local Read Blocks": 0,                                                                                                               +
                       "Local Dirtied Blocks": 0,                                                                                                            +
                       "Local Written Blocks": 0,                                                                                                            +
                       "Temp Read Blocks": 0,                                                                                                                +
                       "Temp Written Blocks": 0                                                                                                              +
                     }                                                                                                                                       +
                   ]                                                                                                                                         +
                 },                                                                                                                                          +
                 {                                                                                                                                           +
                   "Node Type": "Index Scan",                                                                                                                +
                   "Parent Relationship": "Inner",                                                                                                           +
                   "Parallel Aware": false,                                                                                                                  +
                   "Scan Direction": "Forward",                                                                                                              +
                   "Index Name": "movie_id_cast_info",                                                                                                       +
                   "Relation Name": "cast_info",                                                                                                             +
                   "Alias": "ci",                                                                                                                            +
                   "Startup Cost": 0.02,                                                                                                                     +
                   "Total Cost": 0.26,                                                                                                                       +
                   "Plan Rows": 23,                                                                                                                          +
                   "Plan Width": 8,                                                                                                                          +
                   "Actual Startup Time": 6.679,                                                                                                             +
                   "Actual Total Time": 68.841,                                                                                                              +
                   "Actual Rows": 55,                                                                                                                        +
                   "Actual Loops": 14165,                                                                                                                    +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                                       +
                   "Shared Hit Blocks": 643710,                                                                                                              +
                   "Shared Read Blocks": 165670,                                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                                               +
                   "Shared Written Blocks": 0,                                                                                                               +
                   "Local Hit Blocks": 0,                                                                                                                    +
                   "Local Read Blocks": 0,                                                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                                                +
                   "Local Written Blocks": 0,                                                                                                                +
                   "Temp Read Blocks": 0,                                                                                                                    +
                   "Temp Written Blocks": 0                                                                                                                  +
                 }                                                                                                                                           +
               ]                                                                                                                                             +
             },                                                                                                                                              +
             {                                                                                                                                               +
               "Node Type": "Index Scan",                                                                                                                    +
               "Parent Relationship": "Inner",                                                                                                               +
               "Parallel Aware": false,                                                                                                                      +
               "Scan Direction": "Forward",                                                                                                                  +
               "Index Name": "name_pkey",                                                                                                                    +
               "Relation Name": "name",                                                                                                                      +
               "Alias": "n",                                                                                                                                 +
               "Startup Cost": 0.01,                                                                                                                         +
               "Total Cost": 0.02,                                                                                                                           +
               "Plan Rows": 1,                                                                                                                               +
               "Plan Width": 19,                                                                                                                             +
               "Actual Startup Time": 0.407,                                                                                                                 +
               "Actual Total Time": 0.407,                                                                                                                   +
               "Actual Rows": 1,                                                                                                                             +
               "Actual Loops": 785477,                                                                                                                       +
               "Index Cond": "(id = ci.person_id)",                                                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                                                           +
               "Shared Hit Blocks": 3076714,                                                                                                                 +
               "Shared Read Blocks": 67954,                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                   +
               "Shared Written Blocks": 0,                                                                                                                   +
               "Local Hit Blocks": 0,                                                                                                                        +
               "Local Read Blocks": 0,                                                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                                                    +
               "Local Written Blocks": 0,                                                                                                                    +
               "Temp Read Blocks": 0,                                                                                                                        +
               "Temp Written Blocks": 0                                                                                                                      +
             }                                                                                                                                               +
           ]                                                                                                                                                 +
         }                                                                                                                                                   +
       ]                                                                                                                                                     +
     },                                                                                                                                                      +
     "Planning Time": 2785.249,                                                                                                                              +
     "Triggers": [                                                                                                                                           +
     ],                                                                                                                                                      +
     "Execution Time": 1405483.088                                                                                                                           +
   }                                                                                                                                                         +
 ]
(1 row)
