                                                               QUERY PLAN                                                                
-----------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                      +
   {                                                                                                                                    +
     "Plan": {                                                                                                                          +
       "Node Type": "Aggregate",                                                                                                        +
       "Strategy": "Plain",                                                                                                             +
       "Partial Mode": "Simple",                                                                                                        +
       "Parallel Aware": false,                                                                                                         +
       "Startup Cost": 17128.54,                                                                                                        +
       "Total Cost": 17128.54,                                                                                                          +
       "Plan Rows": 1,                                                                                                                  +
       "Plan Width": 32,                                                                                                                +
       "Actual Startup Time": 11866.375,                                                                                                +
       "Actual Total Time": 11866.376,                                                                                                  +
       "Actual Rows": 1,                                                                                                                +
       "Actual Loops": 1,                                                                                                               +
       "Shared Hit Blocks": 11,                                                                                                         +
       "Shared Read Blocks": 216674,                                                                                                    +
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
           "Node Type": "Merge Join",                                                                                                   +
           "Parent Relationship": "Outer",                                                                                              +
           "Parallel Aware": false,                                                                                                     +
           "Join Type": "Inner",                                                                                                        +
           "Startup Cost": 17128.47,                                                                                                    +
           "Total Cost": 17128.53,                                                                                                      +
           "Plan Rows": 89,                                                                                                             +
           "Plan Width": 17,                                                                                                            +
           "Actual Startup Time": 11866.350,                                                                                            +
           "Actual Total Time": 11866.350,                                                                                              +
           "Actual Rows": 0,                                                                                                            +
           "Actual Loops": 1,                                                                                                           +
           "Inner Unique": true,                                                                                                        +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                +
           "Shared Hit Blocks": 11,                                                                                                     +
           "Shared Read Blocks": 216674,                                                                                                +
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
               "Node Type": "Sort",                                                                                                     +
               "Parent Relationship": "Outer",                                                                                          +
               "Parallel Aware": false,                                                                                                 +
               "Startup Cost": 17128.44,                                                                                                +
               "Total Cost": 17128.46,                                                                                                  +
               "Plan Rows": 356,                                                                                                        +
               "Plan Width": 21,                                                                                                        +
               "Actual Startup Time": 11866.233,                                                                                        +
               "Actual Total Time": 11866.267,                                                                                          +
               "Actual Rows": 783,                                                                                                      +
               "Actual Loops": 1,                                                                                                       +
               "Sort Key": ["mc.company_type_id"],                                                                                      +
               "Sort Method": "quicksort",                                                                                              +
               "Sort Space Used": 77,                                                                                                   +
               "Sort Space Type": "Memory",                                                                                             +
               "Shared Hit Blocks": 10,                                                                                                 +
               "Shared Read Blocks": 216674,                                                                                            +
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
                   "Startup Cost": 17127.87,                                                                                            +
                   "Total Cost": 17127.97,                                                                                              +
                   "Plan Rows": 356,                                                                                                    +
                   "Plan Width": 21,                                                                                                    +
                   "Actual Startup Time": 11856.290,                                                                                    +
                   "Actual Total Time": 11856.510,                                                                                      +
                   "Actual Rows": 783,                                                                                                  +
                   "Actual Loops": 1,                                                                                                   +
                   "Inner Unique": true,                                                                                                +
                   "Merge Cond": "(mi.info_type_id = it.id)",                                                                           +
                   "Shared Hit Blocks": 6,                                                                                              +
                   "Shared Read Blocks": 216674,                                                                                        +
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
                       "Startup Cost": 17127.71,                                                                                        +
                       "Total Cost": 17127.74,                                                                                          +
                       "Plan Rows": 356,                                                                                                +
                       "Plan Width": 25,                                                                                                +
                       "Actual Startup Time": 11856.234,                                                                                +
                       "Actual Total Time": 11856.281,                                                                                  +
                       "Actual Rows": 783,                                                                                              +
                       "Actual Loops": 1,                                                                                               +
                       "Sort Key": ["mi.info_type_id"],                                                                                 +
                       "Sort Method": "quicksort",                                                                                      +
                       "Sort Space Used": 83,                                                                                           +
                       "Sort Space Type": "Memory",                                                                                     +
                       "Shared Hit Blocks": 5,                                                                                          +
                       "Shared Read Blocks": 216674,                                                                                    +
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
                           "Node Type": "Merge Join",                                                                                   +
                           "Parent Relationship": "Outer",                                                                              +
                           "Parallel Aware": false,                                                                                     +
                           "Join Type": "Inner",                                                                                        +
                           "Startup Cost": 16945.33,                                                                                    +
                           "Total Cost": 17127.24,                                                                                      +
                           "Plan Rows": 356,                                                                                            +
                           "Plan Width": 25,                                                                                            +
                           "Actual Startup Time": 11753.950,                                                                            +
                           "Actual Total Time": 11856.008,                                                                              +
                           "Actual Rows": 783,                                                                                          +
                           "Actual Loops": 1,                                                                                           +
                           "Inner Unique": false,                                                                                       +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                        +
                           "Shared Hit Blocks": 5,                                                                                      +
                           "Shared Read Blocks": 216674,                                                                                +
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
                               "Node Type": "Merge Join",                                                                               +
                               "Parent Relationship": "Outer",                                                                          +
                               "Parallel Aware": false,                                                                                 +
                               "Join Type": "Inner",                                                                                    +
                               "Startup Cost": 5820.84,                                                                                 +
                               "Total Cost": 5978.73,                                                                                   +
                               "Plan Rows": 1677,                                                                                       +
                               "Plan Width": 29,                                                                                        +
                               "Actual Startup Time": 3101.526,                                                                         +
                               "Actual Total Time": 3356.255,                                                                           +
                               "Actual Rows": 3929,                                                                                     +
                               "Actual Loops": 1,                                                                                       +
                               "Inner Unique": true,                                                                                    +
                               "Merge Cond": "(mc.movie_id = t.id)",                                                                    +
                               "Shared Hit Blocks": 3,                                                                                  +
                               "Shared Read Blocks": 54784,                                                                             +
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
                                   "Node Type": "Sort",                                                                                 +
                                   "Parent Relationship": "Outer",                                                                      +
                                   "Parallel Aware": false,                                                                             +
                                   "Startup Cost": 1182.72,                                                                             +
                                   "Total Cost": 1183.05,                                                                               +
                                   "Plan Rows": 4187,                                                                                   +
                                   "Plan Width": 8,                                                                                     +
                                   "Actual Startup Time": 925.608,                                                                      +
                                   "Actual Total Time": 927.604,                                                                        +
                                   "Actual Rows": 24025,                                                                                +
                                   "Actual Loops": 1,                                                                                   +
                                   "Sort Key": ["mc.movie_id"],                                                                         +
                                   "Sort Method": "quicksort",                                                                          +
                                   "Sort Space Used": 1895,                                                                             +
                                   "Sort Space Type": "Memory",                                                                         +
                                   "Shared Hit Blocks": 2,                                                                              +
                                   "Shared Read Blocks": 18787,                                                                         +
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
                                       "Node Type": "Seq Scan",                                                                         +
                                       "Parent Relationship": "Outer",                                                                  +
                                       "Parallel Aware": false,                                                                         +
                                       "Relation Name": "movie_companies",                                                              +
                                       "Alias": "mc",                                                                                   +
                                       "Startup Cost": 0.00,                                                                            +
                                       "Total Cost": 1174.90,                                                                           +
                                       "Plan Rows": 4187,                                                                               +
                                       "Plan Width": 8,                                                                                 +
                                       "Actual Startup Time": 40.231,                                                                   +
                                       "Actual Total Time": 915.641,                                                                    +
                                       "Actual Rows": 24025,                                                                            +
                                       "Actual Loops": 1,                                                                               +
                                       "Filter": "((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))",                 +
                                       "Rows Removed by Filter": 2585104,                                                               +
                                       "Shared Hit Blocks": 2,                                                                          +
                                       "Shared Read Blocks": 18787,                                                                     +
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
                                   "Node Type": "Sort",                                                                                 +
                                   "Parent Relationship": "Inner",                                                                      +
                                   "Parallel Aware": false,                                                                             +
                                   "Startup Cost": 4638.12,                                                                             +
                                   "Total Cost": 4716.76,                                                                               +
                                   "Plan Rows": 1012920,                                                                                +
                                   "Plan Width": 21,                                                                                    +
                                   "Actual Startup Time": 2166.281,                                                                     +
                                   "Actual Total Time": 2286.321,                                                                       +
                                   "Actual Rows": 1012591,                                                                              +
                                   "Actual Loops": 1,                                                                                   +
                                   "Sort Key": ["t.id"],                                                                                +
                                   "Sort Method": "quicksort",                                                                          +
                                   "Sort Space Used": 94802,                                                                            +
                                   "Sort Space Type": "Memory",                                                                         +
                                   "Shared Hit Blocks": 1,                                                                              +
                                   "Shared Read Blocks": 35997,                                                                         +
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
                                       "Node Type": "Seq Scan",                                                                         +
                                       "Parent Relationship": "Outer",                                                                  +
                                       "Parallel Aware": false,                                                                         +
                                       "Relation Name": "title",                                                                        +
                                       "Alias": "t",                                                                                    +
                                       "Startup Cost": 0.00,                                                                            +
                                       "Total Cost": 1500.26,                                                                           +
                                       "Plan Rows": 1012920,                                                                            +
                                       "Plan Width": 21,                                                                                +
                                       "Actual Startup Time": 3.485,                                                                    +
                                       "Actual Total Time": 1562.796,                                                                   +
                                       "Actual Rows": 1012920,                                                                          +
                                       "Actual Loops": 1,                                                                               +
                                       "Filter": "(production_year > 2005)",                                                            +
                                       "Rows Removed by Filter": 1515392,                                                               +
                                       "Shared Hit Blocks": 1,                                                                          +
                                       "Shared Read Blocks": 35997,                                                                     +
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
                                 }                                                                                                      +
                               ]                                                                                                        +
                             },                                                                                                         +
                             {                                                                                                          +
                               "Node Type": "Sort",                                                                                     +
                               "Parent Relationship": "Inner",                                                                          +
                               "Parallel Aware": false,                                                                                 +
                               "Startup Cost": 11124.49,                                                                                +
                               "Total Cost": 11136.48,                                                                                  +
                               "Plan Rows": 154416,                                                                                     +
                               "Plan Width": 8,                                                                                         +
                               "Actual Startup Time": 8474.838,                                                                         +
                               "Actual Total Time": 8483.843,                                                                           +
                               "Actual Rows": 153907,                                                                                   +
                               "Actual Loops": 1,                                                                                       +
                               "Sort Key": ["mi.movie_id"],                                                                             +
                               "Sort Method": "quicksort",                                                                              +
                               "Sort Space Used": 13358,                                                                                +
                               "Sort Space Type": "Memory",                                                                             +
                               "Shared Hit Blocks": 2,                                                                                  +
                               "Shared Read Blocks": 161890,                                                                            +
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
                                   "Relation Name": "movie_info",                                                                       +
                                   "Alias": "mi",                                                                                       +
                                   "Startup Cost": 0.00,                                                                                +
                                   "Total Cost": 10711.20,                                                                              +
                                   "Plan Rows": 154416,                                                                                 +
                                   "Plan Width": 8,                                                                                     +
                                   "Actual Startup Time": 8.843,                                                                        +
                                   "Actual Total Time": 8417.089,                                                                       +
                                   "Actual Rows": 153897,                                                                               +
                                   "Actual Loops": 1,                                                                                   +
                                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))",+
                                   "Rows Removed by Filter": 14681823,                                                                  +
                                   "Shared Hit Blocks": 2,                                                                              +
                                   "Shared Read Blocks": 161890,                                                                        +
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
                         }                                                                                                              +
                       ]                                                                                                                +
                     },                                                                                                                 +
                     {                                                                                                                  +
                       "Node Type": "Sort",                                                                                             +
                       "Parent Relationship": "Inner",                                                                                  +
                       "Parallel Aware": false,                                                                                         +
                       "Startup Cost": 0.16,                                                                                            +
                       "Total Cost": 0.17,                                                                                              +
                       "Plan Rows": 113,                                                                                                +
                       "Plan Width": 4,                                                                                                 +
                       "Actual Startup Time": 0.050,                                                                                    +
                       "Actual Total Time": 0.051,                                                                                      +
                       "Actual Rows": 18,                                                                                               +
                       "Actual Loops": 1,                                                                                               +
                       "Sort Key": ["it.id"],                                                                                           +
                       "Sort Method": "quicksort",                                                                                      +
                       "Sort Space Used": 30,                                                                                           +
                       "Sort Space Type": "Memory",                                                                                     +
                       "Shared Hit Blocks": 1,                                                                                          +
                       "Shared Read Blocks": 0,                                                                                         +
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
                           "Relation Name": "info_type",                                                                                +
                           "Alias": "it",                                                                                               +
                           "Startup Cost": 0.00,                                                                                        +
                           "Total Cost": 0.04,                                                                                          +
                           "Plan Rows": 113,                                                                                            +
                           "Plan Width": 4,                                                                                             +
                           "Actual Startup Time": 0.014,                                                                                +
                           "Actual Total Time": 0.027,                                                                                  +
                           "Actual Rows": 113,                                                                                          +
                           "Actual Loops": 1,                                                                                           +
                           "Shared Hit Blocks": 1,                                                                                      +
                           "Shared Read Blocks": 0,                                                                                     +
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
                 }                                                                                                                      +
               ]                                                                                                                        +
             },                                                                                                                         +
             {                                                                                                                          +
               "Node Type": "Sort",                                                                                                     +
               "Parent Relationship": "Inner",                                                                                          +
               "Parallel Aware": false,                                                                                                 +
               "Startup Cost": 0.03,                                                                                                    +
               "Total Cost": 0.03,                                                                                                      +
               "Plan Rows": 1,                                                                                                          +
               "Plan Width": 4,                                                                                                         +
               "Actual Startup Time": 0.008,                                                                                            +
               "Actual Total Time": 0.008,                                                                                              +
               "Actual Rows": 1,                                                                                                        +
               "Actual Loops": 1,                                                                                                       +
               "Sort Key": ["ct.id"],                                                                                                   +
               "Sort Method": "quicksort",                                                                                              +
               "Sort Space Used": 25,                                                                                                   +
               "Sort Space Type": "Memory",                                                                                             +
               "Shared Hit Blocks": 1,                                                                                                  +
               "Shared Read Blocks": 0,                                                                                                 +
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
                   "Node Type": "Seq Scan",                                                                                             +
                   "Parent Relationship": "Outer",                                                                                      +
                   "Parallel Aware": false,                                                                                             +
                   "Relation Name": "company_type",                                                                                     +
                   "Alias": "ct",                                                                                                       +
                   "Startup Cost": 0.00,                                                                                                +
                   "Total Cost": 0.03,                                                                                                  +
                   "Plan Rows": 1,                                                                                                      +
                   "Plan Width": 4,                                                                                                     +
                   "Actual Startup Time": 0.005,                                                                                        +
                   "Actual Total Time": 0.006,                                                                                          +
                   "Actual Rows": 1,                                                                                                    +
                   "Actual Loops": 1,                                                                                                   +
                   "Filter": "((kind)::text = 'production companies'::text)",                                                           +
                   "Rows Removed by Filter": 3,                                                                                         +
                   "Shared Hit Blocks": 1,                                                                                              +
                   "Shared Read Blocks": 0,                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                          +
                   "Shared Written Blocks": 0,                                                                                          +
                   "Local Hit Blocks": 0,                                                                                               +
                   "Local Read Blocks": 0,                                                                                              +
                   "Local Dirtied Blocks": 0,                                                                                           +
                   "Local Written Blocks": 0,                                                                                           +
                   "Temp Read Blocks": 0,                                                                                               +
                   "Temp Written Blocks": 0                                                                                             +
                 }                                                                                                                      +
               ]                                                                                                                        +
             }                                                                                                                          +
           ]                                                                                                                            +
         }                                                                                                                              +
       ]                                                                                                                                +
     },                                                                                                                                 +
     "Planning Time": 1945.816,                                                                                                         +
     "Triggers": [                                                                                                                      +
     ],                                                                                                                                 +
     "Execution Time": 11899.396                                                                                                        +
   }                                                                                                                                    +
 ]
(1 row)

