                                             QUERY PLAN                                             
----------------------------------------------------------------------------------------------------
 [                                                                                                 +
   {                                                                                               +
     "Plan": {                                                                                     +
       "Node Type": "Aggregate",                                                                   +
       "Strategy": "Plain",                                                                        +
       "Partial Mode": "Simple",                                                                   +
       "Parallel Aware": false,                                                                    +
       "Startup Cost": 621.07,                                                                     +
       "Total Cost": 621.07,                                                                       +
       "Plan Rows": 1,                                                                             +
       "Plan Width": 64,                                                                           +
       "Actual Startup Time": 25959.702,                                                           +
       "Actual Total Time": 25959.703,                                                             +
       "Actual Rows": 1,                                                                           +
       "Actual Loops": 1,                                                                          +
       "Shared Hit Blocks": 144751,                                                                +
       "Shared Read Blocks": 38347,                                                                +
       "Shared Dirtied Blocks": 0,                                                                 +
       "Shared Written Blocks": 0,                                                                 +
       "Local Hit Blocks": 0,                                                                      +
       "Local Read Blocks": 0,                                                                     +
       "Local Dirtied Blocks": 0,                                                                  +
       "Local Written Blocks": 0,                                                                  +
       "Temp Read Blocks": 0,                                                                      +
       "Temp Written Blocks": 0,                                                                   +
       "Plans": [                                                                                  +
         {                                                                                         +
           "Node Type": "Nested Loop",                                                             +
           "Parent Relationship": "Outer",                                                         +
           "Parallel Aware": false,                                                                +
           "Join Type": "Inner",                                                                   +
           "Startup Cost": 0.11,                                                                   +
           "Total Cost": 621.06,                                                                   +
           "Plan Rows": 19,                                                                        +
           "Plan Width": 33,                                                                       +
           "Actual Startup Time": 989.312,                                                         +
           "Actual Total Time": 25958.516,                                                         +
           "Actual Rows": 385,                                                                     +
           "Actual Loops": 1,                                                                      +
           "Inner Unique": true,                                                                   +
           "Join Filter": "(an.person_id = n.id)",                                                 +
           "Rows Removed by Join Filter": 0,                                                       +
           "Shared Hit Blocks": 144751,                                                            +
           "Shared Read Blocks": 38347,                                                            +
           "Shared Dirtied Blocks": 0,                                                             +
           "Shared Written Blocks": 0,                                                             +
           "Local Hit Blocks": 0,                                                                  +
           "Local Read Blocks": 0,                                                                 +
           "Local Dirtied Blocks": 0,                                                              +
           "Local Written Blocks": 0,                                                              +
           "Temp Read Blocks": 0,                                                                  +
           "Temp Written Blocks": 0,                                                               +
           "Plans": [                                                                              +
             {                                                                                     +
               "Node Type": "Nested Loop",                                                         +
               "Parent Relationship": "Outer",                                                     +
               "Parallel Aware": false,                                                            +
               "Join Type": "Inner",                                                               +
               "Startup Cost": 0.10,                                                               +
               "Total Cost": 620.69,                                                               +
               "Plan Rows": 19,                                                                    +
               "Plan Width": 41,                                                                   +
               "Actual Startup Time": 962.345,                                                     +
               "Actual Total Time": 24595.391,                                                     +
               "Actual Rows": 385,                                                                 +
               "Actual Loops": 1,                                                                  +
               "Inner Unique": false,                                                              +
               "Shared Hit Blocks": 143420,                                                        +
               "Shared Read Blocks": 38138,                                                        +
               "Shared Dirtied Blocks": 0,                                                         +
               "Shared Written Blocks": 0,                                                         +
               "Local Hit Blocks": 0,                                                              +
               "Local Read Blocks": 0,                                                             +
               "Local Dirtied Blocks": 0,                                                          +
               "Local Written Blocks": 0,                                                          +
               "Temp Read Blocks": 0,                                                              +
               "Temp Written Blocks": 0,                                                           +
               "Plans": [                                                                          +
                 {                                                                                 +
                   "Node Type": "Nested Loop",                                                     +
                   "Parent Relationship": "Outer",                                                 +
                   "Parallel Aware": false,                                                        +
                   "Join Type": "Inner",                                                           +
                   "Startup Cost": 0.08,                                                           +
                   "Total Cost": 620.38,                                                           +
                   "Plan Rows": 21,                                                                +
                   "Plan Width": 21,                                                               +
                   "Actual Startup Time": 930.208,                                                 +
                   "Actual Total Time": 21463.888,                                                 +
                   "Actual Rows": 323,                                                             +
                   "Actual Loops": 1,                                                              +
                   "Inner Unique": false,                                                          +
                   "Join Filter": "(t.id = ci.movie_id)",                                          +
                   "Rows Removed by Join Filter": 0,                                               +
                   "Shared Hit Blocks": 142468,                                                    +
                   "Shared Read Blocks": 37853,                                                    +
                   "Shared Dirtied Blocks": 0,                                                     +
                   "Shared Written Blocks": 0,                                                     +
                   "Local Hit Blocks": 0,                                                          +
                   "Local Read Blocks": 0,                                                         +
                   "Local Dirtied Blocks": 0,                                                      +
                   "Local Written Blocks": 0,                                                      +
                   "Temp Read Blocks": 0,                                                          +
                   "Temp Written Blocks": 0,                                                       +
                   "Plans": [                                                                      +
                     {                                                                             +
                       "Node Type": "Nested Loop",                                                 +
                       "Parent Relationship": "Outer",                                             +
                       "Parallel Aware": false,                                                    +
                       "Join Type": "Inner",                                                       +
                       "Startup Cost": 0.07,                                                       +
                       "Total Cost": 619.85,                                                       +
                       "Plan Rows": 2,                                                             +
                       "Plan Width": 29,                                                           +
                       "Actual Startup Time": 900.870,                                             +
                       "Actual Total Time": 19581.664,                                             +
                       "Actual Rows": 25,                                                          +
                       "Actual Loops": 1,                                                          +
                       "Inner Unique": true,                                                       +
                       "Shared Hit Blocks": 142310,                                                +
                       "Shared Read Blocks": 37635,                                                +
                       "Shared Dirtied Blocks": 0,                                                 +
                       "Shared Written Blocks": 0,                                                 +
                       "Local Hit Blocks": 0,                                                      +
                       "Local Read Blocks": 0,                                                     +
                       "Local Dirtied Blocks": 0,                                                  +
                       "Local Written Blocks": 0,                                                  +
                       "Temp Read Blocks": 0,                                                      +
                       "Temp Written Blocks": 0,                                                   +
                       "Plans": [                                                                  +
                         {                                                                         +
                           "Node Type": "Nested Loop",                                             +
                           "Parent Relationship": "Outer",                                         +
                           "Parallel Aware": false,                                                +
                           "Join Type": "Inner",                                                   +
                           "Startup Cost": 0.05,                                                   +
                           "Total Cost": 619.76,                                                   +
                           "Plan Rows": 5,                                                         +
                           "Plan Width": 33,                                                       +
                           "Actual Startup Time": 810.164,                                         +
                           "Actual Total Time": 18881.985,                                         +
                           "Actual Rows": 54,                                                      +
                           "Actual Loops": 1,                                                      +
                           "Inner Unique": false,                                                  +
                           "Join Filter": "(t.id = mc.movie_id)",                                  +
                           "Rows Removed by Join Filter": 0,                                       +
                           "Shared Hit Blocks": 142136,                                            +
                           "Shared Read Blocks": 37593,                                            +
                           "Shared Dirtied Blocks": 0,                                             +
                           "Shared Written Blocks": 0,                                             +
                           "Local Hit Blocks": 0,                                                  +
                           "Local Read Blocks": 0,                                                 +
                           "Local Dirtied Blocks": 0,                                              +
                           "Local Written Blocks": 0,                                              +
                           "Temp Read Blocks": 0,                                                  +
                           "Temp Written Blocks": 0,                                               +
                           "Plans": [                                                              +
                             {                                                                     +
                               "Node Type": "Nested Loop",                                         +
                               "Parent Relationship": "Outer",                                     +
                               "Parallel Aware": false,                                            +
                               "Join Type": "Inner",                                               +
                               "Startup Cost": 0.04,                                               +
                               "Total Cost": 619.60,                                               +
                               "Plan Rows": 1,                                                     +
                               "Plan Width": 25,                                                   +
                               "Actual Startup Time": 695.892,                                     +
                               "Actual Total Time": 18182.279,                                     +
                               "Actual Rows": 146,                                                 +
                               "Actual Loops": 1,                                                  +
                               "Inner Unique": true,                                               +
                               "Shared Hit Blocks": 141716,                                        +
                               "Shared Read Blocks": 37530,                                        +
                               "Shared Dirtied Blocks": 0,                                         +
                               "Shared Written Blocks": 0,                                         +
                               "Local Hit Blocks": 0,                                              +
                               "Local Read Blocks": 0,                                             +
                               "Local Dirtied Blocks": 0,                                          +
                               "Local Written Blocks": 0,                                          +
                               "Temp Read Blocks": 0,                                              +
                               "Temp Written Blocks": 0,                                           +
                               "Plans": [                                                          +
                                 {                                                                 +
                                   "Node Type": "Nested Loop",                                     +
                                   "Parent Relationship": "Outer",                                 +
                                   "Parallel Aware": false,                                        +
                                   "Join Type": "Inner",                                           +
                                   "Startup Cost": 0.03,                                           +
                                   "Total Cost": 618.15,                                           +
                                   "Plan Rows": 34,                                                +
                                   "Plan Width": 4,                                                +
                                   "Actual Startup Time": 48.626,                                  +
                                   "Actual Total Time": 2448.077,                                  +
                                   "Actual Rows": 41840,                                           +
                                   "Actual Loops": 1,                                              +
                                   "Inner Unique": false,                                          +
                                   "Shared Hit Blocks": 3,                                         +
                                   "Shared Read Blocks": 11659,                                    +
                                   "Shared Dirtied Blocks": 0,                                     +
                                   "Shared Written Blocks": 0,                                     +
                                   "Local Hit Blocks": 0,                                          +
                                   "Local Read Blocks": 0,                                         +
                                   "Local Dirtied Blocks": 0,                                      +
                                   "Local Written Blocks": 0,                                      +
                                   "Temp Read Blocks": 0,                                          +
                                   "Temp Written Blocks": 0,                                       +
                                   "Plans": [                                                      +
                                     {                                                             +
                                       "Node Type": "Index Scan",                                  +
                                       "Parent Relationship": "Outer",                             +
                                       "Parallel Aware": false,                                    +
                                       "Scan Direction": "Forward",                                +
                                       "Index Name": "keyword_idx_keyword",                        +
                                       "Relation Name": "keyword",                                 +
                                       "Alias": "k",                                               +
                                       "Startup Cost": 0.01,                                       +
                                       "Total Cost": 6.13,                                         +
                                       "Plan Rows": 1,                                             +
                                       "Plan Width": 4,                                            +
                                       "Actual Startup Time": 30.963,                              +
                                       "Actual Total Time": 30.965,                                +
                                       "Actual Rows": 1,                                           +
                                       "Actual Loops": 1,                                          +
                                       "Index Cond": "(keyword = 'character-name-in-title'::text)",+
                                       "Rows Removed by Index Recheck": 0,                         +
                                       "Shared Hit Blocks": 0,                                     +
                                       "Shared Read Blocks": 4,                                    +
                                       "Shared Dirtied Blocks": 0,                                 +
                                       "Shared Written Blocks": 0,                                 +
                                       "Local Hit Blocks": 0,                                      +
                                       "Local Read Blocks": 0,                                     +
                                       "Local Dirtied Blocks": 0,                                  +
                                       "Local Written Blocks": 0,                                  +
                                       "Temp Read Blocks": 0,                                      +
                                       "Temp Written Blocks": 0                                    +
                                     },                                                            +
                                     {                                                             +
                                       "Node Type": "Index Scan",                                  +
                                       "Parent Relationship": "Inner",                             +
                                       "Parallel Aware": false,                                    +
                                       "Scan Direction": "Forward",                                +
                                       "Index Name": "keyword_id_movie_keyword",                   +
                                       "Relation Name": "movie_keyword",                           +
                                       "Alias": "mk",                                              +
                                       "Startup Cost": 0.01,                                       +
                                       "Total Cost": 122.40,                                       +
                                       "Plan Rows": 39,                                            +
                                       "Plan Width": 8,                                            +
                                       "Actual Startup Time": 17.618,                              +
                                       "Actual Total Time": 2399.197,                              +
                                       "Actual Rows": 41840,                                       +
                                       "Actual Loops": 1,                                          +
                                       "Index Cond": "(keyword_id = k.id)",                        +
                                       "Rows Removed by Index Recheck": 0,                         +
                                       "Shared Hit Blocks": 3,                                     +
                                       "Shared Read Blocks": 11655,                                +
                                       "Shared Dirtied Blocks": 0,                                 +
                                       "Shared Written Blocks": 0,                                 +
                                       "Local Hit Blocks": 0,                                      +
                                       "Local Read Blocks": 0,                                     +
                                       "Local Dirtied Blocks": 0,                                  +
                                       "Local Written Blocks": 0,                                  +
                                       "Temp Read Blocks": 0,                                      +
                                       "Temp Written Blocks": 0                                    +
                                     }                                                             +
                                   ]                                                               +
                                 },                                                                +
                                 {                                                                 +
                                   "Node Type": "Index Scan",                                      +
                                   "Parent Relationship": "Inner",                                 +
                                   "Parallel Aware": false,                                        +
                                   "Scan Direction": "Forward",                                    +
                                   "Index Name": "title_idx_id",                                   +
                                   "Relation Name": "title",                                       +
                                   "Alias": "t",                                                   +
                                   "Startup Cost": 0.01,                                           +
                                   "Total Cost": 0.04,                                             +
                                   "Plan Rows": 1,                                                 +
                                   "Plan Width": 21,                                               +
                                   "Actual Startup Time": 0.375,                                   +
                                   "Actual Total Time": 0.375,                                     +
                                   "Actual Rows": 0,                                               +
                                   "Actual Loops": 41840,                                          +
                                   "Index Cond": "(id = mk.movie_id)",                             +
                                   "Rows Removed by Index Recheck": 0,                             +
                                   "Filter": "((episode_nr >= 50) AND (episode_nr < 100))",        +
                                   "Rows Removed by Filter": 1,                                    +
                                   "Shared Hit Blocks": 141713,                                    +
                                   "Shared Read Blocks": 25871,                                    +
                                   "Shared Dirtied Blocks": 0,                                     +
                                   "Shared Written Blocks": 0,                                     +
                                   "Local Hit Blocks": 0,                                          +
                                   "Local Read Blocks": 0,                                         +
                                   "Local Dirtied Blocks": 0,                                      +
                                   "Local Written Blocks": 0,                                      +
                                   "Temp Read Blocks": 0,                                          +
                                   "Temp Written Blocks": 0                                        +
                                 }                                                                 +
                               ]                                                                   +
                             },                                                                    +
                             {                                                                     +
                               "Node Type": "Index Scan",                                          +
                               "Parent Relationship": "Inner",                                     +
                               "Parallel Aware": false,                                            +
                               "Scan Direction": "Forward",                                        +
                               "Index Name": "movie_id_movie_companies",                           +
                               "Relation Name": "movie_companies",                                 +
                               "Alias": "mc",                                                      +
                               "Startup Cost": 0.01,                                               +
                               "Total Cost": 0.03,                                                 +
                               "Plan Rows": 2,                                                     +
                               "Plan Width": 8,                                                    +
                               "Actual Startup Time": 4.175,                                       +
                               "Actual Total Time": 4.789,                                         +
                               "Actual Rows": 0,                                                   +
                               "Actual Loops": 146,                                                +
                               "Index Cond": "(movie_id = mk.movie_id)",                           +
                               "Rows Removed by Index Recheck": 0,                                 +
                               "Shared Hit Blocks": 420,                                           +
                               "Shared Read Blocks": 63,                                           +
                               "Shared Dirtied Blocks": 0,                                         +
                               "Shared Written Blocks": 0,                                         +
                               "Local Hit Blocks": 0,                                              +
                               "Local Read Blocks": 0,                                             +
                               "Local Dirtied Blocks": 0,                                          +
                               "Local Written Blocks": 0,                                          +
                               "Temp Read Blocks": 0,                                              +
                               "Temp Written Blocks": 0                                            +
                             }                                                                     +
                           ]                                                                       +
                         },                                                                        +
                         {                                                                         +
                           "Node Type": "Index Scan",                                              +
                           "Parent Relationship": "Inner",                                         +
                           "Parallel Aware": false,                                                +
                           "Scan Direction": "Forward",                                            +
                           "Index Name": "company_name_pkey",                                      +
                           "Relation Name": "company_name",                                        +
                           "Alias": "cn",                                                          +
                           "Startup Cost": 0.01,                                                   +
                           "Total Cost": 0.02,                                                     +
                           "Plan Rows": 1,                                                         +
                           "Plan Width": 4,                                                        +
                           "Actual Startup Time": 12.950,                                          +
                           "Actual Total Time": 12.950,                                            +
                           "Actual Rows": 0,                                                       +
                           "Actual Loops": 54,                                                     +
                           "Index Cond": "(id = mc.company_id)",                                   +
                           "Rows Removed by Index Recheck": 0,                                     +
                           "Filter": "((country_code)::text = '[us]'::text)",                      +
                           "Rows Removed by Filter": 1,                                            +
                           "Shared Hit Blocks": 174,                                               +
                           "Shared Read Blocks": 42,                                               +
                           "Shared Dirtied Blocks": 0,                                             +
                           "Shared Written Blocks": 0,                                             +
                           "Local Hit Blocks": 0,                                                  +
                           "Local Read Blocks": 0,                                                 +
                           "Local Dirtied Blocks": 0,                                              +
                           "Local Written Blocks": 0,                                              +
                           "Temp Read Blocks": 0,                                                  +
                           "Temp Written Blocks": 0                                                +
                         }                                                                         +
                       ]                                                                           +
                     },                                                                            +
                     {                                                                             +
                       "Node Type": "Index Scan",                                                  +
                       "Parent Relationship": "Inner",                                             +
                       "Parallel Aware": false,                                                    +
                       "Scan Direction": "Forward",                                                +
                       "Index Name": "movie_id_cast_info",                                         +
                       "Relation Name": "cast_info",                                               +
                       "Alias": "ci",                                                              +
                       "Startup Cost": 0.02,                                                       +
                       "Total Cost": 0.26,                                                         +
                       "Plan Rows": 23,                                                            +
                       "Plan Width": 8,                                                            +
                       "Actual Startup Time": 17.118,                                              +
                       "Actual Total Time": 75.247,                                                +
                       "Actual Rows": 13,                                                          +
                       "Actual Loops": 25,                                                         +
                       "Index Cond": "(movie_id = mk.movie_id)",                                   +
                       "Rows Removed by Index Recheck": 0,                                         +
                       "Shared Hit Blocks": 158,                                                   +
                       "Shared Read Blocks": 218,                                                  +
                       "Shared Dirtied Blocks": 0,                                                 +
                       "Shared Written Blocks": 0,                                                 +
                       "Local Hit Blocks": 0,                                                      +
                       "Local Read Blocks": 0,                                                     +
                       "Local Dirtied Blocks": 0,                                                  +
                       "Local Written Blocks": 0,                                                  +
                       "Temp Read Blocks": 0,                                                      +
                       "Temp Written Blocks": 0                                                    +
                     }                                                                             +
                   ]                                                                               +
                 },                                                                                +
                 {                                                                                 +
                   "Node Type": "Index Scan",                                                      +
                   "Parent Relationship": "Inner",                                                 +
                   "Parallel Aware": false,                                                        +
                   "Scan Direction": "Forward",                                                    +
                   "Index Name": "person_id_aka_name",                                             +
                   "Relation Name": "aka_name",                                                    +
                   "Alias": "an",                                                                  +
                   "Startup Cost": 0.01,                                                           +
                   "Total Cost": 0.01,                                                             +
                   "Plan Rows": 2,                                                                 +
                   "Plan Width": 20,                                                               +
                   "Actual Startup Time": 8.981,                                                   +
                   "Actual Total Time": 9.689,                                                     +
                   "Actual Rows": 1,                                                               +
                   "Actual Loops": 323,                                                            +
                   "Index Cond": "(person_id = ci.person_id)",                                     +
                   "Rows Removed by Index Recheck": 0,                                             +
                   "Shared Hit Blocks": 952,                                                       +
                   "Shared Read Blocks": 285,                                                      +
                   "Shared Dirtied Blocks": 0,                                                     +
                   "Shared Written Blocks": 0,                                                     +
                   "Local Hit Blocks": 0,                                                          +
                   "Local Read Blocks": 0,                                                         +
                   "Local Dirtied Blocks": 0,                                                      +
                   "Local Written Blocks": 0,                                                      +
                   "Temp Read Blocks": 0,                                                          +
                   "Temp Written Blocks": 0                                                        +
                 }                                                                                 +
               ]                                                                                   +
             },                                                                                    +
             {                                                                                     +
               "Node Type": "Index Scan",                                                          +
               "Parent Relationship": "Inner",                                                     +
               "Parallel Aware": false,                                                            +
               "Scan Direction": "Forward",                                                        +
               "Index Name": "name_pkey",                                                          +
               "Relation Name": "name",                                                            +
               "Alias": "n",                                                                       +
               "Startup Cost": 0.01,                                                               +
               "Total Cost": 0.02,                                                                 +
               "Plan Rows": 1,                                                                     +
               "Plan Width": 4,                                                                    +
               "Actual Startup Time": 3.535,                                                       +
               "Actual Total Time": 3.535,                                                         +
               "Actual Rows": 1,                                                                   +
               "Actual Loops": 385,                                                                +
               "Index Cond": "(id = ci.person_id)",                                                +
               "Rows Removed by Index Recheck": 0,                                                 +
               "Shared Hit Blocks": 1331,                                                          +
               "Shared Read Blocks": 209,                                                          +
               "Shared Dirtied Blocks": 0,                                                         +
               "Shared Written Blocks": 0,                                                         +
               "Local Hit Blocks": 0,                                                              +
               "Local Read Blocks": 0,                                                             +
               "Local Dirtied Blocks": 0,                                                          +
               "Local Written Blocks": 0,                                                          +
               "Temp Read Blocks": 0,                                                              +
               "Temp Written Blocks": 0                                                            +
             }                                                                                     +
           ]                                                                                       +
         }                                                                                         +
       ]                                                                                           +
     },                                                                                            +
     "Planning Time": 7511.610,                                                                    +
     "Triggers": [                                                                                 +
     ],                                                                                            +
     "Execution Time": 25992.945                                                                   +
   }                                                                                               +
 ]
(1 row)

