                                    QUERY PLAN                                    
----------------------------------------------------------------------------------
 [                                                                               +
   {                                                                             +
     "Plan": {                                                                   +
       "Node Type": "Aggregate",                                                 +
       "Strategy": "Plain",                                                      +
       "Partial Mode": "Simple",                                                 +
       "Parallel Aware": false,                                                  +
       "Startup Cost": 24251.73,                                                 +
       "Total Cost": 24251.73,                                                   +
       "Plan Rows": 1,                                                           +
       "Plan Width": 64,                                                         +
       "Actual Startup Time": 6644.108,                                          +
       "Actual Total Time": 6644.108,                                            +
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
           "Startup Cost": 24251.57,                                             +
           "Total Cost": 24251.73,                                               +
           "Plan Rows": 9,                                                       +
           "Plan Width": 23,                                                     +
           "Actual Startup Time": 6622.126,                                      +
           "Actual Total Time": 6622.845,                                        +
           "Actual Rows": 740,                                                   +
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
               "Startup Cost": 24251.52,                                         +
               "Total Cost": 24251.60,                                           +
               "Plan Rows": 1029,                                                +
               "Plan Width": 27,                                                 +
               "Actual Startup Time": 6621.997,                                  +
               "Actual Total Time": 6622.169,                                    +
               "Actual Rows": 1141,                                              +
               "Actual Loops": 1,                                                +
               "Sort Key": ["mi_idx.info_type_id"],                              +
               "Sort Method": "quicksort",                                       +
               "Sort Space Used": 145,                                           +
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
                   "Startup Cost": 24011.45,                                     +
                   "Total Cost": 24249.92,                                       +
                   "Plan Rows": 1029,                                            +
                   "Plan Width": 27,                                             +
                   "Actual Startup Time": 6319.196,                              +
                   "Actual Total Time": 6604.325,                                +
                   "Actual Rows": 1145,                                          +
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
                       "Startup Cost": 22005.12,                                 +
                       "Total Cost": 22162.67,                                   +
                       "Plan Rows": 905,                                         +
                       "Plan Width": 25,                                         +
                       "Actual Startup Time": 5606.872,                          +
                       "Actual Total Time": 5819.519,                            +
                       "Actual Rows": 2235,                                      +
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
                           "Actual Startup Time": 3607.131,                      +
                           "Actual Total Time": 3608.836,                        +
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
                               "Actual Startup Time": 2529.822,                  +
                               "Actual Total Time": 3602.947,                    +
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
                                   "Actual Startup Time": 83.527,                +
                                   "Actual Total Time": 83.538,                  +
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
                                       "Actual Startup Time": 24.351,            +
                                       "Actual Total Time": 83.478,              +
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
                                   "Actual Startup Time": 2295.960,              +
                                   "Actual Total Time": 2973.561,                +
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
                                       "Actual Total Time": 843.818,             +
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
                           "Startup Cost": 4638.12,                              +
                           "Total Cost": 4716.76,                                +
                           "Plan Rows": 1012920,                                 +
                           "Plan Width": 21,                                     +
                           "Actual Startup Time": 1952.357,                      +
                           "Actual Total Time": 2068.891,                        +
                           "Actual Rows": 1012631,                               +
                           "Actual Loops": 1,                                    +
                           "Sort Key": ["t.id"],                                 +
                           "Sort Method": "quicksort",                           +
                           "Sort Space Used": 94802,                             +
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
                               "Plan Rows": 1012920,                             +
                               "Plan Width": 21,                                 +
                               "Actual Startup Time": 21.898,                    +
                               "Actual Total Time": 1348.385,                    +
                               "Actual Rows": 1012920,                           +
                               "Actual Loops": 1,                                +
                               "Filter": "(production_year > 2005)",             +
                               "Rows Removed by Filter": 1515392,                +
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
                       "Startup Cost": 2006.33,                                  +
                       "Total Cost": 2046.84,                                    +
                       "Plan Rows": 521708,                                      +
                       "Plan Width": 14,                                         +
                       "Actual Startup Time": 703.793,                           +
                       "Actual Total Time": 730.277,                             +
                       "Actual Rows": 521996,                                    +
                       "Actual Loops": 1,                                        +
                       "Sort Key": ["mi_idx.movie_id"],                          +
                       "Sort Method": "quicksort",                               +
                       "Sort Space Used": 37148,                                 +
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
                           "Plan Rows": 521708,                                  +
                           "Plan Width": 14,                                     +
                           "Actual Startup Time": 0.017,                         +
                           "Actual Total Time": 474.194,                         +
                           "Actual Rows": 521723,                                +
                           "Actual Loops": 1,                                    +
                           "Filter": "(info > '5.0'::text)",                     +
                           "Rows Removed by Filter": 858312,                     +
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
                   "Actual Total Time": 0.029,                                   +
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
     "Planning Time": 2407.092,                                                  +
     "Triggers": [                                                               +
     ],                                                                          +
     "Execution Time": 6729.443                                                  +
   }                                                                             +
 ]
(1 row)

