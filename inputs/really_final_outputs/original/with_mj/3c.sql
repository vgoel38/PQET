                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 38872.71,                                                                                                     +
       "Total Cost": 38872.71,                                                                                                       +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 32,                                                                                                             +
       "Actual Startup Time": 15031.970,                                                                                             +
       "Actual Total Time": 15031.970,                                                                                               +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 12,                                                                                                      +
       "Shared Read Blocks": 223285,                                                                                                 +
       "Shared Dirtied Blocks": 0,                                                                                                   +
       "Shared Written Blocks": 0,                                                                                                   +
       "Local Hit Blocks": 0,                                                                                                        +
       "Local Read Blocks": 0,                                                                                                       +
       "Local Dirtied Blocks": 0,                                                                                                    +
       "Local Written Blocks": 0,                                                                                                    +
       "Temp Read Blocks": 0,                                                                                                        +
       "Temp Written Blocks": 0,                                                                                                     +
       "Plans": [                                                                                                                    +
         {                                                                                                                           +
           "Node Type": "Merge Join",                                                                                                +
           "Parent Relationship": "Outer",                                                                                           +
           "Parallel Aware": false,                                                                                                  +
           "Join Type": "Inner",                                                                                                     +
           "Startup Cost": 38491.16,                                                                                                 +
           "Total Cost": 38872.49,                                                                                                   +
           "Plan Rows": 2873,                                                                                                        +
           "Plan Width": 17,                                                                                                         +
           "Actual Startup Time": 14431.133,                                                                                         +
           "Actual Total Time": 15005.828,                                                                                           +
           "Actual Rows": 7250,                                                                                                      +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": false,                                                                                                    +
           "Merge Cond": "(t.id = mi.movie_id)",                                                                                     +
           "Shared Hit Blocks": 12,                                                                                                  +
           "Shared Read Blocks": 223285,                                                                                             +
           "Shared Dirtied Blocks": 0,                                                                                               +
           "Shared Written Blocks": 0,                                                                                               +
           "Local Hit Blocks": 0,                                                                                                    +
           "Local Read Blocks": 0,                                                                                                   +
           "Local Dirtied Blocks": 0,                                                                                                +
           "Local Written Blocks": 0,                                                                                                +
           "Temp Read Blocks": 0,                                                                                                    +
           "Temp Written Blocks": 0,                                                                                                 +
           "Plans": [                                                                                                                +
             {                                                                                                                       +
               "Node Type": "Merge Join",                                                                                            +
               "Parent Relationship": "Outer",                                                                                       +
               "Parallel Aware": false,                                                                                              +
               "Join Type": "Inner",                                                                                                 +
               "Startup Cost": 24499.50,                                                                                             +
               "Total Cost": 24771.29,                                                                                               +
               "Plan Rows": 1563,                                                                                                    +
               "Plan Width": 25,                                                                                                     +
               "Actual Startup Time": 5685.901,                                                                                      +
               "Actual Total Time": 6154.186,                                                                                        +
               "Actual Rows": 7874,                                                                                                  +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": true,                                                                                                 +
               "Merge Cond": "(mk.movie_id = t.id)",                                                                                 +
               "Shared Hit Blocks": 10,                                                                                              +
               "Shared Read Blocks": 61395,                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                           +
               "Shared Written Blocks": 0,                                                                                           +
               "Local Hit Blocks": 0,                                                                                                +
               "Local Read Blocks": 0,                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                            +
               "Local Written Blocks": 0,                                                                                            +
               "Temp Read Blocks": 0,                                                                                                +
               "Temp Written Blocks": 0,                                                                                             +
               "Plans": [                                                                                                            +
                 {                                                                                                                   +
                   "Node Type": "Sort",                                                                                              +
                   "Parent Relationship": "Outer",                                                                                   +
                   "Parallel Aware": false,                                                                                          +
                   "Startup Cost": 17366.99,                                                                                         +
                   "Total Cost": 17367.17,                                                                                           +
                   "Plan Rows": 2259,                                                                                                +
                   "Plan Width": 4,                                                                                                  +
                   "Actual Startup Time": 3540.361,                                                                                  +
                   "Actual Total Time": 3542.155,                                                                                    +
                   "Actual Rows": 12951,                                                                                             +
                   "Actual Loops": 1,                                                                                                +
                   "Sort Key": ["mk.movie_id"],                                                                                      +
                   "Sort Method": "quicksort",                                                                                       +
                   "Sort Space Used": 992,                                                                                           +
                   "Sort Space Type": "Memory",                                                                                      +
                   "Shared Hit Blocks": 9,                                                                                           +
                   "Shared Read Blocks": 25398,                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                       +
                   "Shared Written Blocks": 0,                                                                                       +
                   "Local Hit Blocks": 0,                                                                                            +
                   "Local Read Blocks": 0,                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                        +
                   "Local Written Blocks": 0,                                                                                        +
                   "Temp Read Blocks": 0,                                                                                            +
                   "Temp Written Blocks": 0,                                                                                         +
                   "Plans": [                                                                                                        +
                     {                                                                                                               +
                       "Node Type": "Merge Join",                                                                                    +
                       "Parent Relationship": "Outer",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Join Type": "Inner",                                                                                         +
                       "Startup Cost": 16660.45,                                                                                     +
                       "Total Cost": 17363.09,                                                                                       +
                       "Plan Rows": 2259,                                                                                            +
                       "Plan Width": 4,                                                                                              +
                       "Actual Startup Time": 2445.001,                                                                              +
                       "Actual Total Time": 3526.568,                                                                                +
                       "Actual Rows": 12951,                                                                                         +
                       "Actual Loops": 1,                                                                                            +
                       "Inner Unique": false,                                                                                        +
                       "Merge Cond": "(k.id = mk.keyword_id)",                                                                       +
                       "Shared Hit Blocks": 5,                                                                                       +
                       "Shared Read Blocks": 25398,                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                                   +
                       "Shared Written Blocks": 0,                                                                                   +
                       "Local Hit Blocks": 0,                                                                                        +
                       "Local Read Blocks": 0,                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                    +
                       "Local Written Blocks": 0,                                                                                    +
                       "Temp Read Blocks": 0,                                                                                        +
                       "Temp Written Blocks": 0,                                                                                     +
                       "Plans": [                                                                                                    +
                         {                                                                                                           +
                           "Node Type": "Sort",                                                                                      +
                           "Parent Relationship": "Outer",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Startup Cost": 49.52,                                                                                    +
                           "Total Cost": 49.53,                                                                                      +
                           "Plan Rows": 67,                                                                                          +
                           "Plan Width": 4,                                                                                          +
                           "Actual Startup Time": 84.345,                                                                            +
                           "Actual Total Time": 84.355,                                                                              +
                           "Actual Rows": 30,                                                                                        +
                           "Actual Loops": 1,                                                                                        +
                           "Sort Key": ["k.id"],                                                                                     +
                           "Sort Method": "quicksort",                                                                               +
                           "Sort Space Used": 26,                                                                                    +
                           "Sort Space Type": "Memory",                                                                              +
                           "Shared Hit Blocks": 2,                                                                                   +
                           "Shared Read Blocks": 947,                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                               +
                           "Shared Written Blocks": 0,                                                                               +
                           "Local Hit Blocks": 0,                                                                                    +
                           "Local Read Blocks": 0,                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                +
                           "Local Written Blocks": 0,                                                                                +
                           "Temp Read Blocks": 0,                                                                                    +
                           "Temp Written Blocks": 0,                                                                                 +
                           "Plans": [                                                                                                +
                             {                                                                                                       +
                               "Node Type": "Seq Scan",                                                                              +
                               "Parent Relationship": "Outer",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Relation Name": "keyword",                                                                           +
                               "Alias": "k",                                                                                         +
                               "Startup Cost": 0.00,                                                                                 +
                               "Total Cost": 49.46,                                                                                  +
                               "Plan Rows": 67,                                                                                      +
                               "Plan Width": 4,                                                                                      +
                               "Actual Startup Time": 23.938,                                                                        +
                               "Actual Total Time": 84.305,                                                                          +
                               "Actual Rows": 30,                                                                                    +
                               "Actual Loops": 1,                                                                                    +
                               "Filter": "(keyword ~~ '%sequel%'::text)",                                                            +
                               "Rows Removed by Filter": 134140,                                                                     +
                               "Shared Hit Blocks": 2,                                                                               +
                               "Shared Read Blocks": 947,                                                                            +
                               "Shared Dirtied Blocks": 0,                                                                           +
                               "Shared Written Blocks": 0,                                                                           +
                               "Local Hit Blocks": 0,                                                                                +
                               "Local Read Blocks": 0,                                                                               +
                               "Local Dirtied Blocks": 0,                                                                            +
                               "Local Written Blocks": 0,                                                                            +
                               "Temp Read Blocks": 0,                                                                                +
                               "Temp Written Blocks": 0                                                                              +
                             }                                                                                                       +
                           ]                                                                                                         +
                         },                                                                                                          +
                         {                                                                                                           +
                           "Node Type": "Sort",                                                                                      +
                           "Parent Relationship": "Inner",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Startup Cost": 16610.92,                                                                                 +
                           "Total Cost": 16962.16,                                                                                   +
                           "Plan Rows": 4523930,                                                                                     +
                           "Plan Width": 8,                                                                                          +
                           "Actual Startup Time": 2209.776,                                                                          +
                           "Actual Total Time": 2891.503,                                                                            +
                           "Actual Rows": 4518173,                                                                                   +
                           "Actual Loops": 1,                                                                                        +
                           "Sort Key": ["mk.keyword_id"],                                                                            +
                           "Sort Method": "quicksort",                                                                               +
                           "Sort Space Used": 408668,                                                                                +
                           "Sort Space Type": "Memory",                                                                              +
                           "Shared Hit Blocks": 3,                                                                                   +
                           "Shared Read Blocks": 24451,                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                               +
                           "Shared Written Blocks": 0,                                                                               +
                           "Local Hit Blocks": 0,                                                                                    +
                           "Local Read Blocks": 0,                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                +
                           "Local Written Blocks": 0,                                                                                +
                           "Temp Read Blocks": 0,                                                                                    +
                           "Temp Written Blocks": 0,                                                                                 +
                           "Plans": [                                                                                                +
                             {                                                                                                       +
                               "Node Type": "Seq Scan",                                                                              +
                               "Parent Relationship": "Outer",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Relation Name": "movie_keyword",                                                                     +
                               "Alias": "mk",                                                                                        +
                               "Startup Cost": 0.00,                                                                                 +
                               "Total Cost": 1079.84,                                                                                +
                               "Plan Rows": 4523930,                                                                                 +
                               "Plan Width": 8,                                                                                      +
                               "Actual Startup Time": 0.007,                                                                         +
                               "Actual Total Time": 775.337,                                                                         +
                               "Actual Rows": 4523930,                                                                               +
                               "Actual Loops": 1,                                                                                    +
                               "Shared Hit Blocks": 3,                                                                               +
                               "Shared Read Blocks": 24451,                                                                          +
                               "Shared Dirtied Blocks": 0,                                                                           +
                               "Shared Written Blocks": 0,                                                                           +
                               "Local Hit Blocks": 0,                                                                                +
                               "Local Read Blocks": 0,                                                                               +
                               "Local Dirtied Blocks": 0,                                                                            +
                               "Local Written Blocks": 0,                                                                            +
                               "Temp Read Blocks": 0,                                                                                +
                               "Temp Written Blocks": 0                                                                              +
                             }                                                                                                       +
                           ]                                                                                                         +
                         }                                                                                                           +
                       ]                                                                                                             +
                     }                                                                                                               +
                   ]                                                                                                                 +
                 },                                                                                                                  +
                 {                                                                                                                   +
                   "Node Type": "Sort",                                                                                              +
                   "Parent Relationship": "Inner",                                                                                   +
                   "Parallel Aware": false,                                                                                          +
                   "Startup Cost": 7132.50,                                                                                          +
                   "Total Cost": 7268.30,                                                                                            +
                   "Plan Rows": 1749033,                                                                                             +
                   "Plan Width": 21,                                                                                                 +
                   "Actual Startup Time": 2145.273,                                                                                  +
                   "Actual Total Time": 2355.006,                                                                                    +
                   "Actual Rows": 1748431,                                                                                           +
                   "Actual Loops": 1,                                                                                                +
                   "Sort Key": ["t.id"],                                                                                             +
                   "Sort Method": "quicksort",                                                                                       +
                   "Sort Space Used": 171002,                                                                                        +
                   "Sort Space Type": "Memory",                                                                                      +
                   "Shared Hit Blocks": 1,                                                                                           +
                   "Shared Read Blocks": 35997,                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                       +
                   "Shared Written Blocks": 0,                                                                                       +
                   "Local Hit Blocks": 0,                                                                                            +
                   "Local Read Blocks": 0,                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                        +
                   "Local Written Blocks": 0,                                                                                        +
                   "Temp Read Blocks": 0,                                                                                            +
                   "Temp Written Blocks": 0,                                                                                         +
                   "Plans": [                                                                                                        +
                     {                                                                                                               +
                       "Node Type": "Seq Scan",                                                                                      +
                       "Parent Relationship": "Outer",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Relation Name": "title",                                                                                     +
                       "Alias": "t",                                                                                                 +
                       "Startup Cost": 0.00,                                                                                         +
                       "Total Cost": 1500.26,                                                                                        +
                       "Plan Rows": 1749033,                                                                                         +
                       "Plan Width": 21,                                                                                             +
                       "Actual Startup Time": 39.983,                                                                                +
                       "Actual Total Time": 1201.620,                                                                                +
                       "Actual Rows": 1749032,                                                                                       +
                       "Actual Loops": 1,                                                                                            +
                       "Filter": "(production_year > 1990)",                                                                         +
                       "Rows Removed by Filter": 779280,                                                                             +
                       "Shared Hit Blocks": 1,                                                                                       +
                       "Shared Read Blocks": 35997,                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                                   +
                       "Shared Written Blocks": 0,                                                                                   +
                       "Local Hit Blocks": 0,                                                                                        +
                       "Local Read Blocks": 0,                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                    +
                       "Local Written Blocks": 0,                                                                                    +
                       "Temp Read Blocks": 0,                                                                                        +
                       "Temp Written Blocks": 0                                                                                      +
                     }                                                                                                               +
                   ]                                                                                                                 +
                 }                                                                                                                   +
               ]                                                                                                                     +
             },                                                                                                                      +
             {                                                                                                                       +
               "Node Type": "Sort",                                                                                                  +
               "Parent Relationship": "Inner",                                                                                       +
               "Parallel Aware": false,                                                                                              +
               "Startup Cost": 13991.66,                                                                                             +
               "Total Cost": 14046.44,                                                                                               +
               "Plan Rows": 705579,                                                                                                  +
               "Plan Width": 4,                                                                                                      +
               "Actual Startup Time": 8741.400,                                                                                      +
               "Actual Total Time": 8780.193,                                                                                        +
               "Actual Rows": 708530,                                                                                                +
               "Actual Loops": 1,                                                                                                    +
               "Sort Key": ["mi.movie_id"],                                                                                          +
               "Sort Method": "quicksort",                                                                                           +
               "Sort Space Used": 57702,                                                                                             +
               "Sort Space Type": "Memory",                                                                                          +
               "Shared Hit Blocks": 2,                                                                                               +
               "Shared Read Blocks": 161890,                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                           +
               "Shared Written Blocks": 0,                                                                                           +
               "Local Hit Blocks": 0,                                                                                                +
               "Local Read Blocks": 0,                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                            +
               "Local Written Blocks": 0,                                                                                            +
               "Temp Read Blocks": 0,                                                                                                +
               "Temp Written Blocks": 0,                                                                                             +
               "Plans": [                                                                                                            +
                 {                                                                                                                   +
                   "Node Type": "Seq Scan",                                                                                          +
                   "Parent Relationship": "Outer",                                                                                   +
                   "Parallel Aware": false,                                                                                          +
                   "Relation Name": "movie_info",                                                                                    +
                   "Alias": "mi",                                                                                                    +
                   "Startup Cost": 0.00,                                                                                             +
                   "Total Cost": 11863.04,                                                                                           +
                   "Plan Rows": 705579,                                                                                              +
                   "Plan Width": 4,                                                                                                  +
                   "Actual Startup Time": 11.150,                                                                                    +
                   "Actual Total Time": 8506.198,                                                                                    +
                   "Actual Rows": 706674,                                                                                            +
                   "Actual Loops": 1,                                                                                                +
                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))",+
                   "Rows Removed by Filter": 14129046,                                                                               +
                   "Shared Hit Blocks": 2,                                                                                           +
                   "Shared Read Blocks": 161890,                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                       +
                   "Shared Written Blocks": 0,                                                                                       +
                   "Local Hit Blocks": 0,                                                                                            +
                   "Local Read Blocks": 0,                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                        +
                   "Local Written Blocks": 0,                                                                                        +
                   "Temp Read Blocks": 0,                                                                                            +
                   "Temp Written Blocks": 0                                                                                          +
                 }                                                                                                                   +
               ]                                                                                                                     +
             }                                                                                                                       +
           ]                                                                                                                         +
         }                                                                                                                           +
       ]                                                                                                                             +
     },                                                                                                                              +
     "Planning Time": 2101.834,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 15092.754                                                                                                     +
   }                                                                                                                                 +
 ]
(1 row)

