                                              QUERY PLAN                                              
------------------------------------------------------------------------------------------------------
 [                                                                                                   +
   {                                                                                                 +
     "Plan": {                                                                                       +
       "Node Type": "Aggregate",                                                                     +
       "Strategy": "Plain",                                                                          +
       "Partial Mode": "Simple",                                                                     +
       "Parallel Aware": false,                                                                      +
       "Startup Cost": 14359.76,                                                                     +
       "Total Cost": 14359.76,                                                                       +
       "Plan Rows": 1,                                                                               +
       "Plan Width": 68,                                                                             +
       "Actual Startup Time": 4497.442,                                                              +
       "Actual Total Time": 4497.442,                                                                +
       "Actual Rows": 1,                                                                             +
       "Actual Loops": 1,                                                                            +
       "Shared Hit Blocks": 11,                                                                      +
       "Shared Read Blocks": 63235,                                                                  +
       "Shared Dirtied Blocks": 0,                                                                   +
       "Shared Written Blocks": 0,                                                                   +
       "Local Hit Blocks": 0,                                                                        +
       "Local Read Blocks": 0,                                                                       +
       "Local Dirtied Blocks": 0,                                                                    +
       "Local Written Blocks": 0,                                                                    +
       "Temp Read Blocks": 0,                                                                        +
       "Temp Written Blocks": 0,                                                                     +
       "Plans": [                                                                                    +
         {                                                                                           +
           "Node Type": "Merge Join",                                                                +
           "Parent Relationship": "Outer",                                                           +
           "Parallel Aware": false,                                                                  +
           "Join Type": "Inner",                                                                     +
           "Startup Cost": 14358.78,                                                                 +
           "Total Cost": 14359.51,                                                                   +
           "Plan Rows": 1069,                                                                        +
           "Plan Width": 45,                                                                         +
           "Actual Startup Time": 4497.389,                                                          +
           "Actual Total Time": 4497.390,                                                            +
           "Actual Rows": 3,                                                                         +
           "Actual Loops": 1,                                                                        +
           "Inner Unique": true,                                                                     +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                             +
           "Shared Hit Blocks": 11,                                                                  +
           "Shared Read Blocks": 63235,                                                              +
           "Shared Dirtied Blocks": 0,                                                               +
           "Shared Written Blocks": 0,                                                               +
           "Local Hit Blocks": 0,                                                                    +
           "Local Read Blocks": 0,                                                                   +
           "Local Dirtied Blocks": 0,                                                                +
           "Local Written Blocks": 0,                                                                +
           "Temp Read Blocks": 0,                                                                    +
           "Temp Written Blocks": 0,                                                                 +
           "Plans": [                                                                                +
             {                                                                                       +
               "Node Type": "Sort",                                                                  +
               "Parent Relationship": "Outer",                                                       +
               "Parallel Aware": false,                                                              +
               "Startup Cost": 14358.74,                                                             +
               "Total Cost": 14359.08,                                                               +
               "Plan Rows": 4277,                                                                    +
               "Plan Width": 49,                                                                     +
               "Actual Startup Time": 4497.350,                                                      +
               "Actual Total Time": 4497.354,                                                        +
               "Actual Rows": 66,                                                                    +
               "Actual Loops": 1,                                                                    +
               "Sort Key": ["mc.company_type_id"],                                                   +
               "Sort Method": "quicksort",                                                           +
               "Sort Space Used": 33,                                                                +
               "Sort Space Type": "Memory",                                                          +
               "Shared Hit Blocks": 10,                                                              +
               "Shared Read Blocks": 63235,                                                          +
               "Shared Dirtied Blocks": 0,                                                           +
               "Shared Written Blocks": 0,                                                           +
               "Local Hit Blocks": 0,                                                                +
               "Local Read Blocks": 0,                                                               +
               "Local Dirtied Blocks": 0,                                                            +
               "Local Written Blocks": 0,                                                            +
               "Temp Read Blocks": 0,                                                                +
               "Temp Written Blocks": 0,                                                             +
               "Plans": [                                                                            +
                 {                                                                                   +
                   "Node Type": "Merge Join",                                                        +
                   "Parent Relationship": "Outer",                                                   +
                   "Parallel Aware": false,                                                          +
                   "Join Type": "Inner",                                                             +
                   "Startup Cost": 14029.60,                                                         +
                   "Total Cost": 14350.73,                                                           +
                   "Plan Rows": 4277,                                                                +
                   "Plan Width": 49,                                                                 +
                   "Actual Startup Time": 4335.646,                                                  +
                   "Actual Total Time": 4479.948,                                                    +
                   "Actual Rows": 66,                                                                +
                   "Actual Loops": 1,                                                                +
                   "Inner Unique": false,                                                            +
                   "Merge Cond": "(t.id = mc.movie_id)",                                             +
                   "Shared Hit Blocks": 6,                                                           +
                   "Shared Read Blocks": 63235,                                                      +
                   "Shared Dirtied Blocks": 0,                                                       +
                   "Shared Written Blocks": 0,                                                       +
                   "Local Hit Blocks": 0,                                                            +
                   "Local Read Blocks": 0,                                                           +
                   "Local Dirtied Blocks": 0,                                                        +
                   "Local Written Blocks": 0,                                                        +
                   "Temp Read Blocks": 0,                                                            +
                   "Temp Written Blocks": 0,                                                         +
                   "Plans": [                                                                        +
                     {                                                                               +
                       "Node Type": "Merge Join",                                                    +
                       "Parent Relationship": "Outer",                                               +
                       "Parallel Aware": false,                                                      +
                       "Join Type": "Inner",                                                         +
                       "Startup Cost": 8832.04,                                                      +
                       "Total Cost": 8945.28,                                                        +
                       "Plan Rows": 3460,                                                            +
                       "Plan Width": 29,                                                             +
                       "Actual Startup Time": 2964.913,                                              +
                       "Actual Total Time": 3010.090,                                                +
                       "Actual Rows": 4,                                                             +
                       "Actual Loops": 1,                                                            +
                       "Inner Unique": true,                                                         +
                       "Merge Cond": "(mi_idx.movie_id = t.id)",                                     +
                       "Shared Hit Blocks": 4,                                                       +
                       "Shared Read Blocks": 44448,                                                  +
                       "Shared Dirtied Blocks": 0,                                                   +
                       "Shared Written Blocks": 0,                                                   +
                       "Local Hit Blocks": 0,                                                        +
                       "Local Read Blocks": 0,                                                       +
                       "Local Dirtied Blocks": 0,                                                    +
                       "Local Written Blocks": 0,                                                    +
                       "Temp Read Blocks": 0,                                                        +
                       "Temp Written Blocks": 0,                                                     +
                       "Plans": [                                                                    +
                         {                                                                           +
                           "Node Type": "Sort",                                                      +
                           "Parent Relationship": "Outer",                                           +
                           "Parallel Aware": false,                                                  +
                           "Startup Cost": 4972.23,                                                  +
                           "Total Cost": 4973.18,                                                    +
                           "Plan Rows": 12213,                                                       +
                           "Plan Width": 4,                                                          +
                           "Actual Startup Time": 848.284,                                           +
                           "Actual Total Time": 848.289,                                             +
                           "Actual Rows": 10,                                                        +
                           "Actual Loops": 1,                                                        +
                           "Sort Key": ["mi_idx.movie_id"],                                          +
                           "Sort Method": "quicksort",                                               +
                           "Sort Space Used": 25,                                                    +
                           "Sort Space Type": "Memory",                                              +
                           "Shared Hit Blocks": 3,                                                   +
                           "Shared Read Blocks": 8451,                                               +
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
                               "Startup Cost": 4731.35,                                              +
                               "Total Cost": 4946.49,                                                +
                               "Plan Rows": 12213,                                                   +
                               "Plan Width": 4,                                                      +
                               "Actual Startup Time": 848.265,                                       +
                               "Actual Total Time": 848.269,                                         +
                               "Actual Rows": 10,                                                    +
                               "Actual Loops": 1,                                                    +
                               "Inner Unique": false,                                                +
                               "Merge Cond": "(it.id = mi_idx.info_type_id)",                        +
                               "Shared Hit Blocks": 3,                                               +
                               "Shared Read Blocks": 8451,                                           +
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
                                   "Startup Cost": 0.05,                                             +
                                   "Total Cost": 0.05,                                               +
                                   "Plan Rows": 1,                                                   +
                                   "Plan Width": 4,                                                  +
                                   "Actual Startup Time": 0.111,                                     +
                                   "Actual Total Time": 0.111,                                       +
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
                                       "Actual Startup Time": 0.090,                                 +
                                       "Actual Total Time": 0.091,                                   +
                                       "Actual Rows": 1,                                             +
                                       "Actual Loops": 1,                                            +
                                       "Filter": "((info)::text = 'bottom 10 rank'::text)",          +
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
                                 },                                                                  +
                                 {                                                                   +
                                   "Node Type": "Sort",                                              +
                                   "Parent Relationship": "Inner",                                   +
                                   "Parallel Aware": false,                                          +
                                   "Startup Cost": 4731.30,                                          +
                                   "Total Cost": 4838.45,                                            +
                                   "Plan Rows": 1380035,                                             +
                                   "Plan Width": 8,                                                  +
                                   "Actual Startup Time": 639.733,                                   +
                                   "Actual Total Time": 706.679,                                     +
                                   "Actual Rows": 1380035,                                           +
                                   "Actual Loops": 1,                                                +
                                   "Sort Key": ["mi_idx.info_type_id"],                              +
                                   "Sort Method": "quicksort",                                       +
                                   "Sort Space Used": 113842,                                        +
                                   "Sort Space Type": "Memory",                                      +
                                   "Shared Hit Blocks": 2,                                           +
                                   "Shared Read Blocks": 8451,                                       +
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
                                       "Relation Name": "movie_info_idx",                            +
                                       "Alias": "mi_idx",                                            +
                                       "Startup Cost": 0.00,                                         +
                                       "Total Cost": 360.56,                                         +
                                       "Plan Rows": 1380035,                                         +
                                       "Plan Width": 8,                                              +
                                       "Actual Startup Time": 0.011,                                 +
                                       "Actual Total Time": 337.691,                                 +
                                       "Actual Rows": 1380035,                                       +
                                       "Actual Loops": 1,                                            +
                                       "Shared Hit Blocks": 2,                                       +
                                       "Shared Read Blocks": 8451,                                   +
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
                         {                                                                           +
                           "Node Type": "Sort",                                                      +
                           "Parent Relationship": "Inner",                                           +
                           "Parallel Aware": false,                                                  +
                           "Startup Cost": 3859.80,                                                  +
                           "Total Cost": 3915.41,                                                    +
                           "Plan Rows": 716259,                                                      +
                           "Plan Width": 25,                                                         +
                           "Actual Startup Time": 1976.185,                                          +
                           "Actual Total Time": 2059.395,                                            +
                           "Actual Rows": 698261,                                                    +
                           "Actual Loops": 1,                                                        +
                           "Sort Key": ["t.id"],                                                     +
                           "Sort Method": "quicksort",                                               +
                           "Sort Space Used": 78436,                                                 +
                           "Sort Space Type": "Memory",                                              +
                           "Shared Hit Blocks": 1,                                                   +
                           "Shared Read Blocks": 35997,                                              +
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
                               "Node Type": "Seq Scan",                                              +
                               "Parent Relationship": "Outer",                                       +
                               "Parallel Aware": false,                                              +
                               "Relation Name": "title",                                             +
                               "Alias": "t",                                                         +
                               "Startup Cost": 0.00,                                                 +
                               "Total Cost": 1696.56,                                                +
                               "Plan Rows": 716259,                                                  +
                               "Plan Width": 25,                                                     +
                               "Actual Startup Time": 14.238,                                        +
                               "Actual Total Time": 1492.969,                                        +
                               "Actual Rows": 716259,                                                +
                               "Actual Loops": 1,                                                    +
                               "Filter": "((production_year >= 2005) AND (production_year <= 2010))",+
                               "Rows Removed by Filter": 1812053,                                    +
                               "Shared Hit Blocks": 1,                                               +
                               "Shared Read Blocks": 35997,                                          +
                               "Shared Dirtied Blocks": 0,                                           +
                               "Shared Written Blocks": 0,                                           +
                               "Local Hit Blocks": 0,                                                +
                               "Local Read Blocks": 0,                                               +
                               "Local Dirtied Blocks": 0,                                            +
                               "Local Written Blocks": 0,                                            +
                               "Temp Read Blocks": 0,                                                +
                               "Temp Written Blocks": 0                                              +
                             }                                                                       +
                           ]                                                                         +
                         }                                                                           +
                       ]                                                                             +
                     },                                                                              +
                     {                                                                               +
                       "Node Type": "Sort",                                                          +
                       "Parent Relationship": "Inner",                                               +
                       "Parallel Aware": false,                                                      +
                       "Startup Cost": 5197.57,                                                      +
                       "Total Cost": 5301.38,                                                        +
                       "Plan Rows": 1337085,                                                         +
                       "Plan Width": 32,                                                             +
                       "Actual Startup Time": 1288.491,                                              +
                       "Actual Total Time": 1341.948,                                                +
                       "Actual Rows": 1177674,                                                       +
                       "Actual Loops": 1,                                                            +
                       "Sort Key": ["mc.movie_id"],                                                  +
                       "Sort Method": "quicksort",                                                   +
                       "Sort Space Used": 155789,                                                    +
                       "Sort Space Type": "Memory",                                                  +
                       "Shared Hit Blocks": 2,                                                       +
                       "Shared Read Blocks": 18787,                                                  +
                       "Shared Dirtied Blocks": 0,                                                   +
                       "Shared Written Blocks": 0,                                                   +
                       "Local Hit Blocks": 0,                                                        +
                       "Local Read Blocks": 0,                                                       +
                       "Local Dirtied Blocks": 0,                                                    +
                       "Local Written Blocks": 0,                                                    +
                       "Temp Read Blocks": 0,                                                        +
                       "Temp Written Blocks": 0,                                                     +
                       "Plans": [                                                                    +
                         {                                                                           +
                           "Node Type": "Seq Scan",                                                  +
                           "Parent Relationship": "Outer",                                           +
                           "Parallel Aware": false,                                                  +
                           "Relation Name": "movie_companies",                                       +
                           "Alias": "mc",                                                            +
                           "Startup Cost": 0.00,                                                     +
                           "Total Cost": 972.33,                                                     +
                           "Plan Rows": 1337085,                                                     +
                           "Plan Width": 32,                                                         +
                           "Actual Startup Time": 0.019,                                             +
                           "Actual Total Time": 748.943,                                             +
                           "Actual Rows": 1337088,                                                   +
                           "Actual Loops": 1,                                                        +
                           "Filter": "(note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)",       +
                           "Rows Removed by Filter": 1272041,                                        +
                           "Shared Hit Blocks": 2,                                                   +
                           "Shared Read Blocks": 18787,                                              +
                           "Shared Dirtied Blocks": 0,                                               +
                           "Shared Written Blocks": 0,                                               +
                           "Local Hit Blocks": 0,                                                    +
                           "Local Read Blocks": 0,                                                   +
                           "Local Dirtied Blocks": 0,                                                +
                           "Local Written Blocks": 0,                                                +
                           "Temp Read Blocks": 0,                                                    +
                           "Temp Written Blocks": 0                                                  +
                         }                                                                           +
                       ]                                                                             +
                     }                                                                               +
                   ]                                                                                 +
                 }                                                                                   +
               ]                                                                                     +
             },                                                                                      +
             {                                                                                       +
               "Node Type": "Sort",                                                                  +
               "Parent Relationship": "Inner",                                                       +
               "Parallel Aware": false,                                                              +
               "Startup Cost": 0.03,                                                                 +
               "Total Cost": 0.03,                                                                   +
               "Plan Rows": 1,                                                                       +
               "Plan Width": 4,                                                                      +
               "Actual Startup Time": 0.023,                                                         +
               "Actual Total Time": 0.023,                                                           +
               "Actual Rows": 1,                                                                     +
               "Actual Loops": 1,                                                                    +
               "Sort Key": ["ct.id"],                                                                +
               "Sort Method": "quicksort",                                                           +
               "Sort Space Used": 25,                                                                +
               "Sort Space Type": "Memory",                                                          +
               "Shared Hit Blocks": 1,                                                               +
               "Shared Read Blocks": 0,                                                              +
               "Shared Dirtied Blocks": 0,                                                           +
               "Shared Written Blocks": 0,                                                           +
               "Local Hit Blocks": 0,                                                                +
               "Local Read Blocks": 0,                                                               +
               "Local Dirtied Blocks": 0,                                                            +
               "Local Written Blocks": 0,                                                            +
               "Temp Read Blocks": 0,                                                                +
               "Temp Written Blocks": 0,                                                             +
               "Plans": [                                                                            +
                 {                                                                                   +
                   "Node Type": "Seq Scan",                                                          +
                   "Parent Relationship": "Outer",                                                   +
                   "Parallel Aware": false,                                                          +
                   "Relation Name": "company_type",                                                  +
                   "Alias": "ct",                                                                    +
                   "Startup Cost": 0.00,                                                             +
                   "Total Cost": 0.03,                                                               +
                   "Plan Rows": 1,                                                                   +
                   "Plan Width": 4,                                                                  +
                   "Actual Startup Time": 0.015,                                                     +
                   "Actual Total Time": 0.016,                                                       +
                   "Actual Rows": 1,                                                                 +
                   "Actual Loops": 1,                                                                +
                   "Filter": "((kind)::text = 'production companies'::text)",                        +
                   "Rows Removed by Filter": 3,                                                      +
                   "Shared Hit Blocks": 1,                                                           +
                   "Shared Read Blocks": 0,                                                          +
                   "Shared Dirtied Blocks": 0,                                                       +
                   "Shared Written Blocks": 0,                                                       +
                   "Local Hit Blocks": 0,                                                            +
                   "Local Read Blocks": 0,                                                           +
                   "Local Dirtied Blocks": 0,                                                        +
                   "Local Written Blocks": 0,                                                        +
                   "Temp Read Blocks": 0,                                                            +
                   "Temp Written Blocks": 0                                                          +
                 }                                                                                   +
               ]                                                                                     +
             }                                                                                       +
           ]                                                                                         +
         }                                                                                           +
       ]                                                                                             +
     },                                                                                              +
     "Planning Time": 2364.314,                                                                      +
     "Triggers": [                                                                                   +
     ],                                                                                              +
     "Execution Time": 4542.853                                                                      +
   }                                                                                                 +
 ]
(1 row)

