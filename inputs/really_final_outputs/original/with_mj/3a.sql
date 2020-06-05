                                                       QUERY PLAN                                                        
-------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                      +
   {                                                                                                                    +
     "Plan": {                                                                                                          +
       "Node Type": "Aggregate",                                                                                        +
       "Strategy": "Plain",                                                                                             +
       "Partial Mode": "Simple",                                                                                        +
       "Parallel Aware": false,                                                                                         +
       "Startup Cost": 33311.06,                                                                                        +
       "Total Cost": 33311.06,                                                                                          +
       "Plan Rows": 1,                                                                                                  +
       "Plan Width": 32,                                                                                                +
       "Actual Startup Time": 14251.858,                                                                                +
       "Actual Total Time": 14251.859,                                                                                  +
       "Actual Rows": 1,                                                                                                +
       "Actual Loops": 1,                                                                                               +
       "Shared Hit Blocks": 12,                                                                                         +
       "Shared Read Blocks": 223285,                                                                                    +
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
           "Startup Cost": 33129.61,                                                                                    +
           "Total Cost": 33311.04,                                                                                      +
           "Plan Rows": 364,                                                                                            +
           "Plan Width": 17,                                                                                            +
           "Actual Startup Time": 14052.411,                                                                            +
           "Actual Total Time": 14251.773,                                                                              +
           "Actual Rows": 206,                                                                                          +
           "Actual Loops": 1,                                                                                           +
           "Inner Unique": false,                                                                                       +
           "Merge Cond": "(t.id = mi.movie_id)",                                                                        +
           "Shared Hit Blocks": 12,                                                                                     +
           "Shared Read Blocks": 223285,                                                                                +
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
               "Startup Cost": 22005.12,                                                                                +
               "Total Cost": 22162.67,                                                                                  +
               "Plan Rows": 905,                                                                                        +
               "Plan Width": 25,                                                                                        +
               "Actual Startup Time": 5548.703,                                                                         +
               "Actual Total Time": 5761.566,                                                                           +
               "Actual Rows": 2234,                                                                                     +
               "Actual Loops": 1,                                                                                       +
               "Inner Unique": true,                                                                                    +
               "Merge Cond": "(mk.movie_id = t.id)",                                                                    +
               "Shared Hit Blocks": 10,                                                                                 +
               "Shared Read Blocks": 61395,                                                                             +
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
                   "Startup Cost": 17366.99,                                                                            +
                   "Total Cost": 17367.17,                                                                              +
                   "Plan Rows": 2259,                                                                                   +
                   "Plan Width": 4,                                                                                     +
                   "Actual Startup Time": 3548.688,                                                                     +
                   "Actual Total Time": 3550.376,                                                                       +
                   "Actual Rows": 12950,                                                                                +
                   "Actual Loops": 1,                                                                                   +
                   "Sort Key": ["mk.movie_id"],                                                                         +
                   "Sort Method": "quicksort",                                                                          +
                   "Sort Space Used": 992,                                                                              +
                   "Sort Space Type": "Memory",                                                                         +
                   "Shared Hit Blocks": 9,                                                                              +
                   "Shared Read Blocks": 25398,                                                                         +
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
                       "Node Type": "Merge Join",                                                                       +
                       "Parent Relationship": "Outer",                                                                  +
                       "Parallel Aware": false,                                                                         +
                       "Join Type": "Inner",                                                                            +
                       "Startup Cost": 16660.45,                                                                        +
                       "Total Cost": 17363.09,                                                                          +
                       "Plan Rows": 2259,                                                                               +
                       "Plan Width": 4,                                                                                 +
                       "Actual Startup Time": 2482.015,                                                                 +
                       "Actual Total Time": 3535.071,                                                                   +
                       "Actual Rows": 12951,                                                                            +
                       "Actual Loops": 1,                                                                               +
                       "Inner Unique": false,                                                                           +
                       "Merge Cond": "(k.id = mk.keyword_id)",                                                          +
                       "Shared Hit Blocks": 5,                                                                          +
                       "Shared Read Blocks": 25398,                                                                     +
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
                           "Node Type": "Sort",                                                                         +
                           "Parent Relationship": "Outer",                                                              +
                           "Parallel Aware": false,                                                                     +
                           "Startup Cost": 49.52,                                                                       +
                           "Total Cost": 49.53,                                                                         +
                           "Plan Rows": 67,                                                                             +
                           "Plan Width": 4,                                                                             +
                           "Actual Startup Time": 83.453,                                                               +
                           "Actual Total Time": 83.461,                                                                 +
                           "Actual Rows": 30,                                                                           +
                           "Actual Loops": 1,                                                                           +
                           "Sort Key": ["k.id"],                                                                        +
                           "Sort Method": "quicksort",                                                                  +
                           "Sort Space Used": 26,                                                                       +
                           "Sort Space Type": "Memory",                                                                 +
                           "Shared Hit Blocks": 2,                                                                      +
                           "Shared Read Blocks": 947,                                                                   +
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
                               "Relation Name": "keyword",                                                              +
                               "Alias": "k",                                                                            +
                               "Startup Cost": 0.00,                                                                    +
                               "Total Cost": 49.46,                                                                     +
                               "Plan Rows": 67,                                                                         +
                               "Plan Width": 4,                                                                         +
                               "Actual Startup Time": 24.245,                                                           +
                               "Actual Total Time": 83.411,                                                             +
                               "Actual Rows": 30,                                                                       +
                               "Actual Loops": 1,                                                                       +
                               "Filter": "(keyword ~~ '%sequel%'::text)",                                               +
                               "Rows Removed by Filter": 134140,                                                        +
                               "Shared Hit Blocks": 2,                                                                  +
                               "Shared Read Blocks": 947,                                                               +
                               "Shared Dirtied Blocks": 0,                                                              +
                               "Shared Written Blocks": 0,                                                              +
                               "Local Hit Blocks": 0,                                                                   +
                               "Local Read Blocks": 0,                                                                  +
                               "Local Dirtied Blocks": 0,                                                               +
                               "Local Written Blocks": 0,                                                               +
                               "Temp Read Blocks": 0,                                                                   +
                               "Temp Written Blocks": 0                                                                 +
                             }                                                                                          +
                           ]                                                                                            +
                         },                                                                                             +
                         {                                                                                              +
                           "Node Type": "Sort",                                                                         +
                           "Parent Relationship": "Inner",                                                              +
                           "Parallel Aware": false,                                                                     +
                           "Startup Cost": 16610.92,                                                                    +
                           "Total Cost": 16962.16,                                                                      +
                           "Plan Rows": 4523930,                                                                        +
                           "Plan Width": 8,                                                                             +
                           "Actual Startup Time": 2249.791,                                                             +
                           "Actual Total Time": 2910.184,                                                               +
                           "Actual Rows": 4518173,                                                                      +
                           "Actual Loops": 1,                                                                           +
                           "Sort Key": ["mk.keyword_id"],                                                               +
                           "Sort Method": "quicksort",                                                                  +
                           "Sort Space Used": 408668,                                                                   +
                           "Sort Space Type": "Memory",                                                                 +
                           "Shared Hit Blocks": 3,                                                                      +
                           "Shared Read Blocks": 24451,                                                                 +
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
                               "Relation Name": "movie_keyword",                                                        +
                               "Alias": "mk",                                                                           +
                               "Startup Cost": 0.00,                                                                    +
                               "Total Cost": 1079.84,                                                                   +
                               "Plan Rows": 4523930,                                                                    +
                               "Plan Width": 8,                                                                         +
                               "Actual Startup Time": 0.006,                                                            +
                               "Actual Total Time": 807.671,                                                            +
                               "Actual Rows": 4523930,                                                                  +
                               "Actual Loops": 1,                                                                       +
                               "Shared Hit Blocks": 3,                                                                  +
                               "Shared Read Blocks": 24451,                                                             +
                               "Shared Dirtied Blocks": 0,                                                              +
                               "Shared Written Blocks": 0,                                                              +
                               "Local Hit Blocks": 0,                                                                   +
                               "Local Read Blocks": 0,                                                                  +
                               "Local Dirtied Blocks": 0,                                                               +
                               "Local Written Blocks": 0,                                                               +
                               "Temp Read Blocks": 0,                                                                   +
                               "Temp Written Blocks": 0                                                                 +
                             }                                                                                          +
                           ]                                                                                            +
                         }                                                                                              +
                       ]                                                                                                +
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
                   "Actual Startup Time": 1951.780,                                                                     +
                   "Actual Total Time": 2070.708,                                                                       +
                   "Actual Rows": 1012631,                                                                              +
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
                       "Actual Startup Time": 23.336,                                                                   +
                       "Actual Total Time": 1343.762,                                                                   +
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
               "Plan Width": 4,                                                                                         +
               "Actual Startup Time": 8466.640,                                                                         +
               "Actual Total Time": 8474.967,                                                                           +
               "Actual Rows": 153951,                                                                                   +
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
                   "Plan Width": 4,                                                                                     +
                   "Actual Startup Time": 15.762,                                                                       +
                   "Actual Total Time": 8404.034,                                                                       +
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
     "Planning Time": 2372.485,                                                                                         +
     "Triggers": [                                                                                                      +
     ],                                                                                                                 +
     "Execution Time": 14306.929                                                                                        +
   }                                                                                                                    +
 ]
(1 row)
