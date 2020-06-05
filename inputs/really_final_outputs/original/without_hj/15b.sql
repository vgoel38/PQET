                                                         QUERY PLAN                                                          
-----------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                          +
   {                                                                                                                        +
     "Plan": {                                                                                                              +
       "Node Type": "Aggregate",                                                                                            +
       "Strategy": "Plain",                                                                                                 +
       "Partial Mode": "Simple",                                                                                            +
       "Parallel Aware": false,                                                                                             +
       "Startup Cost": 145.63,                                                                                              +
       "Total Cost": 145.63,                                                                                                +
       "Plan Rows": 1,                                                                                                      +
       "Plan Width": 64,                                                                                                    +
       "Actual Startup Time": 5022.229,                                                                                     +
       "Actual Total Time": 5022.229,                                                                                       +
       "Actual Rows": 1,                                                                                                    +
       "Actual Loops": 1,                                                                                                   +
       "Shared Hit Blocks": 5923,                                                                                           +
       "Shared Read Blocks": 1567,                                                                                          +
       "Shared Dirtied Blocks": 0,                                                                                          +
       "Shared Written Blocks": 0,                                                                                          +
       "Local Hit Blocks": 0,                                                                                               +
       "Local Read Blocks": 0,                                                                                              +
       "Local Dirtied Blocks": 0,                                                                                           +
       "Local Written Blocks": 0,                                                                                           +
       "Temp Read Blocks": 0,                                                                                               +
       "Temp Written Blocks": 0,                                                                                            +
       "Plans": [                                                                                                           +
         {                                                                                                                  +
           "Node Type": "Nested Loop",                                                                                      +
           "Parent Relationship": "Outer",                                                                                  +
           "Parallel Aware": false,                                                                                         +
           "Join Type": "Inner",                                                                                            +
           "Startup Cost": 0.09,                                                                                            +
           "Total Cost": 145.63,                                                                                            +
           "Plan Rows": 4,                                                                                                  +
           "Plan Width": 59,                                                                                                +
           "Actual Startup Time": 4260.484,                                                                                 +
           "Actual Total Time": 5022.055,                                                                                   +
           "Actual Rows": 37,                                                                                               +
           "Actual Loops": 1,                                                                                               +
           "Inner Unique": true,                                                                                            +
           "Shared Hit Blocks": 5923,                                                                                       +
           "Shared Read Blocks": 1567,                                                                                      +
           "Shared Dirtied Blocks": 0,                                                                                      +
           "Shared Written Blocks": 0,                                                                                      +
           "Local Hit Blocks": 0,                                                                                           +
           "Local Read Blocks": 0,                                                                                          +
           "Local Dirtied Blocks": 0,                                                                                       +
           "Local Written Blocks": 0,                                                                                       +
           "Temp Read Blocks": 0,                                                                                           +
           "Temp Written Blocks": 0,                                                                                        +
           "Plans": [                                                                                                       +
             {                                                                                                              +
               "Node Type": "Nested Loop",                                                                                  +
               "Parent Relationship": "Outer",                                                                              +
               "Parallel Aware": false,                                                                                     +
               "Join Type": "Inner",                                                                                        +
               "Startup Cost": 0.08,                                                                                        +
               "Total Cost": 145.57,                                                                                        +
               "Plan Rows": 4,                                                                                              +
               "Plan Width": 63,                                                                                            +
               "Actual Startup Time": 4235.133,                                                                             +
               "Actual Total Time": 4914.108,                                                                               +
               "Actual Rows": 37,                                                                                           +
               "Actual Loops": 1,                                                                                           +
               "Inner Unique": true,                                                                                        +
               "Join Filter": "(mi.info_type_id = it1.id)",                                                                 +
               "Rows Removed by Join Filter": 0,                                                                            +
               "Shared Hit Blocks": 5825,                                                                                   +
               "Shared Read Blocks": 1517,                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                  +
               "Shared Written Blocks": 0,                                                                                  +
               "Local Hit Blocks": 0,                                                                                       +
               "Local Read Blocks": 0,                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                   +
               "Local Written Blocks": 0,                                                                                   +
               "Temp Read Blocks": 0,                                                                                       +
               "Temp Written Blocks": 0,                                                                                    +
               "Plans": [                                                                                                   +
                 {                                                                                                          +
                   "Node Type": "Nested Loop",                                                                              +
                   "Parent Relationship": "Outer",                                                                          +
                   "Parallel Aware": false,                                                                                 +
                   "Join Type": "Inner",                                                                                    +
                   "Startup Cost": 0.08,                                                                                    +
                   "Total Cost": 145.52,                                                                                    +
                   "Plan Rows": 4,                                                                                          +
                   "Plan Width": 67,                                                                                        +
                   "Actual Startup Time": 4235.079,                                                                         +
                   "Actual Total Time": 4913.973,                                                                           +
                   "Actual Rows": 37,                                                                                       +
                   "Actual Loops": 1,                                                                                       +
                   "Inner Unique": false,                                                                                   +
                   "Join Filter": "(t.id = mi.movie_id)",                                                                   +
                   "Rows Removed by Join Filter": 0,                                                                        +
                   "Shared Hit Blocks": 5824,                                                                               +
                   "Shared Read Blocks": 1517,                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                              +
                   "Shared Written Blocks": 0,                                                                              +
                   "Local Hit Blocks": 0,                                                                                   +
                   "Local Read Blocks": 0,                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                               +
                   "Local Written Blocks": 0,                                                                               +
                   "Temp Read Blocks": 0,                                                                                   +
                   "Temp Written Blocks": 0,                                                                                +
                   "Plans": [                                                                                               +
                     {                                                                                                      +
                       "Node Type": "Nested Loop",                                                                          +
                       "Parent Relationship": "Outer",                                                                      +
                       "Parallel Aware": false,                                                                             +
                       "Join Type": "Inner",                                                                                +
                       "Startup Cost": 0.07,                                                                                +
                       "Total Cost": 144.91,                                                                                +
                       "Plan Rows": 4,                                                                                      +
                       "Plan Width": 37,                                                                                    +
                       "Actual Startup Time": 167.689,                                                                      +
                       "Actual Total Time": 3153.444,                                                                       +
                       "Actual Rows": 292,                                                                                  +
                       "Actual Loops": 1,                                                                                   +
                       "Inner Unique": true,                                                                                +
                       "Join Filter": "(at.movie_id = t.id)",                                                               +
                       "Rows Removed by Join Filter": 0,                                                                    +
                       "Shared Hit Blocks": 1848,                                                                           +
                       "Shared Read Blocks": 1312,                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                          +
                       "Shared Written Blocks": 0,                                                                          +
                       "Local Hit Blocks": 0,                                                                               +
                       "Local Read Blocks": 0,                                                                              +
                       "Local Dirtied Blocks": 0,                                                                           +
                       "Local Written Blocks": 0,                                                                           +
                       "Temp Read Blocks": 0,                                                                               +
                       "Temp Written Blocks": 0,                                                                            +
                       "Plans": [                                                                                           +
                         {                                                                                                  +
                           "Node Type": "Nested Loop",                                                                      +
                           "Parent Relationship": "Outer",                                                                  +
                           "Parallel Aware": false,                                                                         +
                           "Join Type": "Inner",                                                                            +
                           "Startup Cost": 0.05,                                                                            +
                           "Total Cost": 144.30,                                                                            +
                           "Plan Rows": 14,                                                                                 +
                           "Plan Width": 16,                                                                                +
                           "Actual Startup Time": 123.770,                                                                  +
                           "Actual Total Time": 2446.624,                                                                   +
                           "Actual Rows": 292,                                                                              +
                           "Actual Loops": 1,                                                                               +
                           "Inner Unique": false,                                                                           +
                           "Shared Hit Blocks": 725,                                                                        +
                           "Shared Read Blocks": 1267,                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                      +
                           "Shared Written Blocks": 0,                                                                      +
                           "Local Hit Blocks": 0,                                                                           +
                           "Local Read Blocks": 0,                                                                          +
                           "Local Dirtied Blocks": 0,                                                                       +
                           "Local Written Blocks": 0,                                                                       +
                           "Temp Read Blocks": 0,                                                                           +
                           "Temp Written Blocks": 0,                                                                        +
                           "Plans": [                                                                                       +
                             {                                                                                              +
                               "Node Type": "Nested Loop",                                                                  +
                               "Parent Relationship": "Outer",                                                              +
                               "Parallel Aware": false,                                                                     +
                               "Join Type": "Inner",                                                                        +
                               "Startup Cost": 0.04,                                                                        +
                               "Total Cost": 142.66,                                                                        +
                               "Plan Rows": 1,                                                                              +
                               "Plan Width": 8,                                                                             +
                               "Actual Startup Time": 91.980,                                                               +
                               "Actual Total Time": 1793.240,                                                               +
                               "Actual Rows": 27,                                                                           +
                               "Actual Loops": 1,                                                                           +
                               "Inner Unique": false,                                                                       +
                               "Join Filter": "(mc.company_type_id = ct.id)",                                               +
                               "Rows Removed by Join Filter": 81,                                                           +
                               "Shared Hit Blocks": 678,                                                                    +
                               "Shared Read Blocks": 1210,                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                  +
                               "Shared Written Blocks": 0,                                                                  +
                               "Local Hit Blocks": 0,                                                                       +
                               "Local Read Blocks": 0,                                                                      +
                               "Local Dirtied Blocks": 0,                                                                   +
                               "Local Written Blocks": 0,                                                                   +
                               "Temp Read Blocks": 0,                                                                       +
                               "Temp Written Blocks": 0,                                                                    +
                               "Plans": [                                                                                   +
                                 {                                                                                          +
                                   "Node Type": "Seq Scan",                                                                 +
                                   "Parent Relationship": "Outer",                                                          +
                                   "Parallel Aware": false,                                                                 +
                                   "Relation Name": "company_type",                                                         +
                                   "Alias": "ct",                                                                           +
                                   "Startup Cost": 0.00,                                                                    +
                                   "Total Cost": 0.03,                                                                      +
                                   "Plan Rows": 4,                                                                          +
                                   "Plan Width": 4,                                                                         +
                                   "Actual Startup Time": 0.005,                                                            +
                                   "Actual Total Time": 0.010,                                                              +
                                   "Actual Rows": 4,                                                                        +
                                   "Actual Loops": 1,                                                                       +
                                   "Shared Hit Blocks": 1,                                                                  +
                                   "Shared Read Blocks": 0,                                                                 +
                                   "Shared Dirtied Blocks": 0,                                                              +
                                   "Shared Written Blocks": 0,                                                              +
                                   "Local Hit Blocks": 0,                                                                   +
                                   "Local Read Blocks": 0,                                                                  +
                                   "Local Dirtied Blocks": 0,                                                               +
                                   "Local Written Blocks": 0,                                                               +
                                   "Temp Read Blocks": 0,                                                                   +
                                   "Temp Written Blocks": 0                                                                 +
                                 },                                                                                         +
                                 {                                                                                          +
                                   "Node Type": "Materialize",                                                              +
                                   "Parent Relationship": "Inner",                                                          +
                                   "Parallel Aware": false,                                                                 +
                                   "Startup Cost": 0.04,                                                                    +
                                   "Total Cost": 142.63,                                                                    +
                                   "Plan Rows": 1,                                                                          +
                                   "Plan Width": 12,                                                                        +
                                   "Actual Startup Time": 22.993,                                                           +
                                   "Actual Total Time": 448.280,                                                            +
                                   "Actual Rows": 27,                                                                       +
                                   "Actual Loops": 4,                                                                       +
                                   "Shared Hit Blocks": 677,                                                                +
                                   "Shared Read Blocks": 1210,                                                              +
                                   "Shared Dirtied Blocks": 0,                                                              +
                                   "Shared Written Blocks": 0,                                                              +
                                   "Local Hit Blocks": 0,                                                                   +
                                   "Local Read Blocks": 0,                                                                  +
                                   "Local Dirtied Blocks": 0,                                                               +
                                   "Local Written Blocks": 0,                                                               +
                                   "Temp Read Blocks": 0,                                                                   +
                                   "Temp Written Blocks": 0,                                                                +
                                   "Plans": [                                                                               +
                                     {                                                                                      +
                                       "Node Type": "Nested Loop",                                                          +
                                       "Parent Relationship": "Outer",                                                      +
                                       "Parallel Aware": false,                                                             +
                                       "Join Type": "Inner",                                                                +
                                       "Startup Cost": 0.04,                                                                +
                                       "Total Cost": 142.63,                                                                +
                                       "Plan Rows": 1,                                                                      +
                                       "Plan Width": 12,                                                                    +
                                       "Actual Startup Time": 91.962,                                                       +
                                       "Actual Total Time": 1792.974,                                                       +
                                       "Actual Rows": 27,                                                                   +
                                       "Actual Loops": 1,                                                                   +
                                       "Inner Unique": false,                                                               +
                                       "Shared Hit Blocks": 677,                                                            +
                                       "Shared Read Blocks": 1210,                                                          +
                                       "Shared Dirtied Blocks": 0,                                                          +
                                       "Shared Written Blocks": 0,                                                          +
                                       "Local Hit Blocks": 0,                                                               +
                                       "Local Read Blocks": 0,                                                              +
                                       "Local Dirtied Blocks": 0,                                                           +
                                       "Local Written Blocks": 0,                                                           +
                                       "Temp Read Blocks": 0,                                                               +
                                       "Temp Written Blocks": 0,                                                            +
                                       "Plans": [                                                                           +
                                         {                                                                                  +
                                           "Node Type": "Nested Loop",                                                      +
                                           "Parent Relationship": "Outer",                                                  +
                                           "Parallel Aware": false,                                                         +
                                           "Join Type": "Inner",                                                            +
                                           "Startup Cost": 0.03,                                                            +
                                           "Total Cost": 136.24,                                                            +
                                           "Plan Rows": 1,                                                                  +
                                           "Plan Width": 8,                                                                 +
                                           "Actual Startup Time": 45.233,                                                   +
                                           "Actual Total Time": 1249.575,                                                   +
                                           "Actual Rows": 278,                                                              +
                                           "Actual Loops": 1,                                                               +
                                           "Inner Unique": false,                                                           +
                                           "Shared Hit Blocks": 3,                                                          +
                                           "Shared Read Blocks": 1022,                                                      +
                                           "Shared Dirtied Blocks": 0,                                                      +
                                           "Shared Written Blocks": 0,                                                      +
                                           "Local Hit Blocks": 0,                                                           +
                                           "Local Read Blocks": 0,                                                          +
                                           "Local Dirtied Blocks": 0,                                                       +
                                           "Local Written Blocks": 0,                                                       +
                                           "Temp Read Blocks": 0,                                                           +
                                           "Temp Written Blocks": 0,                                                        +
                                           "Plans": [                                                                       +
                                             {                                                                              +
                                               "Node Type": "Index Scan",                                                   +
                                               "Parent Relationship": "Outer",                                              +
                                               "Parallel Aware": false,                                                     +
                                               "Scan Direction": "Forward",                                                 +
                                               "Index Name": "company_name_idx_name",                                       +
                                               "Relation Name": "company_name",                                             +
                                               "Alias": "cn",                                                               +
                                               "Startup Cost": 0.01,                                                        +
                                               "Total Cost": 6.13,                                                          +
                                               "Plan Rows": 1,                                                              +
                                               "Plan Width": 4,                                                             +
                                               "Actual Startup Time": 44.782,                                               +
                                               "Actual Total Time": 44.786,                                                 +
                                               "Actual Rows": 1,                                                            +
                                               "Actual Loops": 1,                                                           +
                                               "Index Cond": "(name = 'YouTube'::text)",                                    +
                                               "Rows Removed by Index Recheck": 0,                                          +
                                               "Filter": "((country_code)::text = '[us]'::text)",                           +
                                               "Rows Removed by Filter": 0,                                                 +
                                               "Shared Hit Blocks": 0,                                                      +
                                               "Shared Read Blocks": 4,                                                     +
                                               "Shared Dirtied Blocks": 0,                                                  +
                                               "Shared Written Blocks": 0,                                                  +
                                               "Local Hit Blocks": 0,                                                       +
                                               "Local Read Blocks": 0,                                                      +
                                               "Local Dirtied Blocks": 0,                                                   +
                                               "Local Written Blocks": 0,                                                   +
                                               "Temp Read Blocks": 0,                                                       +
                                               "Temp Written Blocks": 0                                                     +
                                             },                                                                             +
                                             {                                                                              +
                                               "Node Type": "Index Scan",                                                   +
                                               "Parent Relationship": "Inner",                                              +
                                               "Parallel Aware": false,                                                     +
                                               "Scan Direction": "Forward",                                                 +
                                               "Index Name": "company_id_movie_companies",                                  +
                                               "Relation Name": "movie_companies",                                          +
                                               "Alias": "mc",                                                               +
                                               "Startup Cost": 0.01,                                                        +
                                               "Total Cost": 26.02,                                                         +
                                               "Plan Rows": 1,                                                              +
                                               "Plan Width": 12,                                                            +
                                               "Actual Startup Time": 0.442,                                                +
                                               "Actual Total Time": 1204.409,                                               +
                                               "Actual Rows": 278,                                                          +
                                               "Actual Loops": 1,                                                           +
                                               "Index Cond": "(company_id = cn.id)",                                        +
                                               "Rows Removed by Index Recheck": 0,                                          +
                                               "Filter": "((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))",+
                                               "Rows Removed by Filter": 1180,                                              +
                                               "Shared Hit Blocks": 3,                                                      +
                                               "Shared Read Blocks": 1018,                                                  +
                                               "Shared Dirtied Blocks": 0,                                                  +
                                               "Shared Written Blocks": 0,                                                  +
                                               "Local Hit Blocks": 0,                                                       +
                                               "Local Read Blocks": 0,                                                      +
                                               "Local Dirtied Blocks": 0,                                                   +
                                               "Local Written Blocks": 0,                                                   +
                                               "Temp Read Blocks": 0,                                                       +
                                               "Temp Written Blocks": 0                                                     +
                                             }                                                                              +
                                           ]                                                                                +
                                         },                                                                                 +
                                         {                                                                                  +
                                           "Node Type": "Index Scan",                                                       +
                                           "Parent Relationship": "Inner",                                                  +
                                           "Parallel Aware": false,                                                         +
                                           "Scan Direction": "Forward",                                                     +
                                           "Index Name": "movie_id_aka_title",                                              +
                                           "Relation Name": "aka_title",                                                    +
                                           "Alias": "at",                                                                   +
                                           "Startup Cost": 0.01,                                                            +
                                           "Total Cost": 1.28,                                                              +
                                           "Plan Rows": 2,                                                                  +
                                           "Plan Width": 4,                                                                 +
                                           "Actual Startup Time": 1.672,                                                    +
                                           "Actual Total Time": 1.950,                                                      +
                                           "Actual Rows": 0,                                                                +
                                           "Actual Loops": 278,                                                             +
                                           "Index Cond": "(movie_id = mc.movie_id)",                                        +
                                           "Rows Removed by Index Recheck": 0,                                              +
                                           "Shared Hit Blocks": 674,                                                        +
                                           "Shared Read Blocks": 188,                                                       +
                                           "Shared Dirtied Blocks": 0,                                                      +
                                           "Shared Written Blocks": 0,                                                      +
                                           "Local Hit Blocks": 0,                                                           +
                                           "Local Read Blocks": 0,                                                          +
                                           "Local Dirtied Blocks": 0,                                                       +
                                           "Local Written Blocks": 0,                                                       +
                                           "Temp Read Blocks": 0,                                                           +
                                           "Temp Written Blocks": 0                                                         +
                                         }                                                                                  +
                                       ]                                                                                    +
                                     }                                                                                      +
                                   ]                                                                                        +
                                 }                                                                                          +
                               ]                                                                                            +
                             },                                                                                             +
                             {                                                                                              +
                               "Node Type": "Index Scan",                                                                   +
                               "Parent Relationship": "Inner",                                                              +
                               "Parallel Aware": false,                                                                     +
                               "Scan Direction": "Forward",                                                                 +
                               "Index Name": "movie_id_movie_keyword",                                                      +
                               "Relation Name": "movie_keyword",                                                            +
                               "Alias": "mk",                                                                               +
                               "Startup Cost": 0.01,                                                                        +
                               "Total Cost": 0.33,                                                                          +
                               "Plan Rows": 11,                                                                             +
                               "Plan Width": 8,                                                                             +
                               "Actual Startup Time": 24.168,                                                               +
                               "Actual Total Time": 24.183,                                                                 +
                               "Actual Rows": 11,                                                                           +
                               "Actual Loops": 27,                                                                          +
                               "Index Cond": "(movie_id = at.movie_id)",                                                    +
                               "Rows Removed by Index Recheck": 0,                                                          +
                               "Shared Hit Blocks": 47,                                                                     +
                               "Shared Read Blocks": 57,                                                                    +
                               "Shared Dirtied Blocks": 0,                                                                  +
                               "Shared Written Blocks": 0,                                                                  +
                               "Local Hit Blocks": 0,                                                                       +
                               "Local Read Blocks": 0,                                                                      +
                               "Local Dirtied Blocks": 0,                                                                   +
                               "Local Written Blocks": 0,                                                                   +
                               "Temp Read Blocks": 0,                                                                       +
                               "Temp Written Blocks": 0                                                                     +
                             }                                                                                              +
                           ]                                                                                                +
                         },                                                                                                 +
                         {                                                                                                  +
                           "Node Type": "Index Scan",                                                                       +
                           "Parent Relationship": "Inner",                                                                  +
                           "Parallel Aware": false,                                                                         +
                           "Scan Direction": "Forward",                                                                     +
                           "Index Name": "title_idx_id",                                                                    +
                           "Relation Name": "title",                                                                        +
                           "Alias": "t",                                                                                    +
                           "Startup Cost": 0.01,                                                                            +
                           "Total Cost": 0.04,                                                                              +
                           "Plan Rows": 1,                                                                                  +
                           "Plan Width": 21,                                                                                +
                           "Actual Startup Time": 2.418,                                                                    +
                           "Actual Total Time": 2.418,                                                                      +
                           "Actual Rows": 1,                                                                                +
                           "Actual Loops": 292,                                                                             +
                           "Index Cond": "(id = mk.movie_id)",                                                              +
                           "Rows Removed by Index Recheck": 0,                                                              +
                           "Filter": "((production_year >= 2005) AND (production_year <= 2010))",                           +
                           "Rows Removed by Filter": 0,                                                                     +
                           "Shared Hit Blocks": 1123,                                                                       +
                           "Shared Read Blocks": 45,                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                      +
                           "Shared Written Blocks": 0,                                                                      +
                           "Local Hit Blocks": 0,                                                                           +
                           "Local Read Blocks": 0,                                                                          +
                           "Local Dirtied Blocks": 0,                                                                       +
                           "Local Written Blocks": 0,                                                                       +
                           "Temp Read Blocks": 0,                                                                           +
                           "Temp Written Blocks": 0                                                                         +
                         }                                                                                                  +
                       ]                                                                                                    +
                     },                                                                                                     +
                     {                                                                                                      +
                       "Node Type": "Index Scan",                                                                           +
                       "Parent Relationship": "Inner",                                                                      +
                       "Parallel Aware": false,                                                                             +
                       "Scan Direction": "Forward",                                                                         +
                       "Index Name": "movie_id_movie_info",                                                                 +
                       "Relation Name": "movie_info",                                                                       +
                       "Alias": "mi",                                                                                       +
                       "Startup Cost": 0.01,                                                                                +
                       "Total Cost": 0.15,                                                                                  +
                       "Plan Rows": 1,                                                                                      +
                       "Plan Width": 50,                                                                                    +
                       "Actual Startup Time": 5.668,                                                                        +
                       "Actual Total Time": 6.027,                                                                          +
                       "Actual Rows": 0,                                                                                    +
                       "Actual Loops": 292,                                                                                 +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                            +
                       "Rows Removed by Index Recheck": 0,                                                                  +
                       "Filter": "((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))",                         +
                       "Rows Removed by Filter": 29,                                                                        +
                       "Shared Hit Blocks": 3976,                                                                           +
                       "Shared Read Blocks": 205,                                                                           +
                       "Shared Dirtied Blocks": 0,                                                                          +
                       "Shared Written Blocks": 0,                                                                          +
                       "Local Hit Blocks": 0,                                                                               +
                       "Local Read Blocks": 0,                                                                              +
                       "Local Dirtied Blocks": 0,                                                                           +
                       "Local Written Blocks": 0,                                                                           +
                       "Temp Read Blocks": 0,                                                                               +
                       "Temp Written Blocks": 0                                                                             +
                     }                                                                                                      +
                   ]                                                                                                        +
                 },                                                                                                         +
                 {                                                                                                          +
                   "Node Type": "Materialize",                                                                              +
                   "Parent Relationship": "Inner",                                                                          +
                   "Parallel Aware": false,                                                                                 +
                   "Startup Cost": 0.00,                                                                                    +
                   "Total Cost": 0.05,                                                                                      +
                   "Plan Rows": 1,                                                                                          +
                   "Plan Width": 4,                                                                                         +
                   "Actual Startup Time": 0.002,                                                                            +
                   "Actual Total Time": 0.002,                                                                              +
                   "Actual Rows": 1,                                                                                        +
                   "Actual Loops": 37,                                                                                      +
                   "Shared Hit Blocks": 1,                                                                                  +
                   "Shared Read Blocks": 0,                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                              +
                   "Shared Written Blocks": 0,                                                                              +
                   "Local Hit Blocks": 0,                                                                                   +
                   "Local Read Blocks": 0,                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                               +
                   "Local Written Blocks": 0,                                                                               +
                   "Temp Read Blocks": 0,                                                                                   +
                   "Temp Written Blocks": 0,                                                                                +
                   "Plans": [                                                                                               +
                     {                                                                                                      +
                       "Node Type": "Seq Scan",                                                                             +
                       "Parent Relationship": "Outer",                                                                      +
                       "Parallel Aware": false,                                                                             +
                       "Relation Name": "info_type",                                                                        +
                       "Alias": "it1",                                                                                      +
                       "Startup Cost": 0.00,                                                                                +
                       "Total Cost": 0.05,                                                                                  +
                       "Plan Rows": 1,                                                                                      +
                       "Plan Width": 4,                                                                                     +
                       "Actual Startup Time": 0.033,                                                                        +
                       "Actual Total Time": 0.033,                                                                          +
                       "Actual Rows": 1,                                                                                    +
                       "Actual Loops": 1,                                                                                   +
                       "Filter": "((info)::text = 'release dates'::text)",                                                  +
                       "Rows Removed by Filter": 15,                                                                        +
                       "Shared Hit Blocks": 1,                                                                              +
                       "Shared Read Blocks": 0,                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                          +
                       "Shared Written Blocks": 0,                                                                          +
                       "Local Hit Blocks": 0,                                                                               +
                       "Local Read Blocks": 0,                                                                              +
                       "Local Dirtied Blocks": 0,                                                                           +
                       "Local Written Blocks": 0,                                                                           +
                       "Temp Read Blocks": 0,                                                                               +
                       "Temp Written Blocks": 0                                                                             +
                     }                                                                                                      +
                   ]                                                                                                        +
                 }                                                                                                          +
               ]                                                                                                            +
             },                                                                                                             +
             {                                                                                                              +
               "Node Type": "Index Scan",                                                                                   +
               "Parent Relationship": "Inner",                                                                              +
               "Parallel Aware": false,                                                                                     +
               "Scan Direction": "Forward",                                                                                 +
               "Index Name": "keyword_pkey",                                                                                +
               "Relation Name": "keyword",                                                                                  +
               "Alias": "k",                                                                                                +
               "Startup Cost": 0.01,                                                                                        +
               "Total Cost": 0.01,                                                                                          +
               "Plan Rows": 1,                                                                                              +
               "Plan Width": 4,                                                                                             +
               "Actual Startup Time": 2.914,                                                                                +
               "Actual Total Time": 2.914,                                                                                  +
               "Actual Rows": 1,                                                                                            +
               "Actual Loops": 37,                                                                                          +
               "Index Cond": "(id = mk.keyword_id)",                                                                        +
               "Rows Removed by Index Recheck": 0,                                                                          +
               "Shared Hit Blocks": 98,                                                                                     +
               "Shared Read Blocks": 50,                                                                                    +
               "Shared Dirtied Blocks": 0,                                                                                  +
               "Shared Written Blocks": 0,                                                                                  +
               "Local Hit Blocks": 0,                                                                                       +
               "Local Read Blocks": 0,                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                   +
               "Local Written Blocks": 0,                                                                                   +
               "Temp Read Blocks": 0,                                                                                       +
               "Temp Written Blocks": 0                                                                                     +
             }                                                                                                              +
           ]                                                                                                                +
         }                                                                                                                  +
       ]                                                                                                                    +
     },                                                                                                                     +
     "Planning Time": 9215.289,                                                                                             +
     "Triggers": [                                                                                                          +
     ],                                                                                                                     +
     "Execution Time": 5023.165                                                                                             +
   }                                                                                                                        +
 ]
(1 row)

