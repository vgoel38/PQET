                                                                     QUERY PLAN                                                                      
-----------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                  +
   {                                                                                                                                                +
     "Plan": {                                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                                    +
       "Strategy": "Plain",                                                                                                                         +
       "Partial Mode": "Simple",                                                                                                                    +
       "Parallel Aware": false,                                                                                                                     +
       "Startup Cost": 8835.18,                                                                                                                     +
       "Total Cost": 8835.18,                                                                                                                       +
       "Plan Rows": 1,                                                                                                                              +
       "Plan Width": 68,                                                                                                                            +
       "Actual Startup Time": 4114.415,                                                                                                             +
       "Actual Total Time": 4114.415,                                                                                                               +
       "Actual Rows": 1,                                                                                                                            +
       "Actual Loops": 1,                                                                                                                           +
       "Shared Hit Blocks": 11,                                                                                                                     +
       "Shared Read Blocks": 63235,                                                                                                                 +
       "Shared Dirtied Blocks": 0,                                                                                                                  +
       "Shared Written Blocks": 0,                                                                                                                  +
       "Local Hit Blocks": 0,                                                                                                                       +
       "Local Read Blocks": 0,                                                                                                                      +
       "Local Dirtied Blocks": 0,                                                                                                                   +
       "Local Written Blocks": 0,                                                                                                                   +
       "Temp Read Blocks": 0,                                                                                                                       +
       "Temp Written Blocks": 0,                                                                                                                    +
       "Plans": [                                                                                                                                   +
         {                                                                                                                                          +
           "Node Type": "Merge Join",                                                                                                               +
           "Parent Relationship": "Outer",                                                                                                          +
           "Parallel Aware": false,                                                                                                                 +
           "Join Type": "Inner",                                                                                                                    +
           "Startup Cost": 8835.18,                                                                                                                 +
           "Total Cost": 8835.18,                                                                                                                   +
           "Plan Rows": 4,                                                                                                                          +
           "Plan Width": 45,                                                                                                                        +
           "Actual Startup Time": 4114.377,                                                                                                         +
           "Actual Total Time": 4114.378,                                                                                                           +
           "Actual Rows": 3,                                                                                                                        +
           "Actual Loops": 1,                                                                                                                       +
           "Inner Unique": true,                                                                                                                    +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                            +
           "Shared Hit Blocks": 11,                                                                                                                 +
           "Shared Read Blocks": 63235,                                                                                                             +
           "Shared Dirtied Blocks": 0,                                                                                                              +
           "Shared Written Blocks": 0,                                                                                                              +
           "Local Hit Blocks": 0,                                                                                                                   +
           "Local Read Blocks": 0,                                                                                                                  +
           "Local Dirtied Blocks": 0,                                                                                                               +
           "Local Written Blocks": 0,                                                                                                               +
           "Temp Read Blocks": 0,                                                                                                                   +
           "Temp Written Blocks": 0,                                                                                                                +
           "Plans": [                                                                                                                               +
             {                                                                                                                                      +
               "Node Type": "Sort",                                                                                                                 +
               "Parent Relationship": "Outer",                                                                                                      +
               "Parallel Aware": false,                                                                                                             +
               "Startup Cost": 8835.15,                                                                                                             +
               "Total Cost": 8835.15,                                                                                                               +
               "Plan Rows": 16,                                                                                                                     +
               "Plan Width": 49,                                                                                                                    +
               "Actual Startup Time": 4114.364,                                                                                                     +
               "Actual Total Time": 4114.365,                                                                                                       +
               "Actual Rows": 3,                                                                                                                    +
               "Actual Loops": 1,                                                                                                                   +
               "Sort Key": ["mc.company_type_id"],                                                                                                  +
               "Sort Method": "quicksort",                                                                                                          +
               "Sort Space Used": 25,                                                                                                               +
               "Sort Space Type": "Memory",                                                                                                         +
               "Shared Hit Blocks": 10,                                                                                                             +
               "Shared Read Blocks": 63235,                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                               +
               "Local Read Blocks": 0,                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                           +
               "Local Written Blocks": 0,                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                               +
               "Temp Written Blocks": 0,                                                                                                            +
               "Plans": [                                                                                                                           +
                 {                                                                                                                                  +
                   "Node Type": "Merge Join",                                                                                                       +
                   "Parent Relationship": "Outer",                                                                                                  +
                   "Parallel Aware": false,                                                                                                         +
                   "Join Type": "Inner",                                                                                                            +
                   "Startup Cost": 8834.85,                                                                                                         +
                   "Total Cost": 8835.14,                                                                                                           +
                   "Plan Rows": 16,                                                                                                                 +
                   "Plan Width": 49,                                                                                                                +
                   "Actual Startup Time": 4075.716,                                                                                                 +
                   "Actual Total Time": 4075.717,                                                                                                   +
                   "Actual Rows": 3,                                                                                                                +
                   "Actual Loops": 1,                                                                                                               +
                   "Inner Unique": true,                                                                                                            +
                   "Merge Cond": "(mi_idx.info_type_id = it.id)",                                                                                   +
                   "Shared Hit Blocks": 6,                                                                                                          +
                   "Shared Read Blocks": 63235,                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                           +
                   "Temp Written Blocks": 0,                                                                                                        +
                   "Plans": [                                                                                                                       +
                     {                                                                                                                              +
                       "Node Type": "Sort",                                                                                                         +
                       "Parent Relationship": "Outer",                                                                                              +
                       "Parallel Aware": false,                                                                                                     +
                       "Startup Cost": 8834.81,                                                                                                     +
                       "Total Cost": 8834.95,                                                                                                       +
                       "Plan Rows": 1807,                                                                                                           +
                       "Plan Width": 53,                                                                                                            +
                       "Actual Startup Time": 4074.356,                                                                                             +
                       "Actual Total Time": 4074.843,                                                                                               +
                       "Actual Rows": 7380,                                                                                                         +
                       "Actual Loops": 1,                                                                                                           +
                       "Sort Key": ["mi_idx.info_type_id"],                                                                                         +
                       "Sort Method": "quicksort",                                                                                                  +
                       "Sort Space Used": 925,                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                 +
                       "Shared Hit Blocks": 5,                                                                                                      +
                       "Shared Read Blocks": 63235,                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                    +
                       "Plans": [                                                                                                                   +
                         {                                                                                                                          +
                           "Node Type": "Merge Join",                                                                                               +
                           "Parent Relationship": "Outer",                                                                                          +
                           "Parallel Aware": false,                                                                                                 +
                           "Join Type": "Inner",                                                                                                    +
                           "Startup Cost": 8555.09,                                                                                                 +
                           "Total Cost": 8831.77,                                                                                                   +
                           "Plan Rows": 1807,                                                                                                       +
                           "Plan Width": 53,                                                                                                        +
                           "Actual Startup Time": 3767.297,                                                                                         +
                           "Actual Total Time": 4072.217,                                                                                           +
                           "Actual Rows": 7380,                                                                                                     +
                           "Actual Loops": 1,                                                                                                       +
                           "Inner Unique": false,                                                                                                   +
                           "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                +
                           "Shared Hit Blocks": 5,                                                                                                  +
                           "Shared Read Blocks": 63235,                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                              +
                           "Shared Written Blocks": 0,                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                               +
                           "Local Written Blocks": 0,                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                   +
                           "Temp Written Blocks": 0,                                                                                                +
                           "Plans": [                                                                                                               +
                             {                                                                                                                      +
                               "Node Type": "Merge Join",                                                                                           +
                               "Parent Relationship": "Outer",                                                                                      +
                               "Parallel Aware": false,                                                                                             +
                               "Join Type": "Inner",                                                                                                +
                               "Startup Cost": 3823.78,                                                                                             +
                               "Total Cost": 3886.06,                                                                                               +
                               "Plan Rows": 1416,                                                                                                   +
                               "Plan Width": 57,                                                                                                    +
                               "Actual Startup Time": 2910.643,                                                                                     +
                               "Actual Total Time": 3021.445,                                                                                       +
                               "Actual Rows": 3878,                                                                                                 +
                               "Actual Loops": 1,                                                                                                   +
                               "Inner Unique": true,                                                                                                +
                               "Merge Cond": "(mc.movie_id = t.id)",                                                                                +
                               "Shared Hit Blocks": 3,                                                                                              +
                               "Shared Read Blocks": 54784,                                                                                         +
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
                                   "Node Type": "Sort",                                                                                             +
                                   "Parent Relationship": "Outer",                                                                                  +
                                   "Parallel Aware": false,                                                                                         +
                                   "Startup Cost": 1193.58,                                                                                         +
                                   "Total Cost": 1194.29,                                                                                           +
                                   "Plan Rows": 9141,                                                                                               +
                                   "Plan Width": 32,                                                                                                +
                                   "Actual Startup Time": 920.595,                                                                                  +
                                   "Actual Total Time": 922.128,                                                                                    +
                                   "Actual Rows": 17816,                                                                                            +
                                   "Actual Loops": 1,                                                                                               +
                                   "Sort Key": ["mc.movie_id"],                                                                                     +
                                   "Sort Method": "quicksort",                                                                                      +
                                   "Sort Space Used": 2176,                                                                                         +
                                   "Sort Space Type": "Memory",                                                                                     +
                                   "Shared Hit Blocks": 2,                                                                                          +
                                   "Shared Read Blocks": 18787,                                                                                     +
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
                                       "Node Type": "Seq Scan",                                                                                     +
                                       "Parent Relationship": "Outer",                                                                              +
                                       "Parallel Aware": false,                                                                                     +
                                       "Relation Name": "movie_companies",                                                                          +
                                       "Alias": "mc",                                                                                               +
                                       "Startup Cost": 0.00,                                                                                        +
                                       "Total Cost": 1174.90,                                                                                       +
                                       "Plan Rows": 9141,                                                                                           +
                                       "Plan Width": 32,                                                                                            +
                                       "Actual Startup Time": 359.554,                                                                              +
                                       "Actual Total Time": 909.890,                                                                                +
                                       "Actual Rows": 17816,                                                                                        +
                                       "Actual Loops": 1,                                                                                           +
                                       "Filter": "((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))",+
                                       "Rows Removed by Filter": 2591313,                                                                           +
                                       "Shared Hit Blocks": 2,                                                                                      +
                                       "Shared Read Blocks": 18787,                                                                                 +
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
                                 },                                                                                                                 +
                                 {                                                                                                                  +
                                   "Node Type": "Sort",                                                                                             +
                                   "Parent Relationship": "Inner",                                                                                  +
                                   "Parallel Aware": false,                                                                                         +
                                   "Startup Cost": 2630.21,                                                                                         +
                                   "Total Cost": 2660.62,                                                                                           +
                                   "Plan Rows": 391667,                                                                                             +
                                   "Plan Width": 25,                                                                                                +
                                   "Actual Startup Time": 1988.803,                                                                                 +
                                   "Actual Total Time": 2037.698,                                                                                   +
                                   "Actual Rows": 391468,                                                                                           +
                                   "Actual Loops": 1,                                                                                               +
                                   "Sort Key": ["t.id"],                                                                                            +
                                   "Sort Method": "quicksort",                                                                                      +
                                   "Sort Space Used": 42227,                                                                                        +
                                   "Sort Space Type": "Memory",                                                                                     +
                                   "Shared Hit Blocks": 1,                                                                                          +
                                   "Shared Read Blocks": 35997,                                                                                     +
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
                                       "Node Type": "Seq Scan",                                                                                     +
                                       "Parent Relationship": "Outer",                                                                              +
                                       "Parallel Aware": false,                                                                                     +
                                       "Relation Name": "title",                                                                                    +
                                       "Alias": "t",                                                                                                +
                                       "Startup Cost": 0.00,                                                                                        +
                                       "Total Cost": 1500.26,                                                                                       +
                                       "Plan Rows": 391667,                                                                                         +
                                       "Plan Width": 25,                                                                                            +
                                       "Actual Startup Time": 8.576,                                                                                +
                                       "Actual Total Time": 1706.961,                                                                               +
                                       "Actual Rows": 391666,                                                                                       +
                                       "Actual Loops": 1,                                                                                           +
                                       "Filter": "(production_year > 2010)",                                                                        +
                                       "Rows Removed by Filter": 2136646,                                                                           +
                                       "Shared Hit Blocks": 1,                                                                                      +
                                       "Shared Read Blocks": 35997,                                                                                 +
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
                             {                                                                                                                      +
                               "Node Type": "Sort",                                                                                                 +
                               "Parent Relationship": "Inner",                                                                                      +
                               "Parallel Aware": false,                                                                                             +
                               "Startup Cost": 4731.30,                                                                                             +
                               "Total Cost": 4838.45,                                                                                               +
                               "Plan Rows": 1380035,                                                                                                +
                               "Plan Width": 8,                                                                                                     +
                               "Actual Startup Time": 846.746,                                                                                      +
                               "Actual Total Time": 917.909,                                                                                        +
                               "Actual Rows": 1384061,                                                                                              +
                               "Actual Loops": 1,                                                                                                   +
                               "Sort Key": ["mi_idx.movie_id"],                                                                                     +
                               "Sort Method": "quicksort",                                                                                          +
                               "Sort Space Used": 113842,                                                                                           +
                               "Sort Space Type": "Memory",                                                                                         +
                               "Shared Hit Blocks": 2,                                                                                              +
                               "Shared Read Blocks": 8451,                                                                                          +
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
                                   "Node Type": "Seq Scan",                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                  +
                                   "Parallel Aware": false,                                                                                         +
                                   "Relation Name": "movie_info_idx",                                                                               +
                                   "Alias": "mi_idx",                                                                                               +
                                   "Startup Cost": 0.00,                                                                                            +
                                   "Total Cost": 360.56,                                                                                            +
                                   "Plan Rows": 1380035,                                                                                            +
                                   "Plan Width": 8,                                                                                                 +
                                   "Actual Startup Time": 0.012,                                                                                    +
                                   "Actual Total Time": 359.053,                                                                                    +
                                   "Actual Rows": 1380035,                                                                                          +
                                   "Actual Loops": 1,                                                                                               +
                                   "Shared Hit Blocks": 2,                                                                                          +
                                   "Shared Read Blocks": 8451,                                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                           +
                                   "Local Read Blocks": 0,                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                       +
                                   "Local Written Blocks": 0,                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                           +
                                   "Temp Written Blocks": 0                                                                                         +
                                 }                                                                                                                  +
                               ]                                                                                                                    +
                             }                                                                                                                      +
                           ]                                                                                                                        +
                         }                                                                                                                          +
                       ]                                                                                                                            +
                     },                                                                                                                             +
                     {                                                                                                                              +
                       "Node Type": "Sort",                                                                                                         +
                       "Parent Relationship": "Inner",                                                                                              +
                       "Parallel Aware": false,                                                                                                     +
                       "Startup Cost": 0.05,                                                                                                        +
                       "Total Cost": 0.05,                                                                                                          +
                       "Plan Rows": 1,                                                                                                              +
                       "Plan Width": 4,                                                                                                             +
                       "Actual Startup Time": 0.035,                                                                                                +
                       "Actual Total Time": 0.035,                                                                                                  +
                       "Actual Rows": 1,                                                                                                            +
                       "Actual Loops": 1,                                                                                                           +
                       "Sort Key": ["it.id"],                                                                                                       +
                       "Sort Method": "quicksort",                                                                                                  +
                       "Sort Space Used": 25,                                                                                                       +
                       "Sort Space Type": "Memory",                                                                                                 +
                       "Shared Hit Blocks": 1,                                                                                                      +
                       "Shared Read Blocks": 0,                                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                    +
                       "Plans": [                                                                                                                   +
                         {                                                                                                                          +
                           "Node Type": "Seq Scan",                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                          +
                           "Parallel Aware": false,                                                                                                 +
                           "Relation Name": "info_type",                                                                                            +
                           "Alias": "it",                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                    +
                           "Total Cost": 0.05,                                                                                                      +
                           "Plan Rows": 1,                                                                                                          +
                           "Plan Width": 4,                                                                                                         +
                           "Actual Startup Time": 0.028,                                                                                            +
                           "Actual Total Time": 0.028,                                                                                              +
                           "Actual Rows": 1,                                                                                                        +
                           "Actual Loops": 1,                                                                                                       +
                           "Filter": "((info)::text = 'top 250 rank'::text)",                                                                       +
                           "Rows Removed by Filter": 112,                                                                                           +
                           "Shared Hit Blocks": 1,                                                                                                  +
                           "Shared Read Blocks": 0,                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                              +
                           "Shared Written Blocks": 0,                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                               +
                           "Local Written Blocks": 0,                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                   +
                           "Temp Written Blocks": 0                                                                                                 +
                         }                                                                                                                          +
                       ]                                                                                                                            +
                     }                                                                                                                              +
                   ]                                                                                                                                +
                 }                                                                                                                                  +
               ]                                                                                                                                    +
             },                                                                                                                                     +
             {                                                                                                                                      +
               "Node Type": "Sort",                                                                                                                 +
               "Parent Relationship": "Inner",                                                                                                      +
               "Parallel Aware": false,                                                                                                             +
               "Startup Cost": 0.03,                                                                                                                +
               "Total Cost": 0.03,                                                                                                                  +
               "Plan Rows": 1,                                                                                                                      +
               "Plan Width": 4,                                                                                                                     +
               "Actual Startup Time": 0.010,                                                                                                        +
               "Actual Total Time": 0.010,                                                                                                          +
               "Actual Rows": 1,                                                                                                                    +
               "Actual Loops": 1,                                                                                                                   +
               "Sort Key": ["ct.id"],                                                                                                               +
               "Sort Method": "quicksort",                                                                                                          +
               "Sort Space Used": 25,                                                                                                               +
               "Sort Space Type": "Memory",                                                                                                         +
               "Shared Hit Blocks": 1,                                                                                                              +
               "Shared Read Blocks": 0,                                                                                                             +
               "Shared Dirtied Blocks": 0,                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                               +
               "Local Read Blocks": 0,                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                           +
               "Local Written Blocks": 0,                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                               +
               "Temp Written Blocks": 0,                                                                                                            +
               "Plans": [                                                                                                                           +
                 {                                                                                                                                  +
                   "Node Type": "Seq Scan",                                                                                                         +
                   "Parent Relationship": "Outer",                                                                                                  +
                   "Parallel Aware": false,                                                                                                         +
                   "Relation Name": "company_type",                                                                                                 +
                   "Alias": "ct",                                                                                                                   +
                   "Startup Cost": 0.00,                                                                                                            +
                   "Total Cost": 0.03,                                                                                                              +
                   "Plan Rows": 1,                                                                                                                  +
                   "Plan Width": 4,                                                                                                                 +
                   "Actual Startup Time": 0.006,                                                                                                    +
                   "Actual Total Time": 0.007,                                                                                                      +
                   "Actual Rows": 1,                                                                                                                +
                   "Actual Loops": 1,                                                                                                               +
                   "Filter": "((kind)::text = 'production companies'::text)",                                                                       +
                   "Rows Removed by Filter": 3,                                                                                                     +
                   "Shared Hit Blocks": 1,                                                                                                          +
                   "Shared Read Blocks": 0,                                                                                                         +
                   "Shared Dirtied Blocks": 0,                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                           +
                   "Temp Written Blocks": 0                                                                                                         +
                 }                                                                                                                                  +
               ]                                                                                                                                    +
             }                                                                                                                                      +
           ]                                                                                                                                        +
         }                                                                                                                                          +
       ]                                                                                                                                            +
     },                                                                                                                                             +
     "Planning Time": 2356.696,                                                                                                                     +
     "Triggers": [                                                                                                                                  +
     ],                                                                                                                                             +
     "Execution Time": 4125.951                                                                                                                     +
   }                                                                                                                                                +
 ]
(1 row)

