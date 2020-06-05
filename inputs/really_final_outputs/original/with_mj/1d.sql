                                              QUERY PLAN                                               
-------------------------------------------------------------------------------------------------------
 [                                                                                                    +
   {                                                                                                  +
     "Plan": {                                                                                        +
       "Node Type": "Aggregate",                                                                      +
       "Strategy": "Plain",                                                                           +
       "Partial Mode": "Simple",                                                                      +
       "Parallel Aware": false,                                                                       +
       "Startup Cost": 16513.82,                                                                      +
       "Total Cost": 16513.82,                                                                        +
       "Plan Rows": 1,                                                                                +
       "Plan Width": 68,                                                                              +
       "Actual Startup Time": 4975.884,                                                               +
       "Actual Total Time": 4975.884,                                                                 +
       "Actual Rows": 1,                                                                              +
       "Actual Loops": 1,                                                                             +
       "Shared Hit Blocks": 11,                                                                       +
       "Shared Read Blocks": 63235,                                                                   +
       "Shared Dirtied Blocks": 0,                                                                    +
       "Shared Written Blocks": 0,                                                                    +
       "Local Hit Blocks": 0,                                                                         +
       "Local Read Blocks": 0,                                                                        +
       "Local Dirtied Blocks": 0,                                                                     +
       "Local Written Blocks": 0,                                                                     +
       "Temp Read Blocks": 0,                                                                         +
       "Temp Written Blocks": 0,                                                                      +
       "Plans": [                                                                                     +
         {                                                                                            +
           "Node Type": "Merge Join",                                                                 +
           "Parent Relationship": "Outer",                                                            +
           "Parallel Aware": false,                                                                   +
           "Join Type": "Inner",                                                                      +
           "Startup Cost": 16298.31,                                                                  +
           "Total Cost": 16513.34,                                                                    +
           "Plan Rows": 2063,                                                                         +
           "Plan Width": 45,                                                                          +
           "Actual Startup Time": 4916.179,                                                           +
           "Actual Total Time": 4975.821,                                                             +
           "Actual Rows": 4,                                                                          +
           "Actual Loops": 1,                                                                         +
           "Inner Unique": true,                                                                      +
           "Merge Cond": "(mc.movie_id = t.id)",                                                      +
           "Shared Hit Blocks": 11,                                                                   +
           "Shared Read Blocks": 63235,                                                               +
           "Shared Dirtied Blocks": 0,                                                                +
           "Shared Written Blocks": 0,                                                                +
           "Local Hit Blocks": 0,                                                                     +
           "Local Read Blocks": 0,                                                                    +
           "Local Dirtied Blocks": 0,                                                                 +
           "Local Written Blocks": 0,                                                                 +
           "Temp Read Blocks": 0,                                                                     +
           "Temp Written Blocks": 0,                                                                  +
           "Plans": [                                                                                 +
             {                                                                                        +
               "Node Type": "Sort",                                                                   +
               "Parent Relationship": "Outer",                                                        +
               "Parallel Aware": false,                                                               +
               "Startup Cost": 10422.51,                                                              +
               "Total Cost": 10422.80,                                                                +
               "Plan Rows": 3775,                                                                     +
               "Plan Width": 32,                                                                      +
               "Actual Startup Time": 2484.842,                                                       +
               "Actual Total Time": 2484.843,                                                         +
               "Actual Rows": 5,                                                                      +
               "Actual Loops": 1,                                                                     +
               "Sort Key": ["mc.movie_id"],                                                           +
               "Sort Method": "quicksort",                                                            +
               "Sort Space Used": 25,                                                                 +
               "Sort Space Type": "Memory",                                                           +
               "Shared Hit Blocks": 10,                                                               +
               "Shared Read Blocks": 27238,                                                           +
               "Shared Dirtied Blocks": 0,                                                            +
               "Shared Written Blocks": 0,                                                            +
               "Local Hit Blocks": 0,                                                                 +
               "Local Read Blocks": 0,                                                                +
               "Local Dirtied Blocks": 0,                                                             +
               "Local Written Blocks": 0,                                                             +
               "Temp Read Blocks": 0,                                                                 +
               "Temp Written Blocks": 0,                                                              +
               "Plans": [                                                                             +
                 {                                                                                    +
                   "Node Type": "Merge Join",                                                         +
                   "Parent Relationship": "Outer",                                                    +
                   "Parallel Aware": false,                                                           +
                   "Join Type": "Inner",                                                              +
                   "Startup Cost": 10412.94,                                                          +
                   "Total Cost": 10415.54,                                                            +
                   "Plan Rows": 3775,                                                                 +
                   "Plan Width": 32,                                                                  +
                   "Actual Startup Time": 2467.518,                                                   +
                   "Actual Total Time": 2467.520,                                                     +
                   "Actual Rows": 5,                                                                  +
                   "Actual Loops": 1,                                                                 +
                   "Inner Unique": true,                                                              +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                      +
                   "Shared Hit Blocks": 6,                                                            +
                   "Shared Read Blocks": 27238,                                                       +
                   "Shared Dirtied Blocks": 0,                                                        +
                   "Shared Written Blocks": 0,                                                        +
                   "Local Hit Blocks": 0,                                                             +
                   "Local Read Blocks": 0,                                                            +
                   "Local Dirtied Blocks": 0,                                                         +
                   "Local Written Blocks": 0,                                                         +
                   "Temp Read Blocks": 0,                                                             +
                   "Temp Written Blocks": 0,                                                          +
                   "Plans": [                                                                         +
                     {                                                                                +
                       "Node Type": "Sort",                                                           +
                       "Parent Relationship": "Outer",                                                +
                       "Parallel Aware": false,                                                       +
                       "Startup Cost": 10412.91,                                                      +
                       "Total Cost": 10414.08,                                                        +
                       "Plan Rows": 15098,                                                            +
                       "Plan Width": 36,                                                              +
                       "Actual Startup Time": 2467.475,                                               +
                       "Actual Total Time": 2467.480,                                                 +
                       "Actual Rows": 100,                                                            +
                       "Actual Loops": 1,                                                             +
                       "Sort Key": ["mc.company_type_id"],                                            +
                       "Sort Method": "quicksort",                                                    +
                       "Sort Space Used": 33,                                                         +
                       "Sort Space Type": "Memory",                                                   +
                       "Shared Hit Blocks": 5,                                                        +
                       "Shared Read Blocks": 27238,                                                   +
                       "Shared Dirtied Blocks": 0,                                                    +
                       "Shared Written Blocks": 0,                                                    +
                       "Local Hit Blocks": 0,                                                         +
                       "Local Read Blocks": 0,                                                        +
                       "Local Dirtied Blocks": 0,                                                     +
                       "Local Written Blocks": 0,                                                     +
                       "Temp Read Blocks": 0,                                                         +
                       "Temp Written Blocks": 0,                                                      +
                       "Plans": [                                                                     +
                         {                                                                            +
                           "Node Type": "Merge Join",                                                 +
                           "Parent Relationship": "Outer",                                            +
                           "Parallel Aware": false,                                                   +
                           "Join Type": "Inner",                                                      +
                           "Startup Cost": 10169.80,                                                  +
                           "Total Cost": 10380.36,                                                    +
                           "Plan Rows": 15098,                                                        +
                           "Plan Width": 36,                                                          +
                           "Actual Startup Time": 2346.779,                                           +
                           "Actual Total Time": 2467.422,                                             +
                           "Actual Rows": 100,                                                        +
                           "Actual Loops": 1,                                                         +
                           "Inner Unique": false,                                                     +
                           "Merge Cond": "(mi_idx.movie_id = mc.movie_id)",                           +
                           "Shared Hit Blocks": 5,                                                    +
                           "Shared Read Blocks": 27238,                                               +
                           "Shared Dirtied Blocks": 0,                                                +
                           "Shared Written Blocks": 0,                                                +
                           "Local Hit Blocks": 0,                                                     +
                           "Local Read Blocks": 0,                                                    +
                           "Local Dirtied Blocks": 0,                                                 +
                           "Local Written Blocks": 0,                                                 +
                           "Temp Read Blocks": 0,                                                     +
                           "Temp Written Blocks": 0,                                                  +
                           "Plans": [                                                                 +
                             {                                                                        +
                               "Node Type": "Sort",                                                   +
                               "Parent Relationship": "Outer",                                        +
                               "Parallel Aware": false,                                               +
                               "Startup Cost": 4972.23,                                               +
                               "Total Cost": 4973.18,                                                 +
                               "Plan Rows": 12213,                                                    +
                               "Plan Width": 4,                                                       +
                               "Actual Startup Time": 865.047,                                        +
                               "Actual Total Time": 865.050,                                          +
                               "Actual Rows": 10,                                                     +
                               "Actual Loops": 1,                                                     +
                               "Sort Key": ["mi_idx.movie_id"],                                       +
                               "Sort Method": "quicksort",                                            +
                               "Sort Space Used": 25,                                                 +
                               "Sort Space Type": "Memory",                                           +
                               "Shared Hit Blocks": 3,                                                +
                               "Shared Read Blocks": 8451,                                            +
                               "Shared Dirtied Blocks": 0,                                            +
                               "Shared Written Blocks": 0,                                            +
                               "Local Hit Blocks": 0,                                                 +
                               "Local Read Blocks": 0,                                                +
                               "Local Dirtied Blocks": 0,                                             +
                               "Local Written Blocks": 0,                                             +
                               "Temp Read Blocks": 0,                                                 +
                               "Temp Written Blocks": 0,                                              +
                               "Plans": [                                                             +
                                 {                                                                    +
                                   "Node Type": "Merge Join",                                         +
                                   "Parent Relationship": "Outer",                                    +
                                   "Parallel Aware": false,                                           +
                                   "Join Type": "Inner",                                              +
                                   "Startup Cost": 4731.35,                                           +
                                   "Total Cost": 4946.49,                                             +
                                   "Plan Rows": 12213,                                                +
                                   "Plan Width": 4,                                                   +
                                   "Actual Startup Time": 865.027,                                    +
                                   "Actual Total Time": 865.030,                                      +
                                   "Actual Rows": 10,                                                 +
                                   "Actual Loops": 1,                                                 +
                                   "Inner Unique": false,                                             +
                                   "Merge Cond": "(it.id = mi_idx.info_type_id)",                     +
                                   "Shared Hit Blocks": 3,                                            +
                                   "Shared Read Blocks": 8451,                                        +
                                   "Shared Dirtied Blocks": 0,                                        +
                                   "Shared Written Blocks": 0,                                        +
                                   "Local Hit Blocks": 0,                                             +
                                   "Local Read Blocks": 0,                                            +
                                   "Local Dirtied Blocks": 0,                                         +
                                   "Local Written Blocks": 0,                                         +
                                   "Temp Read Blocks": 0,                                             +
                                   "Temp Written Blocks": 0,                                          +
                                   "Plans": [                                                         +
                                     {                                                                +
                                       "Node Type": "Sort",                                           +
                                       "Parent Relationship": "Outer",                                +
                                       "Parallel Aware": false,                                       +
                                       "Startup Cost": 0.05,                                          +
                                       "Total Cost": 0.05,                                            +
                                       "Plan Rows": 1,                                                +
                                       "Plan Width": 4,                                               +
                                       "Actual Startup Time": 0.112,                                  +
                                       "Actual Total Time": 0.112,                                    +
                                       "Actual Rows": 1,                                              +
                                       "Actual Loops": 1,                                             +
                                       "Sort Key": ["it.id"],                                         +
                                       "Sort Method": "quicksort",                                    +
                                       "Sort Space Used": 25,                                         +
                                       "Sort Space Type": "Memory",                                   +
                                       "Shared Hit Blocks": 1,                                        +
                                       "Shared Read Blocks": 0,                                       +
                                       "Shared Dirtied Blocks": 0,                                    +
                                       "Shared Written Blocks": 0,                                    +
                                       "Local Hit Blocks": 0,                                         +
                                       "Local Read Blocks": 0,                                        +
                                       "Local Dirtied Blocks": 0,                                     +
                                       "Local Written Blocks": 0,                                     +
                                       "Temp Read Blocks": 0,                                         +
                                       "Temp Written Blocks": 0,                                      +
                                       "Plans": [                                                     +
                                         {                                                            +
                                           "Node Type": "Seq Scan",                                   +
                                           "Parent Relationship": "Outer",                            +
                                           "Parallel Aware": false,                                   +
                                           "Relation Name": "info_type",                              +
                                           "Alias": "it",                                             +
                                           "Startup Cost": 0.00,                                      +
                                           "Total Cost": 0.05,                                        +
                                           "Plan Rows": 1,                                            +
                                           "Plan Width": 4,                                           +
                                           "Actual Startup Time": 0.087,                              +
                                           "Actual Total Time": 0.088,                                +
                                           "Actual Rows": 1,                                          +
                                           "Actual Loops": 1,                                         +
                                           "Filter": "((info)::text = 'bottom 10 rank'::text)",       +
                                           "Rows Removed by Filter": 112,                             +
                                           "Shared Hit Blocks": 1,                                    +
                                           "Shared Read Blocks": 0,                                   +
                                           "Shared Dirtied Blocks": 0,                                +
                                           "Shared Written Blocks": 0,                                +
                                           "Local Hit Blocks": 0,                                     +
                                           "Local Read Blocks": 0,                                    +
                                           "Local Dirtied Blocks": 0,                                 +
                                           "Local Written Blocks": 0,                                 +
                                           "Temp Read Blocks": 0,                                     +
                                           "Temp Written Blocks": 0                                   +
                                         }                                                            +
                                       ]                                                              +
                                     },                                                               +
                                     {                                                                +
                                       "Node Type": "Sort",                                           +
                                       "Parent Relationship": "Inner",                                +
                                       "Parallel Aware": false,                                       +
                                       "Startup Cost": 4731.30,                                       +
                                       "Total Cost": 4838.45,                                         +
                                       "Plan Rows": 1380035,                                          +
                                       "Plan Width": 8,                                               +
                                       "Actual Startup Time": 650.926,                                +
                                       "Actual Total Time": 721.700,                                  +
                                       "Actual Rows": 1380035,                                        +
                                       "Actual Loops": 1,                                             +
                                       "Sort Key": ["mi_idx.info_type_id"],                           +
                                       "Sort Method": "quicksort",                                    +
                                       "Sort Space Used": 113842,                                     +
                                       "Sort Space Type": "Memory",                                   +
                                       "Shared Hit Blocks": 2,                                        +
                                       "Shared Read Blocks": 8451,                                    +
                                       "Shared Dirtied Blocks": 0,                                    +
                                       "Shared Written Blocks": 0,                                    +
                                       "Local Hit Blocks": 0,                                         +
                                       "Local Read Blocks": 0,                                        +
                                       "Local Dirtied Blocks": 0,                                     +
                                       "Local Written Blocks": 0,                                     +
                                       "Temp Read Blocks": 0,                                         +
                                       "Temp Written Blocks": 0,                                      +
                                       "Plans": [                                                     +
                                         {                                                            +
                                           "Node Type": "Seq Scan",                                   +
                                           "Parent Relationship": "Outer",                            +
                                           "Parallel Aware": false,                                   +
                                           "Relation Name": "movie_info_idx",                         +
                                           "Alias": "mi_idx",                                         +
                                           "Startup Cost": 0.00,                                      +
                                           "Total Cost": 360.56,                                      +
                                           "Plan Rows": 1380035,                                      +
                                           "Plan Width": 8,                                           +
                                           "Actual Startup Time": 0.011,                              +
                                           "Actual Total Time": 346.102,                              +
                                           "Actual Rows": 1380035,                                    +
                                           "Actual Loops": 1,                                         +
                                           "Shared Hit Blocks": 2,                                    +
                                           "Shared Read Blocks": 8451,                                +
                                           "Shared Dirtied Blocks": 0,                                +
                                           "Shared Written Blocks": 0,                                +
                                           "Local Hit Blocks": 0,                                     +
                                           "Local Read Blocks": 0,                                    +
                                           "Local Dirtied Blocks": 0,                                 +
                                           "Local Written Blocks": 0,                                 +
                                           "Temp Read Blocks": 0,                                     +
                                           "Temp Written Blocks": 0                                   +
                                         }                                                            +
                                       ]                                                              +
                                     }                                                                +
                                   ]                                                                  +
                                 }                                                                    +
                               ]                                                                      +
                             },                                                                       +
                             {                                                                        +
                               "Node Type": "Sort",                                                   +
                               "Parent Relationship": "Inner",                                        +
                               "Parallel Aware": false,                                               +
                               "Startup Cost": 5197.57,                                               +
                               "Total Cost": 5301.38,                                                 +
                               "Plan Rows": 1337085,                                                  +
                               "Plan Width": 32,                                                      +
                               "Actual Startup Time": 1404.486,                                       +
                               "Actual Total Time": 1462.024,                                         +
                               "Actual Rows": 1263892,                                                +
                               "Actual Loops": 1,                                                     +
                               "Sort Key": ["mc.movie_id"],                                           +
                               "Sort Method": "quicksort",                                            +
                               "Sort Space Used": 155789,                                             +
                               "Sort Space Type": "Memory",                                           +
                               "Shared Hit Blocks": 2,                                                +
                               "Shared Read Blocks": 18787,                                           +
                               "Shared Dirtied Blocks": 0,                                            +
                               "Shared Written Blocks": 0,                                            +
                               "Local Hit Blocks": 0,                                                 +
                               "Local Read Blocks": 0,                                                +
                               "Local Dirtied Blocks": 0,                                             +
                               "Local Written Blocks": 0,                                             +
                               "Temp Read Blocks": 0,                                                 +
                               "Temp Written Blocks": 0,                                              +
                               "Plans": [                                                             +
                                 {                                                                    +
                                   "Node Type": "Seq Scan",                                           +
                                   "Parent Relationship": "Outer",                                    +
                                   "Parallel Aware": false,                                           +
                                   "Relation Name": "movie_companies",                                +
                                   "Alias": "mc",                                                     +
                                   "Startup Cost": 0.00,                                              +
                                   "Total Cost": 972.33,                                              +
                                   "Plan Rows": 1337085,                                              +
                                   "Plan Width": 32,                                                  +
                                   "Actual Startup Time": 0.016,                                      +
                                   "Actual Total Time": 862.251,                                      +
                                   "Actual Rows": 1337088,                                            +
                                   "Actual Loops": 1,                                                 +
                                   "Filter": "(note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)",+
                                   "Rows Removed by Filter": 1272041,                                 +
                                   "Shared Hit Blocks": 2,                                            +
                                   "Shared Read Blocks": 18787,                                       +
                                   "Shared Dirtied Blocks": 0,                                        +
                                   "Shared Written Blocks": 0,                                        +
                                   "Local Hit Blocks": 0,                                             +
                                   "Local Read Blocks": 0,                                            +
                                   "Local Dirtied Blocks": 0,                                         +
                                   "Local Written Blocks": 0,                                         +
                                   "Temp Read Blocks": 0,                                             +
                                   "Temp Written Blocks": 0                                           +
                                 }                                                                    +
                               ]                                                                      +
                             }                                                                        +
                           ]                                                                          +
                         }                                                                            +
                       ]                                                                              +
                     },                                                                               +
                     {                                                                                +
                       "Node Type": "Sort",                                                           +
                       "Parent Relationship": "Inner",                                                +
                       "Parallel Aware": false,                                                       +
                       "Startup Cost": 0.03,                                                          +
                       "Total Cost": 0.03,                                                            +
                       "Plan Rows": 1,                                                                +
                       "Plan Width": 4,                                                               +
                       "Actual Startup Time": 0.022,                                                  +
                       "Actual Total Time": 0.022,                                                    +
                       "Actual Rows": 1,                                                              +
                       "Actual Loops": 1,                                                             +
                       "Sort Key": ["ct.id"],                                                         +
                       "Sort Method": "quicksort",                                                    +
                       "Sort Space Used": 25,                                                         +
                       "Sort Space Type": "Memory",                                                   +
                       "Shared Hit Blocks": 1,                                                        +
                       "Shared Read Blocks": 0,                                                       +
                       "Shared Dirtied Blocks": 0,                                                    +
                       "Shared Written Blocks": 0,                                                    +
                       "Local Hit Blocks": 0,                                                         +
                       "Local Read Blocks": 0,                                                        +
                       "Local Dirtied Blocks": 0,                                                     +
                       "Local Written Blocks": 0,                                                     +
                       "Temp Read Blocks": 0,                                                         +
                       "Temp Written Blocks": 0,                                                      +
                       "Plans": [                                                                     +
                         {                                                                            +
                           "Node Type": "Seq Scan",                                                   +
                           "Parent Relationship": "Outer",                                            +
                           "Parallel Aware": false,                                                   +
                           "Relation Name": "company_type",                                           +
                           "Alias": "ct",                                                             +
                           "Startup Cost": 0.00,                                                      +
                           "Total Cost": 0.03,                                                        +
                           "Plan Rows": 1,                                                            +
                           "Plan Width": 4,                                                           +
                           "Actual Startup Time": 0.014,                                              +
                           "Actual Total Time": 0.015,                                                +
                           "Actual Rows": 1,                                                          +
                           "Actual Loops": 1,                                                         +
                           "Filter": "((kind)::text = 'production companies'::text)",                 +
                           "Rows Removed by Filter": 3,                                               +
                           "Shared Hit Blocks": 1,                                                    +
                           "Shared Read Blocks": 0,                                                   +
                           "Shared Dirtied Blocks": 0,                                                +
                           "Shared Written Blocks": 0,                                                +
                           "Local Hit Blocks": 0,                                                     +
                           "Local Read Blocks": 0,                                                    +
                           "Local Dirtied Blocks": 0,                                                 +
                           "Local Written Blocks": 0,                                                 +
                           "Temp Read Blocks": 0,                                                     +
                           "Temp Written Blocks": 0                                                   +
                         }                                                                            +
                       ]                                                                              +
                     }                                                                                +
                   ]                                                                                  +
                 }                                                                                    +
               ]                                                                                      +
             },                                                                                       +
             {                                                                                        +
               "Node Type": "Sort",                                                                   +
               "Parent Relationship": "Inner",                                                        +
               "Parallel Aware": false,                                                               +
               "Startup Cost": 5875.81,                                                               +
               "Total Cost": 5983.06,                                                                 +
               "Plan Rows": 1381453,                                                                  +
               "Plan Width": 25,                                                                      +
               "Actual Startup Time": 2145.439,                                                       +
               "Actual Total Time": 2301.677,                                                         +
               "Actual Rows": 1289090,                                                                +
               "Actual Loops": 1,                                                                     +
               "Sort Key": ["t.id"],                                                                  +
               "Sort Method": "quicksort",                                                            +
               "Sort Space Used": 153732,                                                             +
               "Sort Space Type": "Memory",                                                           +
               "Shared Hit Blocks": 1,                                                                +
               "Shared Read Blocks": 35997,                                                           +
               "Shared Dirtied Blocks": 0,                                                            +
               "Shared Written Blocks": 0,                                                            +
               "Local Hit Blocks": 0,                                                                 +
               "Local Read Blocks": 0,                                                                +
               "Local Dirtied Blocks": 0,                                                             +
               "Local Written Blocks": 0,                                                             +
               "Temp Read Blocks": 0,                                                                 +
               "Temp Written Blocks": 0,                                                              +
               "Plans": [                                                                             +
                 {                                                                                    +
                   "Node Type": "Seq Scan",                                                           +
                   "Parent Relationship": "Outer",                                                    +
                   "Parallel Aware": false,                                                           +
                   "Relation Name": "title",                                                          +
                   "Alias": "t",                                                                      +
                   "Startup Cost": 0.00,                                                              +
                   "Total Cost": 1500.26,                                                             +
                   "Plan Rows": 1381453,                                                              +
                   "Plan Width": 25,                                                                  +
                   "Actual Startup Time": 11.576,                                                     +
                   "Actual Total Time": 1331.216,                                                     +
                   "Actual Rows": 1381453,                                                            +
                   "Actual Loops": 1,                                                                 +
                   "Filter": "(production_year > 2000)",                                              +
                   "Rows Removed by Filter": 1146859,                                                 +
                   "Shared Hit Blocks": 1,                                                            +
                   "Shared Read Blocks": 35997,                                                       +
                   "Shared Dirtied Blocks": 0,                                                        +
                   "Shared Written Blocks": 0,                                                        +
                   "Local Hit Blocks": 0,                                                             +
                   "Local Read Blocks": 0,                                                            +
                   "Local Dirtied Blocks": 0,                                                         +
                   "Local Written Blocks": 0,                                                         +
                   "Temp Read Blocks": 0,                                                             +
                   "Temp Written Blocks": 0                                                           +
                 }                                                                                    +
               ]                                                                                      +
             }                                                                                        +
           ]                                                                                          +
         }                                                                                            +
       ]                                                                                              +
     },                                                                                               +
     "Planning Time": 2353.550,                                                                       +
     "Triggers": [                                                                                    +
     ],                                                                                               +
     "Execution Time": 5028.409                                                                       +
   }                                                                                                  +
 ]
(1 row)

