                                                                         QUERY PLAN                                                                         
------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                         +
   {                                                                                                                                                       +
     "Plan": {                                                                                                                                             +
       "Node Type": "Aggregate",                                                                                                                           +
       "Strategy": "Plain",                                                                                                                                +
       "Partial Mode": "Simple",                                                                                                                           +
       "Parallel Aware": false,                                                                                                                            +
       "Startup Cost": 39173.01,                                                                                                                           +
       "Total Cost": 39173.01,                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                     +
       "Plan Width": 128,                                                                                                                                  +
       "Actual Startup Time": 22204.719,                                                                                                                   +
       "Actual Total Time": 22204.719,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                   +
       "Actual Loops": 1,                                                                                                                                  +
       "Shared Hit Blocks": 22,                                                                                                                            +
       "Shared Read Blocks": 413873,                                                                                                                       +
       "Shared Dirtied Blocks": 0,                                                                                                                         +
       "Shared Written Blocks": 0,                                                                                                                         +
       "Local Hit Blocks": 0,                                                                                                                              +
       "Local Read Blocks": 0,                                                                                                                             +
       "Local Dirtied Blocks": 0,                                                                                                                          +
       "Local Written Blocks": 0,                                                                                                                          +
       "Temp Read Blocks": 0,                                                                                                                              +
       "Temp Written Blocks": 0,                                                                                                                           +
       "Plans": [                                                                                                                                          +
         {                                                                                                                                                 +
           "Node Type": "Merge Join",                                                                                                                      +
           "Parent Relationship": "Outer",                                                                                                                 +
           "Parallel Aware": false,                                                                                                                        +
           "Join Type": "Inner",                                                                                                                           +
           "Startup Cost": 38685.38,                                                                                                                       +
           "Total Cost": 39173.01,                                                                                                                         +
           "Plan Rows": 1,                                                                                                                                 +
           "Plan Width": 64,                                                                                                                               +
           "Actual Startup Time": 21425.623,                                                                                                               +
           "Actual Total Time": 22204.636,                                                                                                                 +
           "Actual Rows": 40,                                                                                                                              +
           "Actual Loops": 1,                                                                                                                              +
           "Inner Unique": true,                                                                                                                           +
           "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                                   +
           "Shared Hit Blocks": 22,                                                                                                                        +
           "Shared Read Blocks": 413873,                                                                                                                   +
           "Shared Dirtied Blocks": 0,                                                                                                                     +
           "Shared Written Blocks": 0,                                                                                                                     +
           "Local Hit Blocks": 0,                                                                                                                          +
           "Local Read Blocks": 0,                                                                                                                         +
           "Local Dirtied Blocks": 0,                                                                                                                      +
           "Local Written Blocks": 0,                                                                                                                      +
           "Temp Read Blocks": 0,                                                                                                                          +
           "Temp Written Blocks": 0,                                                                                                                       +
           "Plans": [                                                                                                                                      +
             {                                                                                                                                             +
               "Node Type": "Sort",                                                                                                                        +
               "Parent Relationship": "Outer",                                                                                                             +
               "Parallel Aware": false,                                                                                                                    +
               "Startup Cost": 26800.75,                                                                                                                   +
               "Total Cost": 26800.75,                                                                                                                     +
               "Plan Rows": 1,                                                                                                                             +
               "Plan Width": 52,                                                                                                                           +
               "Actual Startup Time": 18966.105,                                                                                                           +
               "Actual Total Time": 18966.112,                                                                                                             +
               "Actual Rows": 40,                                                                                                                          +
               "Actual Loops": 1,                                                                                                                          +
               "Sort Key": ["ci.person_role_id"],                                                                                                          +
               "Sort Method": "quicksort",                                                                                                                 +
               "Sort Space Used": 29,                                                                                                                      +
               "Sort Space Type": "Memory",                                                                                                                +
               "Shared Hit Blocks": 20,                                                                                                                    +
               "Shared Read Blocks": 377428,                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                 +
               "Shared Written Blocks": 0,                                                                                                                 +
               "Local Hit Blocks": 0,                                                                                                                      +
               "Local Read Blocks": 0,                                                                                                                     +
               "Local Dirtied Blocks": 0,                                                                                                                  +
               "Local Written Blocks": 0,                                                                                                                  +
               "Temp Read Blocks": 0,                                                                                                                      +
               "Temp Written Blocks": 0,                                                                                                                   +
               "Plans": [                                                                                                                                  +
                 {                                                                                                                                         +
                   "Node Type": "Merge Join",                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                         +
                   "Parallel Aware": false,                                                                                                                +
                   "Join Type": "Inner",                                                                                                                   +
                   "Startup Cost": 26787.57,                                                                                                               +
                   "Total Cost": 26800.75,                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                         +
                   "Plan Width": 52,                                                                                                                       +
                   "Actual Startup Time": 18964.499,                                                                                                       +
                   "Actual Total Time": 18966.033,                                                                                                         +
                   "Actual Rows": 40,                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                      +
                   "Inner Unique": true,                                                                                                                   +
                   "Merge Cond": "(mc.company_id = cn.id)",                                                                                                +
                   "Shared Hit Blocks": 16,                                                                                                                +
                   "Shared Read Blocks": 377428,                                                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                                                             +
                   "Shared Written Blocks": 0,                                                                                                             +
                   "Local Hit Blocks": 0,                                                                                                                  +
                   "Local Read Blocks": 0,                                                                                                                 +
                   "Local Dirtied Blocks": 0,                                                                                                              +
                   "Local Written Blocks": 0,                                                                                                              +
                   "Temp Read Blocks": 0,                                                                                                                  +
                   "Temp Written Blocks": 0,                                                                                                               +
                   "Plans": [                                                                                                                              +
                     {                                                                                                                                     +
                       "Node Type": "Sort",                                                                                                                +
                       "Parent Relationship": "Outer",                                                                                                     +
                       "Parallel Aware": false,                                                                                                            +
                       "Startup Cost": 26443.47,                                                                                                           +
                       "Total Cost": 26443.47,                                                                                                             +
                       "Plan Rows": 1,                                                                                                                     +
                       "Plan Width": 56,                                                                                                                   +
                       "Actual Startup Time": 18795.189,                                                                                                   +
                       "Actual Total Time": 18795.195,                                                                                                     +
                       "Actual Rows": 41,                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                  +
                       "Sort Key": ["mc.company_id"],                                                                                                      +
                       "Sort Method": "quicksort",                                                                                                         +
                       "Sort Space Used": 30,                                                                                                              +
                       "Sort Space Type": "Memory",                                                                                                        +
                       "Shared Hit Blocks": 14,                                                                                                            +
                       "Shared Read Blocks": 374436,                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                         +
                       "Shared Written Blocks": 0,                                                                                                         +
                       "Local Hit Blocks": 0,                                                                                                              +
                       "Local Read Blocks": 0,                                                                                                             +
                       "Local Dirtied Blocks": 0,                                                                                                          +
                       "Local Written Blocks": 0,                                                                                                          +
                       "Temp Read Blocks": 0,                                                                                                              +
                       "Temp Written Blocks": 0,                                                                                                           +
                       "Plans": [                                                                                                                          +
                         {                                                                                                                                 +
                           "Node Type": "Merge Join",                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                 +
                           "Parallel Aware": false,                                                                                                        +
                           "Join Type": "Inner",                                                                                                           +
                           "Startup Cost": 26443.47,                                                                                                       +
                           "Total Cost": 26443.47,                                                                                                         +
                           "Plan Rows": 1,                                                                                                                 +
                           "Plan Width": 56,                                                                                                               +
                           "Actual Startup Time": 18795.148,                                                                                               +
                           "Actual Total Time": 18795.161,                                                                                                 +
                           "Actual Rows": 41,                                                                                                              +
                           "Actual Loops": 1,                                                                                                              +
                           "Inner Unique": true,                                                                                                           +
                           "Merge Cond": "(ci.role_id = rt.id)",                                                                                           +
                           "Shared Hit Blocks": 14,                                                                                                        +
                           "Shared Read Blocks": 374436,                                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                                     +
                           "Shared Written Blocks": 0,                                                                                                     +
                           "Local Hit Blocks": 0,                                                                                                          +
                           "Local Read Blocks": 0,                                                                                                         +
                           "Local Dirtied Blocks": 0,                                                                                                      +
                           "Local Written Blocks": 0,                                                                                                      +
                           "Temp Read Blocks": 0,                                                                                                          +
                           "Temp Written Blocks": 0,                                                                                                       +
                           "Plans": [                                                                                                                      +
                             {                                                                                                                             +
                               "Node Type": "Sort",                                                                                                        +
                               "Parent Relationship": "Outer",                                                                                             +
                               "Parallel Aware": false,                                                                                                    +
                               "Startup Cost": 26443.44,                                                                                                   +
                               "Total Cost": 26443.44,                                                                                                     +
                               "Plan Rows": 6,                                                                                                             +
                               "Plan Width": 60,                                                                                                           +
                               "Actual Startup Time": 18795.115,                                                                                           +
                               "Actual Total Time": 18795.118,                                                                                             +
                               "Actual Rows": 41,                                                                                                          +
                               "Actual Loops": 1,                                                                                                          +
                               "Sort Key": ["ci.role_id"],                                                                                                 +
                               "Sort Method": "quicksort",                                                                                                 +
                               "Sort Space Used": 30,                                                                                                      +
                               "Sort Space Type": "Memory",                                                                                                +
                               "Shared Hit Blocks": 13,                                                                                                    +
                               "Shared Read Blocks": 374436,                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                 +
                               "Shared Written Blocks": 0,                                                                                                 +
                               "Local Hit Blocks": 0,                                                                                                      +
                               "Local Read Blocks": 0,                                                                                                     +
                               "Local Dirtied Blocks": 0,                                                                                                  +
                               "Local Written Blocks": 0,                                                                                                  +
                               "Temp Read Blocks": 0,                                                                                                      +
                               "Temp Written Blocks": 0,                                                                                                   +
                               "Plans": [                                                                                                                  +
                                 {                                                                                                                         +
                                   "Node Type": "Merge Join",                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                         +
                                   "Parallel Aware": false,                                                                                                +
                                   "Join Type": "Inner",                                                                                                   +
                                   "Startup Cost": 26348.83,                                                                                               +
                                   "Total Cost": 26443.43,                                                                                                 +
                                   "Plan Rows": 6,                                                                                                         +
                                   "Plan Width": 60,                                                                                                       +
                                   "Actual Startup Time": 18669.878,                                                                                       +
                                   "Actual Total Time": 18795.069,                                                                                         +
                                   "Actual Rows": 41,                                                                                                      +
                                   "Actual Loops": 1,                                                                                                      +
                                   "Inner Unique": true,                                                                                                   +
                                   "Merge Cond": "(ci.movie_id = t.id)",                                                                                   +
                                   "Shared Hit Blocks": 13,                                                                                                +
                                   "Shared Read Blocks": 374436,                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                             +
                                   "Shared Written Blocks": 0,                                                                                             +
                                   "Local Hit Blocks": 0,                                                                                                  +
                                   "Local Read Blocks": 0,                                                                                                 +
                                   "Local Dirtied Blocks": 0,                                                                                              +
                                   "Local Written Blocks": 0,                                                                                              +
                                   "Temp Read Blocks": 0,                                                                                                  +
                                   "Temp Written Blocks": 0,                                                                                               +
                                   "Plans": [                                                                                                              +
                                     {                                                                                                                     +
                                       "Node Type": "Merge Join",                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                     +
                                       "Parallel Aware": false,                                                                                            +
                                       "Join Type": "Inner",                                                                                               +
                                       "Startup Cost": 23141.82,                                                                                           +
                                       "Total Cost": 23156.86,                                                                                             +
                                       "Plan Rows": 29,                                                                                                    +
                                       "Plan Width": 51,                                                                                                   +
                                       "Actual Startup Time": 16819.343,                                                                                   +
                                       "Actual Total Time": 16845.374,                                                                                     +
                                       "Actual Rows": 103,                                                                                                 +
                                       "Actual Loops": 1,                                                                                                  +
                                       "Inner Unique": false,                                                                                              +
                                       "Merge Cond": "(ci.movie_id = mc.movie_id)",                                                                        +
                                       "Shared Hit Blocks": 12,                                                                                            +
                                       "Shared Read Blocks": 338439,                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                         +
                                       "Shared Written Blocks": 0,                                                                                         +
                                       "Local Hit Blocks": 0,                                                                                              +
                                       "Local Read Blocks": 0,                                                                                             +
                                       "Local Dirtied Blocks": 0,                                                                                          +
                                       "Local Written Blocks": 0,                                                                                          +
                                       "Temp Read Blocks": 0,                                                                                              +
                                       "Temp Written Blocks": 0,                                                                                           +
                                       "Plans": [                                                                                                          +
                                         {                                                                                                                 +
                                           "Node Type": "Sort",                                                                                            +
                                           "Parent Relationship": "Outer",                                                                                 +
                                           "Parallel Aware": false,                                                                                        +
                                           "Startup Cost": 21516.42,                                                                                       +
                                           "Total Cost": 21516.45,                                                                                         +
                                           "Plan Rows": 410,                                                                                               +
                                           "Plan Width": 43,                                                                                               +
                                           "Actual Startup Time": 15883.008,                                                                               +
                                           "Actual Total Time": 15883.044,                                                                                 +
                                           "Actual Rows": 265,                                                                                             +
                                           "Actual Loops": 1,                                                                                              +
                                           "Sort Key": ["ci.movie_id"],                                                                                    +
                                           "Sort Method": "quicksort",                                                                                     +
                                           "Sort Space Used": 55,                                                                                          +
                                           "Sort Space Type": "Memory",                                                                                    +
                                           "Shared Hit Blocks": 9,                                                                                         +
                                           "Shared Read Blocks": 319653,                                                                                   +
                                           "Shared Dirtied Blocks": 0,                                                                                     +
                                           "Shared Written Blocks": 0,                                                                                     +
                                           "Local Hit Blocks": 0,                                                                                          +
                                           "Local Read Blocks": 0,                                                                                         +
                                           "Local Dirtied Blocks": 0,                                                                                      +
                                           "Local Written Blocks": 0,                                                                                      +
                                           "Temp Read Blocks": 0,                                                                                          +
                                           "Temp Written Blocks": 0,                                                                                       +
                                           "Plans": [                                                                                                      +
                                             {                                                                                                             +
                                               "Node Type": "Merge Join",                                                                                  +
                                               "Parent Relationship": "Outer",                                                                             +
                                               "Parallel Aware": false,                                                                                    +
                                               "Join Type": "Inner",                                                                                       +
                                               "Startup Cost": 21268.31,                                                                                   +
                                               "Total Cost": 21515.86,                                                                                     +
                                               "Plan Rows": 410,                                                                                           +
                                               "Plan Width": 43,                                                                                           +
                                               "Actual Startup Time": 15811.756,                                                                           +
                                               "Actual Total Time": 15882.875,                                                                             +
                                               "Actual Rows": 265,                                                                                         +
                                               "Actual Loops": 1,                                                                                          +
                                               "Inner Unique": false,                                                                                      +
                                               "Merge Cond": "(n.id = ci.person_id)",                                                                      +
                                               "Shared Hit Blocks": 9,                                                                                     +
                                               "Shared Read Blocks": 319653,                                                                               +
                                               "Shared Dirtied Blocks": 0,                                                                                 +
                                               "Shared Written Blocks": 0,                                                                                 +
                                               "Local Hit Blocks": 0,                                                                                      +
                                               "Local Read Blocks": 0,                                                                                     +
                                               "Local Dirtied Blocks": 0,                                                                                  +
                                               "Local Written Blocks": 0,                                                                                  +
                                               "Temp Read Blocks": 0,                                                                                      +
                                               "Temp Written Blocks": 0,                                                                                   +
                                               "Plans": [                                                                                                  +
                                                 {                                                                                                         +
                                                   "Node Type": "Merge Join",                                                                              +
                                                   "Parent Relationship": "Outer",                                                                         +
                                                   "Parallel Aware": false,                                                                                +
                                                   "Join Type": "Inner",                                                                                   +
                                                   "Startup Cost": 5872.99,                                                                                +
                                                   "Total Cost": 6013.42,                                                                                  +
                                                   "Plan Rows": 597,                                                                                       +
                                                   "Plan Width": 39,                                                                                       +
                                                   "Actual Startup Time": 3500.235,                                                                        +
                                                   "Actual Total Time": 3537.256,                                                                          +
                                                   "Actual Rows": 1296,                                                                                    +
                                                   "Actual Loops": 1,                                                                                      +
                                                   "Inner Unique": true,                                                                                   +
                                                   "Merge Cond": "(an.person_id = n.id)",                                                                  +
                                                   "Shared Hit Blocks": 4,                                                                                 +
                                                   "Shared Read Blocks": 67004,                                                                            +
                                                   "Shared Dirtied Blocks": 0,                                                                             +
                                                   "Shared Written Blocks": 0,                                                                             +
                                                   "Local Hit Blocks": 0,                                                                                  +
                                                   "Local Read Blocks": 0,                                                                                 +
                                                   "Local Dirtied Blocks": 0,                                                                              +
                                                   "Local Written Blocks": 0,                                                                              +
                                                   "Temp Read Blocks": 0,                                                                                  +
                                                   "Temp Written Blocks": 0,                                                                               +
                                                   "Plans": [                                                                                              +
                                                     {                                                                                                     +
                                                       "Node Type": "Sort",                                                                                +
                                                       "Parent Relationship": "Outer",                                                                     +
                                                       "Parallel Aware": false,                                                                            +
                                                       "Startup Cost": 3188.40,                                                                            +
                                                       "Total Cost": 3258.38,                                                                              +
                                                       "Plan Rows": 901343,                                                                                +
                                                       "Plan Width": 20,                                                                                   +
                                                       "Actual Startup Time": 773.725,                                                                     +
                                                       "Actual Total Time": 813.817,                                                                       +
                                                       "Actual Rows": 578344,                                                                              +
                                                       "Actual Loops": 1,                                                                                  +
                                                       "Sort Key": ["an.person_id"],                                                                       +
                                                       "Sort Method": "quicksort",                                                                         +
                                                       "Sort Space Used": 89763,                                                                           +
                                                       "Sort Space Type": "Memory",                                                                        +
                                                       "Shared Hit Blocks": 2,                                                                             +
                                                       "Shared Read Blocks": 11393,                                                                        +
                                                       "Shared Dirtied Blocks": 0,                                                                         +
                                                       "Shared Written Blocks": 0,                                                                         +
                                                       "Local Hit Blocks": 0,                                                                              +
                                                       "Local Read Blocks": 0,                                                                             +
                                                       "Local Dirtied Blocks": 0,                                                                          +
                                                       "Local Written Blocks": 0,                                                                          +
                                                       "Temp Read Blocks": 0,                                                                              +
                                                       "Temp Written Blocks": 0,                                                                           +
                                                       "Plans": [                                                                                          +
                                                         {                                                                                                 +
                                                           "Node Type": "Seq Scan",                                                                        +
                                                           "Parent Relationship": "Outer",                                                                 +
                                                           "Parallel Aware": false,                                                                        +
                                                           "Relation Name": "aka_name",                                                                    +
                                                           "Alias": "an",                                                                                  +
                                                           "Startup Cost": 0.00,                                                                           +
                                                           "Total Cost": 419.75,                                                                           +
                                                           "Plan Rows": 901343,                                                                            +
                                                           "Plan Width": 20,                                                                               +
                                                           "Actual Startup Time": 0.014,                                                                   +
                                                           "Actual Total Time": 331.575,                                                                   +
                                                           "Actual Rows": 901343,                                                                          +
                                                           "Actual Loops": 1,                                                                              +
                                                           "Shared Hit Blocks": 2,                                                                         +
                                                           "Shared Read Blocks": 11393,                                                                    +
                                                           "Shared Dirtied Blocks": 0,                                                                     +
                                                           "Shared Written Blocks": 0,                                                                     +
                                                           "Local Hit Blocks": 0,                                                                          +
                                                           "Local Read Blocks": 0,                                                                         +
                                                           "Local Dirtied Blocks": 0,                                                                      +
                                                           "Local Written Blocks": 0,                                                                      +
                                                           "Temp Read Blocks": 0,                                                                          +
                                                           "Temp Written Blocks": 0                                                                        +
                                                         }                                                                                                 +
                                                       ]                                                                                                   +
                                                     },                                                                                                    +
                                                     {                                                                                                     +
                                                       "Node Type": "Sort",                                                                                +
                                                       "Parent Relationship": "Inner",                                                                     +
                                                       "Parallel Aware": false,                                                                            +
                                                       "Startup Cost": 2684.59,                                                                            +
                                                       "Total Cost": 2684.80,                                                                              +
                                                       "Plan Rows": 2762,                                                                                  +
                                                       "Plan Width": 19,                                                                                   +
                                                       "Actual Startup Time": 2652.808,                                                                    +
                                                       "Actual Total Time": 2653.191,                                                                      +
                                                       "Actual Rows": 5409,                                                                                +
                                                       "Actual Loops": 1,                                                                                  +
                                                       "Sort Key": ["n.id"],                                                                               +
                                                       "Sort Method": "quicksort",                                                                         +
                                                       "Sort Space Used": 603,                                                                             +
                                                       "Sort Space Type": "Memory",                                                                        +
                                                       "Shared Hit Blocks": 2,                                                                             +
                                                       "Shared Read Blocks": 55611,                                                                        +
                                                       "Shared Dirtied Blocks": 0,                                                                         +
                                                       "Shared Written Blocks": 0,                                                                         +
                                                       "Local Hit Blocks": 0,                                                                              +
                                                       "Local Read Blocks": 0,                                                                             +
                                                       "Local Dirtied Blocks": 0,                                                                          +
                                                       "Local Written Blocks": 0,                                                                          +
                                                       "Temp Read Blocks": 0,                                                                              +
                                                       "Temp Written Blocks": 0,                                                                           +
                                                       "Plans": [                                                                                          +
                                                         {                                                                                                 +
                                                           "Node Type": "Seq Scan",                                                                        +
                                                           "Parent Relationship": "Outer",                                                                 +
                                                           "Parallel Aware": false,                                                                        +
                                                           "Relation Name": "name",                                                                        +
                                                           "Alias": "n",                                                                                   +
                                                           "Startup Cost": 0.00,                                                                           +
                                                           "Total Cost": 2679.69,                                                                          +
                                                           "Plan Rows": 2762,                                                                              +
                                                           "Plan Width": 19,                                                                               +
                                                           "Actual Startup Time": 1143.713,                                                                +
                                                           "Actual Total Time": 2648.758,                                                                  +
                                                           "Actual Rows": 5409,                                                                            +
                                                           "Actual Loops": 1,                                                                              +
                                                           "Filter": "((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))",                       +
                                                           "Rows Removed by Filter": 4162082,                                                              +
                                                           "Shared Hit Blocks": 2,                                                                         +
                                                           "Shared Read Blocks": 55611,                                                                    +
                                                           "Shared Dirtied Blocks": 0,                                                                     +
                                                           "Shared Written Blocks": 0,                                                                     +
                                                           "Local Hit Blocks": 0,                                                                          +
                                                           "Local Read Blocks": 0,                                                                         +
                                                           "Local Dirtied Blocks": 0,                                                                      +
                                                           "Local Written Blocks": 0,                                                                      +
                                                           "Temp Read Blocks": 0,                                                                          +
                                                           "Temp Written Blocks": 0                                                                        +
                                                         }                                                                                                 +
                                                       ]                                                                                                   +
                                                     }                                                                                                     +
                                                   ]                                                                                                       +
                                                 },                                                                                                        +
                                                 {                                                                                                         +
                                                   "Node Type": "Sort",                                                                                    +
                                                   "Parent Relationship": "Inner",                                                                         +
                                                   "Parallel Aware": false,                                                                                +
                                                   "Startup Cost": 15395.32,                                                                               +
                                                   "Total Cost": 15450.62,                                                                                 +
                                                   "Plan Rows": 712274,                                                                                    +
                                                   "Plan Width": 16,                                                                                       +
                                                   "Actual Startup Time": 12230.603,                                                                       +
                                                   "Actual Total Time": 12263.808,                                                                         +
                                                   "Actual Rows": 711457,                                                                                  +
                                                   "Actual Loops": 1,                                                                                      +
                                                   "Sort Key": ["ci.person_id"],                                                                           +
                                                   "Sort Method": "quicksort",                                                                             +
                                                   "Sort Space Used": 58037,                                                                               +
                                                   "Sort Space Type": "Memory",                                                                            +
                                                   "Shared Hit Blocks": 5,                                                                                 +
                                                   "Shared Read Blocks": 252649,                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                             +
                                                   "Shared Written Blocks": 0,                                                                             +
                                                   "Local Hit Blocks": 0,                                                                                  +
                                                   "Local Read Blocks": 0,                                                                                 +
                                                   "Local Dirtied Blocks": 0,                                                                              +
                                                   "Local Written Blocks": 0,                                                                              +
                                                   "Temp Read Blocks": 0,                                                                                  +
                                                   "Temp Written Blocks": 0,                                                                               +
                                                   "Plans": [                                                                                              +
                                                     {                                                                                                     +
                                                       "Node Type": "Seq Scan",                                                                            +
                                                       "Parent Relationship": "Outer",                                                                     +
                                                       "Parallel Aware": false,                                                                            +
                                                       "Relation Name": "cast_info",                                                                       +
                                                       "Alias": "ci",                                                                                      +
                                                       "Startup Cost": 0.00,                                                                               +
                                                       "Total Cost": 13245.00,                                                                             +
                                                       "Plan Rows": 712274,                                                                                +
                                                       "Plan Width": 16,                                                                                   +
                                                       "Actual Startup Time": 0.015,                                                                       +
                                                       "Actual Total Time": 11901.237,                                                                     +
                                                       "Actual Rows": 713828,                                                                              +
                                                       "Actual Loops": 1,                                                                                  +
                                                       "Filter": "(note = '(voice)'::text)",                                                               +
                                                       "Rows Removed by Filter": 35530516,                                                                 +
                                                       "Shared Hit Blocks": 5,                                                                             +
                                                       "Shared Read Blocks": 252649,                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                         +
                                                       "Shared Written Blocks": 0,                                                                         +
                                                       "Local Hit Blocks": 0,                                                                              +
                                                       "Local Read Blocks": 0,                                                                             +
                                                       "Local Dirtied Blocks": 0,                                                                          +
                                                       "Local Written Blocks": 0,                                                                          +
                                                       "Temp Read Blocks": 0,                                                                              +
                                                       "Temp Written Blocks": 0                                                                            +
                                                     }                                                                                                     +
                                                   ]                                                                                                       +
                                                 }                                                                                                         +
                                               ]                                                                                                           +
                                             }                                                                                                             +
                                           ]                                                                                                               +
                                         },                                                                                                                +
                                         {                                                                                                                 +
                                           "Node Type": "Sort",                                                                                            +
                                           "Parent Relationship": "Inner",                                                                                 +
                                           "Parallel Aware": false,                                                                                        +
                                           "Startup Cost": 1625.41,                                                                                        +
                                           "Total Cost": 1632.90,                                                                                          +
                                           "Plan Rows": 96436,                                                                                             +
                                           "Plan Width": 8,                                                                                                +
                                           "Actual Startup Time": 933.939,                                                                                 +
                                           "Actual Total Time": 943.485,                                                                                   +
                                           "Actual Rows": 194991,                                                                                          +
                                           "Actual Loops": 1,                                                                                              +
                                           "Sort Key": ["mc.movie_id"],                                                                                    +
                                           "Sort Method": "quicksort",                                                                                     +
                                           "Sort Space Used": 15450,                                                                                       +
                                           "Sort Space Type": "Memory",                                                                                    +
                                           "Shared Hit Blocks": 3,                                                                                         +
                                           "Shared Read Blocks": 18786,                                                                                    +
                                           "Shared Dirtied Blocks": 0,                                                                                     +
                                           "Shared Written Blocks": 0,                                                                                     +
                                           "Local Hit Blocks": 0,                                                                                          +
                                           "Local Read Blocks": 0,                                                                                         +
                                           "Local Dirtied Blocks": 0,                                                                                      +
                                           "Local Written Blocks": 0,                                                                                      +
                                           "Temp Read Blocks": 0,                                                                                          +
                                           "Temp Written Blocks": 0,                                                                                       +
                                           "Plans": [                                                                                                      +
                                             {                                                                                                             +
                                               "Node Type": "Seq Scan",                                                                                    +
                                               "Parent Relationship": "Outer",                                                                             +
                                               "Parallel Aware": false,                                                                                    +
                                               "Relation Name": "movie_companies",                                                                         +
                                               "Alias": "mc",                                                                                              +
                                               "Startup Cost": 0.00,                                                                                       +
                                               "Total Cost": 1377.47,                                                                                      +
                                               "Plan Rows": 96436,                                                                                         +
                                               "Plan Width": 8,                                                                                            +
                                               "Actual Startup Time": 0.017,                                                                               +
                                               "Actual Total Time": 859.273,                                                                               +
                                               "Actual Rows": 198519,                                                                                      +
                                               "Actual Loops": 1,                                                                                          +
                                               "Filter": "((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))",+
                                               "Rows Removed by Filter": 2410610,                                                                          +
                                               "Shared Hit Blocks": 3,                                                                                     +
                                               "Shared Read Blocks": 18786,                                                                                +
                                               "Shared Dirtied Blocks": 0,                                                                                 +
                                               "Shared Written Blocks": 0,                                                                                 +
                                               "Local Hit Blocks": 0,                                                                                      +
                                               "Local Read Blocks": 0,                                                                                     +
                                               "Local Dirtied Blocks": 0,                                                                                  +
                                               "Local Written Blocks": 0,                                                                                  +
                                               "Temp Read Blocks": 0,                                                                                      +
                                               "Temp Written Blocks": 0                                                                                    +
                                             }                                                                                                             +
                                           ]                                                                                                               +
                                         }                                                                                                                 +
                                       ]                                                                                                                   +
                                     },                                                                                                                    +
                                     {                                                                                                                     +
                                       "Node Type": "Sort",                                                                                                +
                                       "Parent Relationship": "Inner",                                                                                     +
                                       "Parallel Aware": false,                                                                                            +
                                       "Startup Cost": 3207.01,                                                                                            +
                                       "Total Cost": 3246.82,                                                                                              +
                                       "Plan Rows": 512825,                                                                                                +
                                       "Plan Width": 21,                                                                                                   +
                                       "Actual Startup Time": 1823.585,                                                                                    +
                                       "Actual Total Time": 1881.010,                                                                                      +
                                       "Actual Rows": 508388,                                                                                              +
                                       "Actual Loops": 1,                                                                                                  +
                                       "Sort Key": ["t.id"],                                                                                               +
                                       "Sort Method": "quicksort",                                                                                         +
                                       "Sort Space Used": 47493,                                                                                           +
                                       "Sort Space Type": "Memory",                                                                                        +
                                       "Shared Hit Blocks": 1,                                                                                             +
                                       "Shared Read Blocks": 35997,                                                                                        +
                                       "Shared Dirtied Blocks": 0,                                                                                         +
                                       "Shared Written Blocks": 0,                                                                                         +
                                       "Local Hit Blocks": 0,                                                                                              +
                                       "Local Read Blocks": 0,                                                                                             +
                                       "Local Dirtied Blocks": 0,                                                                                          +
                                       "Local Written Blocks": 0,                                                                                          +
                                       "Temp Read Blocks": 0,                                                                                              +
                                       "Temp Written Blocks": 0,                                                                                           +
                                       "Plans": [                                                                                                          +
                                         {                                                                                                                 +
                                           "Node Type": "Seq Scan",                                                                                        +
                                           "Parent Relationship": "Outer",                                                                                 +
                                           "Parallel Aware": false,                                                                                        +
                                           "Relation Name": "title",                                                                                       +
                                           "Alias": "t",                                                                                                   +
                                           "Startup Cost": 0.00,                                                                                           +
                                           "Total Cost": 1696.56,                                                                                          +
                                           "Plan Rows": 512825,                                                                                            +
                                           "Plan Width": 21,                                                                                               +
                                           "Actual Startup Time": 6.968,                                                                                   +
                                           "Actual Total Time": 1484.679,                                                                                  +
                                           "Actual Rows": 512825,                                                                                          +
                                           "Actual Loops": 1,                                                                                              +
                                           "Filter": "((production_year >= 2007) AND (production_year <= 2010))",                                          +
                                           "Rows Removed by Filter": 2015487,                                                                              +
                                           "Shared Hit Blocks": 1,                                                                                         +
                                           "Shared Read Blocks": 35997,                                                                                    +
                                           "Shared Dirtied Blocks": 0,                                                                                     +
                                           "Shared Written Blocks": 0,                                                                                     +
                                           "Local Hit Blocks": 0,                                                                                          +
                                           "Local Read Blocks": 0,                                                                                         +
                                           "Local Dirtied Blocks": 0,                                                                                      +
                                           "Local Written Blocks": 0,                                                                                      +
                                           "Temp Read Blocks": 0,                                                                                          +
                                           "Temp Written Blocks": 0                                                                                        +
                                         }                                                                                                                 +
                                       ]                                                                                                                   +
                                     }                                                                                                                     +
                                   ]                                                                                                                       +
                                 }                                                                                                                         +
                               ]                                                                                                                           +
                             },                                                                                                                            +
                             {                                                                                                                             +
                               "Node Type": "Sort",                                                                                                        +
                               "Parent Relationship": "Inner",                                                                                             +
                               "Parallel Aware": false,                                                                                                    +
                               "Startup Cost": 0.03,                                                                                                       +
                               "Total Cost": 0.03,                                                                                                         +
                               "Plan Rows": 1,                                                                                                             +
                               "Plan Width": 4,                                                                                                            +
                               "Actual Startup Time": 0.028,                                                                                               +
                               "Actual Total Time": 0.028,                                                                                                 +
                               "Actual Rows": 1,                                                                                                           +
                               "Actual Loops": 1,                                                                                                          +
                               "Sort Key": ["rt.id"],                                                                                                      +
                               "Sort Method": "quicksort",                                                                                                 +
                               "Sort Space Used": 25,                                                                                                      +
                               "Sort Space Type": "Memory",                                                                                                +
                               "Shared Hit Blocks": 1,                                                                                                     +
                               "Shared Read Blocks": 0,                                                                                                    +
                               "Shared Dirtied Blocks": 0,                                                                                                 +
                               "Shared Written Blocks": 0,                                                                                                 +
                               "Local Hit Blocks": 0,                                                                                                      +
                               "Local Read Blocks": 0,                                                                                                     +
                               "Local Dirtied Blocks": 0,                                                                                                  +
                               "Local Written Blocks": 0,                                                                                                  +
                               "Temp Read Blocks": 0,                                                                                                      +
                               "Temp Written Blocks": 0,                                                                                                   +
                               "Plans": [                                                                                                                  +
                                 {                                                                                                                         +
                                   "Node Type": "Seq Scan",                                                                                                +
                                   "Parent Relationship": "Outer",                                                                                         +
                                   "Parallel Aware": false,                                                                                                +
                                   "Relation Name": "role_type",                                                                                           +
                                   "Alias": "rt",                                                                                                          +
                                   "Startup Cost": 0.00,                                                                                                   +
                                   "Total Cost": 0.03,                                                                                                     +
                                   "Plan Rows": 1,                                                                                                         +
                                   "Plan Width": 4,                                                                                                        +
                                   "Actual Startup Time": 0.017,                                                                                           +
                                   "Actual Total Time": 0.019,                                                                                             +
                                   "Actual Rows": 1,                                                                                                       +
                                   "Actual Loops": 1,                                                                                                      +
                                   "Filter": "((role)::text = 'actress'::text)",                                                                           +
                                   "Rows Removed by Filter": 11,                                                                                           +
                                   "Shared Hit Blocks": 1,                                                                                                 +
                                   "Shared Read Blocks": 0,                                                                                                +
                                   "Shared Dirtied Blocks": 0,                                                                                             +
                                   "Shared Written Blocks": 0,                                                                                             +
                                   "Local Hit Blocks": 0,                                                                                                  +
                                   "Local Read Blocks": 0,                                                                                                 +
                                   "Local Dirtied Blocks": 0,                                                                                              +
                                   "Local Written Blocks": 0,                                                                                              +
                                   "Temp Read Blocks": 0,                                                                                                  +
                                   "Temp Written Blocks": 0                                                                                                +
                                 }                                                                                                                         +
                               ]                                                                                                                           +
                             }                                                                                                                             +
                           ]                                                                                                                               +
                         }                                                                                                                                 +
                       ]                                                                                                                                   +
                     },                                                                                                                                    +
                     {                                                                                                                                     +
                       "Node Type": "Sort",                                                                                                                +
                       "Parent Relationship": "Inner",                                                                                                     +
                       "Parallel Aware": false,                                                                                                            +
                       "Startup Cost": 344.10,                                                                                                             +
                       "Total Cost": 350.69,                                                                                                               +
                       "Plan Rows": 84843,                                                                                                                 +
                       "Plan Width": 4,                                                                                                                    +
                       "Actual Startup Time": 169.298,                                                                                                     +
                       "Actual Total Time": 170.097,                                                                                                       +
                       "Actual Rows": 6424,                                                                                                                +
                       "Actual Loops": 1,                                                                                                                  +
                       "Sort Key": ["cn.id"],                                                                                                              +
                       "Sort Method": "quicksort",                                                                                                         +
                       "Sort Space Used": 7050,                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                        +
                       "Shared Hit Blocks": 2,                                                                                                             +
                       "Shared Read Blocks": 2992,                                                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                                                         +
                       "Shared Written Blocks": 0,                                                                                                         +
                       "Local Hit Blocks": 0,                                                                                                              +
                       "Local Read Blocks": 0,                                                                                                             +
                       "Local Dirtied Blocks": 0,                                                                                                          +
                       "Local Written Blocks": 0,                                                                                                          +
                       "Temp Read Blocks": 0,                                                                                                              +
                       "Temp Written Blocks": 0,                                                                                                           +
                       "Plans": [                                                                                                                          +
                         {                                                                                                                                 +
                           "Node Type": "Seq Scan",                                                                                                        +
                           "Parent Relationship": "Outer",                                                                                                 +
                           "Parallel Aware": false,                                                                                                        +
                           "Relation Name": "company_name",                                                                                                +
                           "Alias": "cn",                                                                                                                  +
                           "Startup Cost": 0.00,                                                                                                           +
                           "Total Cost": 128.41,                                                                                                           +
                           "Plan Rows": 84843,                                                                                                             +
                           "Plan Width": 4,                                                                                                                +
                           "Actual Startup Time": 5.736,                                                                                                   +
                           "Actual Total Time": 121.819,                                                                                                   +
                           "Actual Rows": 84843,                                                                                                           +
                           "Actual Loops": 1,                                                                                                              +
                           "Filter": "((country_code)::text = '[us]'::text)",                                                                              +
                           "Rows Removed by Filter": 150154,                                                                                               +
                           "Shared Hit Blocks": 2,                                                                                                         +
                           "Shared Read Blocks": 2992,                                                                                                     +
                           "Shared Dirtied Blocks": 0,                                                                                                     +
                           "Shared Written Blocks": 0,                                                                                                     +
                           "Local Hit Blocks": 0,                                                                                                          +
                           "Local Read Blocks": 0,                                                                                                         +
                           "Local Dirtied Blocks": 0,                                                                                                      +
                           "Local Written Blocks": 0,                                                                                                      +
                           "Temp Read Blocks": 0,                                                                                                          +
                           "Temp Written Blocks": 0                                                                                                        +
                         }                                                                                                                                 +
                       ]                                                                                                                                   +
                     }                                                                                                                                     +
                   ]                                                                                                                                       +
                 }                                                                                                                                         +
               ]                                                                                                                                           +
             },                                                                                                                                            +
             {                                                                                                                                             +
               "Node Type": "Sort",                                                                                                                        +
               "Parent Relationship": "Inner",                                                                                                             +
               "Parallel Aware": false,                                                                                                                    +
               "Startup Cost": 11884.63,                                                                                                                   +
               "Total Cost": 12128.45,                                                                                                                     +
               "Plan Rows": 3140339,                                                                                                                       +
               "Plan Width": 20,                                                                                                                           +
               "Actual Startup Time": 2459.362,                                                                                                            +
               "Actual Total Time": 2832.002,                                                                                                              +
               "Actual Rows": 2981442,                                                                                                                     +
               "Actual Loops": 1,                                                                                                                          +
               "Sort Key": ["chn.id"],                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                                 +
               "Sort Space Used": 318833,                                                                                                                  +
               "Sort Space Type": "Memory",                                                                                                                +
               "Shared Hit Blocks": 2,                                                                                                                     +
               "Shared Read Blocks": 36445,                                                                                                                +
               "Shared Dirtied Blocks": 0,                                                                                                                 +
               "Shared Written Blocks": 0,                                                                                                                 +
               "Local Hit Blocks": 0,                                                                                                                      +
               "Local Read Blocks": 0,                                                                                                                     +
               "Local Dirtied Blocks": 0,                                                                                                                  +
               "Local Written Blocks": 0,                                                                                                                  +
               "Temp Read Blocks": 0,                                                                                                                      +
               "Temp Written Blocks": 0,                                                                                                                   +
               "Plans": [                                                                                                                                  +
                 {                                                                                                                                         +
                   "Node Type": "Seq Scan",                                                                                                                +
                   "Parent Relationship": "Outer",                                                                                                         +
                   "Parallel Aware": false,                                                                                                                +
                   "Relation Name": "char_name",                                                                                                           +
                   "Alias": "chn",                                                                                                                         +
                   "Startup Cost": 0.00,                                                                                                                   +
                   "Total Cost": 1360.36,                                                                                                                  +
                   "Plan Rows": 3140339,                                                                                                                   +
                   "Plan Width": 20,                                                                                                                       +
                   "Actual Startup Time": 5.238,                                                                                                           +
                   "Actual Total Time": 940.549,                                                                                                           +
                   "Actual Rows": 3140339,                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                      +
                   "Shared Hit Blocks": 2,                                                                                                                 +
                   "Shared Read Blocks": 36445,                                                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                                                             +
                   "Shared Written Blocks": 0,                                                                                                             +
                   "Local Hit Blocks": 0,                                                                                                                  +
                   "Local Read Blocks": 0,                                                                                                                 +
                   "Local Dirtied Blocks": 0,                                                                                                              +
                   "Local Written Blocks": 0,                                                                                                              +
                   "Temp Read Blocks": 0,                                                                                                                  +
                   "Temp Written Blocks": 0                                                                                                                +
                 }                                                                                                                                         +
               ]                                                                                                                                           +
             }                                                                                                                                             +
           ]                                                                                                                                               +
         }                                                                                                                                                 +
       ]                                                                                                                                                   +
     },                                                                                                                                                    +
     "Planning Time": 4963.578,                                                                                                                            +
     "Triggers": [                                                                                                                                         +
     ],                                                                                                                                                    +
     "Execution Time": 22235.221                                                                                                                           +
   }                                                                                                                                                       +
 ]
(1 row)

