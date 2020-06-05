                                                                 QUERY PLAN                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                          +
   {                                                                                                                                        +
     "Plan": {                                                                                                                              +
       "Node Type": "Aggregate",                                                                                                            +
       "Strategy": "Plain",                                                                                                                 +
       "Partial Mode": "Simple",                                                                                                            +
       "Parallel Aware": false,                                                                                                             +
       "Startup Cost": 13042.23,                                                                                                            +
       "Total Cost": 13042.23,                                                                                                              +
       "Plan Rows": 1,                                                                                                                      +
       "Plan Width": 32,                                                                                                                    +
       "Actual Startup Time": 2912.468,                                                                                                     +
       "Actual Total Time": 2912.468,                                                                                                       +
       "Actual Rows": 1,                                                                                                                    +
       "Actual Loops": 1,                                                                                                                   +
       "Shared Hit Blocks": 7,                                                                                                              +
       "Shared Read Blocks": 54784,                                                                                                         +
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
           "Startup Cost": 13042.23,                                                                                                        +
           "Total Cost": 13042.23,                                                                                                          +
           "Plan Rows": 1,                                                                                                                  +
           "Plan Width": 17,                                                                                                                +
           "Actual Startup Time": 2912.441,                                                                                                 +
           "Actual Total Time": 2912.441,                                                                                                   +
           "Actual Rows": 0,                                                                                                                +
           "Actual Loops": 1,                                                                                                               +
           "Inner Unique": true,                                                                                                            +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                    +
           "Shared Hit Blocks": 7,                                                                                                          +
           "Shared Read Blocks": 54784,                                                                                                     +
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
               "Startup Cost": 13042.20,                                                                                                    +
               "Total Cost": 13042.20,                                                                                                      +
               "Plan Rows": 5,                                                                                                              +
               "Plan Width": 21,                                                                                                            +
               "Actual Startup Time": 2912.440,                                                                                             +
               "Actual Total Time": 2912.440,                                                                                               +
               "Actual Rows": 0,                                                                                                            +
               "Actual Loops": 1,                                                                                                           +
               "Sort Key": ["mc.company_type_id"],                                                                                          +
               "Sort Method": "quicksort",                                                                                                  +
               "Sort Space Used": 25,                                                                                                       +
               "Sort Space Type": "Memory",                                                                                                 +
               "Shared Hit Blocks": 7,                                                                                                      +
               "Shared Read Blocks": 54784,                                                                                                 +
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
                   "Startup Cost": 13042.18,                                                                                                +
                   "Total Cost": 13042.20,                                                                                                  +
                   "Plan Rows": 5,                                                                                                          +
                   "Plan Width": 21,                                                                                                        +
                   "Actual Startup Time": 2902.870,                                                                                         +
                   "Actual Total Time": 2902.870,                                                                                           +
                   "Actual Rows": 0,                                                                                                        +
                   "Actual Loops": 1,                                                                                                       +
                   "Inner Unique": true,                                                                                                    +
                   "Merge Cond": "(mi.info_type_id = it.id)",                                                                               +
                   "Shared Hit Blocks": 3,                                                                                                  +
                   "Shared Read Blocks": 54784,                                                                                             +
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
                       "Node Type": "Sort",                                                                                                 +
                       "Parent Relationship": "Outer",                                                                                      +
                       "Parallel Aware": false,                                                                                             +
                       "Startup Cost": 13042.02,                                                                                            +
                       "Total Cost": 13042.02,                                                                                              +
                       "Plan Rows": 5,                                                                                                      +
                       "Plan Width": 25,                                                                                                    +
                       "Actual Startup Time": 2902.869,                                                                                     +
                       "Actual Total Time": 2902.869,                                                                                       +
                       "Actual Rows": 0,                                                                                                    +
                       "Actual Loops": 1,                                                                                                   +
                       "Sort Key": ["mi.info_type_id"],                                                                                     +
                       "Sort Method": "quicksort",                                                                                          +
                       "Sort Space Used": 25,                                                                                               +
                       "Sort Space Type": "Memory",                                                                                         +
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
                           "Node Type": "Merge Join",                                                                                       +
                           "Parent Relationship": "Outer",                                                                                  +
                           "Parallel Aware": false,                                                                                         +
                           "Join Type": "Inner",                                                                                            +
                           "Startup Cost": 12895.67,                                                                                        +
                           "Total Cost": 13042.02,                                                                                          +
                           "Plan Rows": 5,                                                                                                  +
                           "Plan Width": 25,                                                                                                +
                           "Actual Startup Time": 2902.850,                                                                                 +
                           "Actual Total Time": 2902.850,                                                                                   +
                           "Actual Rows": 0,                                                                                                +
                           "Actual Loops": 1,                                                                                               +
                           "Inner Unique": false,                                                                                           +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                            +
                           "Shared Hit Blocks": 3,                                                                                          +
                           "Shared Read Blocks": 54784,                                                                                     +
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
                               "Startup Cost": 4007.72,                                                                                     +
                               "Total Cost": 4068.48,                                                                                       +
                               "Plan Rows": 7,                                                                                              +
                               "Plan Width": 29,                                                                                            +
                               "Actual Startup Time": 2902.849,                                                                             +
                               "Actual Total Time": 2902.849,                                                                               +
                               "Actual Rows": 0,                                                                                            +
                               "Actual Loops": 1,                                                                                           +
                               "Inner Unique": true,                                                                                        +
                               "Merge Cond": "(mc.movie_id = t.id)",                                                                        +
                               "Shared Hit Blocks": 3,                                                                                      +
                               "Shared Read Blocks": 54784,                                                                                 +
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
                                   "Node Type": "Sort",                                                                                     +
                                   "Parent Relationship": "Outer",                                                                          +
                                   "Parallel Aware": false,                                                                                 +
                                   "Startup Cost": 1377.51,                                                                                 +
                                   "Total Cost": 1377.51,                                                                                   +
                                   "Plan Rows": 46,                                                                                         +
                                   "Plan Width": 8,                                                                                         +
                                   "Actual Startup Time": 914.990,                                                                          +
                                   "Actual Total Time": 915.124,                                                                            +
                                   "Actual Rows": 1418,                                                                                     +
                                   "Actual Loops": 1,                                                                                       +
                                   "Sort Key": ["mc.movie_id"],                                                                             +
                                   "Sort Method": "quicksort",                                                                              +
                                   "Sort Space Used": 115,                                                                                  +
                                   "Sort Space Type": "Memory",                                                                             +
                                   "Shared Hit Blocks": 2,                                                                                  +
                                   "Shared Read Blocks": 18787,                                                                             +
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
                                       "Relation Name": "movie_companies",                                                                  +
                                       "Alias": "mc",                                                                                       +
                                       "Startup Cost": 0.00,                                                                                +
                                       "Total Cost": 1377.47,                                                                               +
                                       "Plan Rows": 46,                                                                                     +
                                       "Plan Width": 8,                                                                                     +
                                       "Actual Startup Time": 31.718,                                                                       +
                                       "Actual Total Time": 914.276,                                                                        +
                                       "Actual Rows": 1418,                                                                                 +
                                       "Actual Loops": 1,                                                                                   +
                                       "Filter": "((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))",+
                                       "Rows Removed by Filter": 2607711,                                                                   +
                                       "Shared Hit Blocks": 2,                                                                              +
                                       "Shared Read Blocks": 18787,                                                                         +
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
                                 },                                                                                                         +
                                 {                                                                                                          +
                                   "Node Type": "Sort",                                                                                     +
                                   "Parent Relationship": "Inner",                                                                          +
                                   "Parallel Aware": false,                                                                                 +
                                   "Startup Cost": 2630.21,                                                                                 +
                                   "Total Cost": 2660.62,                                                                                   +
                                   "Plan Rows": 391667,                                                                                     +
                                   "Plan Width": 21,                                                                                        +
                                   "Actual Startup Time": 1893.105,                                                                         +
                                   "Actual Total Time": 1934.215,                                                                           +
                                   "Actual Rows": 391292,                                                                                   +
                                   "Actual Loops": 1,                                                                                       +
                                   "Sort Key": ["t.id"],                                                                                    +
                                   "Sort Method": "quicksort",                                                                              +
                                   "Sort Space Used": 39792,                                                                                +
                                   "Sort Space Type": "Memory",                                                                             +
                                   "Shared Hit Blocks": 1,                                                                                  +
                                   "Shared Read Blocks": 35997,                                                                             +
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
                                       "Relation Name": "title",                                                                            +
                                       "Alias": "t",                                                                                        +
                                       "Startup Cost": 0.00,                                                                                +
                                       "Total Cost": 1500.26,                                                                               +
                                       "Plan Rows": 391667,                                                                                 +
                                       "Plan Width": 21,                                                                                    +
                                       "Actual Startup Time": 5.855,                                                                        +
                                       "Actual Total Time": 1618.807,                                                                       +
                                       "Actual Rows": 391666,                                                                               +
                                       "Actual Loops": 1,                                                                                   +
                                       "Filter": "(production_year > 2010)",                                                                +
                                       "Rows Removed by Filter": 2136646,                                                                   +
                                       "Shared Hit Blocks": 1,                                                                              +
                                       "Shared Read Blocks": 35997,                                                                         +
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
                             },                                                                                                             +
                             {                                                                                                              +
                               "Node Type": "Sort",                                                                                         +
                               "Parent Relationship": "Inner",                                                                              +
                               "Parallel Aware": false,                                                                                     +
                               "Startup Cost": 8887.95,                                                                                     +
                               "Total Cost": 8930.74,                                                                                       +
                               "Plan Rows": 551163,                                                                                         +
                               "Plan Width": 8,                                                                                             +
                               "Actual Startup Time": 0.000,                                                                                +
                               "Actual Total Time": 0.000,                                                                                  +
                               "Actual Rows": 0,                                                                                            +
                               "Actual Loops": 0,                                                                                           +
                               "Sort Key": ["mi.movie_id"],                                                                                 +
                               "Shared Hit Blocks": 0,                                                                                      +
                               "Shared Read Blocks": 0,                                                                                     +
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
                                   "Node Type": "Seq Scan",                                                                                 +
                                   "Parent Relationship": "Outer",                                                                          +
                                   "Parallel Aware": false,                                                                                 +
                                   "Relation Name": "movie_info",                                                                           +
                                   "Alias": "mi",                                                                                           +
                                   "Startup Cost": 0.00,                                                                                    +
                                   "Total Cost": 7255.68,                                                                                   +
                                   "Plan Rows": 551163,                                                                                     +
                                   "Plan Width": 8,                                                                                         +
                                   "Actual Startup Time": 0.000,                                                                            +
                                   "Actual Total Time": 0.000,                                                                              +
                                   "Actual Rows": 0,                                                                                        +
                                   "Actual Loops": 0,                                                                                       +
                                   "Filter": "(info = ANY ('{USA,America}'::text[]))",                                                      +
                                   "Rows Removed by Filter": 0,                                                                             +
                                   "Shared Hit Blocks": 0,                                                                                  +
                                   "Shared Read Blocks": 0,                                                                                 +
                                   "Shared Dirtied Blocks": 0,                                                                              +
                                   "Shared Written Blocks": 0,                                                                              +
                                   "Local Hit Blocks": 0,                                                                                   +
                                   "Local Read Blocks": 0,                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                               +
                                   "Local Written Blocks": 0,                                                                               +
                                   "Temp Read Blocks": 0,                                                                                   +
                                   "Temp Written Blocks": 0                                                                                 +
                                 }                                                                                                          +
                               ]                                                                                                            +
                             }                                                                                                              +
                           ]                                                                                                                +
                         }                                                                                                                  +
                       ]                                                                                                                    +
                     },                                                                                                                     +
                     {                                                                                                                      +
                       "Node Type": "Sort",                                                                                                 +
                       "Parent Relationship": "Inner",                                                                                      +
                       "Parallel Aware": false,                                                                                             +
                       "Startup Cost": 0.16,                                                                                                +
                       "Total Cost": 0.17,                                                                                                  +
                       "Plan Rows": 113,                                                                                                    +
                       "Plan Width": 4,                                                                                                     +
                       "Actual Startup Time": 0.000,                                                                                        +
                       "Actual Total Time": 0.000,                                                                                          +
                       "Actual Rows": 0,                                                                                                    +
                       "Actual Loops": 0,                                                                                                   +
                       "Sort Key": ["it.id"],                                                                                               +
                       "Shared Hit Blocks": 0,                                                                                              +
                       "Shared Read Blocks": 0,                                                                                             +
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
                           "Relation Name": "info_type",                                                                                    +
                           "Alias": "it",                                                                                                   +
                           "Startup Cost": 0.00,                                                                                            +
                           "Total Cost": 0.04,                                                                                              +
                           "Plan Rows": 113,                                                                                                +
                           "Plan Width": 4,                                                                                                 +
                           "Actual Startup Time": 0.000,                                                                                    +
                           "Actual Total Time": 0.000,                                                                                      +
                           "Actual Rows": 0,                                                                                                +
                           "Actual Loops": 0,                                                                                               +
                           "Shared Hit Blocks": 0,                                                                                          +
                           "Shared Read Blocks": 0,                                                                                         +
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
               "Startup Cost": 0.03,                                                                                                        +
               "Total Cost": 0.03,                                                                                                          +
               "Plan Rows": 1,                                                                                                              +
               "Plan Width": 4,                                                                                                             +
               "Actual Startup Time": 0.000,                                                                                                +
               "Actual Total Time": 0.000,                                                                                                  +
               "Actual Rows": 0,                                                                                                            +
               "Actual Loops": 0,                                                                                                           +
               "Sort Key": ["ct.id"],                                                                                                       +
               "Shared Hit Blocks": 0,                                                                                                      +
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
                   "Relation Name": "company_type",                                                                                         +
                   "Alias": "ct",                                                                                                           +
                   "Startup Cost": 0.00,                                                                                                    +
                   "Total Cost": 0.03,                                                                                                      +
                   "Plan Rows": 1,                                                                                                          +
                   "Plan Width": 4,                                                                                                         +
                   "Actual Startup Time": 0.000,                                                                                            +
                   "Actual Total Time": 0.000,                                                                                              +
                   "Actual Rows": 0,                                                                                                        +
                   "Actual Loops": 0,                                                                                                       +
                   "Filter": "((kind)::text = 'production companies'::text)",                                                               +
                   "Rows Removed by Filter": 0,                                                                                             +
                   "Shared Hit Blocks": 0,                                                                                                  +
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
     "Planning Time": 1937.254,                                                                                                             +
     "Triggers": [                                                                                                                          +
     ],                                                                                                                                     +
     "Execution Time": 2939.821                                                                                                             +
   }                                                                                                                                        +
 ]
(1 row)

