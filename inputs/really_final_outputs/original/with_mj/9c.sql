                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                        +
   {                                                                                                                                                                                      +
     "Plan": {                                                                                                                                                                            +
       "Node Type": "Aggregate",                                                                                                                                                          +
       "Strategy": "Plain",                                                                                                                                                               +
       "Partial Mode": "Simple",                                                                                                                                                          +
       "Parallel Aware": false,                                                                                                                                                           +
       "Startup Cost": 57548.59,                                                                                                                                                          +
       "Total Cost": 57548.59,                                                                                                                                                            +
       "Plan Rows": 1,                                                                                                                                                                    +
       "Plan Width": 128,                                                                                                                                                                 +
       "Actual Startup Time": 24102.331,                                                                                                                                                  +
       "Actual Total Time": 24102.331,                                                                                                                                                    +
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
           "Startup Cost": 57535.26,                                                                                                                                                      +
           "Total Cost": 57548.53,                                                                                                                                                        +
           "Plan Rows": 191,                                                                                                                                                              +
           "Plan Width": 64,                                                                                                                                                              +
           "Actual Startup Time": 24046.343,                                                                                                                                              +
           "Actual Total Time": 24083.658,                                                                                                                                                +
           "Actual Rows": 8144,                                                                                                                                                           +
           "Actual Loops": 1,                                                                                                                                                             +
           "Inner Unique": true,                                                                                                                                                          +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                                       +
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
               "Startup Cost": 57191.16,                                                                                                                                                  +
               "Total Cost": 57191.20,                                                                                                                                                    +
               "Plan Rows": 529,                                                                                                                                                          +
               "Plan Width": 68,                                                                                                                                                          +
               "Actual Startup Time": 23887.154,                                                                                                                                          +
               "Actual Total Time": 23890.876,                                                                                                                                            +
               "Actual Rows": 18345,                                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                                         +
               "Sort Key": ["mc.company_id"],                                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                                                +
               "Sort Space Used": 3316,                                                                                                                                                   +
               "Sort Space Type": "Memory",                                                                                                                                               +
               "Shared Hit Blocks": 20,                                                                                                                                                   +
               "Shared Read Blocks": 410881,                                                                                                                                              +
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
                   "Startup Cost": 56392.92,                                                                                                                                              +
                   "Total Cost": 57190.41,                                                                                                                                                +
                   "Plan Rows": 529,                                                                                                                                                      +
                   "Plan Width": 68,                                                                                                                                                      +
                   "Actual Startup Time": 22822.279,                                                                                                                                      +
                   "Actual Total Time": 23879.752,                                                                                                                                        +
                   "Actual Rows": 18345,                                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                                     +
                   "Inner Unique": false,                                                                                                                                                 +
                   "Merge Cond": "(ci.movie_id = mc.movie_id)",                                                                                                                           +
                   "Shared Hit Blocks": 16,                                                                                                                                               +
                   "Shared Read Blocks": 410881,                                                                                                                                          +
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
                       "Node Type": "Merge Join",                                                                                                                                         +
                       "Parent Relationship": "Outer",                                                                                                                                    +
                       "Parallel Aware": false,                                                                                                                                           +
                       "Join Type": "Inner",                                                                                                                                              +
                       "Startup Cost": 46987.46,                                                                                                                                          +
                       "Total Cost": 47379.76,                                                                                                                                            +
                       "Plan Rows": 275,                                                                                                                                                  +
                       "Plan Width": 72,                                                                                                                                                  +
                       "Actual Startup Time": 21360.586,                                                                                                                                  +
                       "Actual Total Time": 22040.465,                                                                                                                                    +
                       "Actual Rows": 7726,                                                                                                                                               +
                       "Actual Loops": 1,                                                                                                                                                 +
                       "Inner Unique": true,                                                                                                                                              +
                       "Merge Cond": "(ci.movie_id = t.id)",                                                                                                                              +
                       "Shared Hit Blocks": 13,                                                                                                                                           +
                       "Shared Read Blocks": 392095,                                                                                                                                      +
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
                           "Node Type": "Sort",                                                                                                                                           +
                           "Parent Relationship": "Outer",                                                                                                                                +
                           "Parallel Aware": false,                                                                                                                                       +
                           "Startup Cost": 37333.11,                                                                                                                                      +
                           "Total Cost": 37333.13,                                                                                                                                        +
                           "Plan Rows": 275,                                                                                                                                              +
                           "Plan Width": 51,                                                                                                                                              +
                           "Actual Startup Time": 19056.389,                                                                                                                              +
                           "Actual Total Time": 19057.258,                                                                                                                                +
                           "Actual Rows": 7726,                                                                                                                                           +
                           "Actual Loops": 1,                                                                                                                                             +
                           "Sort Key": ["ci.movie_id"],                                                                                                                                   +
                           "Sort Method": "quicksort",                                                                                                                                    +
                           "Sort Space Used": 1061,                                                                                                                                       +
                           "Sort Space Type": "Memory",                                                                                                                                   +
                           "Shared Hit Blocks": 12,                                                                                                                                       +
                           "Shared Read Blocks": 356098,                                                                                                                                  +
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
                               "Startup Cost": 36845.07,                                                                                                                                  +
                               "Total Cost": 37332.77,                                                                                                                                    +
                               "Plan Rows": 275,                                                                                                                                          +
                               "Plan Width": 51,                                                                                                                                          +
                               "Actual Startup Time": 18234.358,                                                                                                                          +
                               "Actual Total Time": 19053.349,                                                                                                                            +
                               "Actual Rows": 7726,                                                                                                                                       +
                               "Actual Loops": 1,                                                                                                                                         +
                               "Inner Unique": true,                                                                                                                                      +
                               "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                                              +
                               "Shared Hit Blocks": 12,                                                                                                                                   +
                               "Shared Read Blocks": 356098,                                                                                                                              +
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
                                   "Startup Cost": 24960.44,                                                                                                                              +
                                   "Total Cost": 24960.49,                                                                                                                                +
                                   "Plan Rows": 568,                                                                                                                                      +
                                   "Plan Width": 39,                                                                                                                                      +
                                   "Actual Startup Time": 15774.127,                                                                                                                      +
                                   "Actual Total Time": 15774.977,                                                                                                                        +
                                   "Actual Rows": 7727,                                                                                                                                   +
                                   "Actual Loops": 1,                                                                                                                                     +
                                   "Sort Key": ["ci.person_role_id"],                                                                                                                     +
                                   "Sort Method": "quicksort",                                                                                                                            +
                                   "Sort Space Used": 1078,                                                                                                                               +
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
                                       "Startup Cost": 24958.54,                                                                                                                          +
                                       "Total Cost": 24959.64,                                                                                                                            +
                                       "Plan Rows": 568,                                                                                                                                  +
                                       "Plan Width": 39,                                                                                                                                  +
                                       "Actual Startup Time": 15769.237,                                                                                                                  +
                                       "Actual Total Time": 15771.560,                                                                                                                    +
                                       "Actual Rows": 8204,                                                                                                                               +
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
                                           "Startup Cost": 24958.51,                                                                                                                      +
                                           "Total Cost": 24959.04,                                                                                                                        +
                                           "Plan Rows": 6810,                                                                                                                             +
                                           "Plan Width": 43,                                                                                                                              +
                                           "Actual Startup Time": 15769.210,                                                                                                              +
                                           "Actual Total Time": 15769.608,                                                                                                                +
                                           "Actual Rows": 8204,                                                                                                                           +
                                           "Actual Loops": 1,                                                                                                                             +
                                           "Sort Key": ["ci.role_id"],                                                                                                                    +
                                           "Sort Method": "quicksort",                                                                                                                    +
                                           "Sort Space Used": 1168,                                                                                                                       +
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
                                               "Startup Cost": 24667.23,                                                                                                                  +
                                               "Total Cost": 24945.04,                                                                                                                    +
                                               "Plan Rows": 6810,                                                                                                                         +
                                               "Plan Width": 43,                                                                                                                          +
                                               "Actual Startup Time": 15674.038,                                                                                                          +
                                               "Actual Total Time": 15767.048,                                                                                                            +
                                               "Actual Rows": 8204,                                                                                                                       +
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
                                                   "Startup Cost": 5957.10,                                                                                                               +
                                                   "Total Cost": 6103.48,                                                                                                                 +
                                                   "Plan Rows": 8155,                                                                                                                     +
                                                   "Plan Width": 39,                                                                                                                      +
                                                   "Actual Startup Time": 3456.721,                                                                                                       +
                                                   "Actual Total Time": 3504.949,                                                                                                         +
                                                   "Actual Rows": 10525,                                                                                                                  +
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
                                                       "Actual Startup Time": 781.266,                                                                                                    +
                                                       "Actual Total Time": 818.237,                                                                                                      +
                                                       "Actual Rows": 578866,                                                                                                             +
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
                                                           "Actual Total Time": 332.305,                                                                                                  +
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
                                                       "Startup Cost": 2768.70,                                                                                                           +
                                                       "Total Cost": 2771.63,                                                                                                             +
                                                       "Plan Rows": 37708,                                                                                                                +
                                                       "Plan Width": 19,                                                                                                                  +
                                                       "Actual Startup Time": 2612.955,                                                                                                   +
                                                       "Actual Total Time": 2616.773,                                                                                                     +
                                                       "Actual Rows": 50011,                                                                                                              +
                                                       "Actual Loops": 1,                                                                                                                 +
                                                       "Sort Key": ["n.id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                        +
                                                       "Sort Space Used": 5246,                                                                                                           +
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
                                                           "Plan Rows": 37708,                                                                                                            +
                                                           "Plan Width": 19,                                                                                                              +
                                                           "Actual Startup Time": 1097.258,                                                                                               +
                                                           "Actual Total Time": 2581.502,                                                                                                 +
                                                           "Actual Rows": 50011,                                                                                                          +
                                                           "Actual Loops": 1,                                                                                                             +
                                                           "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                         +
                                                           "Rows Removed by Filter": 4117480,                                                                                             +
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
                                                   "Actual Startup Time": 12124.819,                                                                                                      +
                                                   "Actual Total Time": 12165.081,                                                                                                        +
                                                   "Actual Rows": 870085,                                                                                                                 +
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
                                                       "Actual Startup Time": 0.015,                                                                                                      +
                                                       "Actual Total Time": 11741.723,                                                                                                    +
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
                                           "Actual Startup Time": 0.024,                                                                                                                  +
                                           "Actual Total Time": 0.024,                                                                                                                    +
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
                                               "Actual Startup Time": 0.014,                                                                                                              +
                                               "Actual Total Time": 0.017,                                                                                                                +
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
                                   "Startup Cost": 11884.63,                                                                                                                              +
                                   "Total Cost": 12128.45,                                                                                                                                +
                                   "Plan Rows": 3140339,                                                                                                                                  +
                                   "Plan Width": 20,                                                                                                                                      +
                                   "Actual Startup Time": 2460.218,                                                                                                                       +
                                   "Actual Total Time": 2850.753,                                                                                                                         +
                                   "Actual Rows": 3133144,                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                                     +
                                   "Sort Key": ["chn.id"],                                                                                                                                +
                                   "Sort Method": "quicksort",                                                                                                                            +
                                   "Sort Space Used": 318833,                                                                                                                             +
                                   "Sort Space Type": "Memory",                                                                                                                           +
                                   "Shared Hit Blocks": 2,                                                                                                                                +
                                   "Shared Read Blocks": 36445,                                                                                                                           +
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
                                       "Relation Name": "char_name",                                                                                                                      +
                                       "Alias": "chn",                                                                                                                                    +
                                       "Startup Cost": 0.00,                                                                                                                              +
                                       "Total Cost": 1360.36,                                                                                                                             +
                                       "Plan Rows": 3140339,                                                                                                                              +
                                       "Plan Width": 20,                                                                                                                                  +
                                       "Actual Startup Time": 8.644,                                                                                                                      +
                                       "Actual Total Time": 941.335,                                                                                                                      +
                                       "Actual Rows": 3140339,                                                                                                                            +
                                       "Actual Loops": 1,                                                                                                                                 +
                                       "Shared Hit Blocks": 2,                                                                                                                            +
                                       "Shared Read Blocks": 36445,                                                                                                                       +
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
                             }                                                                                                                                                            +
                           ]                                                                                                                                                              +
                         },                                                                                                                                                               +
                         {                                                                                                                                                                +
                           "Node Type": "Sort",                                                                                                                                           +
                           "Parent Relationship": "Inner",                                                                                                                                +
                           "Parallel Aware": false,                                                                                                                                       +
                           "Startup Cost": 9654.35,                                                                                                                                       +
                           "Total Cost": 9850.65,                                                                                                                                         +
                           "Plan Rows": 2528312,                                                                                                                                          +
                           "Plan Width": 21,                                                                                                                                              +
                           "Actual Startup Time": 2303.216,                                                                                                                               +
                           "Actual Total Time": 2625.811,                                                                                                                                 +
                           "Actual Rows": 2525357,                                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                                             +
                           "Sort Key": ["t.id"],                                                                                                                                          +
                           "Sort Method": "quicksort",                                                                                                                                    +
                           "Sort Space Used": 275055,                                                                                                                                     +
                           "Sort Space Type": "Memory",                                                                                                                                   +
                           "Shared Hit Blocks": 1,                                                                                                                                        +
                           "Shared Read Blocks": 35997,                                                                                                                                   +
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
                               "Node Type": "Seq Scan",                                                                                                                                   +
                               "Parent Relationship": "Outer",                                                                                                                            +
                               "Parallel Aware": false,                                                                                                                                   +
                               "Relation Name": "title",                                                                                                                                  +
                               "Alias": "t",                                                                                                                                              +
                               "Startup Cost": 0.00,                                                                                                                                      +
                               "Total Cost": 1303.96,                                                                                                                                     +
                               "Plan Rows": 2528312,                                                                                                                                      +
                               "Plan Width": 21,                                                                                                                                          +
                               "Actual Startup Time": 6.069,                                                                                                                              +
                               "Actual Total Time": 1013.818,                                                                                                                             +
                               "Actual Rows": 2528312,                                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                                         +
                               "Shared Hit Blocks": 1,                                                                                                                                    +
                               "Shared Read Blocks": 35997,                                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                                                +
                               "Shared Written Blocks": 0,                                                                                                                                +
                               "Local Hit Blocks": 0,                                                                                                                                     +
                               "Local Read Blocks": 0,                                                                                                                                    +
                               "Local Dirtied Blocks": 0,                                                                                                                                 +
                               "Local Written Blocks": 0,                                                                                                                                 +
                               "Temp Read Blocks": 0,                                                                                                                                     +
                               "Temp Written Blocks": 0                                                                                                                                   +
                             }                                                                                                                                                            +
                           ]                                                                                                                                                              +
                         }                                                                                                                                                                +
                       ]                                                                                                                                                                  +
                     },                                                                                                                                                                   +
                     {                                                                                                                                                                    +
                       "Node Type": "Sort",                                                                                                                                               +
                       "Parent Relationship": "Inner",                                                                                                                                    +
                       "Parallel Aware": false,                                                                                                                                           +
                       "Startup Cost": 9405.45,                                                                                                                                           +
                       "Total Cost": 9608.03,                                                                                                                                             +
                       "Plan Rows": 2609129,                                                                                                                                              +
                       "Plan Width": 8,                                                                                                                                                   +
                       "Actual Startup Time": 1460.936,                                                                                                                                   +
                       "Actual Total Time": 1589.584,                                                                                                                                     +
                       "Actual Rows": 2620659,                                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                                 +
                       "Sort Key": ["mc.movie_id"],                                                                                                                                       +
                       "Sort Method": "quicksort",                                                                                                                                        +
                       "Sort Space Used": 220607,                                                                                                                                         +
                       "Sort Space Type": "Memory",                                                                                                                                       +
                       "Shared Hit Blocks": 3,                                                                                                                                            +
                       "Shared Read Blocks": 18786,                                                                                                                                       +
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
                           "Relation Name": "movie_companies",                                                                                                                            +
                           "Alias": "mc",                                                                                                                                                 +
                           "Startup Cost": 0.00,                                                                                                                                          +
                           "Total Cost": 769.75,                                                                                                                                          +
                           "Plan Rows": 2609129,                                                                                                                                          +
                           "Plan Width": 8,                                                                                                                                               +
                           "Actual Startup Time": 0.023,                                                                                                                                  +
                           "Actual Total Time": 531.887,                                                                                                                                  +
                           "Actual Rows": 2609129,                                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                                             +
                           "Shared Hit Blocks": 3,                                                                                                                                        +
                           "Shared Read Blocks": 18786,                                                                                                                                   +
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
               "Startup Cost": 344.10,                                                                                                                                                    +
               "Total Cost": 350.69,                                                                                                                                                      +
               "Plan Rows": 84843,                                                                                                                                                        +
               "Plan Width": 4,                                                                                                                                                           +
               "Actual Startup Time": 159.159,                                                                                                                                            +
               "Actual Total Time": 169.790,                                                                                                                                              +
               "Actual Rows": 84419,                                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                                         +
               "Sort Key": ["cn.id"],                                                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                                                                +
               "Sort Space Used": 7050,                                                                                                                                                   +
               "Sort Space Type": "Memory",                                                                                                                                               +
               "Shared Hit Blocks": 2,                                                                                                                                                    +
               "Shared Read Blocks": 2992,                                                                                                                                                +
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
                   "Relation Name": "company_name",                                                                                                                                       +
                   "Alias": "cn",                                                                                                                                                         +
                   "Startup Cost": 0.00,                                                                                                                                                  +
                   "Total Cost": 128.41,                                                                                                                                                  +
                   "Plan Rows": 84843,                                                                                                                                                    +
                   "Plan Width": 4,                                                                                                                                                       +
                   "Actual Startup Time": 8.109,                                                                                                                                          +
                   "Actual Total Time": 117.240,                                                                                                                                          +
                   "Actual Rows": 84843,                                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                                     +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                                                                     +
                   "Rows Removed by Filter": 150154,                                                                                                                                      +
                   "Shared Hit Blocks": 2,                                                                                                                                                +
                   "Shared Read Blocks": 2992,                                                                                                                                            +
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
     "Planning Time": 4750.668,                                                                                                                                                           +
     "Triggers": [                                                                                                                                                                        +
     ],                                                                                                                                                                                   +
     "Execution Time": 24162.779                                                                                                                                                          +
   }                                                                                                                                                                                      +
 ]
(1 row)

