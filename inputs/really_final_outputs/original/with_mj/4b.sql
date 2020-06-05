                                     QUERY PLAN                                     
------------------------------------------------------------------------------------
 [                                                                                 +
   {                                                                               +
     "Plan": {                                                                     +
       "Node Type": "Aggregate",                                                   +
       "Strategy": "Plain",                                                        +
       "Partial Mode": "Simple",                                                   +
       "Parallel Aware": false,                                                    +
       "Startup Cost": 20538.68,                                                   +
       "Total Cost": 20538.68,                                                     +
       "Plan Rows": 1,                                                             +
       "Plan Width": 64,                                                           +
       "Actual Startup Time": 5518.468,                                            +
       "Actual Total Time": 5518.469,                                              +
       "Actual Rows": 1,                                                           +
       "Actual Loops": 1,                                                          +
       "Shared Hit Blocks": 13,                                                    +
       "Shared Read Blocks": 69846,                                                +
       "Shared Dirtied Blocks": 0,                                                 +
       "Shared Written Blocks": 0,                                                 +
       "Local Hit Blocks": 0,                                                      +
       "Local Read Blocks": 0,                                                     +
       "Local Dirtied Blocks": 0,                                                  +
       "Local Written Blocks": 0,                                                  +
       "Temp Read Blocks": 0,                                                      +
       "Temp Written Blocks": 0,                                                   +
       "Plans": [                                                                  +
         {                                                                         +
           "Node Type": "Merge Join",                                              +
           "Parent Relationship": "Outer",                                         +
           "Parallel Aware": false,                                                +
           "Join Type": "Inner",                                                   +
           "Startup Cost": 20538.66,                                               +
           "Total Cost": 20538.68,                                                 +
           "Plan Rows": 1,                                                         +
           "Plan Width": 23,                                                       +
           "Actual Startup Time": 5518.120,                                        +
           "Actual Total Time": 5518.415,                                          +
           "Actual Rows": 6,                                                       +
           "Actual Loops": 1,                                                      +
           "Inner Unique": true,                                                   +
           "Merge Cond": "(mk.keyword_id = k.id)",                                 +
           "Shared Hit Blocks": 13,                                                +
           "Shared Read Blocks": 69846,                                            +
           "Shared Dirtied Blocks": 0,                                             +
           "Shared Written Blocks": 0,                                             +
           "Local Hit Blocks": 0,                                                  +
           "Local Read Blocks": 0,                                                 +
           "Local Dirtied Blocks": 0,                                              +
           "Local Written Blocks": 0,                                              +
           "Temp Read Blocks": 0,                                                  +
           "Temp Written Blocks": 0,                                               +
           "Plans": [                                                              +
             {                                                                     +
               "Node Type": "Sort",                                                +
               "Parent Relationship": "Outer",                                     +
               "Parallel Aware": false,                                            +
               "Startup Cost": 20489.13,                                           +
               "Total Cost": 20489.14,                                             +
               "Plan Rows": 105,                                                   +
               "Plan Width": 27,                                                   +
               "Actual Startup Time": 5432.726,                                    +
               "Actual Total Time": 5432.855,                                      +
               "Actual Rows": 1070,                                                +
               "Actual Loops": 1,                                                  +
               "Sort Key": ["mk.keyword_id"],                                      +
               "Sort Method": "quicksort",                                         +
               "Sort Space Used": 129,                                             +
               "Sort Space Type": "Memory",                                        +
               "Shared Hit Blocks": 11,                                            +
               "Shared Read Blocks": 68899,                                        +
               "Shared Dirtied Blocks": 0,                                         +
               "Shared Written Blocks": 0,                                         +
               "Local Hit Blocks": 0,                                              +
               "Local Read Blocks": 0,                                             +
               "Local Dirtied Blocks": 0,                                          +
               "Local Written Blocks": 0,                                          +
               "Temp Read Blocks": 0,                                              +
               "Temp Written Blocks": 0,                                           +
               "Plans": [                                                          +
                 {                                                                 +
                   "Node Type": "Merge Join",                                      +
                   "Parent Relationship": "Outer",                                 +
                   "Parallel Aware": false,                                        +
                   "Join Type": "Inner",                                           +
                   "Startup Cost": 19725.78,                                       +
                   "Total Cost": 20489.02,                                         +
                   "Plan Rows": 105,                                               +
                   "Plan Width": 27,                                               +
                   "Actual Startup Time": 4739.645,                                +
                   "Actual Total Time": 5415.073,                                  +
                   "Actual Rows": 1070,                                            +
                   "Actual Loops": 1,                                              +
                   "Inner Unique": false,                                          +
                   "Merge Cond": "(t.id = mk.movie_id)",                           +
                   "Shared Hit Blocks": 7,                                         +
                   "Shared Read Blocks": 68899,                                    +
                   "Shared Dirtied Blocks": 0,                                     +
                   "Shared Written Blocks": 0,                                     +
                   "Local Hit Blocks": 0,                                          +
                   "Local Read Blocks": 0,                                         +
                   "Local Dirtied Blocks": 0,                                      +
                   "Local Written Blocks": 0,                                      +
                   "Temp Read Blocks": 0,                                          +
                   "Temp Written Blocks": 0,                                       +
                   "Plans": [                                                      +
                     {                                                             +
                       "Node Type": "Merge Join",                                  +
                       "Parent Relationship": "Outer",                             +
                       "Parallel Aware": false,                                    +
                       "Join Type": "Inner",                                       +
                       "Startup Cost": 3114.86,                                    +
                       "Total Cost": 3175.62,                                      +
                       "Plan Rows": 11,                                            +
                       "Plan Width": 31,                                           +
                       "Actual Startup Time": 2519.064,                            +
                       "Actual Total Time": 2616.884,                              +
                       "Actual Rows": 72,                                          +
                       "Actual Loops": 1,                                          +
                       "Inner Unique": true,                                       +
                       "Merge Cond": "(mi_idx.movie_id = t.id)",                   +
                       "Shared Hit Blocks": 4,                                     +
                       "Shared Read Blocks": 44448,                                +
                       "Shared Dirtied Blocks": 0,                                 +
                       "Shared Written Blocks": 0,                                 +
                       "Local Hit Blocks": 0,                                      +
                       "Local Read Blocks": 0,                                     +
                       "Local Dirtied Blocks": 0,                                  +
                       "Local Written Blocks": 0,                                  +
                       "Temp Read Blocks": 0,                                      +
                       "Temp Written Blocks": 0,                                   +
                       "Plans": [                                                  +
                         {                                                         +
                           "Node Type": "Sort",                                    +
                           "Parent Relationship": "Outer",                         +
                           "Parallel Aware": false,                                +
                           "Startup Cost": 484.65,                                 +
                           "Total Cost": 484.65,                                   +
                           "Plan Rows": 69,                                        +
                           "Plan Width": 10,                                       +
                           "Actual Startup Time": 611.408,                         +
                           "Actual Total Time": 611.455,                           +
                           "Actual Rows": 305,                                     +
                           "Actual Loops": 1,                                      +
                           "Sort Key": ["mi_idx.movie_id"],                        +
                           "Sort Method": "quicksort",                             +
                           "Sort Space Used": 39,                                  +
                           "Sort Space Type": "Memory",                            +
                           "Shared Hit Blocks": 3,                                 +
                           "Shared Read Blocks": 8451,                             +
                           "Shared Dirtied Blocks": 0,                             +
                           "Shared Written Blocks": 0,                             +
                           "Local Hit Blocks": 0,                                  +
                           "Local Read Blocks": 0,                                 +
                           "Local Dirtied Blocks": 0,                              +
                           "Local Written Blocks": 0,                              +
                           "Temp Read Blocks": 0,                                  +
                           "Temp Written Blocks": 0,                               +
                           "Plans": [                                              +
                             {                                                     +
                               "Node Type": "Merge Join",                          +
                               "Parent Relationship": "Outer",                     +
                               "Parallel Aware": false,                            +
                               "Join Type": "Inner",                               +
                               "Startup Cost": 483.37,                             +
                               "Total Cost": 484.58,                               +
                               "Plan Rows": 69,                                    +
                               "Plan Width": 10,                                   +
                               "Actual Startup Time": 611.227,                     +
                               "Actual Total Time": 611.303,                       +
                               "Actual Rows": 305,                                 +
                               "Actual Loops": 1,                                  +
                               "Inner Unique": false,                              +
                               "Merge Cond": "(it.id = mi_idx.info_type_id)",      +
                               "Shared Hit Blocks": 3,                             +
                               "Shared Read Blocks": 8451,                         +
                               "Shared Dirtied Blocks": 0,                         +
                               "Shared Written Blocks": 0,                         +
                               "Local Hit Blocks": 0,                              +
                               "Local Read Blocks": 0,                             +
                               "Local Dirtied Blocks": 0,                          +
                               "Local Written Blocks": 0,                          +
                               "Temp Read Blocks": 0,                              +
                               "Temp Written Blocks": 0,                           +
                               "Plans": [                                          +
                                 {                                                 +
                                   "Node Type": "Sort",                            +
                                   "Parent Relationship": "Outer",                 +
                                   "Parallel Aware": false,                        +
                                   "Startup Cost": 0.05,                           +
                                   "Total Cost": 0.05,                             +
                                   "Plan Rows": 1,                                 +
                                   "Plan Width": 4,                                +
                                   "Actual Startup Time": 0.108,                   +
                                   "Actual Total Time": 0.108,                     +
                                   "Actual Rows": 1,                               +
                                   "Actual Loops": 1,                              +
                                   "Sort Key": ["it.id"],                          +
                                   "Sort Method": "quicksort",                     +
                                   "Sort Space Used": 25,                          +
                                   "Sort Space Type": "Memory",                    +
                                   "Shared Hit Blocks": 1,                         +
                                   "Shared Read Blocks": 0,                        +
                                   "Shared Dirtied Blocks": 0,                     +
                                   "Shared Written Blocks": 0,                     +
                                   "Local Hit Blocks": 0,                          +
                                   "Local Read Blocks": 0,                         +
                                   "Local Dirtied Blocks": 0,                      +
                                   "Local Written Blocks": 0,                      +
                                   "Temp Read Blocks": 0,                          +
                                   "Temp Written Blocks": 0,                       +
                                   "Plans": [                                      +
                                     {                                             +
                                       "Node Type": "Seq Scan",                    +
                                       "Parent Relationship": "Outer",             +
                                       "Parallel Aware": false,                    +
                                       "Relation Name": "info_type",               +
                                       "Alias": "it",                              +
                                       "Startup Cost": 0.00,                       +
                                       "Total Cost": 0.05,                         +
                                       "Plan Rows": 1,                             +
                                       "Plan Width": 4,                            +
                                       "Actual Startup Time": 0.086,               +
                                       "Actual Total Time": 0.091,                 +
                                       "Actual Rows": 1,                           +
                                       "Actual Loops": 1,                          +
                                       "Filter": "((info)::text = 'rating'::text)",+
                                       "Rows Removed by Filter": 112,              +
                                       "Shared Hit Blocks": 1,                     +
                                       "Shared Read Blocks": 0,                    +
                                       "Shared Dirtied Blocks": 0,                 +
                                       "Shared Written Blocks": 0,                 +
                                       "Local Hit Blocks": 0,                      +
                                       "Local Read Blocks": 0,                     +
                                       "Local Dirtied Blocks": 0,                  +
                                       "Local Written Blocks": 0,                  +
                                       "Temp Read Blocks": 0,                      +
                                       "Temp Written Blocks": 0                    +
                                     }                                             +
                                   ]                                               +
                                 },                                                +
                                 {                                                 +
                                   "Node Type": "Sort",                            +
                                   "Parent Relationship": "Inner",                 +
                                   "Parallel Aware": false,                        +
                                   "Startup Cost": 483.32,                         +
                                   "Total Cost": 483.92,                           +
                                   "Plan Rows": 7778,                              +
                                   "Plan Width": 14,                               +
                                   "Actual Startup Time": 609.949,                 +
                                   "Actual Total Time": 610.314,                   +
                                   "Actual Rows": 7785,                            +
                                   "Actual Loops": 1,                              +
                                   "Sort Key": ["mi_idx.info_type_id"],            +
                                   "Sort Method": "quicksort",                     +
                                   "Sort Space Used": 565,                         +
                                   "Sort Space Type": "Memory",                    +
                                   "Shared Hit Blocks": 2,                         +
                                   "Shared Read Blocks": 8451,                     +
                                   "Shared Dirtied Blocks": 0,                     +
                                   "Shared Written Blocks": 0,                     +
                                   "Local Hit Blocks": 0,                          +
                                   "Local Read Blocks": 0,                         +
                                   "Local Dirtied Blocks": 0,                      +
                                   "Local Written Blocks": 0,                      +
                                   "Temp Read Blocks": 0,                          +
                                   "Temp Written Blocks": 0,                       +
                                   "Plans": [                                      +
                                     {                                             +
                                       "Node Type": "Seq Scan",                    +
                                       "Parent Relationship": "Outer",             +
                                       "Parallel Aware": false,                    +
                                       "Relation Name": "movie_info_idx",          +
                                       "Alias": "mi_idx",                          +
                                       "Startup Cost": 0.00,                       +
                                       "Total Cost": 467.71,                       +
                                       "Plan Rows": 7778,                          +
                                       "Plan Width": 14,                           +
                                       "Actual Startup Time": 0.507,               +
                                       "Actual Total Time": 605.356,               +
                                       "Actual Rows": 7793,                        +
                                       "Actual Loops": 1,                          +
                                       "Filter": "(info > '9.0'::text)",           +
                                       "Rows Removed by Filter": 1372242,          +
                                       "Shared Hit Blocks": 2,                     +
                                       "Shared Read Blocks": 8451,                 +
                                       "Shared Dirtied Blocks": 0,                 +
                                       "Shared Written Blocks": 0,                 +
                                       "Local Hit Blocks": 0,                      +
                                       "Local Read Blocks": 0,                     +
                                       "Local Dirtied Blocks": 0,                  +
                                       "Local Written Blocks": 0,                  +
                                       "Temp Read Blocks": 0,                      +
                                       "Temp Written Blocks": 0                    +
                                     }                                             +
                                   ]                                               +
                                 }                                                 +
                               ]                                                   +
                             }                                                     +
                           ]                                                       +
                         },                                                        +
                         {                                                         +
                           "Node Type": "Sort",                                    +
                           "Parent Relationship": "Inner",                         +
                           "Parallel Aware": false,                                +
                           "Startup Cost": 2630.21,                                +
                           "Total Cost": 2660.62,                                  +
                           "Plan Rows": 391667,                                    +
                           "Plan Width": 21,                                       +
                           "Actual Startup Time": 1905.279,                        +
                           "Actual Total Time": 1951.685,                          +
                           "Actual Rows": 389749,                                  +
                           "Actual Loops": 1,                                      +
                           "Sort Key": ["t.id"],                                   +
                           "Sort Method": "quicksort",                             +
                           "Sort Space Used": 39792,                               +
                           "Sort Space Type": "Memory",                            +
                           "Shared Hit Blocks": 1,                                 +
                           "Shared Read Blocks": 35997,                            +
                           "Shared Dirtied Blocks": 0,                             +
                           "Shared Written Blocks": 0,                             +
                           "Local Hit Blocks": 0,                                  +
                           "Local Read Blocks": 0,                                 +
                           "Local Dirtied Blocks": 0,                              +
                           "Local Written Blocks": 0,                              +
                           "Temp Read Blocks": 0,                                  +
                           "Temp Written Blocks": 0,                               +
                           "Plans": [                                              +
                             {                                                     +
                               "Node Type": "Seq Scan",                            +
                               "Parent Relationship": "Outer",                     +
                               "Parallel Aware": false,                            +
                               "Relation Name": "title",                           +
                               "Alias": "t",                                       +
                               "Startup Cost": 0.00,                               +
                               "Total Cost": 1500.26,                              +
                               "Plan Rows": 391667,                                +
                               "Plan Width": 21,                                   +
                               "Actual Startup Time": 26.188,                      +
                               "Actual Total Time": 1646.084,                      +
                               "Actual Rows": 391666,                              +
                               "Actual Loops": 1,                                  +
                               "Filter": "(production_year > 2010)",               +
                               "Rows Removed by Filter": 2136646,                  +
                               "Shared Hit Blocks": 1,                             +
                               "Shared Read Blocks": 35997,                        +
                               "Shared Dirtied Blocks": 0,                         +
                               "Shared Written Blocks": 0,                         +
                               "Local Hit Blocks": 0,                              +
                               "Local Read Blocks": 0,                             +
                               "Local Dirtied Blocks": 0,                          +
                               "Local Written Blocks": 0,                          +
                               "Temp Read Blocks": 0,                              +
                               "Temp Written Blocks": 0                            +
                             }                                                     +
                           ]                                                       +
                         }                                                         +
                       ]                                                           +
                     },                                                            +
                     {                                                             +
                       "Node Type": "Sort",                                        +
                       "Parent Relationship": "Inner",                             +
                       "Parallel Aware": false,                                    +
                       "Startup Cost": 16610.92,                                   +
                       "Total Cost": 16962.16,                                     +
                       "Plan Rows": 4523930,                                       +
                       "Plan Width": 8,                                            +
                       "Actual Startup Time": 2201.032,                            +
                       "Actual Total Time": 2404.835,                              +
                       "Actual Rows": 4198825,                                     +
                       "Actual Loops": 1,                                          +
                       "Sort Key": ["mk.movie_id"],                                +
                       "Sort Method": "quicksort",                                 +
                       "Sort Space Used": 408668,                                  +
                       "Sort Space Type": "Memory",                                +
                       "Shared Hit Blocks": 3,                                     +
                       "Shared Read Blocks": 24451,                                +
                       "Shared Dirtied Blocks": 0,                                 +
                       "Shared Written Blocks": 0,                                 +
                       "Local Hit Blocks": 0,                                      +
                       "Local Read Blocks": 0,                                     +
                       "Local Dirtied Blocks": 0,                                  +
                       "Local Written Blocks": 0,                                  +
                       "Temp Read Blocks": 0,                                      +
                       "Temp Written Blocks": 0,                                   +
                       "Plans": [                                                  +
                         {                                                         +
                           "Node Type": "Seq Scan",                                +
                           "Parent Relationship": "Outer",                         +
                           "Parallel Aware": false,                                +
                           "Relation Name": "movie_keyword",                       +
                           "Alias": "mk",                                          +
                           "Startup Cost": 0.00,                                   +
                           "Total Cost": 1079.84,                                  +
                           "Plan Rows": 4523930,                                   +
                           "Plan Width": 8,                                        +
                           "Actual Startup Time": 0.010,                           +
                           "Actual Total Time": 816.639,                           +
                           "Actual Rows": 4523930,                                 +
                           "Actual Loops": 1,                                      +
                           "Shared Hit Blocks": 3,                                 +
                           "Shared Read Blocks": 24451,                            +
                           "Shared Dirtied Blocks": 0,                             +
                           "Shared Written Blocks": 0,                             +
                           "Local Hit Blocks": 0,                                  +
                           "Local Read Blocks": 0,                                 +
                           "Local Dirtied Blocks": 0,                              +
                           "Local Written Blocks": 0,                              +
                           "Temp Read Blocks": 0,                                  +
                           "Temp Written Blocks": 0                                +
                         }                                                         +
                       ]                                                           +
                     }                                                             +
                   ]                                                               +
                 }                                                                 +
               ]                                                                   +
             },                                                                    +
             {                                                                     +
               "Node Type": "Sort",                                                +
               "Parent Relationship": "Inner",                                     +
               "Parallel Aware": false,                                            +
               "Startup Cost": 49.52,                                              +
               "Total Cost": 49.53,                                                +
               "Plan Rows": 67,                                                    +
               "Plan Width": 4,                                                    +
               "Actual Startup Time": 85.360,                                      +
               "Actual Total Time": 85.362,                                        +
               "Actual Rows": 26,                                                  +
               "Actual Loops": 1,                                                  +
               "Sort Key": ["k.id"],                                               +
               "Sort Method": "quicksort",                                         +
               "Sort Space Used": 26,                                              +
               "Sort Space Type": "Memory",                                        +
               "Shared Hit Blocks": 2,                                             +
               "Shared Read Blocks": 947,                                          +
               "Shared Dirtied Blocks": 0,                                         +
               "Shared Written Blocks": 0,                                         +
               "Local Hit Blocks": 0,                                              +
               "Local Read Blocks": 0,                                             +
               "Local Dirtied Blocks": 0,                                          +
               "Local Written Blocks": 0,                                          +
               "Temp Read Blocks": 0,                                              +
               "Temp Written Blocks": 0,                                           +
               "Plans": [                                                          +
                 {                                                                 +
                   "Node Type": "Seq Scan",                                        +
                   "Parent Relationship": "Outer",                                 +
                   "Parallel Aware": false,                                        +
                   "Relation Name": "keyword",                                     +
                   "Alias": "k",                                                   +
                   "Startup Cost": 0.00,                                           +
                   "Total Cost": 49.46,                                            +
                   "Plan Rows": 67,                                                +
                   "Plan Width": 4,                                                +
                   "Actual Startup Time": 25.160,                                  +
                   "Actual Total Time": 85.313,                                    +
                   "Actual Rows": 30,                                              +
                   "Actual Loops": 1,                                              +
                   "Filter": "(keyword ~~ '%sequel%'::text)",                      +
                   "Rows Removed by Filter": 134140,                               +
                   "Shared Hit Blocks": 2,                                         +
                   "Shared Read Blocks": 947,                                      +
                   "Shared Dirtied Blocks": 0,                                     +
                   "Shared Written Blocks": 0,                                     +
                   "Local Hit Blocks": 0,                                          +
                   "Local Read Blocks": 0,                                         +
                   "Local Dirtied Blocks": 0,                                      +
                   "Local Written Blocks": 0,                                      +
                   "Temp Read Blocks": 0,                                          +
                   "Temp Written Blocks": 0                                        +
                 }                                                                 +
               ]                                                                   +
             }                                                                     +
           ]                                                                       +
         }                                                                         +
       ]                                                                           +
     },                                                                            +
     "Planning Time": 2382.500,                                                    +
     "Triggers": [                                                                 +
     ],                                                                            +
     "Execution Time": 5582.786                                                    +
   }                                                                               +
 ]
(1 row)

