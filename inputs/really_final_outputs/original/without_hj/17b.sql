                                           QUERY PLAN                                           
------------------------------------------------------------------------------------------------
 [                                                                                             +
   {                                                                                           +
     "Plan": {                                                                                 +
       "Node Type": "Aggregate",                                                               +
       "Strategy": "Plain",                                                                    +
       "Partial Mode": "Simple",                                                               +
       "Parallel Aware": false,                                                                +
       "Startup Cost": 650.01,                                                                 +
       "Total Cost": 650.01,                                                                   +
       "Plan Rows": 1,                                                                         +
       "Plan Width": 64,                                                                       +
       "Actual Startup Time": 1549103.083,                                                     +
       "Actual Total Time": 1549103.084,                                                       +
       "Actual Rows": 1,                                                                       +
       "Actual Loops": 1,                                                                      +
       "Shared Hit Blocks": 5302938,                                                           +
       "Shared Read Blocks": 313589,                                                           +
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
           "Total Cost": 650.01,                                                               +
           "Plan Rows": 19,                                                                    +
           "Plan Width": 15,                                                                   +
           "Actual Startup Time": 5282.595,                                                    +
           "Actual Total Time": 1549017.130,                                                   +
           "Actual Rows": 52306,                                                               +
           "Actual Loops": 1,                                                                  +
           "Inner Unique": true,                                                               +
           "Shared Hit Blocks": 5302938,                                                       +
           "Shared Read Blocks": 313589,                                                       +
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
               "Total Cost": 649.67,                                                           +
               "Plan Rows": 19,                                                                +
               "Plan Width": 19,                                                               +
               "Actual Startup Time": 5276.723,                                                +
               "Actual Total Time": 1518279.767,                                               +
               "Actual Rows": 52306,                                                           +
               "Actual Loops": 1,                                                              +
               "Inner Unique": false,                                                          +
               "Shared Hit Blocks": 5096801,                                                   +
               "Shared Read Blocks": 310315,                                                   +
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
                   "Total Cost": 649.51,                                                       +
                   "Plan Rows": 10,                                                            +
                   "Plan Width": 27,                                                           +
                   "Actual Startup Time": 5246.492,                                            +
                   "Actual Total Time": 1494516.635,                                           +
                   "Actual Rows": 6642,                                                        +
                   "Actual Loops": 1,                                                          +
                   "Inner Unique": true,                                                       +
                   "Shared Hit Blocks": 5072601,                                               +
                   "Shared Read Blocks": 302886,                                               +
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
                       "Startup Cost": 0.06,                                                   +
                       "Total Cost": 649.34,                                                   +
                       "Plan Rows": 10,                                                        +
                       "Plan Width": 23,                                                       +
                       "Actual Startup Time": 5204.780,                                        +
                       "Actual Total Time": 1448830.898,                                       +
                       "Actual Rows": 6642,                                                    +
                       "Actual Loops": 1,                                                      +
                       "Inner Unique": true,                                                   +
                       "Shared Hit Blocks": 5052314,                                           +
                       "Shared Read Blocks": 296581,                                           +
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
                           "Total Cost": 627.04,                                               +
                           "Plan Rows": 1138,                                                  +
                           "Plan Width": 12,                                                   +
                           "Actual Startup Time": 62.236,                                      +
                           "Actual Total Time": 1111074.731,                                   +
                           "Actual Rows": 1038393,                                             +
                           "Actual Loops": 1,                                                  +
                           "Inner Unique": false,                                              +
                           "Shared Hit Blocks": 960430,                                        +
                           "Shared Read Blocks": 227677,                                       +
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
                               "Actual Startup Time": 48.643,                                  +
                               "Actual Total Time": 5763.467,                                  +
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
                                   "Actual Startup Time": 30.954,                              +
                                   "Actual Total Time": 30.955,                                +
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
                                   "Actual Startup Time": 17.645,                              +
                                   "Actual Total Time": 5684.665,                              +
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
                               "Index Name": "movie_id_cast_info",                             +
                               "Relation Name": "cast_info",                                   +
                               "Alias": "ci",                                                  +
                               "Startup Cost": 0.02,                                           +
                               "Total Cost": 0.26,                                             +
                               "Plan Rows": 23,                                                +
                               "Plan Width": 8,                                                +
                               "Actual Startup Time": 2.454,                                   +
                               "Actual Total Time": 26.389,                                    +
                               "Actual Rows": 25,                                              +
                               "Actual Loops": 41840,                                          +
                               "Index Cond": "(movie_id = mk.movie_id)",                       +
                               "Rows Removed by Index Recheck": 0,                             +
                               "Shared Hit Blocks": 960427,                                    +
                               "Shared Read Blocks": 216018,                                   +
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
                           "Index Name": "name_pkey",                                          +
                           "Relation Name": "name",                                            +
                           "Alias": "n",                                                       +
                           "Startup Cost": 0.01,                                               +
                           "Total Cost": 0.02,                                                 +
                           "Plan Rows": 1,                                                     +
                           "Plan Width": 19,                                                   +
                           "Actual Startup Time": 0.323,                                       +
                           "Actual Total Time": 0.323,                                         +
                           "Actual Rows": 0,                                                   +
                           "Actual Loops": 1038393,                                            +
                           "Index Cond": "(id = ci.person_id)",                                +
                           "Rows Removed by Index Recheck": 0,                                 +
                           "Filter": "(name ~~ 'Z%'::text)",                                   +
                           "Rows Removed by Filter": 1,                                        +
                           "Shared Hit Blocks": 4091884,                                       +
                           "Shared Read Blocks": 68904,                                        +
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
                       "Index Name": "title_idx_id",                                           +
                       "Relation Name": "title",                                               +
                       "Alias": "t",                                                           +
                       "Startup Cost": 0.01,                                                   +
                       "Total Cost": 0.02,                                                     +
                       "Plan Rows": 1,                                                         +
                       "Plan Width": 4,                                                        +
                       "Actual Startup Time": 6.873,                                           +
                       "Actual Total Time": 6.873,                                             +
                       "Actual Rows": 1,                                                       +
                       "Actual Loops": 6642,                                                   +
                       "Index Cond": "(id = ci.movie_id)",                                     +
                       "Rows Removed by Index Recheck": 0,                                     +
                       "Shared Hit Blocks": 20287,                                             +
                       "Shared Read Blocks": 6305,                                             +
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
                   "Index Name": "movie_id_movie_companies",                                   +
                   "Relation Name": "movie_companies",                                         +
                   "Alias": "mc",                                                              +
                   "Startup Cost": 0.01,                                                       +
                   "Total Cost": 0.02,                                                         +
                   "Plan Rows": 2,                                                             +
                   "Plan Width": 8,                                                            +
                   "Actual Startup Time": 2.861,                                               +
                   "Actual Total Time": 3.567,                                                 +
                   "Actual Rows": 8,                                                           +
                   "Actual Loops": 6642,                                                       +
                   "Index Cond": "(movie_id = ci.movie_id)",                                   +
                   "Rows Removed by Index Recheck": 0,                                         +
                   "Shared Hit Blocks": 24200,                                                 +
                   "Shared Read Blocks": 7429,                                                 +
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
               "Index Name": "company_name_pkey",                                              +
               "Relation Name": "company_name",                                                +
               "Alias": "cn",                                                                  +
               "Startup Cost": 0.01,                                                           +
               "Total Cost": 0.02,                                                             +
               "Plan Rows": 1,                                                                 +
               "Plan Width": 4,                                                                +
               "Actual Startup Time": 0.586,                                                   +
               "Actual Total Time": 0.586,                                                     +
               "Actual Rows": 1,                                                               +
               "Actual Loops": 52306,                                                          +
               "Index Cond": "(id = mc.company_id)",                                           +
               "Rows Removed by Index Recheck": 0,                                             +
               "Shared Hit Blocks": 206137,                                                    +
               "Shared Read Blocks": 3274,                                                     +
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
         }                                                                                     +
       ]                                                                                       +
     },                                                                                        +
     "Planning Time": 5840.562,                                                                +
     "Triggers": [                                                                             +
     ],                                                                                        +
     "Execution Time": 1549140.834                                                             +
   }                                                                                           +
 ]
(1 row)
