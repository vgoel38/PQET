                                            QUERY PLAN                                            
--------------------------------------------------------------------------------------------------
 [                                                                                               +
   {                                                                                             +
     "Plan": {                                                                                   +
       "Node Type": "Aggregate",                                                                 +
       "Strategy": "Plain",                                                                      +
       "Partial Mode": "Simple",                                                                 +
       "Parallel Aware": false,                                                                  +
       "Startup Cost": 1948.53,                                                                  +
       "Total Cost": 1948.53,                                                                    +
       "Plan Rows": 1,                                                                           +
       "Plan Width": 96,                                                                         +
       "Actual Startup Time": 116593.061,                                                        +
       "Actual Total Time": 116593.062,                                                          +
       "Actual Rows": 1,                                                                         +
       "Actual Loops": 1,                                                                        +
       "Shared Hit Blocks": 6547216,                                                             +
       "Shared Read Blocks": 200081,                                                             +
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
           "Startup Cost": 0.05,                                                                 +
           "Total Cost": 1948.52,                                                                +
           "Plan Rows": 47,                                                                      +
           "Plan Width": 42,                                                                     +
           "Actual Startup Time": 19723.355,                                                     +
           "Actual Total Time": 116014.305,                                                      +
           "Actual Rows": 670390,                                                                +
           "Actual Loops": 1,                                                                    +
           "Inner Unique": true,                                                                 +
           "Join Filter": "(mi.info_type_id = it2.id)",                                          +
           "Rows Removed by Join Filter": 3646194,                                               +
           "Shared Hit Blocks": 6547216,                                                         +
           "Shared Read Blocks": 200081,                                                         +
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
               "Node Type": "Nested Loop",                                                       +
               "Parent Relationship": "Outer",                                                   +
               "Parallel Aware": false,                                                          +
               "Join Type": "Inner",                                                             +
               "Startup Cost": 0.05,                                                             +
               "Total Cost": 1947.27,                                                            +
               "Plan Rows": 5352,                                                                +
               "Plan Width": 46,                                                                 +
               "Actual Startup Time": 19695.009,                                                 +
               "Actual Total Time": 112236.761,                                                  +
               "Actual Rows": 4316584,                                                           +
               "Actual Loops": 1,                                                                +
               "Inner Unique": false,                                                            +
               "Join Filter": "(t.id = mi.movie_id)",                                            +
               "Rows Removed by Join Filter": 0,                                                 +
               "Shared Hit Blocks": 6547215,                                                     +
               "Shared Read Blocks": 200081,                                                     +
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
                   "Node Type": "Nested Loop",                                                   +
                   "Parent Relationship": "Outer",                                               +
                   "Parallel Aware": false,                                                      +
                   "Join Type": "Inner",                                                         +
                   "Startup Cost": 0.04,                                                         +
                   "Total Cost": 1850.71,                                                        +
                   "Plan Rows": 380,                                                             +
                   "Plan Width": 54,                                                             +
                   "Actual Startup Time": 19658.929,                                             +
                   "Actual Total Time": 57422.004,                                               +
                   "Actual Rows": 87293,                                                         +
                   "Actual Loops": 1,                                                            +
                   "Inner Unique": true,                                                         +
                   "Join Filter": "(t.kind_id = kt.id)",                                         +
                   "Rows Removed by Join Filter": 161261,                                        +
                   "Shared Hit Blocks": 5275519,                                                 +
                   "Shared Read Blocks": 77893,                                                  +
                   "Shared Dirtied Blocks": 0,                                                   +
                   "Shared Written Blocks": 0,                                                   +
                   "Local Hit Blocks": 0,                                                        +
                   "Local Read Blocks": 0,                                                       +
                   "Local Dirtied Blocks": 0,                                                    +
                   "Local Written Blocks": 0,                                                    +
                   "Temp Read Blocks": 0,                                                        +
                   "Temp Written Blocks": 0,                                                     +
                   "Plans": [                                                                    +
                     {                                                                           +
                       "Node Type": "Nested Loop",                                               +
                       "Parent Relationship": "Outer",                                           +
                       "Parallel Aware": false,                                                  +
                       "Join Type": "Inner",                                                     +
                       "Startup Cost": 0.04,                                                     +
                       "Total Cost": 1850.08,                                                    +
                       "Plan Rows": 2659,                                                        +
                       "Plan Width": 58,                                                         +
                       "Actual Startup Time": 68.482,                                            +
                       "Actual Total Time": 57174.885,                                           +
                       "Actual Rows": 248554,                                                    +
                       "Actual Loops": 1,                                                        +
                       "Inner Unique": true,                                                     +
                       "Shared Hit Blocks": 5275518,                                             +
                       "Shared Read Blocks": 77893,                                              +
                       "Shared Dirtied Blocks": 0,                                               +
                       "Shared Written Blocks": 0,                                               +
                       "Local Hit Blocks": 0,                                                    +
                       "Local Read Blocks": 0,                                                   +
                       "Local Dirtied Blocks": 0,                                                +
                       "Local Written Blocks": 0,                                                +
                       "Temp Read Blocks": 0,                                                    +
                       "Temp Written Blocks": 0,                                                 +
                       "Plans": [                                                                +
                         {                                                                       +
                           "Node Type": "Nested Loop",                                           +
                           "Parent Relationship": "Outer",                                       +
                           "Parallel Aware": false,                                              +
                           "Join Type": "Inner",                                                 +
                           "Startup Cost": 0.03,                                                 +
                           "Total Cost": 1680.18,                                                +
                           "Plan Rows": 2659,                                                    +
                           "Plan Width": 33,                                                     +
                           "Actual Startup Time": 63.985,                                        +
                           "Actual Total Time": 25875.756,                                       +
                           "Actual Rows": 248554,                                                +
                           "Actual Loops": 1,                                                    +
                           "Inner Unique": true,                                                 +
                           "Shared Hit Blocks": 4320879,                                         +
                           "Shared Read Blocks": 37666,                                          +
                           "Shared Dirtied Blocks": 0,                                           +
                           "Shared Written Blocks": 0,                                           +
                           "Local Hit Blocks": 0,                                                +
                           "Local Read Blocks": 0,                                               +
                           "Local Dirtied Blocks": 0,                                            +
                           "Local Written Blocks": 0,                                            +
                           "Temp Read Blocks": 0,                                                +
                           "Temp Written Blocks": 0,                                             +
                           "Plans": [                                                            +
                             {                                                                   +
                               "Node Type": "Nested Loop",                                       +
                               "Parent Relationship": "Outer",                                   +
                               "Parallel Aware": false,                                          +
                               "Join Type": "Inner",                                             +
                               "Startup Cost": 0.01,                                             +
                               "Total Cost": 1548.98,                                            +
                               "Plan Rows": 7365,                                                +
                               "Plan Width": 18,                                                 +
                               "Actual Startup Time": 23.816,                                    +
                               "Actual Total Time": 10589.700,                                   +
                               "Actual Rows": 584222,                                            +
                               "Actual Loops": 1,                                                +
                               "Inner Unique": true,                                             +
                               "Join Filter": "(mc.company_type_id = ct.id)",                    +
                               "Rows Removed by Join Filter": 770661,                            +
                               "Shared Hit Blocks": 1983353,                                     +
                               "Shared Read Blocks": 33831,                                      +
                               "Shared Dirtied Blocks": 0,                                       +
                               "Shared Written Blocks": 0,                                       +
                               "Local Hit Blocks": 0,                                            +
                               "Local Read Blocks": 0,                                           +
                               "Local Dirtied Blocks": 0,                                        +
                               "Local Written Blocks": 0,                                        +
                               "Temp Read Blocks": 0,                                            +
                               "Temp Written Blocks": 0,                                         +
                               "Plans": [                                                        +
                                 {                                                               +
                                   "Node Type": "Nested Loop",                                   +
                                   "Parent Relationship": "Outer",                               +
                                   "Parallel Aware": false,                                      +
                                   "Join Type": "Inner",                                         +
                                   "Startup Cost": 0.01,                                         +
                                   "Total Cost": 1542.33,                                        +
                                   "Plan Rows": 29462,                                           +
                                   "Plan Width": 22,                                             +
                                   "Actual Startup Time": 0.159,                                 +
                                   "Actual Total Time": 9420.125,                                +
                                   "Actual Rows": 1354883,                                       +
                                   "Actual Loops": 1,                                            +
                                   "Inner Unique": false,                                        +
                                   "Shared Hit Blocks": 1983352,                                 +
                                   "Shared Read Blocks": 33831,                                  +
                                   "Shared Dirtied Blocks": 0,                                   +
                                   "Shared Written Blocks": 0,                                   +
                                   "Local Hit Blocks": 0,                                        +
                                   "Local Read Blocks": 0,                                       +
                                   "Local Dirtied Blocks": 0,                                    +
                                   "Local Written Blocks": 0,                                    +
                                   "Temp Read Blocks": 0,                                        +
                                   "Temp Written Blocks": 0,                                     +
                                   "Plans": [                                                    +
                                     {                                                           +
                                       "Node Type": "Nested Loop",                               +
                                       "Parent Relationship": "Outer",                           +
                                       "Parallel Aware": false,                                  +
                                       "Join Type": "Inner",                                     +
                                       "Startup Cost": 0.00,                                     +
                                       "Total Cost": 670.32,                                     +
                                       "Plan Rows": 12213,                                       +
                                       "Plan Width": 10,                                         +
                                       "Actual Startup Time": 0.124,                             +
                                       "Actual Total Time": 1649.839,                            +
                                       "Actual Rows": 459925,                                    +
                                       "Actual Loops": 1,                                        +
                                       "Inner Unique": true,                                     +
                                       "Join Filter": "(it.id = miidx.info_type_id)",            +
                                       "Rows Removed by Join Filter": 920110,                    +
                                       "Shared Hit Blocks": 3,                                   +
                                       "Shared Read Blocks": 8451,                               +
                                       "Shared Dirtied Blocks": 0,                               +
                                       "Shared Written Blocks": 0,                               +
                                       "Local Hit Blocks": 0,                                    +
                                       "Local Read Blocks": 0,                                   +
                                       "Local Dirtied Blocks": 0,                                +
                                       "Local Written Blocks": 0,                                +
                                       "Temp Read Blocks": 0,                                    +
                                       "Temp Written Blocks": 0,                                 +
                                       "Plans": [                                                +
                                         {                                                       +
                                           "Node Type": "Seq Scan",                              +
                                           "Parent Relationship": "Outer",                       +
                                           "Parallel Aware": false,                              +
                                           "Relation Name": "movie_info_idx",                    +
                                           "Alias": "miidx",                                     +
                                           "Startup Cost": 0.00,                                 +
                                           "Total Cost": 360.56,                                 +
                                           "Plan Rows": 1380035,                                 +
                                           "Plan Width": 14,                                     +
                                           "Actual Startup Time": 0.014,                         +
                                           "Actual Total Time": 392.131,                         +
                                           "Actual Rows": 1380035,                               +
                                           "Actual Loops": 1,                                    +
                                           "Shared Hit Blocks": 2,                               +
                                           "Shared Read Blocks": 8451,                           +
                                           "Shared Dirtied Blocks": 0,                           +
                                           "Shared Written Blocks": 0,                           +
                                           "Local Hit Blocks": 0,                                +
                                           "Local Read Blocks": 0,                               +
                                           "Local Dirtied Blocks": 0,                            +
                                           "Local Written Blocks": 0,                            +
                                           "Temp Read Blocks": 0,                                +
                                           "Temp Written Blocks": 0                              +
                                         },                                                      +
                                         {                                                       +
                                           "Node Type": "Materialize",                           +
                                           "Parent Relationship": "Inner",                       +
                                           "Parallel Aware": false,                              +
                                           "Startup Cost": 0.00,                                 +
                                           "Total Cost": 0.05,                                   +
                                           "Plan Rows": 1,                                       +
                                           "Plan Width": 4,                                      +
                                           "Actual Startup Time": 0.000,                         +
                                           "Actual Total Time": 0.000,                           +
                                           "Actual Rows": 1,                                     +
                                           "Actual Loops": 1380035,                              +
                                           "Shared Hit Blocks": 1,                               +
                                           "Shared Read Blocks": 0,                              +
                                           "Shared Dirtied Blocks": 0,                           +
                                           "Shared Written Blocks": 0,                           +
                                           "Local Hit Blocks": 0,                                +
                                           "Local Read Blocks": 0,                               +
                                           "Local Dirtied Blocks": 0,                            +
                                           "Local Written Blocks": 0,                            +
                                           "Temp Read Blocks": 0,                                +
                                           "Temp Written Blocks": 0,                             +
                                           "Plans": [                                            +
                                             {                                                   +
                                               "Node Type": "Seq Scan",                          +
                                               "Parent Relationship": "Outer",                   +
                                               "Parallel Aware": false,                          +
                                               "Relation Name": "info_type",                     +
                                               "Alias": "it",                                    +
                                               "Startup Cost": 0.00,                             +
                                               "Total Cost": 0.05,                               +
                                               "Plan Rows": 1,                                   +
                                               "Plan Width": 4,                                  +
                                               "Actual Startup Time": 0.084,                     +
                                               "Actual Total Time": 0.090,                       +
                                               "Actual Rows": 1,                                 +
                                               "Actual Loops": 1,                                +
                                               "Filter": "((info)::text = 'rating'::text)",      +
                                               "Rows Removed by Filter": 112,                    +
                                               "Shared Hit Blocks": 1,                           +
                                               "Shared Read Blocks": 0,                          +
                                               "Shared Dirtied Blocks": 0,                       +
                                               "Shared Written Blocks": 0,                       +
                                               "Local Hit Blocks": 0,                            +
                                               "Local Read Blocks": 0,                           +
                                               "Local Dirtied Blocks": 0,                        +
                                               "Local Written Blocks": 0,                        +
                                               "Temp Read Blocks": 0,                            +
                                               "Temp Written Blocks": 0                          +
                                             }                                                   +
                                           ]                                                     +
                                         }                                                       +
                                       ]                                                         +
                                     },                                                          +
                                     {                                                           +
                                       "Node Type": "Index Scan",                                +
                                       "Parent Relationship": "Inner",                           +
                                       "Parallel Aware": false,                                  +
                                       "Scan Direction": "Forward",                              +
                                       "Index Name": "movie_id_movie_companies",                 +
                                       "Relation Name": "movie_companies",                       +
                                       "Alias": "mc",                                            +
                                       "Startup Cost": 0.01,                                     +
                                       "Total Cost": 0.07,                                       +
                                       "Plan Rows": 2,                                           +
                                       "Plan Width": 12,                                         +
                                       "Actual Startup Time": 0.010,                             +
                                       "Actual Total Time": 0.015,                               +
                                       "Actual Rows": 3,                                         +
                                       "Actual Loops": 459925,                                   +
                                       "Index Cond": "(movie_id = miidx.movie_id)",              +
                                       "Rows Removed by Index Recheck": 0,                       +
                                       "Shared Hit Blocks": 1983349,                             +
                                       "Shared Read Blocks": 25380,                              +
                                       "Shared Dirtied Blocks": 0,                               +
                                       "Shared Written Blocks": 0,                               +
                                       "Local Hit Blocks": 0,                                    +
                                       "Local Read Blocks": 0,                                   +
                                       "Local Dirtied Blocks": 0,                                +
                                       "Local Written Blocks": 0,                                +
                                       "Temp Read Blocks": 0,                                    +
                                       "Temp Written Blocks": 0                                  +
                                     }                                                           +
                                   ]                                                             +
                                 },                                                              +
                                 {                                                               +
                                   "Node Type": "Materialize",                                   +
                                   "Parent Relationship": "Inner",                               +
                                   "Parallel Aware": false,                                      +
                                   "Startup Cost": 0.00,                                         +
                                   "Total Cost": 0.03,                                           +
                                   "Plan Rows": 1,                                               +
                                   "Plan Width": 4,                                              +
                                   "Actual Startup Time": 0.000,                                 +
                                   "Actual Total Time": 0.000,                                   +
                                   "Actual Rows": 1,                                             +
                                   "Actual Loops": 1354883,                                      +
                                   "Shared Hit Blocks": 1,                                       +
                                   "Shared Read Blocks": 0,                                      +
                                   "Shared Dirtied Blocks": 0,                                   +
                                   "Shared Written Blocks": 0,                                   +
                                   "Local Hit Blocks": 0,                                        +
                                   "Local Read Blocks": 0,                                       +
                                   "Local Dirtied Blocks": 0,                                    +
                                   "Local Written Blocks": 0,                                    +
                                   "Temp Read Blocks": 0,                                        +
                                   "Temp Written Blocks": 0,                                     +
                                   "Plans": [                                                    +
                                     {                                                           +
                                       "Node Type": "Seq Scan",                                  +
                                       "Parent Relationship": "Outer",                           +
                                       "Parallel Aware": false,                                  +
                                       "Relation Name": "company_type",                          +
                                       "Alias": "ct",                                            +
                                       "Startup Cost": 0.00,                                     +
                                       "Total Cost": 0.03,                                       +
                                       "Plan Rows": 1,                                           +
                                       "Plan Width": 4,                                          +
                                       "Actual Startup Time": 0.009,                             +
                                       "Actual Total Time": 0.011,                               +
                                       "Actual Rows": 1,                                         +
                                       "Actual Loops": 1,                                        +
                                       "Filter": "((kind)::text = 'production companies'::text)",+
                                       "Rows Removed by Filter": 3,                              +
                                       "Shared Hit Blocks": 1,                                   +
                                       "Shared Read Blocks": 0,                                  +
                                       "Shared Dirtied Blocks": 0,                               +
                                       "Shared Written Blocks": 0,                               +
                                       "Local Hit Blocks": 0,                                    +
                                       "Local Read Blocks": 0,                                   +
                                       "Local Dirtied Blocks": 0,                                +
                                       "Local Written Blocks": 0,                                +
                                       "Temp Read Blocks": 0,                                    +
                                       "Temp Written Blocks": 0                                  +
                                     }                                                           +
                                   ]                                                             +
                                 }                                                               +
                               ]                                                                 +
                             },                                                                  +
                             {                                                                   +
                               "Node Type": "Index Scan",                                        +
                               "Parent Relationship": "Inner",                                   +
                               "Parallel Aware": false,                                          +
                               "Scan Direction": "Forward",                                      +
                               "Index Name": "company_name_pkey",                                +
                               "Relation Name": "company_name",                                  +
                               "Alias": "cn",                                                    +
                               "Startup Cost": 0.01,                                             +
                               "Total Cost": 0.02,                                               +
                               "Plan Rows": 1,                                                   +
                               "Plan Width": 23,                                                 +
                               "Actual Startup Time": 0.025,                                     +
                               "Actual Total Time": 0.025,                                       +
                               "Actual Rows": 0,                                                 +
                               "Actual Loops": 584222,                                           +
                               "Index Cond": "(id = mc.company_id)",                             +
                               "Rows Removed by Index Recheck": 0,                               +
                               "Filter": "((country_code)::text = '[us]'::text)",                +
                               "Rows Removed by Filter": 1,                                      +
                               "Shared Hit Blocks": 2337526,                                     +
                               "Shared Read Blocks": 3835,                                       +
                               "Shared Dirtied Blocks": 0,                                       +
                               "Shared Written Blocks": 0,                                       +
                               "Local Hit Blocks": 0,                                            +
                               "Local Read Blocks": 0,                                           +
                               "Local Dirtied Blocks": 0,                                        +
                               "Local Written Blocks": 0,                                        +
                               "Temp Read Blocks": 0,                                            +
                               "Temp Written Blocks": 0                                          +
                             }                                                                   +
                           ]                                                                     +
                         },                                                                      +
                         {                                                                       +
                           "Node Type": "Index Scan",                                            +
                           "Parent Relationship": "Inner",                                       +
                           "Parallel Aware": false,                                              +
                           "Scan Direction": "Forward",                                          +
                           "Index Name": "title_idx_id",                                         +
                           "Relation Name": "title",                                             +
                           "Alias": "t",                                                         +
                           "Startup Cost": 0.01,                                                 +
                           "Total Cost": 0.06,                                                   +
                           "Plan Rows": 1,                                                       +
                           "Plan Width": 25,                                                     +
                           "Actual Startup Time": 0.125,                                         +
                           "Actual Total Time": 0.125,                                           +
                           "Actual Rows": 1,                                                     +
                           "Actual Loops": 248554,                                               +
                           "Index Cond": "(id = mc.movie_id)",                                   +
                           "Rows Removed by Index Recheck": 0,                                   +
                           "Shared Hit Blocks": 954639,                                          +
                           "Shared Read Blocks": 40227,                                          +
                           "Shared Dirtied Blocks": 0,                                           +
                           "Shared Written Blocks": 0,                                           +
                           "Local Hit Blocks": 0,                                                +
                           "Local Read Blocks": 0,                                               +
                           "Local Dirtied Blocks": 0,                                            +
                           "Local Written Blocks": 0,                                            +
                           "Temp Read Blocks": 0,                                                +
                           "Temp Written Blocks": 0                                              +
                         }                                                                       +
                       ]                                                                         +
                     },                                                                          +
                     {                                                                           +
                       "Node Type": "Materialize",                                               +
                       "Parent Relationship": "Inner",                                           +
                       "Parallel Aware": false,                                                  +
                       "Startup Cost": 0.00,                                                     +
                       "Total Cost": 0.03,                                                       +
                       "Plan Rows": 1,                                                           +
                       "Plan Width": 4,                                                          +
                       "Actual Startup Time": 0.000,                                             +
                       "Actual Total Time": 0.000,                                               +
                       "Actual Rows": 1,                                                         +
                       "Actual Loops": 248554,                                                   +
                       "Shared Hit Blocks": 1,                                                   +
                       "Shared Read Blocks": 0,                                                  +
                       "Shared Dirtied Blocks": 0,                                               +
                       "Shared Written Blocks": 0,                                               +
                       "Local Hit Blocks": 0,                                                    +
                       "Local Read Blocks": 0,                                                   +
                       "Local Dirtied Blocks": 0,                                                +
                       "Local Written Blocks": 0,                                                +
                       "Temp Read Blocks": 0,                                                    +
                       "Temp Written Blocks": 0,                                                 +
                       "Plans": [                                                                +
                         {                                                                       +
                           "Node Type": "Seq Scan",                                              +
                           "Parent Relationship": "Outer",                                       +
                           "Parallel Aware": false,                                              +
                           "Relation Name": "kind_type",                                         +
                           "Alias": "kt",                                                        +
                           "Startup Cost": 0.00,                                                 +
                           "Total Cost": 0.03,                                                   +
                           "Plan Rows": 1,                                                       +
                           "Plan Width": 4,                                                      +
                           "Actual Startup Time": 0.015,                                         +
                           "Actual Total Time": 0.020,                                           +
                           "Actual Rows": 1,                                                     +
                           "Actual Loops": 1,                                                    +
                           "Filter": "((kind)::text = 'movie'::text)",                           +
                           "Rows Removed by Filter": 6,                                          +
                           "Shared Hit Blocks": 1,                                               +
                           "Shared Read Blocks": 0,                                              +
                           "Shared Dirtied Blocks": 0,                                           +
                           "Shared Written Blocks": 0,                                           +
                           "Local Hit Blocks": 0,                                                +
                           "Local Read Blocks": 0,                                               +
                           "Local Dirtied Blocks": 0,                                            +
                           "Local Written Blocks": 0,                                            +
                           "Temp Read Blocks": 0,                                                +
                           "Temp Written Blocks": 0                                              +
                         }                                                                       +
                       ]                                                                         +
                     }                                                                           +
                   ]                                                                             +
                 },                                                                              +
                 {                                                                               +
                   "Node Type": "Index Scan",                                                    +
                   "Parent Relationship": "Inner",                                               +
                   "Parallel Aware": false,                                                      +
                   "Scan Direction": "Forward",                                                  +
                   "Index Name": "movie_id_movie_info",                                          +
                   "Relation Name": "movie_info",                                                +
                   "Alias": "mi",                                                                +
                   "Startup Cost": 0.01,                                                         +
                   "Total Cost": 0.25,                                                           +
                   "Plan Rows": 9,                                                               +
                   "Plan Width": 8,                                                              +
                   "Actual Startup Time": 0.095,                                                 +
                   "Actual Total Time": 0.599,                                                   +
                   "Actual Rows": 49,                                                            +
                   "Actual Loops": 87293,                                                        +
                   "Index Cond": "(movie_id = mc.movie_id)",                                     +
                   "Rows Removed by Index Recheck": 0,                                           +
                   "Shared Hit Blocks": 1271696,                                                 +
                   "Shared Read Blocks": 122188,                                                 +
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
               "Actual Loops": 4316584,                                                          +
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
                   "Alias": "it2",                                                               +
                   "Startup Cost": 0.00,                                                         +
                   "Total Cost": 0.05,                                                           +
                   "Plan Rows": 1,                                                               +
                   "Plan Width": 4,                                                              +
                   "Actual Startup Time": 0.029,                                                 +
                   "Actual Total Time": 0.064,                                                   +
                   "Actual Rows": 1,                                                             +
                   "Actual Loops": 1,                                                            +
                   "Filter": "((info)::text = 'release dates'::text)",                           +
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
         }                                                                                       +
       ]                                                                                         +
     },                                                                                          +
     "Planning Time": 5207.590,                                                                  +
     "Triggers": [                                                                               +
     ],                                                                                          +
     "Execution Time": 116613.804                                                                +
   }                                                                                             +
 ]
(1 row)
