                                           QUERY PLAN                                           
------------------------------------------------------------------------------------------------
 [                                                                                             +
   {                                                                                           +
     "Plan": {                                                                                 +
       "Node Type": "Aggregate",                                                               +
       "Strategy": "Plain",                                                                    +
       "Partial Mode": "Simple",                                                               +
       "Parallel Aware": false,                                                                +
       "Startup Cost": 649.59,                                                                 +
       "Total Cost": 649.59,                                                                   +
       "Plan Rows": 1,                                                                         +
       "Plan Width": 64,                                                                       +
       "Actual Startup Time": 1466824.022,                                                     +
       "Actual Total Time": 1466824.022,                                                       +
       "Actual Rows": 1,                                                                       +
       "Actual Loops": 1,                                                                      +
       "Shared Hit Blocks": 5066973,                                                           +
       "Shared Read Blocks": 298505,                                                           +
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
           "Total Cost": 649.59,                                                               +
           "Plan Rows": 1,                                                                     +
           "Plan Width": 15,                                                                   +
           "Actual Startup Time": 76345.866,                                                   +
           "Actual Total Time": 1466818.136,                                                   +
           "Actual Rows": 1918,                                                                +
           "Actual Loops": 1,                                                                  +
           "Inner Unique": true,                                                               +
           "Shared Hit Blocks": 5066973,                                                       +
           "Shared Read Blocks": 298505,                                                       +
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
               "Total Cost": 649.51,                                                           +
               "Plan Rows": 1,                                                                 +
               "Plan Width": 27,                                                               +
               "Actual Startup Time": 76303.097,                                               +
               "Actual Total Time": 1460109.974,                                               +
               "Actual Rows": 1918,                                                            +
               "Actual Loops": 1,                                                              +
               "Inner Unique": true,                                                           +
               "Shared Hit Blocks": 5059662,                                                   +
               "Shared Read Blocks": 298131,                                                   +
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
                   "Total Cost": 649.42,                                                       +
                   "Plan Rows": 1,                                                             +
                   "Plan Width": 31,                                                           +
                   "Actual Startup Time": 76260.243,                                           +
                   "Actual Total Time": 1447578.647,                                           +
                   "Actual Rows": 1918,                                                        +
                   "Actual Loops": 1,                                                          +
                   "Inner Unique": false,                                                      +
                   "Shared Hit Blocks": 5052988,                                               +
                   "Shared Read Blocks": 297115,                                               +
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
                       "Plan Rows": 1,                                                         +
                       "Plan Width": 23,                                                       +
                       "Actual Startup Time": 76229.869,                                       +
                       "Actual Total Time": 1441823.949,                                       +
                       "Actual Rows": 250,                                                     +
                       "Actual Loops": 1,                                                      +
                       "Inner Unique": true,                                                   +
                       "Shared Hit Blocks": 5052335,                                           +
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
                           "Actual Startup Time": 62.246,                                      +
                           "Actual Total Time": 1104948.980,                                   +
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
                               "Actual Startup Time": 48.639,                                  +
                               "Actual Total Time": 5765.025,                                  +
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
                                   "Actual Startup Time": 30.957,                              +
                                   "Actual Total Time": 30.958,                                +
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
                                   "Actual Startup Time": 17.632,                              +
                                   "Actual Total Time": 5687.873,                              +
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
                               "Actual Startup Time": 2.429,                                   +
                               "Actual Total Time": 26.244,                                    +
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
                           "Filter": "(name ~~ 'X%'::text)",                                   +
                           "Rows Removed by Filter": 1,                                        +
                           "Shared Hit Blocks": 4091905,                                       +
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
                       "Index Name": "movie_id_movie_companies",                               +
                       "Relation Name": "movie_companies",                                     +
                       "Alias": "mc",                                                          +
                       "Startup Cost": 0.01,                                                   +
                       "Total Cost": 0.02,                                                     +
                       "Plan Rows": 2,                                                         +
                       "Plan Width": 8,                                                        +
                       "Actual Startup Time": 19.847,                                          +
                       "Actual Total Time": 23.003,                                            +
                       "Actual Rows": 8,                                                       +
                       "Actual Loops": 250,                                                    +
                       "Index Cond": "(movie_id = ci.movie_id)",                               +
                       "Rows Removed by Index Recheck": 0,                                     +
                       "Shared Hit Blocks": 653,                                               +
                       "Shared Read Blocks": 534,                                              +
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
                   "Index Name": "company_name_pkey",                                          +
                   "Relation Name": "company_name",                                            +
                   "Alias": "cn",                                                              +
                   "Startup Cost": 0.01,                                                       +
                   "Total Cost": 0.02,                                                         +
                   "Plan Rows": 1,                                                             +
                   "Plan Width": 4,                                                            +
                   "Actual Startup Time": 6.529,                                               +
                   "Actual Total Time": 6.529,                                                 +
                   "Actual Rows": 1,                                                           +
                   "Actual Loops": 1918,                                                       +
                   "Index Cond": "(id = mc.company_id)",                                       +
                   "Rows Removed by Index Recheck": 0,                                         +
                   "Shared Hit Blocks": 6674,                                                  +
                   "Shared Read Blocks": 1016,                                                 +
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
               "Index Name": "title_idx_id",                                                   +
               "Relation Name": "title",                                                       +
               "Alias": "t",                                                                   +
               "Startup Cost": 0.01,                                                           +
               "Total Cost": 0.02,                                                             +
               "Plan Rows": 1,                                                                 +
               "Plan Width": 4,                                                                +
               "Actual Startup Time": 3.493,                                                   +
               "Actual Total Time": 3.493,                                                     +
               "Actual Rows": 1,                                                               +
               "Actual Loops": 1918,                                                           +
               "Index Cond": "(id = ci.movie_id)",                                             +
               "Rows Removed by Index Recheck": 0,                                             +
               "Shared Hit Blocks": 7311,                                                      +
               "Shared Read Blocks": 374,                                                      +
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
     "Planning Time": 5960.655,                                                                +
     "Triggers": [                                                                             +
     ],                                                                                        +
     "Execution Time": 1466841.744                                                             +
   }                                                                                           +
 ]
(1 row)
