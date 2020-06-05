                                          QUERY PLAN                                          
----------------------------------------------------------------------------------------------
 [                                                                                           +
   {                                                                                         +
     "Plan": {                                                                               +
       "Node Type": "Aggregate",                                                             +
       "Strategy": "Plain",                                                                  +
       "Partial Mode": "Simple",                                                             +
       "Parallel Aware": false,                                                              +
       "Startup Cost": 1205.57,                                                              +
       "Total Cost": 1205.57,                                                                +
       "Plan Rows": 1,                                                                       +
       "Plan Width": 96,                                                                     +
       "Actual Startup Time": 89168.643,                                                     +
       "Actual Total Time": 89168.643,                                                       +
       "Actual Rows": 1,                                                                     +
       "Actual Loops": 1,                                                                    +
       "Shared Hit Blocks": 293377,                                                          +
       "Shared Read Blocks": 41910,                                                          +
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
           "Total Cost": 1205.57,                                                            +
           "Plan Rows": 1,                                                                   +
           "Plan Width": 42,                                                                 +
           "Actual Startup Time": 4305.770,                                                  +
           "Actual Total Time": 89166.338,                                                   +
           "Actual Rows": 397,                                                               +
           "Actual Loops": 1,                                                                +
           "Inner Unique": true,                                                             +
           "Join Filter": "(mi.info_type_id = it1.id)",                                      +
           "Rows Removed by Join Filter": 0,                                                 +
           "Shared Hit Blocks": 293377,                                                      +
           "Shared Read Blocks": 41910,                                                      +
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
               "Startup Cost": 0.05,                                                         +
               "Total Cost": 1205.52,                                                        +
               "Plan Rows": 5,                                                               +
               "Plan Width": 46,                                                             +
               "Actual Startup Time": 4305.722,                                              +
               "Actual Total Time": 89164.841,                                               +
               "Actual Rows": 397,                                                           +
               "Actual Loops": 1,                                                            +
               "Inner Unique": false,                                                        +
               "Join Filter": "(t.id = mi.movie_id)",                                        +
               "Rows Removed by Join Filter": 0,                                             +
               "Shared Hit Blocks": 293376,                                                  +
               "Shared Read Blocks": 41910,                                                  +
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
                   "Total Cost": 1200.96,                                                    +
                   "Plan Rows": 18,                                                          +
                   "Plan Width": 54,                                                         +
                   "Actual Startup Time": 499.177,                                           +
                   "Actual Total Time": 51704.721,                                           +
                   "Actual Rows": 5674,                                                      +
                   "Actual Loops": 1,                                                        +
                   "Inner Unique": true,                                                     +
                   "Join Filter": "(mi_idx.movie_id = t.id)",                                +
                   "Rows Removed by Join Filter": 0,                                         +
                   "Shared Hit Blocks": 225478,                                              +
                   "Shared Read Blocks": 30168,                                              +
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
                       "Total Cost": 1194.41,                                                +
                       "Plan Rows": 102,                                                     +
                       "Plan Width": 33,                                                     +
                       "Actual Startup Time": 142.522,                                       +
                       "Actual Total Time": 28610.107,                                       +
                       "Actual Rows": 19791,                                                 +
                       "Actual Loops": 1,                                                    +
                       "Inner Unique": true,                                                 +
                       "Shared Hit Blocks": 155851,                                          +
                       "Shared Read Blocks": 20559,                                          +
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
                           "Total Cost": 1189.39,                                            +
                           "Plan Rows": 282,                                                 +
                           "Plan Width": 18,                                                 +
                           "Actual Startup Time": 24.204,                                    +
                           "Actual Total Time": 10550.133,                                   +
                           "Actual Rows": 24233,                                             +
                           "Actual Loops": 1,                                                +
                           "Inner Unique": true,                                             +
                           "Join Filter": "(mc.company_type_id = ct.id)",                    +
                           "Rows Removed by Join Filter": 40474,                             +
                           "Shared Hit Blocks": 61522,                                       +
                           "Shared Read Blocks": 17564,                                      +
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
                               "Total Cost": 1189.10,                                        +
                               "Plan Rows": 1129,                                            +
                               "Plan Width": 22,                                             +
                               "Actual Startup Time": 0.167,                                 +
                               "Actual Total Time": 10472.559,                               +
                               "Actual Rows": 64707,                                         +
                               "Actual Loops": 1,                                            +
                               "Inner Unique": false,                                        +
                               "Shared Hit Blocks": 61521,                                   +
                               "Shared Read Blocks": 17564,                                  +
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
                                   "Total Cost": 479.62,                                     +
                                   "Plan Rows": 468,                                         +
                                   "Plan Width": 10,                                         +
                                   "Actual Startup Time": 0.138,                             +
                                   "Actual Total Time": 848.831,                             +
                                   "Actual Rows": 15849,                                     +
                                   "Actual Loops": 1,                                        +
                                   "Inner Unique": true,                                     +
                                   "Join Filter": "(it2.id = mi_idx.info_type_id)",          +
                                   "Rows Removed by Join Filter": 37013,                     +
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
                                       "Alias": "mi_idx",                                    +
                                       "Startup Cost": 0.00,                                 +
                                       "Total Cost": 467.71,                                 +
                                       "Plan Rows": 52860,                                   +
                                       "Plan Width": 14,                                     +
                                       "Actual Startup Time": 0.075,                         +
                                       "Actual Total Time": 786.201,                         +
                                       "Actual Rows": 52862,                                 +
                                       "Actual Loops": 1,                                    +
                                       "Filter": "(info > '8.0'::text)",                     +
                                       "Rows Removed by Filter": 1327173,                    +
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
                                       "Actual Loops": 52862,                                +
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
                                           "Alias": "it2",                                   +
                                           "Startup Cost": 0.00,                             +
                                           "Total Cost": 0.05,                               +
                                           "Plan Rows": 1,                                   +
                                           "Plan Width": 4,                                  +
                                           "Actual Startup Time": 0.046,                     +
                                           "Actual Total Time": 0.052,                       +
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
                                   "Total Cost": 1.52,                                       +
                                   "Plan Rows": 2,                                           +
                                   "Plan Width": 12,                                         +
                                   "Actual Startup Time": 0.464,                             +
                                   "Actual Total Time": 0.603,                               +
                                   "Actual Rows": 4,                                         +
                                   "Actual Loops": 15849,                                    +
                                   "Index Cond": "(movie_id = mi_idx.movie_id)",             +
                                   "Rows Removed by Index Recheck": 0,                       +
                                   "Shared Hit Blocks": 61518,                               +
                                   "Shared Read Blocks": 9113,                               +
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
                               "Actual Loops": 64707,                                        +
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
                                   "Actual Startup Time": 0.007,                             +
                                   "Actual Total Time": 0.010,                               +
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
                           "Actual Startup Time": 0.743,                                     +
                           "Actual Total Time": 0.743,                                       +
                           "Actual Rows": 1,                                                 +
                           "Actual Loops": 24233,                                            +
                           "Index Cond": "(id = mc.company_id)",                             +
                           "Rows Removed by Index Recheck": 0,                               +
                           "Filter": "((country_code)::text = '[us]'::text)",                +
                           "Rows Removed by Filter": 0,                                      +
                           "Shared Hit Blocks": 94329,                                       +
                           "Shared Read Blocks": 2995,                                       +
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
                       "Plan Width": 21,                                                     +
                       "Actual Startup Time": 1.165,                                         +
                       "Actual Total Time": 1.165,                                           +
                       "Actual Rows": 0,                                                     +
                       "Actual Loops": 19791,                                                +
                       "Index Cond": "(id = mc.movie_id)",                                   +
                       "Rows Removed by Index Recheck": 0,                                   +
                       "Filter": "((production_year >= 2005) AND (production_year <= 2008))",+
                       "Rows Removed by Filter": 1,                                          +
                       "Shared Hit Blocks": 69627,                                           +
                       "Shared Read Blocks": 9609,                                           +
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
                   "Node Type": "Index Scan",                                                +
                   "Parent Relationship": "Inner",                                           +
                   "Parallel Aware": false,                                                  +
                   "Scan Direction": "Forward",                                              +
                   "Index Name": "movie_id_movie_info",                                      +
                   "Relation Name": "movie_info",                                            +
                   "Alias": "mi",                                                            +
                   "Startup Cost": 0.01,                                                     +
                   "Total Cost": 0.25,                                                       +
                   "Plan Rows": 1,                                                           +
                   "Plan Width": 8,                                                          +
                   "Actual Startup Time": 6.593,                                             +
                   "Actual Total Time": 6.600,                                               +
                   "Actual Rows": 0,                                                         +
                   "Actual Loops": 5674,                                                     +
                   "Index Cond": "(movie_id = mc.movie_id)",                                 +
                   "Rows Removed by Index Recheck": 0,                                       +
                   "Filter": "(info = ANY ('{Drama,Horror}'::text[]))",                      +
                   "Rows Removed by Filter": 28,                                             +
                   "Shared Hit Blocks": 67898,                                               +
                   "Shared Read Blocks": 11742,                                              +
                   "Shared Dirtied Blocks": 0,                                               +
                   "Shared Written Blocks": 0,                                               +
                   "Local Hit Blocks": 0,                                                    +
                   "Local Read Blocks": 0,                                                   +
                   "Local Dirtied Blocks": 0,                                                +
                   "Local Written Blocks": 0,                                                +
                   "Temp Read Blocks": 0,                                                    +
                   "Temp Written Blocks": 0                                                  +
                 }                                                                           +
               ]                                                                             +
             },                                                                              +
             {                                                                               +
               "Node Type": "Materialize",                                                   +
               "Parent Relationship": "Inner",                                               +
               "Parallel Aware": false,                                                      +
               "Startup Cost": 0.00,                                                         +
               "Total Cost": 0.05,                                                           +
               "Plan Rows": 1,                                                               +
               "Plan Width": 4,                                                              +
               "Actual Startup Time": 0.001,                                                 +
               "Actual Total Time": 0.001,                                                   +
               "Actual Rows": 1,                                                             +
               "Actual Loops": 397,                                                          +
               "Shared Hit Blocks": 1,                                                       +
               "Shared Read Blocks": 0,                                                      +
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
                   "Node Type": "Seq Scan",                                                  +
                   "Parent Relationship": "Outer",                                           +
                   "Parallel Aware": false,                                                  +
                   "Relation Name": "info_type",                                             +
                   "Alias": "it1",                                                           +
                   "Startup Cost": 0.00,                                                     +
                   "Total Cost": 0.05,                                                       +
                   "Plan Rows": 1,                                                           +
                   "Plan Width": 4,                                                          +
                   "Actual Startup Time": 0.022,                                             +
                   "Actual Total Time": 0.022,                                               +
                   "Actual Rows": 1,                                                         +
                   "Actual Loops": 1,                                                        +
                   "Filter": "((info)::text = 'genres'::text)",                              +
                   "Rows Removed by Filter": 2,                                              +
                   "Shared Hit Blocks": 1,                                                   +
                   "Shared Read Blocks": 0,                                                  +
                   "Shared Dirtied Blocks": 0,                                               +
                   "Shared Written Blocks": 0,                                               +
                   "Local Hit Blocks": 0,                                                    +
                   "Local Read Blocks": 0,                                                   +
                   "Local Dirtied Blocks": 0,                                                +
                   "Local Written Blocks": 0,                                                +
                   "Temp Read Blocks": 0,                                                    +
                   "Temp Written Blocks": 0                                                  +
                 }                                                                           +
               ]                                                                             +
             }                                                                               +
           ]                                                                                 +
         }                                                                                   +
       ]                                                                                     +
     },                                                                                      +
     "Planning Time": 4931.810,                                                              +
     "Triggers": [                                                                           +
     ],                                                                                      +
     "Execution Time": 89223.185                                                             +
   }                                                                                         +
 ]
(1 row)

