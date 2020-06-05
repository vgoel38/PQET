                                QUERY PLAN                                
--------------------------------------------------------------------------
 [                                                                       +
   {                                                                     +
     "Plan": {                                                           +
       "Node Type": "Aggregate",                                         +
       "Strategy": "Plain",                                              +
       "Partial Mode": "Simple",                                         +
       "Parallel Aware": false,                                          +
       "Startup Cost": 27318.62,                                         +
       "Total Cost": 27318.62,                                           +
       "Plan Rows": 1,                                                   +
       "Plan Width": 32,                                                 +
       "Actual Startup Time": 13946.252,                                 +
       "Actual Total Time": 13946.252,                                   +
       "Actual Rows": 1,                                                 +
       "Actual Loops": 1,                                                +
       "Shared Hit Blocks": 12,                                          +
       "Shared Read Blocks": 223285,                                     +
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
           "Startup Cost": 27257.12,                                     +
           "Total Cost": 27318.62,                                       +
           "Plan Rows": 2,                                               +
           "Plan Width": 17,                                             +
           "Actual Startup Time": 13916.141,                             +
           "Actual Total Time": 13946.202,                               +
           "Actual Rows": 5,                                             +
           "Actual Loops": 1,                                            +
           "Inner Unique": true,                                         +
           "Merge Cond": "(mi.movie_id = t.id)",                         +
           "Shared Hit Blocks": 12,                                      +
           "Shared Read Blocks": 223285,                                 +
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
               "Startup Cost": 24626.91,                                 +
               "Total Cost": 24627.64,                                   +
               "Plan Rows": 14,                                          +
               "Plan Width": 8,                                          +
               "Actual Startup Time": 12043.518,                         +
               "Actual Total Time": 12046.735,                           +
               "Actual Rows": 21,                                        +
               "Actual Loops": 1,                                        +
               "Inner Unique": false,                                    +
               "Merge Cond": "(mk.movie_id = mi.movie_id)",              +
               "Shared Hit Blocks": 11,                                  +
               "Shared Read Blocks": 187288,                             +
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
                   "Actual Startup Time": 3621.221,                      +
                   "Actual Total Time": 3622.739,                        +
                   "Actual Rows": 12911,                                 +
                   "Actual Loops": 1,                                    +
                   "Sort Key": ["mk.movie_id"],                          +
                   "Sort Method": "quicksort",                           +
                   "Sort Space Used": 992,                               +
                   "Sort Space Type": "Memory",                          +
                   "Shared Hit Blocks": 9,                               +
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
                       "Actual Startup Time": 2535.667,                  +
                       "Actual Total Time": 3599.867,                    +
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
                           "Actual Startup Time": 83.457,                +
                           "Actual Total Time": 83.465,                  +
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
                               "Actual Startup Time": 23.764,            +
                               "Actual Total Time": 83.414,              +
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
                           "Actual Startup Time": 2302.329,              +
                           "Actual Total Time": 2974.742,                +
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
                               "Actual Startup Time": 0.007,             +
                               "Actual Total Time": 844.363,             +
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
                   "Startup Cost": 7259.92,                              +
                   "Total Cost": 7260.11,                                +
                   "Plan Rows": 2428,                                    +
                   "Plan Width": 4,                                      +
                   "Actual Startup Time": 8422.109,                      +
                   "Actual Total Time": 8422.304,                        +
                   "Actual Rows": 2292,                                  +
                   "Actual Loops": 1,                                    +
                   "Sort Key": ["mi.movie_id"],                          +
                   "Sort Method": "quicksort",                           +
                   "Sort Space Used": 204,                               +
                   "Sort Space Type": "Memory",                          +
                   "Shared Hit Blocks": 2,                               +
                   "Shared Read Blocks": 161890,                         +
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
                       "Relation Name": "movie_info",                    +
                       "Alias": "mi",                                    +
                       "Startup Cost": 0.00,                             +
                       "Total Cost": 7255.68,                            +
                       "Plan Rows": 2428,                                +
                       "Plan Width": 4,                                  +
                       "Actual Startup Time": 359.108,                   +
                       "Actual Total Time": 8420.433,                    +
                       "Actual Rows": 2287,                              +
                       "Actual Loops": 1,                                +
                       "Filter": "(info = 'Bulgaria'::text)",            +
                       "Rows Removed by Filter": 14833433,               +
                       "Shared Hit Blocks": 2,                           +
                       "Shared Read Blocks": 161890,                     +
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
               "Startup Cost": 2630.21,                                  +
               "Total Cost": 2660.62,                                    +
               "Plan Rows": 391667,                                      +
               "Plan Width": 21,                                         +
               "Actual Startup Time": 1806.005,                          +
               "Actual Total Time": 1847.850,                            +
               "Actual Rows": 383537,                                    +
               "Actual Loops": 1,                                        +
               "Sort Key": ["t.id"],                                     +
               "Sort Method": "quicksort",                               +
               "Sort Space Used": 39792,                                 +
               "Sort Space Type": "Memory",                              +
               "Shared Hit Blocks": 1,                                   +
               "Shared Read Blocks": 35997,                              +
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
                   "Relation Name": "title",                             +
                   "Alias": "t",                                         +
                   "Startup Cost": 0.00,                                 +
                   "Total Cost": 1500.26,                                +
                   "Plan Rows": 391667,                                  +
                   "Plan Width": 21,                                     +
                   "Actual Startup Time": 19.055,                        +
                   "Actual Total Time": 1546.336,                        +
                   "Actual Rows": 391666,                                +
                   "Actual Loops": 1,                                    +
                   "Filter": "(production_year > 2010)",                 +
                   "Rows Removed by Filter": 2136646,                    +
                   "Shared Hit Blocks": 1,                               +
                   "Shared Read Blocks": 35997,                          +
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
     "Planning Time": 2209.537,                                          +
     "Triggers": [                                                       +
     ],                                                                  +
     "Execution Time": 14025.014                                         +
   }                                                                     +
 ]
(1 row)

