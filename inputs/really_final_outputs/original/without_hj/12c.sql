                                          QUERY PLAN                                          
----------------------------------------------------------------------------------------------
 [                                                                                           +
   {                                                                                         +
     "Plan": {                                                                               +
       "Node Type": "Aggregate",                                                             +
       "Strategy": "Plain",                                                                  +
       "Partial Mode": "Simple",                                                             +
       "Parallel Aware": false,                                                              +
       "Startup Cost": 1319.75,                                                              +
       "Total Cost": 1319.75,                                                                +
       "Plan Rows": 1,                                                                       +
       "Plan Width": 96,                                                                     +
       "Actual Startup Time": 147065.590,                                                    +
       "Actual Total Time": 147065.591,                                                      +
       "Actual Rows": 1,                                                                     +
       "Actual Loops": 1,                                                                    +
       "Shared Hit Blocks": 1933298,                                                         +
       "Shared Read Blocks": 135051,                                                         +
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
           "Total Cost": 1319.75,                                                            +
           "Plan Rows": 1,                                                                   +
           "Plan Width": 42,                                                                 +
           "Actual Startup Time": 410.936,                                                   +
           "Actual Total Time": 147032.614,                                                  +
           "Actual Rows": 4711,                                                              +
           "Actual Loops": 1,                                                                +
           "Inner Unique": true,                                                             +
           "Join Filter": "(mi.info_type_id = it1.id)",                                      +
           "Rows Removed by Join Filter": 0,                                                 +
           "Shared Hit Blocks": 1933298,                                                     +
           "Shared Read Blocks": 135051,                                                     +
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
               "Total Cost": 1319.69,                                                        +
               "Plan Rows": 47,                                                              +
               "Plan Width": 46,                                                             +
               "Actual Startup Time": 410.911,                                               +
               "Actual Total Time": 147021.319,                                              +
               "Actual Rows": 4711,                                                          +
               "Actual Loops": 1,                                                            +
               "Inner Unique": false,                                                        +
               "Join Filter": "(t.id = mi.movie_id)",                                        +
               "Rows Removed by Join Filter": 0,                                             +
               "Shared Hit Blocks": 1933297,                                                 +
               "Shared Read Blocks": 135051,                                                 +
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
                   "Total Cost": 1280.78,                                                    +
                   "Plan Rows": 153,                                                         +
                   "Plan Width": 54,                                                         +
                   "Actual Startup Time": 34.552,                                            +
                   "Actual Total Time": 67225.123,                                           +
                   "Actual Rows": 42332,                                                     +
                   "Actual Loops": 1,                                                        +
                   "Inner Unique": true,                                                     +
                   "Join Filter": "(mi_idx.movie_id = t.id)",                                +
                   "Rows Removed by Join Filter": 0,                                         +
                   "Shared Hit Blocks": 1451520,                                             +
                   "Shared Read Blocks": 67963,                                              +
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
                       "Total Cost": 1256.90,                                                +
                       "Plan Rows": 372,                                                     +
                       "Plan Width": 33,                                                     +
                       "Actual Startup Time": 29.099,                                        +
                       "Actual Total Time": 20855.916,                                       +
                       "Actual Rows": 91314,                                                 +
                       "Actual Loops": 1,                                                    +
                       "Inner Unique": true,                                                 +
                       "Shared Hit Blocks": 1117144,                                         +
                       "Shared Read Blocks": 36716,                                          +
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
                           "Total Cost": 1238.55,                                            +
                           "Plan Rows": 1030,                                                +
                           "Plan Width": 18,                                                 +
                           "Actual Startup Time": 24.204,                                    +
                           "Actual Total Time": 4871.726,                                    +
                           "Actual Rows": 154495,                                            +
                           "Actual Loops": 1,                                                +
                           "Inner Unique": true,                                             +
                           "Join Filter": "(mc.company_type_id = ct.id)",                    +
                           "Rows Removed by Join Filter": 228521,                            +
                           "Shared Hit Blocks": 500923,                                      +
                           "Shared Read Blocks": 32882,                                      +
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
                               "Total Cost": 1237.59,                                        +
                               "Plan Rows": 4120,                                            +
                               "Plan Width": 22,                                             +
                               "Actual Startup Time": 0.161,                                 +
                               "Actual Total Time": 4502.745,                                +
                               "Actual Rows": 383016,                                        +
                               "Actual Loops": 1,                                            +
                               "Inner Unique": false,                                        +
                               "Shared Hit Blocks": 500922,                                  +
                               "Shared Read Blocks": 32882,                                  +
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
                                   "Total Cost": 511.06,                                     +
                                   "Plan Rows": 1708,                                        +
                                   "Plan Width": 10,                                         +
                                   "Actual Startup Time": 0.133,                             +
                                   "Actual Total Time": 993.458,                             +
                                   "Actual Rows": 121572,                                    +
                                   "Actual Loops": 1,                                        +
                                   "Inner Unique": true,                                     +
                                   "Join Filter": "(it2.id = mi_idx.info_type_id)",          +
                                   "Rows Removed by Join Filter": 71395,                     +
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
                                       "Plan Rows": 192955,                                  +
                                       "Plan Width": 14,                                     +
                                       "Actual Startup Time": 0.073,                         +
                                       "Actual Total Time": 801.279,                         +
                                       "Actual Rows": 192967,                                +
                                       "Actual Loops": 1,                                    +
                                       "Filter": "(info > '7.0'::text)",                     +
                                       "Rows Removed by Filter": 1187068,                    +
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
                                       "Actual Loops": 192967,                               +
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
                                   "Total Cost": 0.43,                                       +
                                   "Plan Rows": 2,                                           +
                                   "Plan Width": 12,                                         +
                                   "Actual Startup Time": 0.021,                             +
                                   "Actual Total Time": 0.026,                               +
                                   "Actual Rows": 3,                                         +
                                   "Actual Loops": 121572,                                   +
                                   "Index Cond": "(movie_id = mi_idx.movie_id)",             +
                                   "Rows Removed by Index Recheck": 0,                       +
                                   "Shared Hit Blocks": 500919,                              +
                                   "Shared Read Blocks": 24431,                              +
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
                               "Actual Loops": 383016,                                       +
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
                           "Actual Startup Time": 0.102,                                     +
                           "Actual Total Time": 0.102,                                       +
                           "Actual Rows": 1,                                                 +
                           "Actual Loops": 154495,                                           +
                           "Index Cond": "(id = mc.company_id)",                             +
                           "Rows Removed by Index Recheck": 0,                               +
                           "Filter": "((country_code)::text = '[us]'::text)",                +
                           "Rows Removed by Filter": 0,                                      +
                           "Shared Hit Blocks": 616221,                                      +
                           "Shared Read Blocks": 3834,                                       +
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
                       "Actual Startup Time": 0.506,                                         +
                       "Actual Total Time": 0.506,                                           +
                       "Actual Rows": 0,                                                     +
                       "Actual Loops": 91314,                                                +
                       "Index Cond": "(id = mc.movie_id)",                                   +
                       "Rows Removed by Index Recheck": 0,                                   +
                       "Filter": "((production_year >= 2000) AND (production_year <= 2010))",+
                       "Rows Removed by Filter": 1,                                          +
                       "Shared Hit Blocks": 334376,                                          +
                       "Shared Read Blocks": 31247,                                          +
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
                   "Actual Startup Time": 1.877,                                             +
                   "Actual Total Time": 1.884,                                               +
                   "Actual Rows": 0,                                                         +
                   "Actual Loops": 42332,                                                    +
                   "Index Cond": "(movie_id = mc.movie_id)",                                 +
                   "Rows Removed by Index Recheck": 0,                                       +
                   "Filter": "(info = ANY ('{Drama,Horror,Western,Family}'::text[]))",       +
                   "Rows Removed by Filter": 29,                                             +
                   "Shared Hit Blocks": 481777,                                              +
                   "Shared Read Blocks": 67088,                                              +
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
               "Actual Startup Time": 0.000,                                                 +
               "Actual Total Time": 0.000,                                                   +
               "Actual Rows": 1,                                                             +
               "Actual Loops": 4711,                                                         +
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
                   "Actual Startup Time": 0.011,                                             +
                   "Actual Total Time": 0.011,                                               +
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
     "Planning Time": 5165.464,                                                              +
     "Triggers": [                                                                           +
     ],                                                                                      +
     "Execution Time": 147086.516                                                            +
   }                                                                                         +
 ]
(1 row)

