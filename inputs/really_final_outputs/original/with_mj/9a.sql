                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                        +
   {                                                                                                                                                                                      +
     "Plan": {                                                                                                                                                                            +
       "Node Type": "Aggregate",                                                                                                                                                          +
       "Strategy": "Plain",                                                                                                                                                               +
       "Partial Mode": "Simple",                                                                                                                                                          +
       "Parallel Aware": false,                                                                                                                                                           +
       "Startup Cost": 44956.75,                                                                                                                                                          +
       "Total Cost": 44956.75,                                                                                                                                                            +
       "Plan Rows": 1,                                                                                                                                                                    +
       "Plan Width": 96,                                                                                                                                                                  +
       "Actual Startup Time": 22476.266,                                                                                                                                                  +
       "Actual Total Time": 22476.266,                                                                                                                                                    +
       "Actual Rows": 1,                                                                                                                                                                  +
       "Actual Loops": 1,                                                                                                                                                                 +
       "Shared Hit Blocks": 22,                                                                                                                                                           +
       "Shared Read Blocks": 413873,                                                                                                                                                      +
       "Shared Dirtied Blocks": 0,                                                                                                                                                        +
       "Shared Written Blocks": 0,                                                                                                                                                        +
       "Local Hit Blocks": 0,                                                                                                                                                             +
       "Local Read Blocks": 0,                                                                                                                                                            +
       "Local Dirtied Blocks": 0,                                                                                                                                                         +
       "Local Written Blocks": 0,                                                                                                                                                         +
       "Temp Read Blocks": 0,                                                                                                                                                             +
       "Temp Written Blocks": 0,                                                                                                                                                          +
       "Plans": [                                                                                                                                                                         +
         {                                                                                                                                                                                +
           "Node Type": "Merge Join",                                                                                                                                                     +
           "Parent Relationship": "Outer",                                                                                                                                                +
           "Parallel Aware": false,                                                                                                                                                       +
           "Join Type": "Inner",                                                                                                                                                          +
           "Startup Cost": 44469.12,                                                                                                                                                      +
           "Total Cost": 44956.75,                                                                                                                                                        +
           "Plan Rows": 1,                                                                                                                                                                +
           "Plan Width": 49,                                                                                                                                                              +
           "Actual Startup Time": 21698.264,                                                                                                                                              +
           "Actual Total Time": 22476.144,                                                                                                                                                +
           "Actual Rows": 121,                                                                                                                                                            +
           "Actual Loops": 1,                                                                                                                                                             +
           "Inner Unique": true,                                                                                                                                                          +
           "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                                                                  +
           "Shared Hit Blocks": 22,                                                                                                                                                       +
           "Shared Read Blocks": 413873,                                                                                                                                                  +
           "Shared Dirtied Blocks": 0,                                                                                                                                                    +
           "Shared Written Blocks": 0,                                                                                                                                                    +
           "Local Hit Blocks": 0,                                                                                                                                                         +
           "Local Read Blocks": 0,                                                                                                                                                        +
           "Local Dirtied Blocks": 0,                                                                                                                                                     +
           "Local Written Blocks": 0,                                                                                                                                                     +
           "Temp Read Blocks": 0,                                                                                                                                                         +
           "Temp Written Blocks": 0,                                                                                                                                                      +
           "Plans": [                                                                                                                                                                     +
             {                                                                                                                                                                            +
               "Node Type": "Sort",                                                                                                                                                       +
               "Parent Relationship": "Outer",                                                                                                                                            +
               "Parallel Aware": false,                                                                                                                                                   +
               "Startup Cost": 32584.49,                                                                                                                                                  +
               "Total Cost": 32584.49,                                                                                                                                                    +
               "Plan Rows": 2,                                                                                                                                                            +
               "Plan Width": 37,                                                                                                                                                          +
               "Actual Startup Time": 19244.109,                                                                                                                                          +
               "Actual Total Time": 19244.126,                                                                                                                                            +
               "Actual Rows": 122,                                                                                                                                                        +
               "Actual Loops": 1,                                                                                                                                                         +
               "Sort Key": ["ci.person_role_id"],                                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                                                +
               "Sort Space Used": 36,                                                                                                                                                     +
               "Sort Space Type": "Memory",                                                                                                                                               +
               "Shared Hit Blocks": 20,                                                                                                                                                   +
               "Shared Read Blocks": 377428,                                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                                                +
               "Shared Written Blocks": 0,                                                                                                                                                +
               "Local Hit Blocks": 0,                                                                                                                                                     +
               "Local Read Blocks": 0,                                                                                                                                                    +
               "Local Dirtied Blocks": 0,                                                                                                                                                 +
               "Local Written Blocks": 0,                                                                                                                                                 +
               "Temp Read Blocks": 0,                                                                                                                                                     +
               "Temp Written Blocks": 0,                                                                                                                                                  +
               "Plans": [                                                                                                                                                                 +
                 {                                                                                                                                                                        +
                   "Node Type": "Merge Join",                                                                                                                                             +
                   "Parent Relationship": "Outer",                                                                                                                                        +
                   "Parallel Aware": false,                                                                                                                                               +
                   "Join Type": "Inner",                                                                                                                                                  +
                   "Startup Cost": 32571.31,                                                                                                                                              +
                   "Total Cost": 32584.49,                                                                                                                                                +
                   "Plan Rows": 2,                                                                                                                                                        +
                   "Plan Width": 37,                                                                                                                                                      +
                   "Actual Startup Time": 19240.762,                                                                                                                                      +
                   "Actual Total Time": 19244.006,                                                                                                                                        +
                   "Actual Rows": 127,                                                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                                                     +
                   "Inner Unique": true,                                                                                                                                                  +
                   "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                               +
                   "Shared Hit Blocks": 16,                                                                                                                                               +
                   "Shared Read Blocks": 377428,                                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                                            +
                   "Shared Written Blocks": 0,                                                                                                                                            +
                   "Local Hit Blocks": 0,                                                                                                                                                 +
                   "Local Read Blocks": 0,                                                                                                                                                +
                   "Local Dirtied Blocks": 0,                                                                                                                                             +
                   "Local Written Blocks": 0,                                                                                                                                             +
                   "Temp Read Blocks": 0,                                                                                                                                                 +
                   "Temp Written Blocks": 0,                                                                                                                                              +
                   "Plans": [                                                                                                                                                             +
                     {                                                                                                                                                                    +
                       "Node Type": "Sort",                                                                                                                                               +
                       "Parent Relationship": "Outer",                                                                                                                                    +
                       "Parallel Aware": false,                                                                                                                                           +
                       "Startup Cost": 32227.21,                                                                                                                                          +
                       "Total Cost": 32227.21,                                                                                                                                            +
                       "Plan Rows": 5,                                                                                                                                                    +
                       "Plan Width": 41,                                                                                                                                                  +
                       "Actual Startup Time": 19077.842,                                                                                                                                  +
                       "Actual Total Time": 19077.859,                                                                                                                                    +
                       "Actual Rows": 130,                                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                                                 +
                       "Sort Key": ["mc.company_id"],                                                                                                                                     +
                       "Sort Method": "quicksort",                                                                                                                                        +
                       "Sort Space Used": 37,                                                                                                                                             +
                       "Sort Space Type": "Memory",                                                                                                                                       +
                       "Shared Hit Blocks": 14,                                                                                                                                           +
                       "Shared Read Blocks": 374436,                                                                                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                                                                                        +
                       "Shared Written Blocks": 0,                                                                                                                                        +
                       "Local Hit Blocks": 0,                                                                                                                                             +
                       "Local Read Blocks": 0,                                                                                                                                            +
                       "Local Dirtied Blocks": 0,                                                                                                                                         +
                       "Local Written Blocks": 0,                                                                                                                                         +
                       "Temp Read Blocks": 0,                                                                                                                                             +
                       "Temp Written Blocks": 0,                                                                                                                                          +
                       "Plans": [                                                                                                                                                         +
                         {                                                                                                                                                                +
                           "Node Type": "Merge Join",                                                                                                                                     +
                           "Parent Relationship": "Outer",                                                                                                                                +
                           "Parallel Aware": false,                                                                                                                                       +
                           "Join Type": "Inner",                                                                                                                                          +
                           "Startup Cost": 32009.83,                                                                                                                                      +
                           "Total Cost": 32227.21,                                                                                                                                        +
                           "Plan Rows": 5,                                                                                                                                                +
                           "Plan Width": 41,                                                                                                                                              +
                           "Actual Startup Time": 18724.793,                                                                                                                              +
                           "Actual Total Time": 19077.759,                                                                                                                                +
                           "Actual Rows": 130,                                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                                             +
                           "Inner Unique": true,                                                                                                                                          +
                           "Merge Cond": "(ci.movie_id = t.id)",                                                                                                                          +
                           "Shared Hit Blocks": 14,                                                                                                                                       +
                           "Shared Read Blocks": 374436,                                                                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                                                                                    +
                           "Shared Written Blocks": 0,                                                                                                                                    +
                           "Local Hit Blocks": 0,                                                                                                                                         +
                           "Local Read Blocks": 0,                                                                                                                                        +
                           "Local Dirtied Blocks": 0,                                                                                                                                     +
                           "Local Written Blocks": 0,                                                                                                                                     +
                           "Temp Read Blocks": 0,                                                                                                                                         +
                           "Temp Written Blocks": 0,                                                                                                                                      +
                           "Plans": [                                                                                                                                                     +
                             {                                                                                                                                                            +
                               "Node Type": "Merge Join",                                                                                                                                 +
                               "Parent Relationship": "Outer",                                                                                                                            +
                               "Parallel Aware": false,                                                                                                                                   +
                               "Join Type": "Inner",                                                                                                                                      +
                               "Startup Cost": 26858.97,                                                                                                                                  +
                               "Total Cost": 26904.48,                                                                                                                                    +
                               "Plan Rows": 12,                                                                                                                                           +
                               "Plan Width": 32,                                                                                                                                          +
                               "Actual Startup Time": 16758.740,                                                                                                                          +
                               "Actual Total Time": 16840.656,                                                                                                                            +
                               "Actual Rows": 373,                                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                                         +
                               "Inner Unique": false,                                                                                                                                     +
                               "Merge Cond": "(ci.movie_id = mc.movie_id)",                                                                                                               +
                               "Shared Hit Blocks": 13,                                                                                                                                   +
                               "Shared Read Blocks": 338439,                                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                                                +
                               "Shared Written Blocks": 0,                                                                                                                                +
                               "Local Hit Blocks": 0,                                                                                                                                     +
                               "Local Read Blocks": 0,                                                                                                                                    +
                               "Local Dirtied Blocks": 0,                                                                                                                                 +
                               "Local Written Blocks": 0,                                                                                                                                 +
                               "Temp Read Blocks": 0,                                                                                                                                     +
                               "Temp Written Blocks": 0,                                                                                                                                  +
                               "Plans": [                                                                                                                                                 +
                                 {                                                                                                                                                        +
                                   "Node Type": "Sort",                                                                                                                                   +
                                   "Parent Relationship": "Outer",                                                                                                                        +
                                   "Parallel Aware": false,                                                                                                                               +
                                   "Startup Cost": 24857.89,                                                                                                                              +
                                   "Total Cost": 24857.89,                                                                                                                                +
                                   "Plan Rows": 57,                                                                                                                                       +
                                   "Plan Width": 24,                                                                                                                                      +
                                   "Actual Startup Time": 15722.993,                                                                                                                      +
                                   "Actual Total Time": 15723.050,                                                                                                                        +
                                   "Actual Rows": 425,                                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                                     +
                                   "Sort Key": ["ci.movie_id"],                                                                                                                           +
                                   "Sort Method": "quicksort",                                                                                                                            +
                                   "Sort Space Used": 56,                                                                                                                                 +
                                   "Sort Space Type": "Memory",                                                                                                                           +
                                   "Shared Hit Blocks": 10,                                                                                                                               +
                                   "Shared Read Blocks": 319653,                                                                                                                          +
                                   "Shared Dirtied Blocks": 0,                                                                                                                            +
                                   "Shared Written Blocks": 0,                                                                                                                            +
                                   "Local Hit Blocks": 0,                                                                                                                                 +
                                   "Local Read Blocks": 0,                                                                                                                                +
                                   "Local Dirtied Blocks": 0,                                                                                                                             +
                                   "Local Written Blocks": 0,                                                                                                                             +
                                   "Temp Read Blocks": 0,                                                                                                                                 +
                                   "Temp Written Blocks": 0,                                                                                                                              +
                                   "Plans": [                                                                                                                                             +
                                     {                                                                                                                                                    +
                                       "Node Type": "Merge Join",                                                                                                                         +
                                       "Parent Relationship": "Outer",                                                                                                                    +
                                       "Parallel Aware": false,                                                                                                                           +
                                       "Join Type": "Inner",                                                                                                                              +
                                       "Startup Cost": 24857.73,                                                                                                                          +
                                       "Total Cost": 24857.84,                                                                                                                            +
                                       "Plan Rows": 57,                                                                                                                                   +
                                       "Plan Width": 24,                                                                                                                                  +
                                       "Actual Startup Time": 15722.731,                                                                                                                  +
                                       "Actual Total Time": 15722.852,                                                                                                                    +
                                       "Actual Rows": 425,                                                                                                                                +
                                       "Actual Loops": 1,                                                                                                                                 +
                                       "Inner Unique": true,                                                                                                                              +
                                       "Merge Cond": "(ci.role_id = rt.id)",                                                                                                              +
                                       "Shared Hit Blocks": 10,                                                                                                                           +
                                       "Shared Read Blocks": 319653,                                                                                                                      +
                                       "Shared Dirtied Blocks": 0,                                                                                                                        +
                                       "Shared Written Blocks": 0,                                                                                                                        +
                                       "Local Hit Blocks": 0,                                                                                                                             +
                                       "Local Read Blocks": 0,                                                                                                                            +
                                       "Local Dirtied Blocks": 0,                                                                                                                         +
                                       "Local Written Blocks": 0,                                                                                                                         +
                                       "Temp Read Blocks": 0,                                                                                                                             +
                                       "Temp Written Blocks": 0,                                                                                                                          +
                                       "Plans": [                                                                                                                                         +
                                         {                                                                                                                                                +
                                           "Node Type": "Sort",                                                                                                                           +
                                           "Parent Relationship": "Outer",                                                                                                                +
                                           "Parallel Aware": false,                                                                                                                       +
                                           "Startup Cost": 24857.69,                                                                                                                      +
                                           "Total Cost": 24857.74,                                                                                                                        +
                                           "Plan Rows": 684,                                                                                                                              +
                                           "Plan Width": 28,                                                                                                                              +
                                           "Actual Startup Time": 15722.703,                                                                                                              +
                                           "Actual Total Time": 15722.725,                                                                                                                +
                                           "Actual Rows": 425,                                                                                                                            +
                                           "Actual Loops": 1,                                                                                                                             +
                                           "Sort Key": ["ci.role_id"],                                                                                                                    +
                                           "Sort Method": "quicksort",                                                                                                                    +
                                           "Sort Space Used": 57,                                                                                                                         +
                                           "Sort Space Type": "Memory",                                                                                                                   +
                                           "Shared Hit Blocks": 9,                                                                                                                        +
                                           "Shared Read Blocks": 319653,                                                                                                                  +
                                           "Shared Dirtied Blocks": 0,                                                                                                                    +
                                           "Shared Written Blocks": 0,                                                                                                                    +
                                           "Local Hit Blocks": 0,                                                                                                                         +
                                           "Local Read Blocks": 0,                                                                                                                        +
                                           "Local Dirtied Blocks": 0,                                                                                                                     +
                                           "Local Written Blocks": 0,                                                                                                                     +
                                           "Temp Read Blocks": 0,                                                                                                                         +
                                           "Temp Written Blocks": 0,                                                                                                                      +
                                           "Plans": [                                                                                                                                     +
                                             {                                                                                                                                            +
                                               "Node Type": "Merge Join",                                                                                                                 +
                                               "Parent Relationship": "Outer",                                                                                                            +
                                               "Parallel Aware": false,                                                                                                                   +
                                               "Join Type": "Inner",                                                                                                                      +
                                               "Startup Cost": 24585.20,                                                                                                                  +
                                               "Total Cost": 24856.69,                                                                                                                    +
                                               "Plan Rows": 684,                                                                                                                          +
                                               "Plan Width": 28,                                                                                                                          +
                                               "Actual Startup Time": 15643.752,                                                                                                          +
                                               "Actual Total Time": 15722.562,                                                                                                            +
                                               "Actual Rows": 425,                                                                                                                        +
                                               "Actual Loops": 1,                                                                                                                         +
                                               "Inner Unique": false,                                                                                                                     +
                                               "Merge Cond": "(n.id = ci.person_id)",                                                                                                     +
                                               "Shared Hit Blocks": 9,                                                                                                                    +
                                               "Shared Read Blocks": 319653,                                                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                                                                +
                                               "Shared Written Blocks": 0,                                                                                                                +
                                               "Local Hit Blocks": 0,                                                                                                                     +
                                               "Local Read Blocks": 0,                                                                                                                    +
                                               "Local Dirtied Blocks": 0,                                                                                                                 +
                                               "Local Written Blocks": 0,                                                                                                                 +
                                               "Temp Read Blocks": 0,                                                                                                                     +
                                               "Temp Written Blocks": 0,                                                                                                                  +
                                               "Plans": [                                                                                                                                 +
                                                 {                                                                                                                                        +
                                                   "Node Type": "Merge Join",                                                                                                             +
                                                   "Parent Relationship": "Outer",                                                                                                        +
                                                   "Parallel Aware": false,                                                                                                               +
                                                   "Join Type": "Inner",                                                                                                                  +
                                                   "Startup Cost": 5875.07,                                                                                                               +
                                                   "Total Cost": 6015.68,                                                                                                                 +
                                                   "Plan Rows": 819,                                                                                                                      +
                                                   "Plan Width": 24,                                                                                                                      +
                                                   "Actual Startup Time": 3432.834,                                                                                                       +
                                                   "Actual Total Time": 3470.115,                                                                                                         +
                                                   "Actual Rows": 1558,                                                                                                                   +
                                                   "Actual Loops": 1,                                                                                                                     +
                                                   "Inner Unique": true,                                                                                                                  +
                                                   "Merge Cond": "(an.person_id = n.id)",                                                                                                 +
                                                   "Shared Hit Blocks": 4,                                                                                                                +
                                                   "Shared Read Blocks": 67004,                                                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                                                            +
                                                   "Shared Written Blocks": 0,                                                                                                            +
                                                   "Local Hit Blocks": 0,                                                                                                                 +
                                                   "Local Read Blocks": 0,                                                                                                                +
                                                   "Local Dirtied Blocks": 0,                                                                                                             +
                                                   "Local Written Blocks": 0,                                                                                                             +
                                                   "Temp Read Blocks": 0,                                                                                                                 +
                                                   "Temp Written Blocks": 0,                                                                                                              +
                                                   "Plans": [                                                                                                                             +
                                                     {                                                                                                                                    +
                                                       "Node Type": "Sort",                                                                                                               +
                                                       "Parent Relationship": "Outer",                                                                                                    +
                                                       "Parallel Aware": false,                                                                                                           +
                                                       "Startup Cost": 3188.40,                                                                                                           +
                                                       "Total Cost": 3258.38,                                                                                                             +
                                                       "Plan Rows": 901343,                                                                                                               +
                                                       "Plan Width": 20,                                                                                                                  +
                                                       "Actual Startup Time": 769.104,                                                                                                    +
                                                       "Actual Total Time": 805.513,                                                                                                      +
                                                       "Actual Rows": 578585,                                                                                                             +
                                                       "Actual Loops": 1,                                                                                                                 +
                                                       "Sort Key": ["an.person_id"],                                                                                                      +
                                                       "Sort Method": "quicksort",                                                                                                        +
                                                       "Sort Space Used": 89763,                                                                                                          +
                                                       "Sort Space Type": "Memory",                                                                                                       +
                                                       "Shared Hit Blocks": 2,                                                                                                            +
                                                       "Shared Read Blocks": 11393,                                                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                                                        +
                                                       "Shared Written Blocks": 0,                                                                                                        +
                                                       "Local Hit Blocks": 0,                                                                                                             +
                                                       "Local Read Blocks": 0,                                                                                                            +
                                                       "Local Dirtied Blocks": 0,                                                                                                         +
                                                       "Local Written Blocks": 0,                                                                                                         +
                                                       "Temp Read Blocks": 0,                                                                                                             +
                                                       "Temp Written Blocks": 0,                                                                                                          +
                                                       "Plans": [                                                                                                                         +
                                                         {                                                                                                                                +
                                                           "Node Type": "Seq Scan",                                                                                                       +
                                                           "Parent Relationship": "Outer",                                                                                                +
                                                           "Parallel Aware": false,                                                                                                       +
                                                           "Relation Name": "aka_name",                                                                                                   +
                                                           "Alias": "an",                                                                                                                 +
                                                           "Startup Cost": 0.00,                                                                                                          +
                                                           "Total Cost": 419.75,                                                                                                          +
                                                           "Plan Rows": 901343,                                                                                                           +
                                                           "Plan Width": 20,                                                                                                              +
                                                           "Actual Startup Time": 0.014,                                                                                                  +
                                                           "Actual Total Time": 336.887,                                                                                                  +
                                                           "Actual Rows": 901343,                                                                                                         +
                                                           "Actual Loops": 1,                                                                                                             +
                                                           "Shared Hit Blocks": 2,                                                                                                        +
                                                           "Shared Read Blocks": 11393,                                                                                                   +
                                                           "Shared Dirtied Blocks": 0,                                                                                                    +
                                                           "Shared Written Blocks": 0,                                                                                                    +
                                                           "Local Hit Blocks": 0,                                                                                                         +
                                                           "Local Read Blocks": 0,                                                                                                        +
                                                           "Local Dirtied Blocks": 0,                                                                                                     +
                                                           "Local Written Blocks": 0,                                                                                                     +
                                                           "Temp Read Blocks": 0,                                                                                                         +
                                                           "Temp Written Blocks": 0                                                                                                       +
                                                         }                                                                                                                                +
                                                       ]                                                                                                                                  +
                                                     },                                                                                                                                   +
                                                     {                                                                                                                                    +
                                                       "Node Type": "Sort",                                                                                                               +
                                                       "Parent Relationship": "Inner",                                                                                                    +
                                                       "Parallel Aware": false,                                                                                                           +
                                                       "Startup Cost": 2686.68,                                                                                                           +
                                                       "Total Cost": 2686.97,                                                                                                             +
                                                       "Plan Rows": 3787,                                                                                                                 +
                                                       "Plan Width": 4,                                                                                                                   +
                                                       "Actual Startup Time": 2602.297,                                                                                                   +
                                                       "Actual Total Time": 2602.735,                                                                                                     +
                                                       "Actual Rows": 6768,                                                                                                               +
                                                       "Actual Loops": 1,                                                                                                                 +
                                                       "Sort Key": ["n.id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                        +
                                                       "Sort Space Used": 510,                                                                                                            +
                                                       "Sort Space Type": "Memory",                                                                                                       +
                                                       "Shared Hit Blocks": 2,                                                                                                            +
                                                       "Shared Read Blocks": 55611,                                                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                                                        +
                                                       "Shared Written Blocks": 0,                                                                                                        +
                                                       "Local Hit Blocks": 0,                                                                                                             +
                                                       "Local Read Blocks": 0,                                                                                                            +
                                                       "Local Dirtied Blocks": 0,                                                                                                         +
                                                       "Local Written Blocks": 0,                                                                                                         +
                                                       "Temp Read Blocks": 0,                                                                                                             +
                                                       "Temp Written Blocks": 0,                                                                                                          +
                                                       "Plans": [                                                                                                                         +
                                                         {                                                                                                                                +
                                                           "Node Type": "Seq Scan",                                                                                                       +
                                                           "Parent Relationship": "Outer",                                                                                                +
                                                           "Parallel Aware": false,                                                                                                       +
                                                           "Relation Name": "name",                                                                                                       +
                                                           "Alias": "n",                                                                                                                  +
                                                           "Startup Cost": 0.00,                                                                                                          +
                                                           "Total Cost": 2679.69,                                                                                                         +
                                                           "Plan Rows": 3787,                                                                                                             +
                                                           "Plan Width": 4,                                                                                                               +
                                                           "Actual Startup Time": 1092.902,                                                                                               +
                                                           "Actual Total Time": 2598.870,                                                                                                 +
                                                           "Actual Rows": 6768,                                                                                                           +
                                                           "Actual Loops": 1,                                                                                                             +
                                                           "Filter": "((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))",                                                        +
                                                           "Rows Removed by Filter": 4160723,                                                                                             +
                                                           "Shared Hit Blocks": 2,                                                                                                        +
                                                           "Shared Read Blocks": 55611,                                                                                                   +
                                                           "Shared Dirtied Blocks": 0,                                                                                                    +
                                                           "Shared Written Blocks": 0,                                                                                                    +
                                                           "Local Hit Blocks": 0,                                                                                                         +
                                                           "Local Read Blocks": 0,                                                                                                        +
                                                           "Local Dirtied Blocks": 0,                                                                                                     +
                                                           "Local Written Blocks": 0,                                                                                                     +
                                                           "Temp Read Blocks": 0,                                                                                                         +
                                                           "Temp Written Blocks": 0                                                                                                       +
                                                         }                                                                                                                                +
                                                       ]                                                                                                                                  +
                                                     }                                                                                                                                    +
                                                   ]                                                                                                                                      +
                                                 },                                                                                                                                       +
                                                 {                                                                                                                                        +
                                                   "Node Type": "Sort",                                                                                                                   +
                                                   "Parent Relationship": "Inner",                                                                                                        +
                                                   "Parallel Aware": false,                                                                                                               +
                                                   "Startup Cost": 18710.13,                                                                                                              +
                                                   "Total Cost": 18777.34,                                                                                                                +
                                                   "Plan Rows": 865636,                                                                                                                   +
                                                   "Plan Width": 16,                                                                                                                      +
                                                   "Actual Startup Time": 12117.535,                                                                                                      +
                                                   "Actual Total Time": 12157.839,                                                                                                        +
                                                   "Actual Rows": 865083,                                                                                                                 +
                                                   "Actual Loops": 1,                                                                                                                     +
                                                   "Sort Key": ["ci.person_id"],                                                                                                          +
                                                   "Sort Method": "quicksort",                                                                                                            +
                                                   "Sort Space Used": 65239,                                                                                                              +
                                                   "Sort Space Type": "Memory",                                                                                                           +
                                                   "Shared Hit Blocks": 5,                                                                                                                +
                                                   "Shared Read Blocks": 252649,                                                                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                                                                            +
                                                   "Shared Written Blocks": 0,                                                                                                            +
                                                   "Local Hit Blocks": 0,                                                                                                                 +
                                                   "Local Read Blocks": 0,                                                                                                                +
                                                   "Local Dirtied Blocks": 0,                                                                                                             +
                                                   "Local Written Blocks": 0,                                                                                                             +
                                                   "Temp Read Blocks": 0,                                                                                                                 +
                                                   "Temp Written Blocks": 0,                                                                                                              +
                                                   "Plans": [                                                                                                                             +
                                                     {                                                                                                                                    +
                                                       "Node Type": "Seq Scan",                                                                                                           +
                                                       "Parent Relationship": "Outer",                                                                                                    +
                                                       "Parallel Aware": false,                                                                                                           +
                                                       "Relation Name": "cast_info",                                                                                                      +
                                                       "Alias": "ci",                                                                                                                     +
                                                       "Startup Cost": 0.00,                                                                                                              +
                                                       "Total Cost": 16059.00,                                                                                                            +
                                                       "Plan Rows": 865636,                                                                                                               +
                                                       "Plan Width": 16,                                                                                                                  +
                                                       "Actual Startup Time": 0.014,                                                                                                      +
                                                       "Actual Total Time": 11747.539,                                                                                                    +
                                                       "Actual Rows": 867477,                                                                                                             +
                                                       "Actual Loops": 1,                                                                                                                 +
                                                       "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                                       "Rows Removed by Filter": 35376867,                                                                                                +
                                                       "Shared Hit Blocks": 5,                                                                                                            +
                                                       "Shared Read Blocks": 252649,                                                                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                                                                        +
                                                       "Shared Written Blocks": 0,                                                                                                        +
                                                       "Local Hit Blocks": 0,                                                                                                             +
                                                       "Local Read Blocks": 0,                                                                                                            +
                                                       "Local Dirtied Blocks": 0,                                                                                                         +
                                                       "Local Written Blocks": 0,                                                                                                         +
                                                       "Temp Read Blocks": 0,                                                                                                             +
                                                       "Temp Written Blocks": 0                                                                                                           +
                                                     }                                                                                                                                    +
                                                   ]                                                                                                                                      +
                                                 }                                                                                                                                        +
                                               ]                                                                                                                                          +
                                             }                                                                                                                                            +
                                           ]                                                                                                                                              +
                                         },                                                                                                                                               +
                                         {                                                                                                                                                +
                                           "Node Type": "Sort",                                                                                                                           +
                                           "Parent Relationship": "Inner",                                                                                                                +
                                           "Parallel Aware": false,                                                                                                                       +
                                           "Startup Cost": 0.03,                                                                                                                          +
                                           "Total Cost": 0.03,                                                                                                                            +
                                           "Plan Rows": 1,                                                                                                                                +
                                           "Plan Width": 4,                                                                                                                               +
                                           "Actual Startup Time": 0.025,                                                                                                                  +
                                           "Actual Total Time": 0.025,                                                                                                                    +
                                           "Actual Rows": 1,                                                                                                                              +
                                           "Actual Loops": 1,                                                                                                                             +
                                           "Sort Key": ["rt.id"],                                                                                                                         +
                                           "Sort Method": "quicksort",                                                                                                                    +
                                           "Sort Space Used": 25,                                                                                                                         +
                                           "Sort Space Type": "Memory",                                                                                                                   +
                                           "Shared Hit Blocks": 1,                                                                                                                        +
                                           "Shared Read Blocks": 0,                                                                                                                       +
                                           "Shared Dirtied Blocks": 0,                                                                                                                    +
                                           "Shared Written Blocks": 0,                                                                                                                    +
                                           "Local Hit Blocks": 0,                                                                                                                         +
                                           "Local Read Blocks": 0,                                                                                                                        +
                                           "Local Dirtied Blocks": 0,                                                                                                                     +
                                           "Local Written Blocks": 0,                                                                                                                     +
                                           "Temp Read Blocks": 0,                                                                                                                         +
                                           "Temp Written Blocks": 0,                                                                                                                      +
                                           "Plans": [                                                                                                                                     +
                                             {                                                                                                                                            +
                                               "Node Type": "Seq Scan",                                                                                                                   +
                                               "Parent Relationship": "Outer",                                                                                                            +
                                               "Parallel Aware": false,                                                                                                                   +
                                               "Relation Name": "role_type",                                                                                                              +
                                               "Alias": "rt",                                                                                                                             +
                                               "Startup Cost": 0.00,                                                                                                                      +
                                               "Total Cost": 0.03,                                                                                                                        +
                                               "Plan Rows": 1,                                                                                                                            +
                                               "Plan Width": 4,                                                                                                                           +
                                               "Actual Startup Time": 0.015,                                                                                                              +
                                               "Actual Total Time": 0.018,                                                                                                                +
                                               "Actual Rows": 1,                                                                                                                          +
                                               "Actual Loops": 1,                                                                                                                         +
                                               "Filter": "((role)::text = 'actress'::text)",                                                                                              +
                                               "Rows Removed by Filter": 11,                                                                                                              +
                                               "Shared Hit Blocks": 1,                                                                                                                    +
                                               "Shared Read Blocks": 0,                                                                                                                   +
                                               "Shared Dirtied Blocks": 0,                                                                                                                +
                                               "Shared Written Blocks": 0,                                                                                                                +
                                               "Local Hit Blocks": 0,                                                                                                                     +
                                               "Local Read Blocks": 0,                                                                                                                    +
                                               "Local Dirtied Blocks": 0,                                                                                                                 +
                                               "Local Written Blocks": 0,                                                                                                                 +
                                               "Temp Read Blocks": 0,                                                                                                                     +
                                               "Temp Written Blocks": 0                                                                                                                   +
                                             }                                                                                                                                            +
                                           ]                                                                                                                                              +
                                         }                                                                                                                                                +
                                       ]                                                                                                                                                  +
                                     }                                                                                                                                                    +
                                   ]                                                                                                                                                      +
                                 },                                                                                                                                                       +
                                 {                                                                                                                                                        +
                                   "Node Type": "Sort",                                                                                                                                   +
                                   "Parent Relationship": "Inner",                                                                                                                        +
                                   "Parallel Aware": false,                                                                                                                               +
                                   "Startup Cost": 2001.09,                                                                                                                               +
                                   "Total Cost": 2023.83,                                                                                                                                 +
                                   "Plan Rows": 292980,                                                                                                                                   +
                                   "Plan Width": 8,                                                                                                                                       +
                                   "Actual Startup Time": 1034.485,                                                                                                                       +
                                   "Actual Total Time": 1061.975,                                                                                                                         +
                                   "Actual Rows": 591086,                                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                                     +
                                   "Sort Key": ["mc.movie_id"],                                                                                                                           +
                                   "Sort Method": "quicksort",                                                                                                                            +
                                   "Sort Space Used": 52279,                                                                                                                              +
                                   "Sort Space Type": "Memory",                                                                                                                           +
                                   "Shared Hit Blocks": 3,                                                                                                                                +
                                   "Shared Read Blocks": 18786,                                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                                            +
                                   "Shared Written Blocks": 0,                                                                                                                            +
                                   "Local Hit Blocks": 0,                                                                                                                                 +
                                   "Local Read Blocks": 0,                                                                                                                                +
                                   "Local Dirtied Blocks": 0,                                                                                                                             +
                                   "Local Written Blocks": 0,                                                                                                                             +
                                   "Temp Read Blocks": 0,                                                                                                                                 +
                                   "Temp Written Blocks": 0,                                                                                                                              +
                                   "Plans": [                                                                                                                                             +
                                     {                                                                                                                                                    +
                                       "Node Type": "Seq Scan",                                                                                                                           +
                                       "Parent Relationship": "Outer",                                                                                                                    +
                                       "Parallel Aware": false,                                                                                                                           +
                                       "Relation Name": "movie_companies",                                                                                                                +
                                       "Alias": "mc",                                                                                                                                     +
                                       "Startup Cost": 0.00,                                                                                                                              +
                                       "Total Cost": 1174.90,                                                                                                                             +
                                       "Plan Rows": 292980,                                                                                                                               +
                                       "Plan Width": 8,                                                                                                                                   +
                                       "Actual Startup Time": 0.007,                                                                                                                      +
                                       "Actual Total Time": 833.372,                                                                                                                      +
                                       "Actual Rows": 590994,                                                                                                                             +
                                       "Actual Loops": 1,                                                                                                                                 +
                                       "Filter": "((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))",                                               +
                                       "Rows Removed by Filter": 2018135,                                                                                                                 +
                                       "Shared Hit Blocks": 3,                                                                                                                            +
                                       "Shared Read Blocks": 18786,                                                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                                                        +
                                       "Shared Written Blocks": 0,                                                                                                                        +
                                       "Local Hit Blocks": 0,                                                                                                                             +
                                       "Local Read Blocks": 0,                                                                                                                            +
                                       "Local Dirtied Blocks": 0,                                                                                                                         +
                                       "Local Written Blocks": 0,                                                                                                                         +
                                       "Temp Read Blocks": 0,                                                                                                                             +
                                       "Temp Written Blocks": 0                                                                                                                           +
                                     }                                                                                                                                                    +
                                   ]                                                                                                                                                      +
                                 }                                                                                                                                                        +
                               ]                                                                                                                                                          +
                             },                                                                                                                                                           +
                             {                                                                                                                                                            +
                               "Node Type": "Sort",                                                                                                                                       +
                               "Parent Relationship": "Inner",                                                                                                                            +
                               "Parallel Aware": false,                                                                                                                                   +
                               "Startup Cost": 5150.86,                                                                                                                                   +
                               "Total Cost": 5236.87,                                                                                                                                     +
                               "Plan Rows": 1107888,                                                                                                                                      +
                               "Plan Width": 21,                                                                                                                                          +
                               "Actual Startup Time": 1955.928,                                                                                                                           +
                               "Actual Total Time": 2086.531,                                                                                                                             +
                               "Actual Rows": 1098663,                                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                                         +
                               "Sort Key": ["t.id"],                                                                                                                                      +
                               "Sort Method": "quicksort",                                                                                                                                +
                               "Sort Space Used": 126038,                                                                                                                                 +
                               "Sort Space Type": "Memory",                                                                                                                               +
                               "Shared Hit Blocks": 1,                                                                                                                                    +
                               "Shared Read Blocks": 35997,                                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                                                +
                               "Shared Written Blocks": 0,                                                                                                                                +
                               "Local Hit Blocks": 0,                                                                                                                                     +
                               "Local Read Blocks": 0,                                                                                                                                    +
                               "Local Dirtied Blocks": 0,                                                                                                                                 +
                               "Local Written Blocks": 0,                                                                                                                                 +
                               "Temp Read Blocks": 0,                                                                                                                                     +
                               "Temp Written Blocks": 0,                                                                                                                                  +
                               "Plans": [                                                                                                                                                 +
                                 {                                                                                                                                                        +
                                   "Node Type": "Seq Scan",                                                                                                                               +
                                   "Parent Relationship": "Outer",                                                                                                                        +
                                   "Parallel Aware": false,                                                                                                                               +
                                   "Relation Name": "title",                                                                                                                              +
                                   "Alias": "t",                                                                                                                                          +
                                   "Startup Cost": 0.00,                                                                                                                                  +
                                   "Total Cost": 1696.56,                                                                                                                                 +
                                   "Plan Rows": 1107888,                                                                                                                                  +
                                   "Plan Width": 21,                                                                                                                                      +
                                   "Actual Startup Time": 3.684,                                                                                                                          +
                                   "Actual Total Time": 1307.457,                                                                                                                         +
                                   "Actual Rows": 1107888,                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                                     +
                                   "Filter": "((production_year >= 2005) AND (production_year <= 2015))",                                                                                 +
                                   "Rows Removed by Filter": 1420424,                                                                                                                     +
                                   "Shared Hit Blocks": 1,                                                                                                                                +
                                   "Shared Read Blocks": 35997,                                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                                            +
                                   "Shared Written Blocks": 0,                                                                                                                            +
                                   "Local Hit Blocks": 0,                                                                                                                                 +
                                   "Local Read Blocks": 0,                                                                                                                                +
                                   "Local Dirtied Blocks": 0,                                                                                                                             +
                                   "Local Written Blocks": 0,                                                                                                                             +
                                   "Temp Read Blocks": 0,                                                                                                                                 +
                                   "Temp Written Blocks": 0                                                                                                                               +
                                 }                                                                                                                                                        +
                               ]                                                                                                                                                          +
                             }                                                                                                                                                            +
                           ]                                                                                                                                                              +
                         }                                                                                                                                                                +
                       ]                                                                                                                                                                  +
                     },                                                                                                                                                                   +
                     {                                                                                                                                                                    +
                       "Node Type": "Sort",                                                                                                                                               +
                       "Parent Relationship": "Inner",                                                                                                                                    +
                       "Parallel Aware": false,                                                                                                                                           +
                       "Startup Cost": 344.10,                                                                                                                                            +
                       "Total Cost": 350.69,                                                                                                                                              +
                       "Plan Rows": 84843,                                                                                                                                                +
                       "Plan Width": 4,                                                                                                                                                   +
                       "Actual Startup Time": 162.906,                                                                                                                                    +
                       "Actual Total Time": 164.555,                                                                                                                                      +
                       "Actual Rows": 13385,                                                                                                                                              +
                       "Actual Loops": 1,                                                                                                                                                 +
                       "Sort Key": ["cn.id"],                                                                                                                                             +
                       "Sort Method": "quicksort",                                                                                                                                        +
                       "Sort Space Used": 7050,                                                                                                                                           +
                       "Sort Space Type": "Memory",                                                                                                                                       +
                       "Shared Hit Blocks": 2,                                                                                                                                            +
                       "Shared Read Blocks": 2992,                                                                                                                                        +
                       "Shared Dirtied Blocks": 0,                                                                                                                                        +
                       "Shared Written Blocks": 0,                                                                                                                                        +
                       "Local Hit Blocks": 0,                                                                                                                                             +
                       "Local Read Blocks": 0,                                                                                                                                            +
                       "Local Dirtied Blocks": 0,                                                                                                                                         +
                       "Local Written Blocks": 0,                                                                                                                                         +
                       "Temp Read Blocks": 0,                                                                                                                                             +
                       "Temp Written Blocks": 0,                                                                                                                                          +
                       "Plans": [                                                                                                                                                         +
                         {                                                                                                                                                                +
                           "Node Type": "Seq Scan",                                                                                                                                       +
                           "Parent Relationship": "Outer",                                                                                                                                +
                           "Parallel Aware": false,                                                                                                                                       +
                           "Relation Name": "company_name",                                                                                                                               +
                           "Alias": "cn",                                                                                                                                                 +
                           "Startup Cost": 0.00,                                                                                                                                          +
                           "Total Cost": 128.41,                                                                                                                                          +
                           "Plan Rows": 84843,                                                                                                                                            +
                           "Plan Width": 4,                                                                                                                                               +
                           "Actual Startup Time": 9.230,                                                                                                                                  +
                           "Actual Total Time": 118.328,                                                                                                                                  +
                           "Actual Rows": 84843,                                                                                                                                          +
                           "Actual Loops": 1,                                                                                                                                             +
                           "Filter": "((country_code)::text = '[us]'::text)",                                                                                                             +
                           "Rows Removed by Filter": 150154,                                                                                                                              +
                           "Shared Hit Blocks": 2,                                                                                                                                        +
                           "Shared Read Blocks": 2992,                                                                                                                                    +
                           "Shared Dirtied Blocks": 0,                                                                                                                                    +
                           "Shared Written Blocks": 0,                                                                                                                                    +
                           "Local Hit Blocks": 0,                                                                                                                                         +
                           "Local Read Blocks": 0,                                                                                                                                        +
                           "Local Dirtied Blocks": 0,                                                                                                                                     +
                           "Local Written Blocks": 0,                                                                                                                                     +
                           "Temp Read Blocks": 0,                                                                                                                                         +
                           "Temp Written Blocks": 0                                                                                                                                       +
                         }                                                                                                                                                                +
                       ]                                                                                                                                                                  +
                     }                                                                                                                                                                    +
                   ]                                                                                                                                                                      +
                 }                                                                                                                                                                        +
               ]                                                                                                                                                                          +
             },                                                                                                                                                                           +
             {                                                                                                                                                                            +
               "Node Type": "Sort",                                                                                                                                                       +
               "Parent Relationship": "Inner",                                                                                                                                            +
               "Parallel Aware": false,                                                                                                                                                   +
               "Startup Cost": 11884.63,                                                                                                                                                  +
               "Total Cost": 12128.45,                                                                                                                                                    +
               "Plan Rows": 3140339,                                                                                                                                                      +
               "Plan Width": 20,                                                                                                                                                          +
               "Actual Startup Time": 2454.004,                                                                                                                                           +
               "Actual Total Time": 2821.765,                                                                                                                                             +
               "Actual Rows": 2981442,                                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                                         +
               "Sort Key": ["chn.id"],                                                                                                                                                    +
               "Sort Method": "quicksort",                                                                                                                                                +
               "Sort Space Used": 318833,                                                                                                                                                 +
               "Sort Space Type": "Memory",                                                                                                                                               +
               "Shared Hit Blocks": 2,                                                                                                                                                    +
               "Shared Read Blocks": 36445,                                                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                                                +
               "Shared Written Blocks": 0,                                                                                                                                                +
               "Local Hit Blocks": 0,                                                                                                                                                     +
               "Local Read Blocks": 0,                                                                                                                                                    +
               "Local Dirtied Blocks": 0,                                                                                                                                                 +
               "Local Written Blocks": 0,                                                                                                                                                 +
               "Temp Read Blocks": 0,                                                                                                                                                     +
               "Temp Written Blocks": 0,                                                                                                                                                  +
               "Plans": [                                                                                                                                                                 +
                 {                                                                                                                                                                        +
                   "Node Type": "Seq Scan",                                                                                                                                               +
                   "Parent Relationship": "Outer",                                                                                                                                        +
                   "Parallel Aware": false,                                                                                                                                               +
                   "Relation Name": "char_name",                                                                                                                                          +
                   "Alias": "chn",                                                                                                                                                        +
                   "Startup Cost": 0.00,                                                                                                                                                  +
                   "Total Cost": 1360.36,                                                                                                                                                 +
                   "Plan Rows": 3140339,                                                                                                                                                  +
                   "Plan Width": 20,                                                                                                                                                      +
                   "Actual Startup Time": 5.127,                                                                                                                                          +
                   "Actual Total Time": 951.647,                                                                                                                                          +
                   "Actual Rows": 3140339,                                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                                     +
                   "Shared Hit Blocks": 2,                                                                                                                                                +
                   "Shared Read Blocks": 36445,                                                                                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                                                                                            +
                   "Shared Written Blocks": 0,                                                                                                                                            +
                   "Local Hit Blocks": 0,                                                                                                                                                 +
                   "Local Read Blocks": 0,                                                                                                                                                +
                   "Local Dirtied Blocks": 0,                                                                                                                                             +
                   "Local Written Blocks": 0,                                                                                                                                             +
                   "Temp Read Blocks": 0,                                                                                                                                                 +
                   "Temp Written Blocks": 0                                                                                                                                               +
                 }                                                                                                                                                                        +
               ]                                                                                                                                                                          +
             }                                                                                                                                                                            +
           ]                                                                                                                                                                              +
         }                                                                                                                                                                                +
       ]                                                                                                                                                                                  +
     },                                                                                                                                                                                   +
     "Planning Time": 4747.134,                                                                                                                                                           +
     "Triggers": [                                                                                                                                                                        +
     ],                                                                                                                                                                                   +
     "Execution Time": 22532.034                                                                                                                                                          +
   }                                                                                                                                                                                      +
 ]
(1 row)
