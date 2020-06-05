                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 5534.53,                                                                                                      +
       "Total Cost": 5534.53,                                                                                                        +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 96,                                                                                                             +
       "Actual Startup Time": 2548.259,                                                                                              +
       "Actual Total Time": 2548.259,                                                                                                +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 30372,                                                                                                   +
       "Shared Read Blocks": 40395,                                                                                                  +
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
           "Startup Cost": 5526.90,                                                                                                  +
           "Total Cost": 5534.53,                                                                                                    +
           "Plan Rows": 1,                                                                                                           +
           "Plan Width": 48,                                                                                                         +
           "Actual Startup Time": 2544.749,                                                                                          +
           "Actual Total Time": 2548.203,                                                                                            +
           "Actual Rows": 14,                                                                                                        +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": true,                                                                                                     +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                  +
           "Shared Hit Blocks": 30372,                                                                                               +
           "Shared Read Blocks": 40395,                                                                                              +
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
               "Node Type": "Sort",                                                                                                  +
               "Parent Relationship": "Outer",                                                                                       +
               "Parallel Aware": false,                                                                                              +
               "Startup Cost": 5243.03,                                                                                              +
               "Total Cost": 5243.03,                                                                                                +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 33,                                                                                                     +
               "Actual Startup Time": 2392.893,                                                                                      +
               "Actual Total Time": 2392.897,                                                                                        +
               "Actual Rows": 21,                                                                                                    +
               "Actual Loops": 1,                                                                                                    +
               "Sort Key": ["mc.company_id"],                                                                                        +
               "Sort Method": "quicksort",                                                                                           +
               "Sort Space Used": 26,                                                                                                +
               "Sort Space Type": "Memory",                                                                                          +
               "Shared Hit Blocks": 30370,                                                                                           +
               "Shared Read Blocks": 37403,                                                                                          +
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
                   "Node Type": "Merge Join",                                                                                        +
                   "Parent Relationship": "Outer",                                                                                   +
                   "Parallel Aware": false,                                                                                          +
                   "Join Type": "Inner",                                                                                             +
                   "Startup Cost": 5243.03,                                                                                          +
                   "Total Cost": 5243.03,                                                                                            +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 33,                                                                                                 +
                   "Actual Startup Time": 2392.807,                                                                                  +
                   "Actual Total Time": 2392.817,                                                                                    +
                   "Actual Rows": 21,                                                                                                +
                   "Actual Loops": 1,                                                                                                +
                   "Inner Unique": true,                                                                                             +
                   "Merge Cond": "(ml.link_type_id = lt.id)",                                                                        +
                   "Shared Hit Blocks": 30366,                                                                                       +
                   "Shared Read Blocks": 37403,                                                                                      +
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
                       "Node Type": "Sort",                                                                                          +
                       "Parent Relationship": "Outer",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Startup Cost": 5242.99,                                                                                      +
                       "Total Cost": 5242.99,                                                                                        +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 25,                                                                                             +
                       "Actual Startup Time": 2392.787,                                                                              +
                       "Actual Total Time": 2392.788,                                                                                +
                       "Actual Rows": 22,                                                                                            +
                       "Actual Loops": 1,                                                                                            +
                       "Sort Key": ["ml.link_type_id"],                                                                              +
                       "Sort Method": "quicksort",                                                                                   +
                       "Sort Space Used": 29,                                                                                        +
                       "Sort Space Type": "Memory",                                                                                  +
                       "Shared Hit Blocks": 30365,                                                                                   +
                       "Shared Read Blocks": 37403,                                                                                  +
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
                           "Node Type": "Merge Join",                                                                                +
                           "Parent Relationship": "Outer",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Join Type": "Inner",                                                                                     +
                           "Startup Cost": 5242.99,                                                                                  +
                           "Total Cost": 5242.99,                                                                                    +
                           "Plan Rows": 1,                                                                                           +
                           "Plan Width": 25,                                                                                         +
                           "Actual Startup Time": 2392.732,                                                                          +
                           "Actual Total Time": 2392.756,                                                                            +
                           "Actual Rows": 57,                                                                                        +
                           "Actual Loops": 1,                                                                                        +
                           "Inner Unique": true,                                                                                     +
                           "Merge Cond": "(mc.company_type_id = ct.id)",                                                             +
                           "Shared Hit Blocks": 30365,                                                                               +
                           "Shared Read Blocks": 37403,                                                                              +
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
                               "Node Type": "Sort",                                                                                  +
                               "Parent Relationship": "Outer",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Startup Cost": 5242.96,                                                                              +
                               "Total Cost": 5242.96,                                                                                +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 29,                                                                                     +
                               "Actual Startup Time": 2392.705,                                                                      +
                               "Actual Total Time": 2392.709,                                                                        +
                               "Actual Rows": 57,                                                                                    +
                               "Actual Loops": 1,                                                                                    +
                               "Sort Key": ["mc.company_type_id"],                                                                   +
                               "Sort Method": "quicksort",                                                                           +
                               "Sort Space Used": 29,                                                                                +
                               "Sort Space Type": "Memory",                                                                          +
                               "Shared Hit Blocks": 30364,                                                                           +
                               "Shared Read Blocks": 37403,                                                                          +
                               "Shared Dirtied Blocks": 0,                                                                           +
                               "Shared Written Blocks": 0,                                                                           +
                               "Local Hit Blocks": 0,                                                                                +
                               "Local Read Blocks": 0,                                                                               +
                               "Local Dirtied Blocks": 0,                                                                            +
                               "Local Written Blocks": 0,                                                                            +
                               "Temp Read Blocks": 0,                                                                                +
                               "Temp Written Blocks": 0,                                                                             +
                               "Plans": [                                                                                            +
                                 {                                                                                                   +
                                   "Node Type": "Merge Join",                                                                        +
                                   "Parent Relationship": "Outer",                                                                   +
                                   "Parallel Aware": false,                                                                          +
                                   "Join Type": "Inner",                                                                             +
                                   "Startup Cost": 2638.29,                                                                          +
                                   "Total Cost": 5242.96,                                                                            +
                                   "Plan Rows": 1,                                                                                   +
                                   "Plan Width": 29,                                                                                 +
                                   "Actual Startup Time": 2392.630,                                                                  +
                                   "Actual Total Time": 2392.658,                                                                    +
                                   "Actual Rows": 57,                                                                                +
                                   "Actual Loops": 1,                                                                                +
                                   "Inner Unique": false,                                                                            +
                                   "Merge Cond": "(mc.movie_id = ml.movie_id)",                                                      +
                                   "Shared Hit Blocks": 30364,                                                                       +
                                   "Shared Read Blocks": 37403,                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                       +
                                   "Shared Written Blocks": 0,                                                                       +
                                   "Local Hit Blocks": 0,                                                                            +
                                   "Local Read Blocks": 0,                                                                           +
                                   "Local Dirtied Blocks": 0,                                                                        +
                                   "Local Written Blocks": 0,                                                                        +
                                   "Temp Read Blocks": 0,                                                                            +
                                   "Temp Written Blocks": 0,                                                                         +
                                   "Plans": [                                                                                        +
                                     {                                                                                               +
                                       "Node Type": "Index Scan",                                                                    +
                                       "Parent Relationship": "Outer",                                                               +
                                       "Parallel Aware": false,                                                                      +
                                       "Scan Direction": "Forward",                                                                  +
                                       "Index Name": "movie_id_movie_companies",                                                     +
                                       "Relation Name": "movie_companies",                                                           +
                                       "Alias": "mc",                                                                                +
                                       "Startup Cost": 0.01,                                                                         +
                                       "Total Cost": 67925.24,                                                                       +
                                       "Plan Rows": 1271989,                                                                         +
                                       "Plan Width": 12,                                                                             +
                                       "Actual Startup Time": 23.714,                                                                +
                                       "Actual Total Time": 268.346,                                                                 +
                                       "Actual Rows": 33492,                                                                         +
                                       "Actual Loops": 1,                                                                            +
                                       "Filter": "(note IS NULL)",                                                                   +
                                       "Rows Removed by Filter": 34711,                                                              +
                                       "Shared Hit Blocks": 30100,                                                                   +
                                       "Shared Read Blocks": 674,                                                                    +
                                       "Shared Dirtied Blocks": 0,                                                                   +
                                       "Shared Written Blocks": 0,                                                                   +
                                       "Local Hit Blocks": 0,                                                                        +
                                       "Local Read Blocks": 0,                                                                       +
                                       "Local Dirtied Blocks": 0,                                                                    +
                                       "Local Written Blocks": 0,                                                                    +
                                       "Temp Read Blocks": 0,                                                                        +
                                       "Temp Written Blocks": 0                                                                      +
                                     },                                                                                              +
                                     {                                                                                               +
                                       "Node Type": "Sort",                                                                          +
                                       "Parent Relationship": "Inner",                                                               +
                                       "Parallel Aware": false,                                                                      +
                                       "Startup Cost": 2638.28,                                                                      +
                                       "Total Cost": 2638.28,                                                                        +
                                       "Plan Rows": 1,                                                                               +
                                       "Plan Width": 33,                                                                             +
                                       "Actual Startup Time": 2116.155,                                                              +
                                       "Actual Total Time": 2116.161,                                                                +
                                       "Actual Rows": 55,                                                                            +
                                       "Actual Loops": 1,                                                                            +
                                       "Sort Key": ["mk.movie_id"],                                                                  +
                                       "Sort Method": "quicksort",                                                                   +
                                       "Sort Space Used": 26,                                                                        +
                                       "Sort Space Type": "Memory",                                                                  +
                                       "Shared Hit Blocks": 264,                                                                     +
                                       "Shared Read Blocks": 36729,                                                                  +
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
                                           "Startup Cost": 2638.28,                                                                  +
                                           "Total Cost": 2638.28,                                                                    +
                                           "Plan Rows": 1,                                                                           +
                                           "Plan Width": 33,                                                                         +
                                           "Actual Startup Time": 2116.074,                                                          +
                                           "Actual Total Time": 2116.099,                                                            +
                                           "Actual Rows": 19,                                                                        +
                                           "Actual Loops": 1,                                                                        +
                                           "Inner Unique": true,                                                                     +
                                           "Merge Cond": "(mk.keyword_id = k.id)",                                                   +
                                           "Shared Hit Blocks": 264,                                                                 +
                                           "Shared Read Blocks": 36729,                                                              +
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
                                               "Startup Cost": 2632.14,                                                              +
                                               "Total Cost": 2632.14,                                                                +
                                               "Plan Rows": 3,                                                                       +
                                               "Plan Width": 37,                                                                     +
                                               "Actual Startup Time": 2075.755,                                                      +
                                               "Actual Total Time": 2075.763,                                                        +
                                               "Actual Rows": 39,                                                                    +
                                               "Actual Loops": 1,                                                                    +
                                               "Sort Key": ["mk.keyword_id"],                                                        +
                                               "Sort Method": "quicksort",                                                           +
                                               "Sort Space Used": 30,                                                                +
                                               "Sort Space Type": "Memory",                                                          +
                                               "Shared Hit Blocks": 264,                                                             +
                                               "Shared Read Blocks": 36725,                                                          +
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
                                                   "Startup Cost": 1773.05,                                                          +
                                                   "Total Cost": 2632.14,                                                            +
                                                   "Plan Rows": 3,                                                                   +
                                                   "Plan Width": 37,                                                                 +
                                                   "Actual Startup Time": 2072.978,                                                  +
                                                   "Actual Total Time": 2075.649,                                                    +
                                                   "Actual Rows": 76,                                                                +
                                                   "Actual Loops": 1,                                                                +
                                                   "Inner Unique": false,                                                            +
                                                   "Merge Cond": "(ml.movie_id = mk.movie_id)",                                      +
                                                   "Shared Hit Blocks": 264,                                                         +
                                                   "Shared Read Blocks": 36725,                                                      +
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
                                                       "Startup Cost": 1773.04,                                                      +
                                                       "Total Cost": 1777.69,                                                        +
                                                       "Plan Rows": 1,                                                               +
                                                       "Plan Width": 29,                                                             +
                                                       "Actual Startup Time": 1946.571,                                              +
                                                       "Actual Total Time": 1949.126,                                                +
                                                       "Actual Rows": 19,                                                            +
                                                       "Actual Loops": 1,                                                            +
                                                       "Inner Unique": true,                                                         +
                                                       "Merge Cond": "(ml.movie_id = t.id)",                                         +
                                                       "Shared Hit Blocks": 3,                                                       +
                                                       "Shared Read Blocks": 36158,                                                  +
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
                                                           "Startup Cost": 76.46,                                                    +
                                                           "Total Cost": 78.79,                                                      +
                                                           "Plan Rows": 29997,                                                       +
                                                           "Plan Width": 8,                                                          +
                                                           "Actual Startup Time": 59.093,                                            +
                                                           "Actual Total Time": 62.060,                                              +
                                                           "Actual Rows": 29997,                                                     +
                                                           "Actual Loops": 1,                                                        +
                                                           "Sort Key": ["ml.movie_id"],                                              +
                                                           "Sort Method": "quicksort",                                               +
                                                           "Sort Space Used": 2175,                                                  +
                                                           "Sort Space Type": "Memory",                                              +
                                                           "Shared Hit Blocks": 2,                                                   +
                                                           "Shared Read Blocks": 161,                                                +
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
                                                               "Relation Name": "movie_link",                                        +
                                                               "Alias": "ml",                                                        +
                                                               "Startup Cost": 0.00,                                                 +
                                                               "Total Cost": 7.19,                                                   +
                                                               "Plan Rows": 29997,                                                   +
                                                               "Plan Width": 8,                                                      +
                                                               "Actual Startup Time": 0.018,                                         +
                                                               "Actual Total Time": 37.093,                                          +
                                                               "Actual Rows": 29997,                                                 +
                                                               "Actual Loops": 1,                                                    +
                                                               "Shared Hit Blocks": 2,                                               +
                                                               "Shared Read Blocks": 161,                                            +
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
                                                         },                                                                          +
                                                         {                                                                           +
                                                           "Node Type": "Sort",                                                      +
                                                           "Parent Relationship": "Inner",                                           +
                                                           "Parallel Aware": false,                                                  +
                                                           "Startup Cost": 1696.57,                                                  +
                                                           "Total Cost": 1696.58,                                                    +
                                                           "Plan Rows": 24,                                                          +
                                                           "Plan Width": 21,                                                         +
                                                           "Actual Startup Time": 1880.633,                                          +
                                                           "Actual Total Time": 1880.634,                                            +
                                                           "Actual Rows": 3,                                                         +
                                                           "Actual Loops": 1,                                                        +
                                                           "Sort Key": ["t.id"],                                                     +
                                                           "Sort Method": "quicksort",                                               +
                                                           "Sort Space Used": 27,                                                    +
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
                                                               "Plan Rows": 24,                                                      +
                                                               "Plan Width": 21,                                                     +
                                                               "Actual Startup Time": 71.966,                                        +
                                                               "Actual Total Time": 1880.426,                                        +
                                                               "Actual Rows": 36,                                                    +
                                                               "Actual Loops": 1,                                                    +
                                                               "Filter": "((title ~~ '%Money%'::text) AND (production_year = 1998))",+
                                                               "Rows Removed by Filter": 2528276,                                    +
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
                                                       "Node Type": "Index Scan",                                                    +
                                                       "Parent Relationship": "Inner",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Scan Direction": "Forward",                                                  +
                                                       "Index Name": "movie_id_movie_keyword",                                       +
                                                       "Relation Name": "movie_keyword",                                             +
                                                       "Alias": "mk",                                                                +
                                                       "Startup Cost": 0.01,                                                         +
                                                       "Total Cost": 39285.80,                                                       +
                                                       "Plan Rows": 4523930,                                                         +
                                                       "Plan Width": 8,                                                              +
                                                       "Actual Startup Time": 0.029,                                                 +
                                                       "Actual Total Time": 107.234,                                                 +
                                                       "Actual Rows": 69489,                                                         +
                                                       "Actual Loops": 1,                                                            +
                                                       "Shared Hit Blocks": 261,                                                     +
                                                       "Shared Read Blocks": 567,                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0                                                      +
                                                     }                                                                               +
                                                   ]                                                                                 +
                                                 }                                                                                   +
                                               ]                                                                                     +
                                             },                                                                                      +
                                             {                                                                                       +
                                               "Node Type": "Sort",                                                                  +
                                               "Parent Relationship": "Inner",                                                       +
                                               "Parallel Aware": false,                                                              +
                                               "Startup Cost": 6.13,                                                                 +
                                               "Total Cost": 6.13,                                                                   +
                                               "Plan Rows": 1,                                                                       +
                                               "Plan Width": 4,                                                                      +
                                               "Actual Startup Time": 40.295,                                                        +
                                               "Actual Total Time": 40.295,                                                          +
                                               "Actual Rows": 1,                                                                     +
                                               "Actual Loops": 1,                                                                    +
                                               "Sort Key": ["k.id"],                                                                 +
                                               "Sort Method": "quicksort",                                                           +
                                               "Sort Space Used": 25,                                                                +
                                               "Sort Space Type": "Memory",                                                          +
                                               "Shared Hit Blocks": 0,                                                               +
                                               "Shared Read Blocks": 4,                                                              +
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
                                                   "Node Type": "Index Scan",                                                        +
                                                   "Parent Relationship": "Outer",                                                   +
                                                   "Parallel Aware": false,                                                          +
                                                   "Scan Direction": "Forward",                                                      +
                                                   "Index Name": "keyword_idx_keyword",                                              +
                                                   "Relation Name": "keyword",                                                       +
                                                   "Alias": "k",                                                                     +
                                                   "Startup Cost": 0.01,                                                             +
                                                   "Total Cost": 6.13,                                                               +
                                                   "Plan Rows": 1,                                                                   +
                                                   "Plan Width": 4,                                                                  +
                                                   "Actual Startup Time": 40.272,                                                    +
                                                   "Actual Total Time": 40.275,                                                      +
                                                   "Actual Rows": 1,                                                                 +
                                                   "Actual Loops": 1,                                                                +
                                                   "Index Cond": "(keyword = 'sequel'::text)",                                       +
                                                   "Rows Removed by Index Recheck": 0,                                               +
                                                   "Shared Hit Blocks": 0,                                                           +
                                                   "Shared Read Blocks": 4,                                                          +
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
                                     }                                                                                               +
                                   ]                                                                                                 +
                                 }                                                                                                   +
                               ]                                                                                                     +
                             },                                                                                                      +
                             {                                                                                                       +
                               "Node Type": "Sort",                                                                                  +
                               "Parent Relationship": "Inner",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Startup Cost": 0.03,                                                                                 +
                               "Total Cost": 0.03,                                                                                   +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 4,                                                                                      +
                               "Actual Startup Time": 0.022,                                                                         +
                               "Actual Total Time": 0.022,                                                                           +
                               "Actual Rows": 1,                                                                                     +
                               "Actual Loops": 1,                                                                                    +
                               "Sort Key": ["ct.id"],                                                                                +
                               "Sort Method": "quicksort",                                                                           +
                               "Sort Space Used": 25,                                                                                +
                               "Sort Space Type": "Memory",                                                                          +
                               "Shared Hit Blocks": 1,                                                                               +
                               "Shared Read Blocks": 0,                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                           +
                               "Shared Written Blocks": 0,                                                                           +
                               "Local Hit Blocks": 0,                                                                                +
                               "Local Read Blocks": 0,                                                                               +
                               "Local Dirtied Blocks": 0,                                                                            +
                               "Local Written Blocks": 0,                                                                            +
                               "Temp Read Blocks": 0,                                                                                +
                               "Temp Written Blocks": 0,                                                                             +
                               "Plans": [                                                                                            +
                                 {                                                                                                   +
                                   "Node Type": "Seq Scan",                                                                          +
                                   "Parent Relationship": "Outer",                                                                   +
                                   "Parallel Aware": false,                                                                          +
                                   "Relation Name": "company_type",                                                                  +
                                   "Alias": "ct",                                                                                    +
                                   "Startup Cost": 0.00,                                                                             +
                                   "Total Cost": 0.03,                                                                               +
                                   "Plan Rows": 1,                                                                                   +
                                   "Plan Width": 4,                                                                                  +
                                   "Actual Startup Time": 0.012,                                                                     +
                                   "Actual Total Time": 0.013,                                                                       +
                                   "Actual Rows": 1,                                                                                 +
                                   "Actual Loops": 1,                                                                                +
                                   "Filter": "((kind)::text = 'production companies'::text)",                                        +
                                   "Rows Removed by Filter": 3,                                                                      +
                                   "Shared Hit Blocks": 1,                                                                           +
                                   "Shared Read Blocks": 0,                                                                          +
                                   "Shared Dirtied Blocks": 0,                                                                       +
                                   "Shared Written Blocks": 0,                                                                       +
                                   "Local Hit Blocks": 0,                                                                            +
                                   "Local Read Blocks": 0,                                                                           +
                                   "Local Dirtied Blocks": 0,                                                                        +
                                   "Local Written Blocks": 0,                                                                        +
                                   "Temp Read Blocks": 0,                                                                            +
                                   "Temp Written Blocks": 0                                                                          +
                                 }                                                                                                   +
                               ]                                                                                                     +
                             }                                                                                                       +
                           ]                                                                                                         +
                         }                                                                                                           +
                       ]                                                                                                             +
                     },                                                                                                              +
                     {                                                                                                               +
                       "Node Type": "Sort",                                                                                          +
                       "Parent Relationship": "Inner",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Startup Cost": 0.03,                                                                                         +
                       "Total Cost": 0.03,                                                                                           +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 16,                                                                                             +
                       "Actual Startup Time": 0.016,                                                                                 +
                       "Actual Total Time": 0.017,                                                                                   +
                       "Actual Rows": 1,                                                                                             +
                       "Actual Loops": 1,                                                                                            +
                       "Sort Key": ["lt.id"],                                                                                        +
                       "Sort Method": "quicksort",                                                                                   +
                       "Sort Space Used": 25,                                                                                        +
                       "Sort Space Type": "Memory",                                                                                  +
                       "Shared Hit Blocks": 1,                                                                                       +
                       "Shared Read Blocks": 0,                                                                                      +
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
                           "Node Type": "Seq Scan",                                                                                  +
                           "Parent Relationship": "Outer",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Relation Name": "link_type",                                                                             +
                           "Alias": "lt",                                                                                            +
                           "Startup Cost": 0.00,                                                                                     +
                           "Total Cost": 0.03,                                                                                       +
                           "Plan Rows": 1,                                                                                           +
                           "Plan Width": 16,                                                                                         +
                           "Actual Startup Time": 0.007,                                                                             +
                           "Actual Total Time": 0.013,                                                                               +
                           "Actual Rows": 1,                                                                                         +
                           "Actual Loops": 1,                                                                                        +
                           "Filter": "((link)::text ~~ '%follows%'::text)",                                                          +
                           "Rows Removed by Filter": 17,                                                                             +
                           "Shared Hit Blocks": 1,                                                                                   +
                           "Shared Read Blocks": 0,                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                               +
                           "Shared Written Blocks": 0,                                                                               +
                           "Local Hit Blocks": 0,                                                                                    +
                           "Local Read Blocks": 0,                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                +
                           "Local Written Blocks": 0,                                                                                +
                           "Temp Read Blocks": 0,                                                                                    +
                           "Temp Written Blocks": 0                                                                                  +
                         }                                                                                                           +
                       ]                                                                                                             +
                     }                                                                                                               +
                   ]                                                                                                                 +
                 }                                                                                                                   +
               ]                                                                                                                     +
             },                                                                                                                      +
             {                                                                                                                       +
               "Node Type": "Sort",                                                                                                  +
               "Parent Relationship": "Inner",                                                                                       +
               "Parallel Aware": false,                                                                                              +
               "Startup Cost": 283.87,                                                                                               +
               "Total Cost": 287.69,                                                                                                 +
               "Plan Rows": 49161,                                                                                                   +
               "Plan Width": 23,                                                                                                     +
               "Actual Startup Time": 151.813,                                                                                       +
               "Actual Total Time": 153.371,                                                                                         +
               "Actual Rows": 14125,                                                                                                 +
               "Actual Loops": 1,                                                                                                    +
               "Sort Key": ["cn.id"],                                                                                                +
               "Sort Method": "quicksort",                                                                                           +
               "Sort Space Used": 5023,                                                                                              +
               "Sort Space Type": "Memory",                                                                                          +
               "Shared Hit Blocks": 2,                                                                                               +
               "Shared Read Blocks": 2992,                                                                                           +
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
                   "Relation Name": "company_name",                                                                                  +
                   "Alias": "cn",                                                                                                    +
                   "Startup Cost": 0.00,                                                                                             +
                   "Total Cost": 164.90,                                                                                             +
                   "Plan Rows": 49161,                                                                                               +
                   "Plan Width": 23,                                                                                                 +
                   "Actual Startup Time": 3.281,                                                                                     +
                   "Actual Total Time": 125.803,                                                                                     +
                   "Actual Rows": 48302,                                                                                             +
                   "Actual Loops": 1,                                                                                                +
                   "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                   "Rows Removed by Filter": 186695,                                                                                 +
                   "Shared Hit Blocks": 2,                                                                                           +
                   "Shared Read Blocks": 2992,                                                                                       +
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
     "Planning Time": 3490.675,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 2619.992                                                                                                      +
   }                                                                                                                                 +
 ]
(1 row)

