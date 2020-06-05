                                    QUERY PLAN                                    
----------------------------------------------------------------------------------
 [                                                                               +
   {                                                                             +
     "Plan": {                                                                   +
       "Node Type": "Aggregate",                                                 +
       "Strategy": "Plain",                                                      +
       "Partial Mode": "Simple",                                                 +
       "Parallel Aware": false,                                                  +
       "Startup Cost": 27994.82,                                                 +
       "Total Cost": 27994.82,                                                   +
       "Plan Rows": 1,                                                           +
       "Plan Width": 64,                                                         +
       "Actual Startup Time": 7019.203,                                          +
       "Actual Total Time": 7019.203,                                            +
       "Actual Rows": 1,                                                         +
       "Actual Loops": 1,                                                        +
       "Shared Hit Blocks": 13,                                                  +
       "Shared Read Blocks": 69846,                                              +
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
           "Node Type": "Merge Join",                                            +
           "Parent Relationship": "Outer",                                       +
           "Parallel Aware": false,                                              +
           "Join Type": "Inner",                                                 +
           "Startup Cost": 27994.36,                                             +
           "Total Cost": 27994.82,                                               +
           "Plan Rows": 26,                                                      +
           "Plan Width": 23,                                                     +
           "Actual Startup Time": 6987.400,                                      +
           "Actual Total Time": 6992.051,                                        +
           "Actual Rows": 4700,                                                  +
           "Actual Loops": 1,                                                    +
           "Inner Unique": true,                                                 +
           "Merge Cond": "(mi_idx.info_type_id = it.id)",                        +
           "Shared Hit Blocks": 13,                                              +
           "Shared Read Blocks": 69846,                                          +
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
               "Node Type": "Sort",                                              +
               "Parent Relationship": "Outer",                                   +
               "Parallel Aware": false,                                          +
               "Startup Cost": 27994.31,                                         +
               "Total Cost": 27994.54,                                           +
               "Plan Rows": 2914,                                                +
               "Plan Width": 27,                                                 +
               "Actual Startup Time": 6986.600,                                  +
               "Actual Total Time": 6987.843,                                    +
               "Actual Rows": 8784,                                              +
               "Actual Loops": 1,                                                +
               "Sort Key": ["mi_idx.info_type_id"],                              +
               "Sort Method": "quicksort",                                       +
               "Sort Space Used": 1139,                                          +
               "Sort Space Type": "Memory",                                      +
               "Shared Hit Blocks": 12,                                          +
               "Shared Read Blocks": 69846,                                      +
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
                   "Node Type": "Merge Join",                                    +
                   "Parent Relationship": "Outer",                               +
                   "Parallel Aware": false,                                      +
                   "Join Type": "Inner",                                         +
                   "Startup Cost": 27584.68,                                     +
                   "Total Cost": 27989.11,                                       +
                   "Plan Rows": 2914,                                            +
                   "Plan Width": 27,                                             +
                   "Actual Startup Time": 6381.572,                              +
                   "Actual Total Time": 6965.326,                                +
                   "Actual Rows": 8797,                                          +
                   "Actual Loops": 1,                                            +
                   "Inner Unique": false,                                        +
                   "Merge Cond": "(t.id = mi_idx.movie_id)",                     +
                   "Shared Hit Blocks": 8,                                       +
                   "Shared Read Blocks": 69846,                                  +
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
                       "Node Type": "Merge Join",                                +
                       "Parent Relationship": "Outer",                           +
                       "Parallel Aware": false,                                  +
                       "Join Type": "Inner",                                     +
                       "Startup Cost": 24499.50,                                 +
                       "Total Cost": 24771.29,                                   +
                       "Plan Rows": 1563,                                        +
                       "Plan Width": 25,                                         +
                       "Actual Startup Time": 5624.366,                          +
                       "Actual Total Time": 6070.956,                            +
                       "Actual Rows": 7874,                                      +
                       "Actual Loops": 1,                                        +
                       "Inner Unique": true,                                     +
                       "Merge Cond": "(mk.movie_id = t.id)",                     +
                       "Shared Hit Blocks": 6,                                   +
                       "Shared Read Blocks": 61395,                              +
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
                           "Node Type": "Sort",                                  +
                           "Parent Relationship": "Outer",                       +
                           "Parallel Aware": false,                              +
                           "Startup Cost": 17366.99,                             +
                           "Total Cost": 17367.17,                               +
                           "Plan Rows": 2259,                                    +
                           "Plan Width": 4,                                      +
                           "Actual Startup Time": 3503.388,                      +
                           "Actual Total Time": 3505.185,                        +
                           "Actual Rows": 12951,                                 +
                           "Actual Loops": 1,                                    +
                           "Sort Key": ["mk.movie_id"],                          +
                           "Sort Method": "quicksort",                           +
                           "Sort Space Used": 992,                               +
                           "Sort Space Type": "Memory",                          +
                           "Shared Hit Blocks": 5,                               +
                           "Shared Read Blocks": 25398,                          +
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
                               "Node Type": "Merge Join",                        +
                               "Parent Relationship": "Outer",                   +
                               "Parallel Aware": false,                          +
                               "Join Type": "Inner",                             +
                               "Startup Cost": 16660.45,                         +
                               "Total Cost": 17363.09,                           +
                               "Plan Rows": 2259,                                +
                               "Plan Width": 4,                                  +
                               "Actual Startup Time": 2443.350,                  +
                               "Actual Total Time": 3499.142,                    +
                               "Actual Rows": 12951,                             +
                               "Actual Loops": 1,                                +
                               "Inner Unique": false,                            +
                               "Merge Cond": "(k.id = mk.keyword_id)",           +
                               "Shared Hit Blocks": 5,                           +
                               "Shared Read Blocks": 25398,                      +
                               "Shared Dirtied Blocks": 0,                       +
                               "Shared Written Blocks": 0,                       +
                               "Local Hit Blocks": 0,                            +
                               "Local Read Blocks": 0,                           +
                               "Local Dirtied Blocks": 0,                        +
                               "Local Written Blocks": 0,                        +
                               "Temp Read Blocks": 0,                            +
                               "Temp Written Blocks": 0,                         +
                               "Plans": [                                        +
                                 {                                               +
                                   "Node Type": "Sort",                          +
                                   "Parent Relationship": "Outer",               +
                                   "Parallel Aware": false,                      +
                                   "Startup Cost": 49.52,                        +
                                   "Total Cost": 49.53,                          +
                                   "Plan Rows": 67,                              +
                                   "Plan Width": 4,                              +
                                   "Actual Startup Time": 75.540,                +
                                   "Actual Total Time": 75.548,                  +
                                   "Actual Rows": 30,                            +
                                   "Actual Loops": 1,                            +
                                   "Sort Key": ["k.id"],                         +
                                   "Sort Method": "quicksort",                   +
                                   "Sort Space Used": 26,                        +
                                   "Sort Space Type": "Memory",                  +
                                   "Shared Hit Blocks": 2,                       +
                                   "Shared Read Blocks": 947,                    +
                                   "Shared Dirtied Blocks": 0,                   +
                                   "Shared Written Blocks": 0,                   +
                                   "Local Hit Blocks": 0,                        +
                                   "Local Read Blocks": 0,                       +
                                   "Local Dirtied Blocks": 0,                    +
                                   "Local Written Blocks": 0,                    +
                                   "Temp Read Blocks": 0,                        +
                                   "Temp Written Blocks": 0,                     +
                                   "Plans": [                                    +
                                     {                                           +
                                       "Node Type": "Seq Scan",                  +
                                       "Parent Relationship": "Outer",           +
                                       "Parallel Aware": false,                  +
                                       "Relation Name": "keyword",               +
                                       "Alias": "k",                             +
                                       "Startup Cost": 0.00,                     +
                                       "Total Cost": 49.46,                      +
                                       "Plan Rows": 67,                          +
                                       "Plan Width": 4,                          +
                                       "Actual Startup Time": 16.045,            +
                                       "Actual Total Time": 75.494,              +
                                       "Actual Rows": 30,                        +
                                       "Actual Loops": 1,                        +
                                       "Filter": "(keyword ~~ '%sequel%'::text)",+
                                       "Rows Removed by Filter": 134140,         +
                                       "Shared Hit Blocks": 2,                   +
                                       "Shared Read Blocks": 947,                +
                                       "Shared Dirtied Blocks": 0,               +
                                       "Shared Written Blocks": 0,               +
                                       "Local Hit Blocks": 0,                    +
                                       "Local Read Blocks": 0,                   +
                                       "Local Dirtied Blocks": 0,                +
                                       "Local Written Blocks": 0,                +
                                       "Temp Read Blocks": 0,                    +
                                       "Temp Written Blocks": 0                  +
                                     }                                           +
                                   ]                                             +
                                 },                                              +
                                 {                                               +
                                   "Node Type": "Sort",                          +
                                   "Parent Relationship": "Inner",               +
                                   "Parallel Aware": false,                      +
                                   "Startup Cost": 16610.92,                     +
                                   "Total Cost": 16962.16,                       +
                                   "Plan Rows": 4523930,                         +
                                   "Plan Width": 8,                              +
                                   "Actual Startup Time": 2220.870,              +
                                   "Actual Total Time": 2885.604,                +
                                   "Actual Rows": 4518173,                       +
                                   "Actual Loops": 1,                            +
                                   "Sort Key": ["mk.keyword_id"],                +
                                   "Sort Method": "quicksort",                   +
                                   "Sort Space Used": 408668,                    +
                                   "Sort Space Type": "Memory",                  +
                                   "Shared Hit Blocks": 3,                       +
                                   "Shared Read Blocks": 24451,                  +
                                   "Shared Dirtied Blocks": 0,                   +
                                   "Shared Written Blocks": 0,                   +
                                   "Local Hit Blocks": 0,                        +
                                   "Local Read Blocks": 0,                       +
                                   "Local Dirtied Blocks": 0,                    +
                                   "Local Written Blocks": 0,                    +
                                   "Temp Read Blocks": 0,                        +
                                   "Temp Written Blocks": 0,                     +
                                   "Plans": [                                    +
                                     {                                           +
                                       "Node Type": "Seq Scan",                  +
                                       "Parent Relationship": "Outer",           +
                                       "Parallel Aware": false,                  +
                                       "Relation Name": "movie_keyword",         +
                                       "Alias": "mk",                            +
                                       "Startup Cost": 0.00,                     +
                                       "Total Cost": 1079.84,                    +
                                       "Plan Rows": 4523930,                     +
                                       "Plan Width": 8,                          +
                                       "Actual Startup Time": 0.006,             +
                                       "Actual Total Time": 784.062,             +
                                       "Actual Rows": 4523930,                   +
                                       "Actual Loops": 1,                        +
                                       "Shared Hit Blocks": 3,                   +
                                       "Shared Read Blocks": 24451,              +
                                       "Shared Dirtied Blocks": 0,               +
                                       "Shared Written Blocks": 0,               +
                                       "Local Hit Blocks": 0,                    +
                                       "Local Read Blocks": 0,                   +
                                       "Local Dirtied Blocks": 0,                +
                                       "Local Written Blocks": 0,                +
                                       "Temp Read Blocks": 0,                    +
                                       "Temp Written Blocks": 0                  +
                                     }                                           +
                                   ]                                             +
                                 }                                               +
                               ]                                                 +
                             }                                                   +
                           ]                                                     +
                         },                                                      +
                         {                                                       +
                           "Node Type": "Sort",                                  +
                           "Parent Relationship": "Inner",                       +
                           "Parallel Aware": false,                              +
                           "Startup Cost": 7132.50,                              +
                           "Total Cost": 7268.30,                                +
                           "Plan Rows": 1749033,                                 +
                           "Plan Width": 21,                                     +
                           "Actual Startup Time": 2120.711,                      +
                           "Actual Total Time": 2322.182,                        +
                           "Actual Rows": 1748431,                               +
                           "Actual Loops": 1,                                    +
                           "Sort Key": ["t.id"],                                 +
                           "Sort Method": "quicksort",                           +
                           "Sort Space Used": 171002,                            +
                           "Sort Space Type": "Memory",                          +
                           "Shared Hit Blocks": 1,                               +
                           "Shared Read Blocks": 35997,                          +
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
                               "Relation Name": "title",                         +
                               "Alias": "t",                                     +
                               "Startup Cost": 0.00,                             +
                               "Total Cost": 1500.26,                            +
                               "Plan Rows": 1749033,                             +
                               "Plan Width": 21,                                 +
                               "Actual Startup Time": 17.317,                    +
                               "Actual Total Time": 1201.918,                    +
                               "Actual Rows": 1749032,                           +
                               "Actual Loops": 1,                                +
                               "Filter": "(production_year > 1990)",             +
                               "Rows Removed by Filter": 779280,                 +
                               "Shared Hit Blocks": 1,                           +
                               "Shared Read Blocks": 35997,                      +
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
                       "Node Type": "Sort",                                      +
                       "Parent Relationship": "Inner",                           +
                       "Parallel Aware": false,                                  +
                       "Startup Cost": 3085.18,                                  +
                       "Total Cost": 3151.59,                                    +
                       "Plan Rows": 855391,                                      +
                       "Plan Width": 14,                                         +
                       "Actual Startup Time": 757.121,                           +
                       "Actual Total Time": 803.131,                             +
                       "Actual Rows": 857167,                                    +
                       "Actual Loops": 1,                                        +
                       "Sort Key": ["mi_idx.movie_id"],                          +
                       "Sort Method": "quicksort",                               +
                       "Sort Space Used": 67763,                                 +
                       "Sort Space Type": "Memory",                              +
                       "Shared Hit Blocks": 2,                                   +
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
                           "Plan Rows": 855391,                                  +
                           "Plan Width": 14,                                     +
                           "Actual Startup Time": 0.017,                         +
                           "Actual Total Time": 415.863,                         +
                           "Actual Rows": 855412,                                +
                           "Actual Loops": 1,                                    +
                           "Filter": "(info > '2.0'::text)",                     +
                           "Rows Removed by Filter": 524623,                     +
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
                         }                                                       +
                       ]                                                         +
                     }                                                           +
                   ]                                                             +
                 }                                                               +
               ]                                                                 +
             },                                                                  +
             {                                                                   +
               "Node Type": "Sort",                                              +
               "Parent Relationship": "Inner",                                   +
               "Parallel Aware": false,                                          +
               "Startup Cost": 0.05,                                             +
               "Total Cost": 0.05,                                               +
               "Plan Rows": 1,                                                   +
               "Plan Width": 4,                                                  +
               "Actual Startup Time": 0.036,                                     +
               "Actual Total Time": 0.036,                                       +
               "Actual Rows": 1,                                                 +
               "Actual Loops": 1,                                                +
               "Sort Key": ["it.id"],                                            +
               "Sort Method": "quicksort",                                       +
               "Sort Space Used": 25,                                            +
               "Sort Space Type": "Memory",                                      +
               "Shared Hit Blocks": 1,                                           +
               "Shared Read Blocks": 0,                                          +
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
                   "Node Type": "Seq Scan",                                      +
                   "Parent Relationship": "Outer",                               +
                   "Parallel Aware": false,                                      +
                   "Relation Name": "info_type",                                 +
                   "Alias": "it",                                                +
                   "Startup Cost": 0.00,                                         +
                   "Total Cost": 0.05,                                           +
                   "Plan Rows": 1,                                               +
                   "Plan Width": 4,                                              +
                   "Actual Startup Time": 0.026,                                 +
                   "Actual Total Time": 0.028,                                   +
                   "Actual Rows": 1,                                             +
                   "Actual Loops": 1,                                            +
                   "Filter": "((info)::text = 'rating'::text)",                  +
                   "Rows Removed by Filter": 112,                                +
                   "Shared Hit Blocks": 1,                                       +
                   "Shared Read Blocks": 0,                                      +
                   "Shared Dirtied Blocks": 0,                                   +
                   "Shared Written Blocks": 0,                                   +
                   "Local Hit Blocks": 0,                                        +
                   "Local Read Blocks": 0,                                       +
                   "Local Dirtied Blocks": 0,                                    +
                   "Local Written Blocks": 0,                                    +
                   "Temp Read Blocks": 0,                                        +
                   "Temp Written Blocks": 0                                      +
                 }                                                               +
               ]                                                                 +
             }                                                                   +
           ]                                                                     +
         }                                                                       +
       ]                                                                         +
     },                                                                          +
     "Planning Time": 2576.164,                                                  +
     "Triggers": [                                                               +
     ],                                                                          +
     "Execution Time": 7055.672                                                  +
   }                                                                             +
 ]
(1 row)
