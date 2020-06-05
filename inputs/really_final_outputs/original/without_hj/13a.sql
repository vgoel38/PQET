                                            QUERY PLAN                                            
--------------------------------------------------------------------------------------------------
 [                                                                                               +
   {                                                                                             +
     "Plan": {                                                                                   +
       "Node Type": "Aggregate",                                                                 +
       "Strategy": "Plain",                                                                      +
       "Partial Mode": "Simple",                                                                 +
       "Parallel Aware": false,                                                                  +
       "Startup Cost": 1711.20,                                                                  +
       "Total Cost": 1711.20,                                                                    +
       "Plan Rows": 1,                                                                           +
       "Plan Width": 96,                                                                         +
       "Actual Startup Time": 109538.481,                                                        +
       "Actual Total Time": 109538.482,                                                          +
       "Actual Rows": 1,                                                                         +
       "Actual Loops": 1,                                                                        +
       "Shared Hit Blocks": 4607107,                                                             +
       "Shared Read Blocks": 105860,                                                             +
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
           "Total Cost": 1711.20,                                                                +
           "Plan Rows": 5,                                                                       +
           "Plan Width": 65,                                                                     +
           "Actual Startup Time": 13740.401,                                                     +
           "Actual Total Time": 109414.080,                                                      +
           "Actual Rows": 111101,                                                                +
           "Actual Loops": 1,                                                                    +
           "Inner Unique": true,                                                                 +
           "Join Filter": "(mi.info_type_id = it2.id)",                                          +
           "Rows Removed by Join Filter": 405226,                                                +
           "Shared Hit Blocks": 4607107,                                                         +
           "Shared Read Blocks": 105860,                                                         +
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
               "Total Cost": 1711.02,                                                            +
               "Plan Rows": 617,                                                                 +
               "Plan Width": 69,                                                                 +
               "Actual Startup Time": 13728.695,                                                 +
               "Actual Total Time": 108929.324,                                                  +
               "Actual Rows": 516327,                                                            +
               "Actual Loops": 1,                                                                +
               "Inner Unique": false,                                                            +
               "Join Filter": "(t.id = mi.movie_id)",                                            +
               "Rows Removed by Join Filter": 0,                                                 +
               "Shared Hit Blocks": 4607106,                                                     +
               "Shared Read Blocks": 105860,                                                     +
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
                   "Total Cost": 1699.84,                                                        +
                   "Plan Rows": 44,                                                              +
                   "Plan Width": 35,                                                             +
                   "Actual Startup Time": 13697.068,                                             +
                   "Actual Total Time": 52447.432,                                               +
                   "Actual Rows": 16470,                                                         +
                   "Actual Loops": 1,                                                            +
                   "Inner Unique": true,                                                         +
                   "Join Filter": "(t.kind_id = kt.id)",                                         +
                   "Rows Removed by Join Filter": 15040,                                         +
                   "Shared Hit Blocks": 4432526,                                                 +
                   "Shared Read Blocks": 53133,                                                  +
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
                       "Total Cost": 1699.74,                                                    +
                       "Plan Rows": 306,                                                         +
                       "Plan Width": 39,                                                         +
                       "Actual Startup Time": 313.042,                                           +
                       "Actual Total Time": 52399.079,                                           +
                       "Actual Rows": 31510,                                                     +
                       "Actual Loops": 1,                                                        +
                       "Inner Unique": true,                                                     +
                       "Shared Hit Blocks": 4432525,                                             +
                       "Shared Read Blocks": 53133,                                              +
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
                           "Plan Rows": 306,                                                     +
                           "Plan Width": 14,                                                     +
                           "Actual Startup Time": 263.274,                                       +
                           "Actual Total Time": 20724.410,                                       +
                           "Actual Rows": 31510,                                                 +
                           "Actual Loops": 1,                                                    +
                           "Inner Unique": true,                                                 +
                           "Shared Hit Blocks": 4321877,                                         +
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
                               "Actual Startup Time": 23.823,                                    +
                               "Actual Total Time": 9231.768,                                    +
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
                                   "Actual Startup Time": 0.149,                                 +
                                   "Actual Total Time": 8117.018,                                +
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
                                       "Actual Startup Time": 0.120,                             +
                                       "Actual Total Time": 1638.302,                            +
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
                                           "Actual Total Time": 388.338,                         +
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
                                               "Actual Startup Time": 0.072,                     +
                                               "Actual Total Time": 0.078,                       +
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
                                       "Actual Startup Time": 0.008,                             +
                                       "Actual Total Time": 0.012,                               +
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
                               "Plan Width": 4,                                                  +
                               "Actual Startup Time": 0.019,                                     +
                               "Actual Total Time": 0.019,                                       +
                               "Actual Rows": 0,                                                 +
                               "Actual Loops": 584222,                                           +
                               "Index Cond": "(id = mc.company_id)",                             +
                               "Rows Removed by Index Recheck": 0,                               +
                               "Filter": "((country_code)::text = '[de]'::text)",                +
                               "Rows Removed by Filter": 1,                                      +
                               "Shared Hit Blocks": 2338524,                                     +
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
                           "Actual Startup Time": 1.003,                                         +
                           "Actual Total Time": 1.003,                                           +
                           "Actual Rows": 1,                                                     +
                           "Actual Loops": 31510,                                                +
                           "Index Cond": "(id = mc.movie_id)",                                   +
                           "Rows Removed by Index Recheck": 0,                                   +
                           "Shared Hit Blocks": 110648,                                          +
                           "Shared Read Blocks": 15467,                                          +
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
                       "Actual Loops": 31510,                                                    +
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
                           "Actual Startup Time": 0.018,                                         +
                           "Actual Total Time": 0.024,                                           +
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
                   "Plan Width": 50,                                                             +
                   "Actual Startup Time": 0.789,                                                 +
                   "Actual Total Time": 3.407,                                                   +
                   "Actual Rows": 31,                                                            +
                   "Actual Loops": 16470,                                                        +
                   "Index Cond": "(movie_id = mc.movie_id)",                                     +
                   "Rows Removed by Index Recheck": 0,                                           +
                   "Shared Hit Blocks": 174580,                                                  +
                   "Shared Read Blocks": 52727,                                                  +
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
               "Actual Loops": 516327,                                                           +
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
                   "Actual Startup Time": 0.030,                                                 +
                   "Actual Total Time": 0.065,                                                   +
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
     "Planning Time": 4926.198,                                                                  +
     "Triggers": [                                                                               +
     ],                                                                                          +
     "Execution Time": 109557.303                                                                +
   }                                                                                             +
 ]
(1 row)
