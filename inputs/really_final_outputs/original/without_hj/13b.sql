                                                           QUERY PLAN                                                           
--------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                             +
   {                                                                                                                           +
     "Plan": {                                                                                                                 +
       "Node Type": "Aggregate",                                                                                               +
       "Strategy": "Plain",                                                                                                    +
       "Partial Mode": "Simple",                                                                                               +
       "Parallel Aware": false,                                                                                                +
       "Startup Cost": 1851.30,                                                                                                +
       "Total Cost": 1851.30,                                                                                                  +
       "Plan Rows": 1,                                                                                                         +
       "Plan Width": 96,                                                                                                       +
       "Actual Startup Time": 51665.540,                                                                                       +
       "Actual Total Time": 51665.541,                                                                                         +
       "Actual Rows": 1,                                                                                                       +
       "Actual Loops": 1,                                                                                                      +
       "Shared Hit Blocks": 5277407,                                                                                           +
       "Shared Read Blocks": 79058,                                                                                            +
       "Shared Dirtied Blocks": 0,                                                                                             +
       "Shared Written Blocks": 0,                                                                                             +
       "Local Hit Blocks": 0,                                                                                                  +
       "Local Read Blocks": 0,                                                                                                 +
       "Local Dirtied Blocks": 0,                                                                                              +
       "Local Written Blocks": 0,                                                                                              +
       "Temp Read Blocks": 0,                                                                                                  +
       "Temp Written Blocks": 0,                                                                                               +
       "Plans": [                                                                                                              +
         {                                                                                                                     +
           "Node Type": "Nested Loop",                                                                                         +
           "Parent Relationship": "Outer",                                                                                     +
           "Parallel Aware": false,                                                                                            +
           "Join Type": "Inner",                                                                                               +
           "Startup Cost": 0.05,                                                                                               +
           "Total Cost": 1851.30,                                                                                              +
           "Plan Rows": 1,                                                                                                     +
           "Plan Width": 42,                                                                                                   +
           "Actual Startup Time": 29911.500,                                                                                   +
           "Actual Total Time": 51664.749,                                                                                     +
           "Actual Rows": 372,                                                                                                 +
           "Actual Loops": 1,                                                                                                  +
           "Inner Unique": true,                                                                                               +
           "Join Filter": "(t.kind_id = kt.id)",                                                                               +
           "Rows Removed by Join Filter": 191,                                                                                 +
           "Shared Hit Blocks": 5277407,                                                                                       +
           "Shared Read Blocks": 79058,                                                                                        +
           "Shared Dirtied Blocks": 0,                                                                                         +
           "Shared Written Blocks": 0,                                                                                         +
           "Local Hit Blocks": 0,                                                                                              +
           "Local Read Blocks": 0,                                                                                             +
           "Local Dirtied Blocks": 0,                                                                                          +
           "Local Written Blocks": 0,                                                                                          +
           "Temp Read Blocks": 0,                                                                                              +
           "Temp Written Blocks": 0,                                                                                           +
           "Plans": [                                                                                                          +
             {                                                                                                                 +
               "Node Type": "Nested Loop",                                                                                     +
               "Parent Relationship": "Outer",                                                                                 +
               "Parallel Aware": false,                                                                                        +
               "Join Type": "Inner",                                                                                           +
               "Startup Cost": 0.05,                                                                                           +
               "Total Cost": 1851.27,                                                                                          +
               "Plan Rows": 1,                                                                                                 +
               "Plan Width": 46,                                                                                               +
               "Actual Startup Time": 475.181,                                                                                 +
               "Actual Total Time": 51663.783,                                                                                 +
               "Actual Rows": 563,                                                                                             +
               "Actual Loops": 1,                                                                                              +
               "Inner Unique": true,                                                                                           +
               "Join Filter": "(mi.info_type_id = it2.id)",                                                                    +
               "Rows Removed by Join Filter": 2937,                                                                            +
               "Shared Hit Blocks": 5277406,                                                                                   +
               "Shared Read Blocks": 79058,                                                                                    +
               "Shared Dirtied Blocks": 0,                                                                                     +
               "Shared Written Blocks": 0,                                                                                     +
               "Local Hit Blocks": 0,                                                                                          +
               "Local Read Blocks": 0,                                                                                         +
               "Local Dirtied Blocks": 0,                                                                                      +
               "Local Written Blocks": 0,                                                                                      +
               "Temp Read Blocks": 0,                                                                                          +
               "Temp Written Blocks": 0,                                                                                       +
               "Plans": [                                                                                                      +
                 {                                                                                                             +
                   "Node Type": "Nested Loop",                                                                                 +
                   "Parent Relationship": "Outer",                                                                             +
                   "Parallel Aware": false,                                                                                    +
                   "Join Type": "Inner",                                                                                       +
                   "Startup Cost": 0.05,                                                                                       +
                   "Total Cost": 1851.21,                                                                                      +
                   "Plan Rows": 34,                                                                                            +
                   "Plan Width": 50,                                                                                           +
                   "Actual Startup Time": 475.134,                                                                             +
                   "Actual Total Time": 51656.353,                                                                             +
                   "Actual Rows": 3500,                                                                                        +
                   "Actual Loops": 1,                                                                                          +
                   "Inner Unique": false,                                                                                      +
                   "Join Filter": "(t.id = mi.movie_id)",                                                                      +
                   "Rows Removed by Join Filter": 0,                                                                           +
                   "Shared Hit Blocks": 5277405,                                                                               +
                   "Shared Read Blocks": 79058,                                                                                +
                   "Shared Dirtied Blocks": 0,                                                                                 +
                   "Shared Written Blocks": 0,                                                                                 +
                   "Local Hit Blocks": 0,                                                                                      +
                   "Local Read Blocks": 0,                                                                                     +
                   "Local Dirtied Blocks": 0,                                                                                  +
                   "Local Written Blocks": 0,                                                                                  +
                   "Temp Read Blocks": 0,                                                                                      +
                   "Temp Written Blocks": 0,                                                                                   +
                   "Plans": [                                                                                                  +
                     {                                                                                                         +
                       "Node Type": "Nested Loop",                                                                             +
                       "Parent Relationship": "Outer",                                                                         +
                       "Parallel Aware": false,                                                                                +
                       "Join Type": "Inner",                                                                                   +
                       "Startup Cost": 0.04,                                                                                   +
                       "Total Cost": 1850.70,                                                                                  +
                       "Plan Rows": 2,                                                                                         +
                       "Plan Width": 58,                                                                                       +
                       "Actual Startup Time": 456.962,                                                                         +
                       "Actual Total Time": 42083.793,                                                                         +
                       "Actual Rows": 212,                                                                                     +
                       "Actual Loops": 1,                                                                                      +
                       "Inner Unique": true,                                                                                   +
                       "Shared Hit Blocks": 5276153,                                                                           +
                       "Shared Read Blocks": 77896,                                                                            +
                       "Shared Dirtied Blocks": 0,                                                                             +
                       "Shared Written Blocks": 0,                                                                             +
                       "Local Hit Blocks": 0,                                                                                  +
                       "Local Read Blocks": 0,                                                                                 +
                       "Local Dirtied Blocks": 0,                                                                              +
                       "Local Written Blocks": 0,                                                                              +
                       "Temp Read Blocks": 0,                                                                                  +
                       "Temp Written Blocks": 0,                                                                               +
                       "Plans": [                                                                                              +
                         {                                                                                                     +
                           "Node Type": "Nested Loop",                                                                         +
                           "Parent Relationship": "Outer",                                                                     +
                           "Parallel Aware": false,                                                                            +
                           "Join Type": "Inner",                                                                               +
                           "Startup Cost": 0.03,                                                                               +
                           "Total Cost": 1680.18,                                                                              +
                           "Plan Rows": 2659,                                                                                  +
                           "Plan Width": 33,                                                                                   +
                           "Actual Startup Time": 63.960,                                                                      +
                           "Actual Total Time": 19305.016,                                                                     +
                           "Actual Rows": 248554,                                                                              +
                           "Actual Loops": 1,                                                                                  +
                           "Inner Unique": true,                                                                               +
                           "Shared Hit Blocks": 4320879,                                                                       +
                           "Shared Read Blocks": 37666,                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                         +
                           "Shared Written Blocks": 0,                                                                         +
                           "Local Hit Blocks": 0,                                                                              +
                           "Local Read Blocks": 0,                                                                             +
                           "Local Dirtied Blocks": 0,                                                                          +
                           "Local Written Blocks": 0,                                                                          +
                           "Temp Read Blocks": 0,                                                                              +
                           "Temp Written Blocks": 0,                                                                           +
                           "Plans": [                                                                                          +
                             {                                                                                                 +
                               "Node Type": "Nested Loop",                                                                     +
                               "Parent Relationship": "Outer",                                                                 +
                               "Parallel Aware": false,                                                                        +
                               "Join Type": "Inner",                                                                           +
                               "Startup Cost": 0.01,                                                                           +
                               "Total Cost": 1548.98,                                                                          +
                               "Plan Rows": 7365,                                                                              +
                               "Plan Width": 18,                                                                               +
                               "Actual Startup Time": 23.787,                                                                  +
                               "Actual Total Time": 8192.814,                                                                  +
                               "Actual Rows": 584222,                                                                          +
                               "Actual Loops": 1,                                                                              +
                               "Inner Unique": true,                                                                           +
                               "Join Filter": "(mc.company_type_id = ct.id)",                                                  +
                               "Rows Removed by Join Filter": 770661,                                                          +
                               "Shared Hit Blocks": 1983353,                                                                   +
                               "Shared Read Blocks": 33831,                                                                    +
                               "Shared Dirtied Blocks": 0,                                                                     +
                               "Shared Written Blocks": 0,                                                                     +
                               "Local Hit Blocks": 0,                                                                          +
                               "Local Read Blocks": 0,                                                                         +
                               "Local Dirtied Blocks": 0,                                                                      +
                               "Local Written Blocks": 0,                                                                      +
                               "Temp Read Blocks": 0,                                                                          +
                               "Temp Written Blocks": 0,                                                                       +
                               "Plans": [                                                                                      +
                                 {                                                                                             +
                                   "Node Type": "Nested Loop",                                                                 +
                                   "Parent Relationship": "Outer",                                                             +
                                   "Parallel Aware": false,                                                                    +
                                   "Join Type": "Inner",                                                                       +
                                   "Startup Cost": 0.01,                                                                       +
                                   "Total Cost": 1542.33,                                                                      +
                                   "Plan Rows": 29462,                                                                         +
                                   "Plan Width": 22,                                                                           +
                                   "Actual Startup Time": 0.143,                                                               +
                                   "Actual Total Time": 7244.451,                                                              +
                                   "Actual Rows": 1354883,                                                                     +
                                   "Actual Loops": 1,                                                                          +
                                   "Inner Unique": false,                                                                      +
                                   "Shared Hit Blocks": 1983352,                                                               +
                                   "Shared Read Blocks": 33831,                                                                +
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
                                       "Startup Cost": 0.00,                                                                   +
                                       "Total Cost": 670.32,                                                                   +
                                       "Plan Rows": 12213,                                                                     +
                                       "Plan Width": 10,                                                                       +
                                       "Actual Startup Time": 0.114,                                                           +
                                       "Actual Total Time": 1387.814,                                                          +
                                       "Actual Rows": 459925,                                                                  +
                                       "Actual Loops": 1,                                                                      +
                                       "Inner Unique": true,                                                                   +
                                       "Join Filter": "(it.id = miidx.info_type_id)",                                          +
                                       "Rows Removed by Join Filter": 920110,                                                  +
                                       "Shared Hit Blocks": 3,                                                                 +
                                       "Shared Read Blocks": 8451,                                                             +
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
                                           "Node Type": "Seq Scan",                                                            +
                                           "Parent Relationship": "Outer",                                                     +
                                           "Parallel Aware": false,                                                            +
                                           "Relation Name": "movie_info_idx",                                                  +
                                           "Alias": "miidx",                                                                   +
                                           "Startup Cost": 0.00,                                                               +
                                           "Total Cost": 360.56,                                                               +
                                           "Plan Rows": 1380035,                                                               +
                                           "Plan Width": 14,                                                                   +
                                           "Actual Startup Time": 0.014,                                                       +
                                           "Actual Total Time": 317.461,                                                       +
                                           "Actual Rows": 1380035,                                                             +
                                           "Actual Loops": 1,                                                                  +
                                           "Shared Hit Blocks": 2,                                                             +
                                           "Shared Read Blocks": 8451,                                                         +
                                           "Shared Dirtied Blocks": 0,                                                         +
                                           "Shared Written Blocks": 0,                                                         +
                                           "Local Hit Blocks": 0,                                                              +
                                           "Local Read Blocks": 0,                                                             +
                                           "Local Dirtied Blocks": 0,                                                          +
                                           "Local Written Blocks": 0,                                                          +
                                           "Temp Read Blocks": 0,                                                              +
                                           "Temp Written Blocks": 0                                                            +
                                         },                                                                                    +
                                         {                                                                                     +
                                           "Node Type": "Materialize",                                                         +
                                           "Parent Relationship": "Inner",                                                     +
                                           "Parallel Aware": false,                                                            +
                                           "Startup Cost": 0.00,                                                               +
                                           "Total Cost": 0.05,                                                                 +
                                           "Plan Rows": 1,                                                                     +
                                           "Plan Width": 4,                                                                    +
                                           "Actual Startup Time": 0.000,                                                       +
                                           "Actual Total Time": 0.000,                                                         +
                                           "Actual Rows": 1,                                                                   +
                                           "Actual Loops": 1380035,                                                            +
                                           "Shared Hit Blocks": 1,                                                             +
                                           "Shared Read Blocks": 0,                                                            +
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
                                               "Node Type": "Seq Scan",                                                        +
                                               "Parent Relationship": "Outer",                                                 +
                                               "Parallel Aware": false,                                                        +
                                               "Relation Name": "info_type",                                                   +
                                               "Alias": "it",                                                                  +
                                               "Startup Cost": 0.00,                                                           +
                                               "Total Cost": 0.05,                                                             +
                                               "Plan Rows": 1,                                                                 +
                                               "Plan Width": 4,                                                                +
                                               "Actual Startup Time": 0.069,                                                   +
                                               "Actual Total Time": 0.075,                                                     +
                                               "Actual Rows": 1,                                                               +
                                               "Actual Loops": 1,                                                              +
                                               "Filter": "((info)::text = 'rating'::text)",                                    +
                                               "Rows Removed by Filter": 112,                                                  +
                                               "Shared Hit Blocks": 1,                                                         +
                                               "Shared Read Blocks": 0,                                                        +
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
                                     {                                                                                         +
                                       "Node Type": "Index Scan",                                                              +
                                       "Parent Relationship": "Inner",                                                         +
                                       "Parallel Aware": false,                                                                +
                                       "Scan Direction": "Forward",                                                            +
                                       "Index Name": "movie_id_movie_companies",                                               +
                                       "Relation Name": "movie_companies",                                                     +
                                       "Alias": "mc",                                                                          +
                                       "Startup Cost": 0.01,                                                                   +
                                       "Total Cost": 0.07,                                                                     +
                                       "Plan Rows": 2,                                                                         +
                                       "Plan Width": 12,                                                                       +
                                       "Actual Startup Time": 0.007,                                                           +
                                       "Actual Total Time": 0.011,                                                             +
                                       "Actual Rows": 3,                                                                       +
                                       "Actual Loops": 459925,                                                                 +
                                       "Index Cond": "(movie_id = miidx.movie_id)",                                            +
                                       "Rows Removed by Index Recheck": 0,                                                     +
                                       "Shared Hit Blocks": 1983349,                                                           +
                                       "Shared Read Blocks": 25380,                                                            +
                                       "Shared Dirtied Blocks": 0,                                                             +
                                       "Shared Written Blocks": 0,                                                             +
                                       "Local Hit Blocks": 0,                                                                  +
                                       "Local Read Blocks": 0,                                                                 +
                                       "Local Dirtied Blocks": 0,                                                              +
                                       "Local Written Blocks": 0,                                                              +
                                       "Temp Read Blocks": 0,                                                                  +
                                       "Temp Written Blocks": 0                                                                +
                                     }                                                                                         +
                                   ]                                                                                           +
                                 },                                                                                            +
                                 {                                                                                             +
                                   "Node Type": "Materialize",                                                                 +
                                   "Parent Relationship": "Inner",                                                             +
                                   "Parallel Aware": false,                                                                    +
                                   "Startup Cost": 0.00,                                                                       +
                                   "Total Cost": 0.03,                                                                         +
                                   "Plan Rows": 1,                                                                             +
                                   "Plan Width": 4,                                                                            +
                                   "Actual Startup Time": 0.000,                                                               +
                                   "Actual Total Time": 0.000,                                                                 +
                                   "Actual Rows": 1,                                                                           +
                                   "Actual Loops": 1354883,                                                                    +
                                   "Shared Hit Blocks": 1,                                                                     +
                                   "Shared Read Blocks": 0,                                                                    +
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
                                       "Node Type": "Seq Scan",                                                                +
                                       "Parent Relationship": "Outer",                                                         +
                                       "Parallel Aware": false,                                                                +
                                       "Relation Name": "company_type",                                                        +
                                       "Alias": "ct",                                                                          +
                                       "Startup Cost": 0.00,                                                                   +
                                       "Total Cost": 0.03,                                                                     +
                                       "Plan Rows": 1,                                                                         +
                                       "Plan Width": 4,                                                                        +
                                       "Actual Startup Time": 0.009,                                                           +
                                       "Actual Total Time": 0.011,                                                             +
                                       "Actual Rows": 1,                                                                       +
                                       "Actual Loops": 1,                                                                      +
                                       "Filter": "((kind)::text = 'production companies'::text)",                              +
                                       "Rows Removed by Filter": 3,                                                            +
                                       "Shared Hit Blocks": 1,                                                                 +
                                       "Shared Read Blocks": 0,                                                                +
                                       "Shared Dirtied Blocks": 0,                                                             +
                                       "Shared Written Blocks": 0,                                                             +
                                       "Local Hit Blocks": 0,                                                                  +
                                       "Local Read Blocks": 0,                                                                 +
                                       "Local Dirtied Blocks": 0,                                                              +
                                       "Local Written Blocks": 0,                                                              +
                                       "Temp Read Blocks": 0,                                                                  +
                                       "Temp Written Blocks": 0                                                                +
                                     }                                                                                         +
                                   ]                                                                                           +
                                 }                                                                                             +
                               ]                                                                                               +
                             },                                                                                                +
                             {                                                                                                 +
                               "Node Type": "Index Scan",                                                                      +
                               "Parent Relationship": "Inner",                                                                 +
                               "Parallel Aware": false,                                                                        +
                               "Scan Direction": "Forward",                                                                    +
                               "Index Name": "company_name_pkey",                                                              +
                               "Relation Name": "company_name",                                                                +
                               "Alias": "cn",                                                                                  +
                               "Startup Cost": 0.01,                                                                           +
                               "Total Cost": 0.02,                                                                             +
                               "Plan Rows": 1,                                                                                 +
                               "Plan Width": 23,                                                                               +
                               "Actual Startup Time": 0.018,                                                                   +
                               "Actual Total Time": 0.018,                                                                     +
                               "Actual Rows": 0,                                                                               +
                               "Actual Loops": 584222,                                                                         +
                               "Index Cond": "(id = mc.company_id)",                                                           +
                               "Rows Removed by Index Recheck": 0,                                                             +
                               "Filter": "((country_code)::text = '[us]'::text)",                                              +
                               "Rows Removed by Filter": 1,                                                                    +
                               "Shared Hit Blocks": 2337526,                                                                   +
                               "Shared Read Blocks": 3835,                                                                     +
                               "Shared Dirtied Blocks": 0,                                                                     +
                               "Shared Written Blocks": 0,                                                                     +
                               "Local Hit Blocks": 0,                                                                          +
                               "Local Read Blocks": 0,                                                                         +
                               "Local Dirtied Blocks": 0,                                                                      +
                               "Local Written Blocks": 0,                                                                      +
                               "Temp Read Blocks": 0,                                                                          +
                               "Temp Written Blocks": 0                                                                        +
                             }                                                                                                 +
                           ]                                                                                                   +
                         },                                                                                                    +
                         {                                                                                                     +
                           "Node Type": "Index Scan",                                                                          +
                           "Parent Relationship": "Inner",                                                                     +
                           "Parallel Aware": false,                                                                            +
                           "Scan Direction": "Forward",                                                                        +
                           "Index Name": "title_idx_id",                                                                       +
                           "Relation Name": "title",                                                                           +
                           "Alias": "t",                                                                                       +
                           "Startup Cost": 0.01,                                                                               +
                           "Total Cost": 0.06,                                                                                 +
                           "Plan Rows": 1,                                                                                     +
                           "Plan Width": 25,                                                                                   +
                           "Actual Startup Time": 0.091,                                                                       +
                           "Actual Total Time": 0.091,                                                                         +
                           "Actual Rows": 0,                                                                                   +
                           "Actual Loops": 248554,                                                                             +
                           "Index Cond": "(id = mc.movie_id)",                                                                 +
                           "Rows Removed by Index Recheck": 0,                                                                 +
                           "Filter": "((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))",+
                           "Rows Removed by Filter": 1,                                                                        +
                           "Shared Hit Blocks": 955274,                                                                        +
                           "Shared Read Blocks": 40230,                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                         +
                           "Shared Written Blocks": 0,                                                                         +
                           "Local Hit Blocks": 0,                                                                              +
                           "Local Read Blocks": 0,                                                                             +
                           "Local Dirtied Blocks": 0,                                                                          +
                           "Local Written Blocks": 0,                                                                          +
                           "Temp Read Blocks": 0,                                                                              +
                           "Temp Written Blocks": 0                                                                            +
                         }                                                                                                     +
                       ]                                                                                                       +
                     },                                                                                                        +
                     {                                                                                                         +
                       "Node Type": "Index Scan",                                                                              +
                       "Parent Relationship": "Inner",                                                                         +
                       "Parallel Aware": false,                                                                                +
                       "Scan Direction": "Forward",                                                                            +
                       "Index Name": "movie_id_movie_info",                                                                    +
                       "Relation Name": "movie_info",                                                                          +
                       "Alias": "mi",                                                                                          +
                       "Startup Cost": 0.01,                                                                                   +
                       "Total Cost": 0.25,                                                                                     +
                       "Plan Rows": 9,                                                                                         +
                       "Plan Width": 8,                                                                                        +
                       "Actual Startup Time": 17.188,                                                                          +
                       "Actual Total Time": 45.124,                                                                            +
                       "Actual Rows": 17,                                                                                      +
                       "Actual Loops": 212,                                                                                    +
                       "Index Cond": "(movie_id = mc.movie_id)",                                                               +
                       "Rows Removed by Index Recheck": 0,                                                                     +
                       "Shared Hit Blocks": 1252,                                                                              +
                       "Shared Read Blocks": 1162,                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                             +
                       "Shared Written Blocks": 0,                                                                             +
                       "Local Hit Blocks": 0,                                                                                  +
                       "Local Read Blocks": 0,                                                                                 +
                       "Local Dirtied Blocks": 0,                                                                              +
                       "Local Written Blocks": 0,                                                                              +
                       "Temp Read Blocks": 0,                                                                                  +
                       "Temp Written Blocks": 0                                                                                +
                     }                                                                                                         +
                   ]                                                                                                           +
                 },                                                                                                            +
                 {                                                                                                             +
                   "Node Type": "Materialize",                                                                                 +
                   "Parent Relationship": "Inner",                                                                             +
                   "Parallel Aware": false,                                                                                    +
                   "Startup Cost": 0.00,                                                                                       +
                   "Total Cost": 0.05,                                                                                         +
                   "Plan Rows": 1,                                                                                             +
                   "Plan Width": 4,                                                                                            +
                   "Actual Startup Time": 0.000,                                                                               +
                   "Actual Total Time": 0.001,                                                                                 +
                   "Actual Rows": 1,                                                                                           +
                   "Actual Loops": 3500,                                                                                       +
                   "Shared Hit Blocks": 1,                                                                                     +
                   "Shared Read Blocks": 0,                                                                                    +
                   "Shared Dirtied Blocks": 0,                                                                                 +
                   "Shared Written Blocks": 0,                                                                                 +
                   "Local Hit Blocks": 0,                                                                                      +
                   "Local Read Blocks": 0,                                                                                     +
                   "Local Dirtied Blocks": 0,                                                                                  +
                   "Local Written Blocks": 0,                                                                                  +
                   "Temp Read Blocks": 0,                                                                                      +
                   "Temp Written Blocks": 0,                                                                                   +
                   "Plans": [                                                                                                  +
                     {                                                                                                         +
                       "Node Type": "Seq Scan",                                                                                +
                       "Parent Relationship": "Outer",                                                                         +
                       "Parallel Aware": false,                                                                                +
                       "Relation Name": "info_type",                                                                           +
                       "Alias": "it2",                                                                                         +
                       "Startup Cost": 0.00,                                                                                   +
                       "Total Cost": 0.05,                                                                                     +
                       "Plan Rows": 1,                                                                                         +
                       "Plan Width": 4,                                                                                        +
                       "Actual Startup Time": 0.025,                                                                           +
                       "Actual Total Time": 0.068,                                                                             +
                       "Actual Rows": 1,                                                                                       +
                       "Actual Loops": 1,                                                                                      +
                       "Filter": "((info)::text = 'release dates'::text)",                                                     +
                       "Rows Removed by Filter": 112,                                                                          +
                       "Shared Hit Blocks": 1,                                                                                 +
                       "Shared Read Blocks": 0,                                                                                +
                       "Shared Dirtied Blocks": 0,                                                                             +
                       "Shared Written Blocks": 0,                                                                             +
                       "Local Hit Blocks": 0,                                                                                  +
                       "Local Read Blocks": 0,                                                                                 +
                       "Local Dirtied Blocks": 0,                                                                              +
                       "Local Written Blocks": 0,                                                                              +
                       "Temp Read Blocks": 0,                                                                                  +
                       "Temp Written Blocks": 0                                                                                +
                     }                                                                                                         +
                   ]                                                                                                           +
                 }                                                                                                             +
               ]                                                                                                               +
             },                                                                                                                +
             {                                                                                                                 +
               "Node Type": "Materialize",                                                                                     +
               "Parent Relationship": "Inner",                                                                                 +
               "Parallel Aware": false,                                                                                        +
               "Startup Cost": 0.00,                                                                                           +
               "Total Cost": 0.03,                                                                                             +
               "Plan Rows": 1,                                                                                                 +
               "Plan Width": 4,                                                                                                +
               "Actual Startup Time": 0.000,                                                                                   +
               "Actual Total Time": 0.000,                                                                                     +
               "Actual Rows": 1,                                                                                               +
               "Actual Loops": 563,                                                                                            +
               "Shared Hit Blocks": 1,                                                                                         +
               "Shared Read Blocks": 0,                                                                                        +
               "Shared Dirtied Blocks": 0,                                                                                     +
               "Shared Written Blocks": 0,                                                                                     +
               "Local Hit Blocks": 0,                                                                                          +
               "Local Read Blocks": 0,                                                                                         +
               "Local Dirtied Blocks": 0,                                                                                      +
               "Local Written Blocks": 0,                                                                                      +
               "Temp Read Blocks": 0,                                                                                          +
               "Temp Written Blocks": 0,                                                                                       +
               "Plans": [                                                                                                      +
                 {                                                                                                             +
                   "Node Type": "Seq Scan",                                                                                    +
                   "Parent Relationship": "Outer",                                                                             +
                   "Parallel Aware": false,                                                                                    +
                   "Relation Name": "kind_type",                                                                               +
                   "Alias": "kt",                                                                                              +
                   "Startup Cost": 0.00,                                                                                       +
                   "Total Cost": 0.03,                                                                                         +
                   "Plan Rows": 1,                                                                                             +
                   "Plan Width": 4,                                                                                            +
                   "Actual Startup Time": 0.008,                                                                               +
                   "Actual Total Time": 0.013,                                                                                 +
                   "Actual Rows": 1,                                                                                           +
                   "Actual Loops": 1,                                                                                          +
                   "Filter": "((kind)::text = 'movie'::text)",                                                                 +
                   "Rows Removed by Filter": 6,                                                                                +
                   "Shared Hit Blocks": 1,                                                                                     +
                   "Shared Read Blocks": 0,                                                                                    +
                   "Shared Dirtied Blocks": 0,                                                                                 +
                   "Shared Written Blocks": 0,                                                                                 +
                   "Local Hit Blocks": 0,                                                                                      +
                   "Local Read Blocks": 0,                                                                                     +
                   "Local Dirtied Blocks": 0,                                                                                  +
                   "Local Written Blocks": 0,                                                                                  +
                   "Temp Read Blocks": 0,                                                                                      +
                   "Temp Written Blocks": 0                                                                                    +
                 }                                                                                                             +
               ]                                                                                                               +
             }                                                                                                                 +
           ]                                                                                                                   +
         }                                                                                                                     +
       ]                                                                                                                       +
     },                                                                                                                        +
     "Planning Time": 4946.666,                                                                                                +
     "Triggers": [                                                                                                             +
     ],                                                                                                                        +
     "Execution Time": 51680.593                                                                                               +
   }                                                                                                                           +
 ]
(1 row)
