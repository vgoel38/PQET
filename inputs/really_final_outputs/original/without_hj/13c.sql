                                                          QUERY PLAN                                                          
------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                           +
   {                                                                                                                         +
     "Plan": {                                                                                                               +
       "Node Type": "Aggregate",                                                                                             +
       "Strategy": "Plain",                                                                                                  +
       "Partial Mode": "Simple",                                                                                             +
       "Parallel Aware": false,                                                                                              +
       "Startup Cost": 1852.06,                                                                                              +
       "Total Cost": 1852.06,                                                                                                +
       "Plan Rows": 1,                                                                                                       +
       "Plan Width": 96,                                                                                                     +
       "Actual Startup Time": 32829.191,                                                                                     +
       "Actual Total Time": 32829.191,                                                                                       +
       "Actual Rows": 1,                                                                                                     +
       "Actual Loops": 1,                                                                                                    +
       "Shared Hit Blocks": 5276274,                                                                                         +
       "Shared Read Blocks": 77944,                                                                                          +
       "Shared Dirtied Blocks": 0,                                                                                           +
       "Shared Written Blocks": 0,                                                                                           +
       "Local Hit Blocks": 0,                                                                                                +
       "Local Read Blocks": 0,                                                                                               +
       "Local Dirtied Blocks": 0,                                                                                            +
       "Local Written Blocks": 0,                                                                                            +
       "Temp Read Blocks": 0,                                                                                                +
       "Temp Written Blocks": 0,                                                                                             +
       "Plans": [                                                                                                            +
         {                                                                                                                   +
           "Node Type": "Nested Loop",                                                                                       +
           "Parent Relationship": "Outer",                                                                                   +
           "Parallel Aware": false,                                                                                          +
           "Join Type": "Inner",                                                                                             +
           "Startup Cost": 0.05,                                                                                             +
           "Total Cost": 1852.06,                                                                                            +
           "Plan Rows": 1,                                                                                                   +
           "Plan Width": 42,                                                                                                 +
           "Actual Startup Time": 21354.737,                                                                                 +
           "Actual Total Time": 32829.004,                                                                                   +
           "Actual Rows": 53,                                                                                                +
           "Actual Loops": 1,                                                                                                +
           "Inner Unique": true,                                                                                             +
           "Join Filter": "(mi.info_type_id = it2.id)",                                                                      +
           "Rows Removed by Join Filter": 165,                                                                               +
           "Shared Hit Blocks": 5276274,                                                                                     +
           "Shared Read Blocks": 77944,                                                                                      +
           "Shared Dirtied Blocks": 0,                                                                                       +
           "Shared Written Blocks": 0,                                                                                       +
           "Local Hit Blocks": 0,                                                                                            +
           "Local Read Blocks": 0,                                                                                           +
           "Local Dirtied Blocks": 0,                                                                                        +
           "Local Written Blocks": 0,                                                                                        +
           "Temp Read Blocks": 0,                                                                                            +
           "Temp Written Blocks": 0,                                                                                         +
           "Plans": [                                                                                                        +
             {                                                                                                               +
               "Node Type": "Nested Loop",                                                                                   +
               "Parent Relationship": "Outer",                                                                               +
               "Parallel Aware": false,                                                                                      +
               "Join Type": "Inner",                                                                                         +
               "Startup Cost": 0.05,                                                                                         +
               "Total Cost": 1852.01,                                                                                        +
               "Plan Rows": 1,                                                                                               +
               "Plan Width": 46,                                                                                             +
               "Actual Startup Time": 21334.074,                                                                             +
               "Actual Total Time": 32828.526,                                                                               +
               "Actual Rows": 218,                                                                                           +
               "Actual Loops": 1,                                                                                            +
               "Inner Unique": false,                                                                                        +
               "Join Filter": "(t.id = mi.movie_id)",                                                                        +
               "Rows Removed by Join Filter": 0,                                                                             +
               "Shared Hit Blocks": 5276273,                                                                                 +
               "Shared Read Blocks": 77944,                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                   +
               "Shared Written Blocks": 0,                                                                                   +
               "Local Hit Blocks": 0,                                                                                        +
               "Local Read Blocks": 0,                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                    +
               "Local Written Blocks": 0,                                                                                    +
               "Temp Read Blocks": 0,                                                                                        +
               "Temp Written Blocks": 0,                                                                                     +
               "Plans": [                                                                                                    +
                 {                                                                                                           +
                   "Node Type": "Nested Loop",                                                                               +
                   "Parent Relationship": "Outer",                                                                           +
                   "Parallel Aware": false,                                                                                  +
                   "Join Type": "Inner",                                                                                     +
                   "Startup Cost": 0.04,                                                                                     +
                   "Total Cost": 1850.74,                                                                                    +
                   "Plan Rows": 1,                                                                                           +
                   "Plan Width": 54,                                                                                         +
                   "Actual Startup Time": 21296.882,                                                                         +
                   "Actual Total Time": 32479.121,                                                                           +
                   "Actual Rows": 14,                                                                                        +
                   "Actual Loops": 1,                                                                                        +
                   "Inner Unique": true,                                                                                     +
                   "Join Filter": "(t.kind_id = kt.id)",                                                                     +
                   "Rows Removed by Join Filter": 18,                                                                        +
                   "Shared Hit Blocks": 5276154,                                                                             +
                   "Shared Read Blocks": 77896,                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                               +
                   "Shared Written Blocks": 0,                                                                               +
                   "Local Hit Blocks": 0,                                                                                    +
                   "Local Read Blocks": 0,                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                +
                   "Local Written Blocks": 0,                                                                                +
                   "Temp Read Blocks": 0,                                                                                    +
                   "Temp Written Blocks": 0,                                                                                 +
                   "Plans": [                                                                                                +
                     {                                                                                                       +
                       "Node Type": "Nested Loop",                                                                           +
                       "Parent Relationship": "Outer",                                                                       +
                       "Parallel Aware": false,                                                                              +
                       "Join Type": "Inner",                                                                                 +
                       "Startup Cost": 0.04,                                                                                 +
                       "Total Cost": 1850.70,                                                                                +
                       "Plan Rows": 1,                                                                                       +
                       "Plan Width": 58,                                                                                     +
                       "Actual Startup Time": 1943.194,                                                                      +
                       "Actual Total Time": 32479.028,                                                                       +
                       "Actual Rows": 32,                                                                                    +
                       "Actual Loops": 1,                                                                                    +
                       "Inner Unique": true,                                                                                 +
                       "Shared Hit Blocks": 5276153,                                                                         +
                       "Shared Read Blocks": 77896,                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                           +
                       "Shared Written Blocks": 0,                                                                           +
                       "Local Hit Blocks": 0,                                                                                +
                       "Local Read Blocks": 0,                                                                               +
                       "Local Dirtied Blocks": 0,                                                                            +
                       "Local Written Blocks": 0,                                                                            +
                       "Temp Read Blocks": 0,                                                                                +
                       "Temp Written Blocks": 0,                                                                             +
                       "Plans": [                                                                                            +
                         {                                                                                                   +
                           "Node Type": "Nested Loop",                                                                       +
                           "Parent Relationship": "Outer",                                                                   +
                           "Parallel Aware": false,                                                                          +
                           "Join Type": "Inner",                                                                             +
                           "Startup Cost": 0.03,                                                                             +
                           "Total Cost": 1680.18,                                                                            +
                           "Plan Rows": 2659,                                                                                +
                           "Plan Width": 33,                                                                                 +
                           "Actual Startup Time": 63.973,                                                                    +
                           "Actual Total Time": 14598.356,                                                                   +
                           "Actual Rows": 248554,                                                                            +
                           "Actual Loops": 1,                                                                                +
                           "Inner Unique": true,                                                                             +
                           "Shared Hit Blocks": 4320879,                                                                     +
                           "Shared Read Blocks": 37666,                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                       +
                           "Shared Written Blocks": 0,                                                                       +
                           "Local Hit Blocks": 0,                                                                            +
                           "Local Read Blocks": 0,                                                                           +
                           "Local Dirtied Blocks": 0,                                                                        +
                           "Local Written Blocks": 0,                                                                        +
                           "Temp Read Blocks": 0,                                                                            +
                           "Temp Written Blocks": 0,                                                                         +
                           "Plans": [                                                                                        +
                             {                                                                                               +
                               "Node Type": "Nested Loop",                                                                   +
                               "Parent Relationship": "Outer",                                                               +
                               "Parallel Aware": false,                                                                      +
                               "Join Type": "Inner",                                                                         +
                               "Startup Cost": 0.01,                                                                         +
                               "Total Cost": 1548.98,                                                                        +
                               "Plan Rows": 7365,                                                                            +
                               "Plan Width": 18,                                                                             +
                               "Actual Startup Time": 23.803,                                                                +
                               "Actual Total Time": 6812.662,                                                                +
                               "Actual Rows": 584222,                                                                        +
                               "Actual Loops": 1,                                                                            +
                               "Inner Unique": true,                                                                         +
                               "Join Filter": "(mc.company_type_id = ct.id)",                                                +
                               "Rows Removed by Join Filter": 770661,                                                        +
                               "Shared Hit Blocks": 1983353,                                                                 +
                               "Shared Read Blocks": 33831,                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                   +
                               "Shared Written Blocks": 0,                                                                   +
                               "Local Hit Blocks": 0,                                                                        +
                               "Local Read Blocks": 0,                                                                       +
                               "Local Dirtied Blocks": 0,                                                                    +
                               "Local Written Blocks": 0,                                                                    +
                               "Temp Read Blocks": 0,                                                                        +
                               "Temp Written Blocks": 0,                                                                     +
                               "Plans": [                                                                                    +
                                 {                                                                                           +
                                   "Node Type": "Nested Loop",                                                               +
                                   "Parent Relationship": "Outer",                                                           +
                                   "Parallel Aware": false,                                                                  +
                                   "Join Type": "Inner",                                                                     +
                                   "Startup Cost": 0.01,                                                                     +
                                   "Total Cost": 1542.33,                                                                    +
                                   "Plan Rows": 29462,                                                                       +
                                   "Plan Width": 22,                                                                         +
                                   "Actual Startup Time": 0.147,                                                             +
                                   "Actual Total Time": 6010.273,                                                            +
                                   "Actual Rows": 1354883,                                                                   +
                                   "Actual Loops": 1,                                                                        +
                                   "Inner Unique": false,                                                                    +
                                   "Shared Hit Blocks": 1983352,                                                             +
                                   "Shared Read Blocks": 33831,                                                              +
                                   "Shared Dirtied Blocks": 0,                                                               +
                                   "Shared Written Blocks": 0,                                                               +
                                   "Local Hit Blocks": 0,                                                                    +
                                   "Local Read Blocks": 0,                                                                   +
                                   "Local Dirtied Blocks": 0,                                                                +
                                   "Local Written Blocks": 0,                                                                +
                                   "Temp Read Blocks": 0,                                                                    +
                                   "Temp Written Blocks": 0,                                                                 +
                                   "Plans": [                                                                                +
                                     {                                                                                       +
                                       "Node Type": "Nested Loop",                                                           +
                                       "Parent Relationship": "Outer",                                                       +
                                       "Parallel Aware": false,                                                              +
                                       "Join Type": "Inner",                                                                 +
                                       "Startup Cost": 0.00,                                                                 +
                                       "Total Cost": 670.32,                                                                 +
                                       "Plan Rows": 12213,                                                                   +
                                       "Plan Width": 10,                                                                     +
                                       "Actual Startup Time": 0.118,                                                         +
                                       "Actual Total Time": 1230.270,                                                        +
                                       "Actual Rows": 459925,                                                                +
                                       "Actual Loops": 1,                                                                    +
                                       "Inner Unique": true,                                                                 +
                                       "Join Filter": "(it.id = miidx.info_type_id)",                                        +
                                       "Rows Removed by Join Filter": 920110,                                                +
                                       "Shared Hit Blocks": 3,                                                               +
                                       "Shared Read Blocks": 8451,                                                           +
                                       "Shared Dirtied Blocks": 0,                                                           +
                                       "Shared Written Blocks": 0,                                                           +
                                       "Local Hit Blocks": 0,                                                                +
                                       "Local Read Blocks": 0,                                                               +
                                       "Local Dirtied Blocks": 0,                                                            +
                                       "Local Written Blocks": 0,                                                            +
                                       "Temp Read Blocks": 0,                                                                +
                                       "Temp Written Blocks": 0,                                                             +
                                       "Plans": [                                                                            +
                                         {                                                                                   +
                                           "Node Type": "Seq Scan",                                                          +
                                           "Parent Relationship": "Outer",                                                   +
                                           "Parallel Aware": false,                                                          +
                                           "Relation Name": "movie_info_idx",                                                +
                                           "Alias": "miidx",                                                                 +
                                           "Startup Cost": 0.00,                                                             +
                                           "Total Cost": 360.56,                                                             +
                                           "Plan Rows": 1380035,                                                             +
                                           "Plan Width": 14,                                                                 +
                                           "Actual Startup Time": 0.015,                                                     +
                                           "Actual Total Time": 318.256,                                                     +
                                           "Actual Rows": 1380035,                                                           +
                                           "Actual Loops": 1,                                                                +
                                           "Shared Hit Blocks": 2,                                                           +
                                           "Shared Read Blocks": 8451,                                                       +
                                           "Shared Dirtied Blocks": 0,                                                       +
                                           "Shared Written Blocks": 0,                                                       +
                                           "Local Hit Blocks": 0,                                                            +
                                           "Local Read Blocks": 0,                                                           +
                                           "Local Dirtied Blocks": 0,                                                        +
                                           "Local Written Blocks": 0,                                                        +
                                           "Temp Read Blocks": 0,                                                            +
                                           "Temp Written Blocks": 0                                                          +
                                         },                                                                                  +
                                         {                                                                                   +
                                           "Node Type": "Materialize",                                                       +
                                           "Parent Relationship": "Inner",                                                   +
                                           "Parallel Aware": false,                                                          +
                                           "Startup Cost": 0.00,                                                             +
                                           "Total Cost": 0.05,                                                               +
                                           "Plan Rows": 1,                                                                   +
                                           "Plan Width": 4,                                                                  +
                                           "Actual Startup Time": 0.000,                                                     +
                                           "Actual Total Time": 0.000,                                                       +
                                           "Actual Rows": 1,                                                                 +
                                           "Actual Loops": 1380035,                                                          +
                                           "Shared Hit Blocks": 1,                                                           +
                                           "Shared Read Blocks": 0,                                                          +
                                           "Shared Dirtied Blocks": 0,                                                       +
                                           "Shared Written Blocks": 0,                                                       +
                                           "Local Hit Blocks": 0,                                                            +
                                           "Local Read Blocks": 0,                                                           +
                                           "Local Dirtied Blocks": 0,                                                        +
                                           "Local Written Blocks": 0,                                                        +
                                           "Temp Read Blocks": 0,                                                            +
                                           "Temp Written Blocks": 0,                                                         +
                                           "Plans": [                                                                        +
                                             {                                                                               +
                                               "Node Type": "Seq Scan",                                                      +
                                               "Parent Relationship": "Outer",                                               +
                                               "Parallel Aware": false,                                                      +
                                               "Relation Name": "info_type",                                                 +
                                               "Alias": "it",                                                                +
                                               "Startup Cost": 0.00,                                                         +
                                               "Total Cost": 0.05,                                                           +
                                               "Plan Rows": 1,                                                               +
                                               "Plan Width": 4,                                                              +
                                               "Actual Startup Time": 0.070,                                                 +
                                               "Actual Total Time": 0.075,                                                   +
                                               "Actual Rows": 1,                                                             +
                                               "Actual Loops": 1,                                                            +
                                               "Filter": "((info)::text = 'rating'::text)",                                  +
                                               "Rows Removed by Filter": 112,                                                +
                                               "Shared Hit Blocks": 1,                                                       +
                                               "Shared Read Blocks": 0,                                                      +
                                               "Shared Dirtied Blocks": 0,                                                   +
                                               "Shared Written Blocks": 0,                                                   +
                                               "Local Hit Blocks": 0,                                                        +
                                               "Local Read Blocks": 0,                                                       +
                                               "Local Dirtied Blocks": 0,                                                    +
                                               "Local Written Blocks": 0,                                                    +
                                               "Temp Read Blocks": 0,                                                        +
                                               "Temp Written Blocks": 0                                                      +
                                             }                                                                               +
                                           ]                                                                                 +
                                         }                                                                                   +
                                       ]                                                                                     +
                                     },                                                                                      +
                                     {                                                                                       +
                                       "Node Type": "Index Scan",                                                            +
                                       "Parent Relationship": "Inner",                                                       +
                                       "Parallel Aware": false,                                                              +
                                       "Scan Direction": "Forward",                                                          +
                                       "Index Name": "movie_id_movie_companies",                                             +
                                       "Relation Name": "movie_companies",                                                   +
                                       "Alias": "mc",                                                                        +
                                       "Startup Cost": 0.01,                                                                 +
                                       "Total Cost": 0.07,                                                                   +
                                       "Plan Rows": 2,                                                                       +
                                       "Plan Width": 12,                                                                     +
                                       "Actual Startup Time": 0.006,                                                         +
                                       "Actual Total Time": 0.009,                                                           +
                                       "Actual Rows": 3,                                                                     +
                                       "Actual Loops": 459925,                                                               +
                                       "Index Cond": "(movie_id = miidx.movie_id)",                                          +
                                       "Rows Removed by Index Recheck": 0,                                                   +
                                       "Shared Hit Blocks": 1983349,                                                         +
                                       "Shared Read Blocks": 25380,                                                          +
                                       "Shared Dirtied Blocks": 0,                                                           +
                                       "Shared Written Blocks": 0,                                                           +
                                       "Local Hit Blocks": 0,                                                                +
                                       "Local Read Blocks": 0,                                                               +
                                       "Local Dirtied Blocks": 0,                                                            +
                                       "Local Written Blocks": 0,                                                            +
                                       "Temp Read Blocks": 0,                                                                +
                                       "Temp Written Blocks": 0                                                              +
                                     }                                                                                       +
                                   ]                                                                                         +
                                 },                                                                                          +
                                 {                                                                                           +
                                   "Node Type": "Materialize",                                                               +
                                   "Parent Relationship": "Inner",                                                           +
                                   "Parallel Aware": false,                                                                  +
                                   "Startup Cost": 0.00,                                                                     +
                                   "Total Cost": 0.03,                                                                       +
                                   "Plan Rows": 1,                                                                           +
                                   "Plan Width": 4,                                                                          +
                                   "Actual Startup Time": 0.000,                                                             +
                                   "Actual Total Time": 0.000,                                                               +
                                   "Actual Rows": 1,                                                                         +
                                   "Actual Loops": 1354883,                                                                  +
                                   "Shared Hit Blocks": 1,                                                                   +
                                   "Shared Read Blocks": 0,                                                                  +
                                   "Shared Dirtied Blocks": 0,                                                               +
                                   "Shared Written Blocks": 0,                                                               +
                                   "Local Hit Blocks": 0,                                                                    +
                                   "Local Read Blocks": 0,                                                                   +
                                   "Local Dirtied Blocks": 0,                                                                +
                                   "Local Written Blocks": 0,                                                                +
                                   "Temp Read Blocks": 0,                                                                    +
                                   "Temp Written Blocks": 0,                                                                 +
                                   "Plans": [                                                                                +
                                     {                                                                                       +
                                       "Node Type": "Seq Scan",                                                              +
                                       "Parent Relationship": "Outer",                                                       +
                                       "Parallel Aware": false,                                                              +
                                       "Relation Name": "company_type",                                                      +
                                       "Alias": "ct",                                                                        +
                                       "Startup Cost": 0.00,                                                                 +
                                       "Total Cost": 0.03,                                                                   +
                                       "Plan Rows": 1,                                                                       +
                                       "Plan Width": 4,                                                                      +
                                       "Actual Startup Time": 0.010,                                                         +
                                       "Actual Total Time": 0.012,                                                           +
                                       "Actual Rows": 1,                                                                     +
                                       "Actual Loops": 1,                                                                    +
                                       "Filter": "((kind)::text = 'production companies'::text)",                            +
                                       "Rows Removed by Filter": 3,                                                          +
                                       "Shared Hit Blocks": 1,                                                               +
                                       "Shared Read Blocks": 0,                                                              +
                                       "Shared Dirtied Blocks": 0,                                                           +
                                       "Shared Written Blocks": 0,                                                           +
                                       "Local Hit Blocks": 0,                                                                +
                                       "Local Read Blocks": 0,                                                               +
                                       "Local Dirtied Blocks": 0,                                                            +
                                       "Local Written Blocks": 0,                                                            +
                                       "Temp Read Blocks": 0,                                                                +
                                       "Temp Written Blocks": 0                                                              +
                                     }                                                                                       +
                                   ]                                                                                         +
                                 }                                                                                           +
                               ]                                                                                             +
                             },                                                                                              +
                             {                                                                                               +
                               "Node Type": "Index Scan",                                                                    +
                               "Parent Relationship": "Inner",                                                               +
                               "Parallel Aware": false,                                                                      +
                               "Scan Direction": "Forward",                                                                  +
                               "Index Name": "company_name_pkey",                                                            +
                               "Relation Name": "company_name",                                                              +
                               "Alias": "cn",                                                                                +
                               "Startup Cost": 0.01,                                                                         +
                               "Total Cost": 0.02,                                                                           +
                               "Plan Rows": 1,                                                                               +
                               "Plan Width": 23,                                                                             +
                               "Actual Startup Time": 0.013,                                                                 +
                               "Actual Total Time": 0.013,                                                                   +
                               "Actual Rows": 0,                                                                             +
                               "Actual Loops": 584222,                                                                       +
                               "Index Cond": "(id = mc.company_id)",                                                         +
                               "Rows Removed by Index Recheck": 0,                                                           +
                               "Filter": "((country_code)::text = '[us]'::text)",                                            +
                               "Rows Removed by Filter": 1,                                                                  +
                               "Shared Hit Blocks": 2337526,                                                                 +
                               "Shared Read Blocks": 3835,                                                                   +
                               "Shared Dirtied Blocks": 0,                                                                   +
                               "Shared Written Blocks": 0,                                                                   +
                               "Local Hit Blocks": 0,                                                                        +
                               "Local Read Blocks": 0,                                                                       +
                               "Local Dirtied Blocks": 0,                                                                    +
                               "Local Written Blocks": 0,                                                                    +
                               "Temp Read Blocks": 0,                                                                        +
                               "Temp Written Blocks": 0                                                                      +
                             }                                                                                               +
                           ]                                                                                                 +
                         },                                                                                                  +
                         {                                                                                                   +
                           "Node Type": "Index Scan",                                                                        +
                           "Parent Relationship": "Inner",                                                                   +
                           "Parallel Aware": false,                                                                          +
                           "Scan Direction": "Forward",                                                                      +
                           "Index Name": "title_idx_id",                                                                     +
                           "Relation Name": "title",                                                                         +
                           "Alias": "t",                                                                                     +
                           "Startup Cost": 0.01,                                                                             +
                           "Total Cost": 0.06,                                                                               +
                           "Plan Rows": 1,                                                                                   +
                           "Plan Width": 25,                                                                                 +
                           "Actual Startup Time": 0.071,                                                                     +
                           "Actual Total Time": 0.071,                                                                       +
                           "Actual Rows": 0,                                                                                 +
                           "Actual Loops": 248554,                                                                           +
                           "Index Cond": "(id = mc.movie_id)",                                                               +
                           "Rows Removed by Index Recheck": 0,                                                               +
                           "Filter": "((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))",+
                           "Rows Removed by Filter": 1,                                                                      +
                           "Shared Hit Blocks": 955274,                                                                      +
                           "Shared Read Blocks": 40230,                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                       +
                           "Shared Written Blocks": 0,                                                                       +
                           "Local Hit Blocks": 0,                                                                            +
                           "Local Read Blocks": 0,                                                                           +
                           "Local Dirtied Blocks": 0,                                                                        +
                           "Local Written Blocks": 0,                                                                        +
                           "Temp Read Blocks": 0,                                                                            +
                           "Temp Written Blocks": 0                                                                          +
                         }                                                                                                   +
                       ]                                                                                                     +
                     },                                                                                                      +
                     {                                                                                                       +
                       "Node Type": "Materialize",                                                                           +
                       "Parent Relationship": "Inner",                                                                       +
                       "Parallel Aware": false,                                                                              +
                       "Startup Cost": 0.00,                                                                                 +
                       "Total Cost": 0.03,                                                                                   +
                       "Plan Rows": 1,                                                                                       +
                       "Plan Width": 4,                                                                                      +
                       "Actual Startup Time": 0.001,                                                                         +
                       "Actual Total Time": 0.001,                                                                           +
                       "Actual Rows": 1,                                                                                     +
                       "Actual Loops": 32,                                                                                   +
                       "Shared Hit Blocks": 1,                                                                               +
                       "Shared Read Blocks": 0,                                                                              +
                       "Shared Dirtied Blocks": 0,                                                                           +
                       "Shared Written Blocks": 0,                                                                           +
                       "Local Hit Blocks": 0,                                                                                +
                       "Local Read Blocks": 0,                                                                               +
                       "Local Dirtied Blocks": 0,                                                                            +
                       "Local Written Blocks": 0,                                                                            +
                       "Temp Read Blocks": 0,                                                                                +
                       "Temp Written Blocks": 0,                                                                             +
                       "Plans": [                                                                                            +
                         {                                                                                                   +
                           "Node Type": "Seq Scan",                                                                          +
                           "Parent Relationship": "Outer",                                                                   +
                           "Parallel Aware": false,                                                                          +
                           "Relation Name": "kind_type",                                                                     +
                           "Alias": "kt",                                                                                    +
                           "Startup Cost": 0.00,                                                                             +
                           "Total Cost": 0.03,                                                                               +
                           "Plan Rows": 1,                                                                                   +
                           "Plan Width": 4,                                                                                  +
                           "Actual Startup Time": 0.008,                                                                     +
                           "Actual Total Time": 0.010,                                                                       +
                           "Actual Rows": 1,                                                                                 +
                           "Actual Loops": 1,                                                                                +
                           "Filter": "((kind)::text = 'movie'::text)",                                                       +
                           "Rows Removed by Filter": 6,                                                                      +
                           "Shared Hit Blocks": 1,                                                                           +
                           "Shared Read Blocks": 0,                                                                          +
                           "Shared Dirtied Blocks": 0,                                                                       +
                           "Shared Written Blocks": 0,                                                                       +
                           "Local Hit Blocks": 0,                                                                            +
                           "Local Read Blocks": 0,                                                                           +
                           "Local Dirtied Blocks": 0,                                                                        +
                           "Local Written Blocks": 0,                                                                        +
                           "Temp Read Blocks": 0,                                                                            +
                           "Temp Written Blocks": 0                                                                          +
                         }                                                                                                   +
                       ]                                                                                                     +
                     }                                                                                                       +
                   ]                                                                                                         +
                 },                                                                                                          +
                 {                                                                                                           +
                   "Node Type": "Index Scan",                                                                                +
                   "Parent Relationship": "Inner",                                                                           +
                   "Parallel Aware": false,                                                                                  +
                   "Scan Direction": "Forward",                                                                              +
                   "Index Name": "movie_id_movie_info",                                                                      +
                   "Relation Name": "movie_info",                                                                            +
                   "Alias": "mi",                                                                                            +
                   "Startup Cost": 0.01,                                                                                     +
                   "Total Cost": 0.25,                                                                                       +
                   "Plan Rows": 9,                                                                                           +
                   "Plan Width": 8,                                                                                          +
                   "Actual Startup Time": 6.340,                                                                             +
                   "Actual Total Time": 24.932,                                                                              +
                   "Actual Rows": 16,                                                                                        +
                   "Actual Loops": 14,                                                                                       +
                   "Index Cond": "(movie_id = mc.movie_id)",                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                       +
                   "Shared Hit Blocks": 119,                                                                                 +
                   "Shared Read Blocks": 48,                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                               +
                   "Shared Written Blocks": 0,                                                                               +
                   "Local Hit Blocks": 0,                                                                                    +
                   "Local Read Blocks": 0,                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                +
                   "Local Written Blocks": 0,                                                                                +
                   "Temp Read Blocks": 0,                                                                                    +
                   "Temp Written Blocks": 0                                                                                  +
                 }                                                                                                           +
               ]                                                                                                             +
             },                                                                                                              +
             {                                                                                                               +
               "Node Type": "Materialize",                                                                                   +
               "Parent Relationship": "Inner",                                                                               +
               "Parallel Aware": false,                                                                                      +
               "Startup Cost": 0.00,                                                                                         +
               "Total Cost": 0.05,                                                                                           +
               "Plan Rows": 1,                                                                                               +
               "Plan Width": 4,                                                                                              +
               "Actual Startup Time": 0.000,                                                                                 +
               "Actual Total Time": 0.001,                                                                                   +
               "Actual Rows": 1,                                                                                             +
               "Actual Loops": 218,                                                                                          +
               "Shared Hit Blocks": 1,                                                                                       +
               "Shared Read Blocks": 0,                                                                                      +
               "Shared Dirtied Blocks": 0,                                                                                   +
               "Shared Written Blocks": 0,                                                                                   +
               "Local Hit Blocks": 0,                                                                                        +
               "Local Read Blocks": 0,                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                    +
               "Local Written Blocks": 0,                                                                                    +
               "Temp Read Blocks": 0,                                                                                        +
               "Temp Written Blocks": 0,                                                                                     +
               "Plans": [                                                                                                    +
                 {                                                                                                           +
                   "Node Type": "Seq Scan",                                                                                  +
                   "Parent Relationship": "Outer",                                                                           +
                   "Parallel Aware": false,                                                                                  +
                   "Relation Name": "info_type",                                                                             +
                   "Alias": "it2",                                                                                           +
                   "Startup Cost": 0.00,                                                                                     +
                   "Total Cost": 0.05,                                                                                       +
                   "Plan Rows": 1,                                                                                           +
                   "Plan Width": 4,                                                                                          +
                   "Actual Startup Time": 0.020,                                                                             +
                   "Actual Total Time": 0.039,                                                                               +
                   "Actual Rows": 1,                                                                                         +
                   "Actual Loops": 1,                                                                                        +
                   "Filter": "((info)::text = 'release dates'::text)",                                                       +
                   "Rows Removed by Filter": 112,                                                                            +
                   "Shared Hit Blocks": 1,                                                                                   +
                   "Shared Read Blocks": 0,                                                                                  +
                   "Shared Dirtied Blocks": 0,                                                                               +
                   "Shared Written Blocks": 0,                                                                               +
                   "Local Hit Blocks": 0,                                                                                    +
                   "Local Read Blocks": 0,                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                +
                   "Local Written Blocks": 0,                                                                                +
                   "Temp Read Blocks": 0,                                                                                    +
                   "Temp Written Blocks": 0                                                                                  +
                 }                                                                                                           +
               ]                                                                                                             +
             }                                                                                                               +
           ]                                                                                                                 +
         }                                                                                                                   +
       ]                                                                                                                     +
     },                                                                                                                      +
     "Planning Time": 5012.690,                                                                                              +
     "Triggers": [                                                                                                           +
     ],                                                                                                                      +
     "Execution Time": 32844.860                                                                                             +
   }                                                                                                                         +
 ]
(1 row)

