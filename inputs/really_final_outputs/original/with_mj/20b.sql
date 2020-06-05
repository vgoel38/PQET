                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                          +
   {                                                                                                                                                                                        +
     "Plan": {                                                                                                                                                                              +
       "Node Type": "Aggregate",                                                                                                                                                            +
       "Strategy": "Plain",                                                                                                                                                                 +
       "Partial Mode": "Simple",                                                                                                                                                            +
       "Parallel Aware": false,                                                                                                                                                             +
       "Startup Cost": 182808.19,                                                                                                                                                           +
       "Total Cost": 182808.19,                                                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                                                      +
       "Plan Width": 32,                                                                                                                                                                    +
       "Actual Startup Time": 30179.010,                                                                                                                                                    +
       "Actual Total Time": 30179.010,                                                                                                                                                      +
       "Actual Rows": 1,                                                                                                                                                                    +
       "Actual Loops": 1,                                                                                                                                                                   +
       "Shared Hit Blocks": 37,                                                                                                                                                             +
       "Shared Read Blocks": 405902,                                                                                                                                                        +
       "Shared Dirtied Blocks": 0,                                                                                                                                                          +
       "Shared Written Blocks": 0,                                                                                                                                                          +
       "Local Hit Blocks": 0,                                                                                                                                                               +
       "Local Read Blocks": 0,                                                                                                                                                              +
       "Local Dirtied Blocks": 0,                                                                                                                                                           +
       "Local Written Blocks": 0,                                                                                                                                                           +
       "Temp Read Blocks": 0,                                                                                                                                                               +
       "Temp Written Blocks": 0,                                                                                                                                                            +
       "Plans": [                                                                                                                                                                           +
         {                                                                                                                                                                                  +
           "Node Type": "Merge Join",                                                                                                                                                       +
           "Parent Relationship": "Outer",                                                                                                                                                  +
           "Parallel Aware": false,                                                                                                                                                         +
           "Join Type": "Inner",                                                                                                                                                            +
           "Startup Cost": 182808.19,                                                                                                                                                       +
           "Total Cost": 182808.19,                                                                                                                                                         +
           "Plan Rows": 1,                                                                                                                                                                  +
           "Plan Width": 17,                                                                                                                                                                +
           "Actual Startup Time": 30178.740,                                                                                                                                                +
           "Actual Total Time": 30178.949,                                                                                                                                                  +
           "Actual Rows": 17,                                                                                                                                                               +
           "Actual Loops": 1,                                                                                                                                                               +
           "Inner Unique": true,                                                                                                                                                            +
           "Merge Cond": "(mk.keyword_id = k.id)",                                                                                                                                          +
           "Shared Hit Blocks": 37,                                                                                                                                                         +
           "Shared Read Blocks": 405902,                                                                                                                                                    +
           "Shared Dirtied Blocks": 0,                                                                                                                                                      +
           "Shared Written Blocks": 0,                                                                                                                                                      +
           "Local Hit Blocks": 0,                                                                                                                                                           +
           "Local Read Blocks": 0,                                                                                                                                                          +
           "Local Dirtied Blocks": 0,                                                                                                                                                       +
           "Local Written Blocks": 0,                                                                                                                                                       +
           "Temp Read Blocks": 0,                                                                                                                                                           +
           "Temp Written Blocks": 0,                                                                                                                                                        +
           "Plans": [                                                                                                                                                                       +
             {                                                                                                                                                                              +
               "Node Type": "Sort",                                                                                                                                                         +
               "Parent Relationship": "Outer",                                                                                                                                              +
               "Parallel Aware": false,                                                                                                                                                     +
               "Startup Cost": 182759.12,                                                                                                                                                   +
               "Total Cost": 182759.12,                                                                                                                                                     +
               "Plan Rows": 1,                                                                                                                                                              +
               "Plan Width": 21,                                                                                                                                                            +
               "Actual Startup Time": 30086.607,                                                                                                                                            +
               "Actual Total Time": 30086.677,                                                                                                                                              +
               "Actual Rows": 399,                                                                                                                                                          +
               "Actual Loops": 1,                                                                                                                                                           +
               "Sort Key": ["mk.keyword_id"],                                                                                                                                               +
               "Sort Method": "quicksort",                                                                                                                                                  +
               "Sort Space Used": 63,                                                                                                                                                       +
               "Sort Space Type": "Memory",                                                                                                                                                 +
               "Shared Hit Blocks": 22,                                                                                                                                                     +
               "Shared Read Blocks": 405882,                                                                                                                                                +
               "Shared Dirtied Blocks": 0,                                                                                                                                                  +
               "Shared Written Blocks": 0,                                                                                                                                                  +
               "Local Hit Blocks": 0,                                                                                                                                                       +
               "Local Read Blocks": 0,                                                                                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                                                                                   +
               "Local Written Blocks": 0,                                                                                                                                                   +
               "Temp Read Blocks": 0,                                                                                                                                                       +
               "Temp Written Blocks": 0,                                                                                                                                                    +
               "Plans": [                                                                                                                                                                   +
                 {                                                                                                                                                                          +
                   "Node Type": "Merge Join",                                                                                                                                               +
                   "Parent Relationship": "Outer",                                                                                                                                          +
                   "Parallel Aware": false,                                                                                                                                                 +
                   "Join Type": "Inner",                                                                                                                                                    +
                   "Startup Cost": 182759.12,                                                                                                                                               +
                   "Total Cost": 182759.12,                                                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                                                          +
                   "Plan Width": 21,                                                                                                                                                        +
                   "Actual Startup Time": 30077.036,                                                                                                                                        +
                   "Actual Total Time": 30077.204,                                                                                                                                          +
                   "Actual Rows": 698,                                                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                                                       +
                   "Inner Unique": true,                                                                                                                                                    +
                   "Merge Cond": "(t.kind_id = kt.id)",                                                                                                                                     +
                   "Shared Hit Blocks": 18,                                                                                                                                                 +
                   "Shared Read Blocks": 405882,                                                                                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                                                   +
                   "Temp Written Blocks": 0,                                                                                                                                                +
                   "Plans": [                                                                                                                                                               +
                     {                                                                                                                                                                      +
                       "Node Type": "Sort",                                                                                                                                                 +
                       "Parent Relationship": "Outer",                                                                                                                                      +
                       "Parallel Aware": false,                                                                                                                                             +
                       "Startup Cost": 182759.09,                                                                                                                                           +
                       "Total Cost": 182759.09,                                                                                                                                             +
                       "Plan Rows": 1,                                                                                                                                                      +
                       "Plan Width": 25,                                                                                                                                                    +
                       "Actual Startup Time": 30077.024,                                                                                                                                    +
                       "Actual Total Time": 30077.056,                                                                                                                                      +
                       "Actual Rows": 698,                                                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                                                   +
                       "Sort Key": ["t.kind_id"],                                                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                                                          +
                       "Sort Space Used": 79,                                                                                                                                               +
                       "Sort Space Type": "Memory",                                                                                                                                         +
                       "Shared Hit Blocks": 17,                                                                                                                                             +
                       "Shared Read Blocks": 405882,                                                                                                                                        +
                       "Shared Dirtied Blocks": 0,                                                                                                                                          +
                       "Shared Written Blocks": 0,                                                                                                                                          +
                       "Local Hit Blocks": 0,                                                                                                                                               +
                       "Local Read Blocks": 0,                                                                                                                                              +
                       "Local Dirtied Blocks": 0,                                                                                                                                           +
                       "Local Written Blocks": 0,                                                                                                                                           +
                       "Temp Read Blocks": 0,                                                                                                                                               +
                       "Temp Written Blocks": 0,                                                                                                                                            +
                       "Plans": [                                                                                                                                                           +
                         {                                                                                                                                                                  +
                           "Node Type": "Merge Join",                                                                                                                                       +
                           "Parent Relationship": "Outer",                                                                                                                                  +
                           "Parallel Aware": false,                                                                                                                                         +
                           "Join Type": "Inner",                                                                                                                                            +
                           "Startup Cost": 182759.09,                                                                                                                                       +
                           "Total Cost": 182759.09,                                                                                                                                         +
                           "Plan Rows": 1,                                                                                                                                                  +
                           "Plan Width": 25,                                                                                                                                                +
                           "Actual Startup Time": 30076.691,                                                                                                                                +
                           "Actual Total Time": 30076.878,                                                                                                                                  +
                           "Actual Rows": 698,                                                                                                                                              +
                           "Actual Loops": 1,                                                                                                                                               +
                           "Inner Unique": true,                                                                                                                                            +
                           "Merge Cond": "(cc.status_id = cct2.id)",                                                                                                                        +
                           "Shared Hit Blocks": 17,                                                                                                                                         +
                           "Shared Read Blocks": 405882,                                                                                                                                    +
                           "Shared Dirtied Blocks": 0,                                                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                                                           +
                           "Temp Written Blocks": 0,                                                                                                                                        +
                           "Plans": [                                                                                                                                                       +
                             {                                                                                                                                                              +
                               "Node Type": "Sort",                                                                                                                                         +
                               "Parent Relationship": "Outer",                                                                                                                              +
                               "Parallel Aware": false,                                                                                                                                     +
                               "Startup Cost": 182759.06,                                                                                                                                   +
                               "Total Cost": 182759.06,                                                                                                                                     +
                               "Plan Rows": 1,                                                                                                                                              +
                               "Plan Width": 29,                                                                                                                                            +
                               "Actual Startup Time": 30076.681,                                                                                                                            +
                               "Actual Total Time": 30076.712,                                                                                                                              +
                               "Actual Rows": 698,                                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                                           +
                               "Sort Key": ["cc.status_id"],                                                                                                                                +
                               "Sort Method": "quicksort",                                                                                                                                  +
                               "Sort Space Used": 79,                                                                                                                                       +
                               "Sort Space Type": "Memory",                                                                                                                                 +
                               "Shared Hit Blocks": 16,                                                                                                                                     +
                               "Shared Read Blocks": 405882,                                                                                                                                +
                               "Shared Dirtied Blocks": 0,                                                                                                                                  +
                               "Shared Written Blocks": 0,                                                                                                                                  +
                               "Local Hit Blocks": 0,                                                                                                                                       +
                               "Local Read Blocks": 0,                                                                                                                                      +
                               "Local Dirtied Blocks": 0,                                                                                                                                   +
                               "Local Written Blocks": 0,                                                                                                                                   +
                               "Temp Read Blocks": 0,                                                                                                                                       +
                               "Temp Written Blocks": 0,                                                                                                                                    +
                               "Plans": [                                                                                                                                                   +
                                 {                                                                                                                                                          +
                                   "Node Type": "Merge Join",                                                                                                                               +
                                   "Parent Relationship": "Outer",                                                                                                                          +
                                   "Parallel Aware": false,                                                                                                                                 +
                                   "Join Type": "Inner",                                                                                                                                    +
                                   "Startup Cost": 182759.06,                                                                                                                               +
                                   "Total Cost": 182759.06,                                                                                                                                 +
                                   "Plan Rows": 1,                                                                                                                                          +
                                   "Plan Width": 29,                                                                                                                                        +
                                   "Actual Startup Time": 30076.320,                                                                                                                        +
                                   "Actual Total Time": 30076.519,                                                                                                                          +
                                   "Actual Rows": 698,                                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                                       +
                                   "Inner Unique": true,                                                                                                                                    +
                                   "Merge Cond": "(cc.subject_id = cct1.id)",                                                                                                               +
                                   "Shared Hit Blocks": 16,                                                                                                                                 +
                                   "Shared Read Blocks": 405882,                                                                                                                            +
                                   "Shared Dirtied Blocks": 0,                                                                                                                              +
                                   "Shared Written Blocks": 0,                                                                                                                              +
                                   "Local Hit Blocks": 0,                                                                                                                                   +
                                   "Local Read Blocks": 0,                                                                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                                                                               +
                                   "Local Written Blocks": 0,                                                                                                                               +
                                   "Temp Read Blocks": 0,                                                                                                                                   +
                                   "Temp Written Blocks": 0,                                                                                                                                +
                                   "Plans": [                                                                                                                                               +
                                     {                                                                                                                                                      +
                                       "Node Type": "Sort",                                                                                                                                 +
                                       "Parent Relationship": "Outer",                                                                                                                      +
                                       "Parallel Aware": false,                                                                                                                             +
                                       "Startup Cost": 182759.02,                                                                                                                           +
                                       "Total Cost": 182759.03,                                                                                                                             +
                                       "Plan Rows": 1,                                                                                                                                      +
                                       "Plan Width": 33,                                                                                                                                    +
                                       "Actual Startup Time": 30076.288,                                                                                                                    +
                                       "Actual Total Time": 30076.323,                                                                                                                      +
                                       "Actual Rows": 698,                                                                                                                                  +
                                       "Actual Loops": 1,                                                                                                                                   +
                                       "Sort Key": ["cc.subject_id"],                                                                                                                       +
                                       "Sort Method": "quicksort",                                                                                                                          +
                                       "Sort Space Used": 79,                                                                                                                               +
                                       "Sort Space Type": "Memory",                                                                                                                         +
                                       "Shared Hit Blocks": 15,                                                                                                                             +
                                       "Shared Read Blocks": 405882,                                                                                                                        +
                                       "Shared Dirtied Blocks": 0,                                                                                                                          +
                                       "Shared Written Blocks": 0,                                                                                                                          +
                                       "Local Hit Blocks": 0,                                                                                                                               +
                                       "Local Read Blocks": 0,                                                                                                                              +
                                       "Local Dirtied Blocks": 0,                                                                                                                           +
                                       "Local Written Blocks": 0,                                                                                                                           +
                                       "Temp Read Blocks": 0,                                                                                                                               +
                                       "Temp Written Blocks": 0,                                                                                                                            +
                                       "Plans": [                                                                                                                                           +
                                         {                                                                                                                                                  +
                                           "Node Type": "Merge Join",                                                                                                                       +
                                           "Parent Relationship": "Outer",                                                                                                                  +
                                           "Parallel Aware": false,                                                                                                                         +
                                           "Join Type": "Inner",                                                                                                                            +
                                           "Startup Cost": 181821.67,                                                                                                                       +
                                           "Total Cost": 182759.02,                                                                                                                         +
                                           "Plan Rows": 1,                                                                                                                                  +
                                           "Plan Width": 33,                                                                                                                                +
                                           "Actual Startup Time": 29793.932,                                                                                                                +
                                           "Actual Total Time": 30076.100,                                                                                                                  +
                                           "Actual Rows": 698,                                                                                                                              +
                                           "Actual Loops": 1,                                                                                                                               +
                                           "Inner Unique": true,                                                                                                                            +
                                           "Merge Cond": "(mk.movie_id = t.id)",                                                                                                            +
                                           "Shared Hit Blocks": 15,                                                                                                                         +
                                           "Shared Read Blocks": 405882,                                                                                                                    +
                                           "Shared Dirtied Blocks": 0,                                                                                                                      +
                                           "Shared Written Blocks": 0,                                                                                                                      +
                                           "Local Hit Blocks": 0,                                                                                                                           +
                                           "Local Read Blocks": 0,                                                                                                                          +
                                           "Local Dirtied Blocks": 0,                                                                                                                       +
                                           "Local Written Blocks": 0,                                                                                                                       +
                                           "Temp Read Blocks": 0,                                                                                                                           +
                                           "Temp Written Blocks": 0,                                                                                                                        +
                                           "Plans": [                                                                                                                                       +
                                             {                                                                                                                                              +
                                               "Node Type": "Merge Join",                                                                                                                   +
                                               "Parent Relationship": "Outer",                                                                                                              +
                                               "Parallel Aware": false,                                                                                                                     +
                                               "Join Type": "Inner",                                                                                                                        +
                                               "Startup Cost": 175945.87,                                                                                                                   +
                                               "Total Cost": 176668.91,                                                                                                                     +
                                               "Plan Rows": 1,                                                                                                                              +
                                               "Plan Width": 24,                                                                                                                            +
                                               "Actual Startup Time": 27459.789,                                                                                                            +
                                               "Actual Total Time": 27693.753,                                                                                                              +
                                               "Actual Rows": 698,                                                                                                                          +
                                               "Actual Loops": 1,                                                                                                                           +
                                               "Inner Unique": false,                                                                                                                       +
                                               "Merge Cond": "(ci.movie_id = mk.movie_id)",                                                                                                 +
                                               "Shared Hit Blocks": 13,                                                                                                                     +
                                               "Shared Read Blocks": 369886,                                                                                                                +
                                               "Shared Dirtied Blocks": 0,                                                                                                                  +
                                               "Shared Written Blocks": 0,                                                                                                                  +
                                               "Local Hit Blocks": 0,                                                                                                                       +
                                               "Local Read Blocks": 0,                                                                                                                      +
                                               "Local Dirtied Blocks": 0,                                                                                                                   +
                                               "Local Written Blocks": 0,                                                                                                                   +
                                               "Temp Read Blocks": 0,                                                                                                                       +
                                               "Temp Written Blocks": 0,                                                                                                                    +
                                               "Plans": [                                                                                                                                   +
                                                 {                                                                                                                                          +
                                                   "Node Type": "Merge Join",                                                                                                               +
                                                   "Parent Relationship": "Outer",                                                                                                          +
                                                   "Parallel Aware": false,                                                                                                                 +
                                                   "Join Type": "Inner",                                                                                                                    +
                                                   "Startup Cost": 159334.94,                                                                                                               +
                                                   "Total Cost": 159355.51,                                                                                                                 +
                                                   "Plan Rows": 1,                                                                                                                          +
                                                   "Plan Width": 16,                                                                                                                        +
                                                   "Actual Startup Time": 24831.391,                                                                                                        +
                                                   "Actual Total Time": 24835.872,                                                                                                          +
                                                   "Actual Rows": 4,                                                                                                                        +
                                                   "Actual Loops": 1,                                                                                                                       +
                                                   "Inner Unique": false,                                                                                                                   +
                                                   "Merge Cond": "(ci.movie_id = cc.movie_id)",                                                                                             +
                                                   "Shared Hit Blocks": 10,                                                                                                                 +
                                                   "Shared Read Blocks": 345435,                                                                                                            +
                                                   "Shared Dirtied Blocks": 0,                                                                                                              +
                                                   "Shared Written Blocks": 0,                                                                                                              +
                                                   "Local Hit Blocks": 0,                                                                                                                   +
                                                   "Local Read Blocks": 0,                                                                                                                  +
                                                   "Local Dirtied Blocks": 0,                                                                                                               +
                                                   "Local Written Blocks": 0,                                                                                                               +
                                                   "Temp Read Blocks": 0,                                                                                                                   +
                                                   "Temp Written Blocks": 0,                                                                                                                +
                                                   "Plans": [                                                                                                                               +
                                                     {                                                                                                                                      +
                                                       "Node Type": "Sort",                                                                                                                 +
                                                       "Parent Relationship": "Outer",                                                                                                      +
                                                       "Parallel Aware": false,                                                                                                             +
                                                       "Startup Cost": 158945.17,                                                                                                           +
                                                       "Total Cost": 158945.17,                                                                                                             +
                                                       "Plan Rows": 1,                                                                                                                      +
                                                       "Plan Width": 4,                                                                                                                     +
                                                       "Actual Startup Time": 24701.586,                                                                                                    +
                                                       "Actual Total Time": 24701.591,                                                                                                      +
                                                       "Actual Rows": 16,                                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                                   +
                                                       "Sort Key": ["ci.movie_id"],                                                                                                         +
                                                       "Sort Method": "quicksort",                                                                                                          +
                                                       "Sort Space Used": 25,                                                                                                               +
                                                       "Sort Space Type": "Memory",                                                                                                         +
                                                       "Shared Hit Blocks": 8,                                                                                                              +
                                                       "Shared Read Blocks": 344706,                                                                                                        +
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
                                                           "Startup Cost": 158944.56,                                                                                                       +
                                                           "Total Cost": 158945.17,                                                                                                         +
                                                           "Plan Rows": 1,                                                                                                                  +
                                                           "Plan Width": 4,                                                                                                                 +
                                                           "Actual Startup Time": 24701.561,                                                                                                +
                                                           "Actual Total Time": 24701.567,                                                                                                  +
                                                           "Actual Rows": 16,                                                                                                               +
                                                           "Actual Loops": 1,                                                                                                               +
                                                           "Inner Unique": true,                                                                                                            +
                                                           "Merge Cond": "(ci.person_id = n.id)",                                                                                           +
                                                           "Shared Hit Blocks": 8,                                                                                                          +
                                                           "Shared Read Blocks": 344706,                                                                                                    +
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
                                                               "Startup Cost": 156587.90,                                                                                                   +
                                                               "Total Cost": 156588.17,                                                                                                     +
                                                               "Plan Rows": 3518,                                                                                                           +
                                                               "Plan Width": 8,                                                                                                             +
                                                               "Actual Startup Time": 22093.382,                                                                                            +
                                                               "Actual Total Time": 22093.390,                                                                                              +
                                                               "Actual Rows": 54,                                                                                                           +
                                                               "Actual Loops": 1,                                                                                                           +
                                                               "Sort Key": ["ci.person_id"],                                                                                                +
                                                               "Sort Method": "quicksort",                                                                                                  +
                                                               "Sort Space Used": 51,                                                                                                       +
                                                               "Sort Space Type": "Memory",                                                                                                 +
                                                               "Shared Hit Blocks": 7,                                                                                                      +
                                                               "Shared Read Blocks": 289094,                                                                                                +
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
                                                                   "Startup Cost": 153849.84,                                                                                               +
                                                                   "Total Cost": 156581.47,                                                                                                 +
                                                                   "Plan Rows": 3518,                                                                                                       +
                                                                   "Plan Width": 8,                                                                                                         +
                                                                   "Actual Startup Time": 19443.836,                                                                                        +
                                                                   "Actual Total Time": 22093.219,                                                                                          +
                                                                   "Actual Rows": 556,                                                                                                      +
                                                                   "Actual Loops": 1,                                                                                                       +
                                                                   "Inner Unique": false,                                                                                                   +
                                                                   "Merge Cond": "(chn.id = ci.person_role_id)",                                                                            +
                                                                   "Shared Hit Blocks": 7,                                                                                                  +
                                                                   "Shared Read Blocks": 289094,                                                                                            +
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
                                                                       "Startup Cost": 2092.71,                                                                                             +
                                                                       "Total Cost": 2092.76,                                                                                               +
                                                                       "Plan Rows": 628,                                                                                                    +
                                                                       "Plan Width": 4,                                                                                                     +
                                                                       "Actual Startup Time": 1739.233,                                                                                     +
                                                                       "Actual Total Time": 1739.245,                                                                                       +
                                                                       "Actual Rows": 30,                                                                                                   +
                                                                       "Actual Loops": 1,                                                                                                   +
                                                                       "Sort Key": ["chn.id"],                                                                                              +
                                                                       "Sort Method": "quicksort",                                                                                          +
                                                                       "Sort Space Used": 26,                                                                                               +
                                                                       "Sort Space Type": "Memory",                                                                                         +
                                                                       "Shared Hit Blocks": 2,                                                                                              +
                                                                       "Shared Read Blocks": 36445,                                                                                         +
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
                                                                           "Relation Name": "char_name",                                                                                    +
                                                                           "Alias": "chn",                                                                                                  +
                                                                           "Startup Cost": 0.00,                                                                                            +
                                                                           "Total Cost": 2091.81,                                                                                           +
                                                                           "Plan Rows": 628,                                                                                                +
                                                                           "Plan Width": 4,                                                                                                 +
                                                                           "Actual Startup Time": 76.143,                                                                                   +
                                                                           "Actual Total Time": 1739.123,                                                                                   +
                                                                           "Actual Rows": 30,                                                                                               +
                                                                           "Actual Loops": 1,                                                                                               +
                                                                           "Filter": "((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))",+
                                                                           "Rows Removed by Filter": 3140309,                                                                               +
                                                                           "Shared Hit Blocks": 2,                                                                                          +
                                                                           "Shared Read Blocks": 36445,                                                                                     +
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
                                                                     },                                                                                                                     +
                                                                     {                                                                                                                      +
                                                                       "Node Type": "Sort",                                                                                                 +
                                                                       "Parent Relationship": "Inner",                                                                                      +
                                                                       "Parallel Aware": false,                                                                                             +
                                                                       "Startup Cost": 151757.13,                                                                                           +
                                                                       "Total Cost": 154571.13,                                                                                             +
                                                                       "Plan Rows": 36244344,                                                                                               +
                                                                       "Plan Width": 12,                                                                                                    +
                                                                       "Actual Startup Time": 16807.316,                                                                                    +
                                                                       "Actual Total Time": 18515.623,                                                                                      +
                                                                       "Actual Rows": 16788386,                                                                                             +
                                                                       "Actual Loops": 1,                                                                                                   +
                                                                       "Sort Key": ["ci.person_role_id"],                                                                                   +
                                                                       "Sort Method": "quicksort",                                                                                          +
                                                                       "Sort Space Used": 3271818,                                                                                          +
                                                                       "Sort Space Type": "Memory",                                                                                         +
                                                                       "Shared Hit Blocks": 5,                                                                                              +
                                                                       "Shared Read Blocks": 252649,                                                                                        +
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
                                                                           "Relation Name": "cast_info",                                                                                    +
                                                                           "Alias": "ci",                                                                                                   +
                                                                           "Startup Cost": 0.00,                                                                                            +
                                                                           "Total Cost": 10431.00,                                                                                          +
                                                                           "Plan Rows": 36244344,                                                                                           +
                                                                           "Plan Width": 12,                                                                                                +
                                                                           "Actual Startup Time": 0.009,                                                                                    +
                                                                           "Actual Total Time": 7044.958,                                                                                   +
                                                                           "Actual Rows": 36244344,                                                                                         +
                                                                           "Actual Loops": 1,                                                                                               +
                                                                           "Shared Hit Blocks": 5,                                                                                          +
                                                                           "Shared Read Blocks": 252649,                                                                                    +
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
                                                               "Startup Cost": 2356.66,                                                                                                     +
                                                               "Total Cost": 2356.69,                                                                                                       +
                                                               "Plan Rows": 400,                                                                                                            +
                                                               "Plan Width": 4,                                                                                                             +
                                                               "Actual Startup Time": 2608.159,                                                                                             +
                                                               "Actual Total Time": 2608.160,                                                                                               +
                                                               "Actual Rows": 2,                                                                                                            +
                                                               "Actual Loops": 1,                                                                                                           +
                                                               "Sort Key": ["n.id"],                                                                                                        +
                                                               "Sort Method": "quicksort",                                                                                                  +
                                                               "Sort Space Used": 25,                                                                                                       +
                                                               "Sort Space Type": "Memory",                                                                                                 +
                                                               "Shared Hit Blocks": 1,                                                                                                      +
                                                               "Shared Read Blocks": 55612,                                                                                                 +
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
                                                                   "Relation Name": "name",                                                                                                 +
                                                                   "Alias": "n",                                                                                                            +
                                                                   "Startup Cost": 0.00,                                                                                                    +
                                                                   "Total Cost": 2356.12,                                                                                                   +
                                                                   "Plan Rows": 400,                                                                                                        +
                                                                   "Plan Width": 4,                                                                                                         +
                                                                   "Actual Startup Time": 280.842,                                                                                          +
                                                                   "Actual Total Time": 2608.140,                                                                                           +
                                                                   "Actual Rows": 2,                                                                                                        +
                                                                   "Actual Loops": 1,                                                                                                       +
                                                                   "Filter": "(name ~~ '%Downey%Robert%'::text)",                                                                           +
                                                                   "Rows Removed by Filter": 4167489,                                                                                       +
                                                                   "Shared Hit Blocks": 1,                                                                                                  +
                                                                   "Shared Read Blocks": 55612,                                                                                             +
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
                                                     {                                                                                                                                      +
                                                       "Node Type": "Sort",                                                                                                                 +
                                                       "Parent Relationship": "Inner",                                                                                                      +
                                                       "Parallel Aware": false,                                                                                                             +
                                                       "Startup Cost": 389.78,                                                                                                              +
                                                       "Total Cost": 400.26,                                                                                                                +
                                                       "Plan Rows": 135086,                                                                                                                 +
                                                       "Plan Width": 12,                                                                                                                    +
                                                       "Actual Startup Time": 116.779,                                                                                                      +
                                                       "Actual Total Time": 122.918,                                                                                                        +
                                                       "Actual Rows": 119873,                                                                                                               +
                                                       "Actual Loops": 1,                                                                                                                   +
                                                       "Sort Key": ["cc.movie_id"],                                                                                                         +
                                                       "Sort Method": "quicksort",                                                                                                          +
                                                       "Sort Space Used": 12477,                                                                                                            +
                                                       "Sort Space Type": "Memory",                                                                                                         +
                                                       "Shared Hit Blocks": 2,                                                                                                              +
                                                       "Shared Read Blocks": 729,                                                                                                           +
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
                                                           "Node Type": "Seq Scan",                                                                                                         +
                                                           "Parent Relationship": "Outer",                                                                                                  +
                                                           "Parallel Aware": false,                                                                                                         +
                                                           "Relation Name": "complete_cast",                                                                                                +
                                                           "Alias": "cc",                                                                                                                   +
                                                           "Startup Cost": 0.00,                                                                                                            +
                                                           "Total Cost": 32.27,                                                                                                             +
                                                           "Plan Rows": 135086,                                                                                                             +
                                                           "Plan Width": 12,                                                                                                                +
                                                           "Actual Startup Time": 24.249,                                                                                                   +
                                                           "Actual Total Time": 58.838,                                                                                                     +
                                                           "Actual Rows": 135086,                                                                                                           +
                                                           "Actual Loops": 1,                                                                                                               +
                                                           "Shared Hit Blocks": 2,                                                                                                          +
                                                           "Shared Read Blocks": 729,                                                                                                       +
                                                           "Shared Dirtied Blocks": 0,                                                                                                      +
                                                           "Shared Written Blocks": 0,                                                                                                      +
                                                           "Local Hit Blocks": 0,                                                                                                           +
                                                           "Local Read Blocks": 0,                                                                                                          +
                                                           "Local Dirtied Blocks": 0,                                                                                                       +
                                                           "Local Written Blocks": 0,                                                                                                       +
                                                           "Temp Read Blocks": 0,                                                                                                           +
                                                           "Temp Written Blocks": 0                                                                                                         +
                                                         }                                                                                                                                  +
                                                       ]                                                                                                                                    +
                                                     }                                                                                                                                      +
                                                   ]                                                                                                                                        +
                                                 },                                                                                                                                         +
                                                 {                                                                                                                                          +
                                                   "Node Type": "Sort",                                                                                                                     +
                                                   "Parent Relationship": "Inner",                                                                                                          +
                                                   "Parallel Aware": false,                                                                                                                 +
                                                   "Startup Cost": 16610.92,                                                                                                                +
                                                   "Total Cost": 16962.16,                                                                                                                  +
                                                   "Plan Rows": 4523930,                                                                                                                    +
                                                   "Plan Width": 8,                                                                                                                         +
                                                   "Actual Startup Time": 2311.160,                                                                                                         +
                                                   "Actual Total Time": 2496.761,                                                                                                           +
                                                   "Actual Rows": 3861957,                                                                                                                  +
                                                   "Actual Loops": 1,                                                                                                                       +
                                                   "Sort Key": ["mk.movie_id"],                                                                                                             +
                                                   "Sort Method": "quicksort",                                                                                                              +
                                                   "Sort Space Used": 408668,                                                                                                               +
                                                   "Sort Space Type": "Memory",                                                                                                             +
                                                   "Shared Hit Blocks": 3,                                                                                                                  +
                                                   "Shared Read Blocks": 24451,                                                                                                             +
                                                   "Shared Dirtied Blocks": 0,                                                                                                              +
                                                   "Shared Written Blocks": 0,                                                                                                              +
                                                   "Local Hit Blocks": 0,                                                                                                                   +
                                                   "Local Read Blocks": 0,                                                                                                                  +
                                                   "Local Dirtied Blocks": 0,                                                                                                               +
                                                   "Local Written Blocks": 0,                                                                                                               +
                                                   "Temp Read Blocks": 0,                                                                                                                   +
                                                   "Temp Written Blocks": 0,                                                                                                                +
                                                   "Plans": [                                                                                                                               +
                                                     {                                                                                                                                      +
                                                       "Node Type": "Seq Scan",                                                                                                             +
                                                       "Parent Relationship": "Outer",                                                                                                      +
                                                       "Parallel Aware": false,                                                                                                             +
                                                       "Relation Name": "movie_keyword",                                                                                                    +
                                                       "Alias": "mk",                                                                                                                       +
                                                       "Startup Cost": 0.00,                                                                                                                +
                                                       "Total Cost": 1079.84,                                                                                                               +
                                                       "Plan Rows": 4523930,                                                                                                                +
                                                       "Plan Width": 8,                                                                                                                     +
                                                       "Actual Startup Time": 0.010,                                                                                                        +
                                                       "Actual Total Time": 931.029,                                                                                                        +
                                                       "Actual Rows": 4523930,                                                                                                              +
                                                       "Actual Loops": 1,                                                                                                                   +
                                                       "Shared Hit Blocks": 3,                                                                                                              +
                                                       "Shared Read Blocks": 24451,                                                                                                         +
                                                       "Shared Dirtied Blocks": 0,                                                                                                          +
                                                       "Shared Written Blocks": 0,                                                                                                          +
                                                       "Local Hit Blocks": 0,                                                                                                               +
                                                       "Local Read Blocks": 0,                                                                                                              +
                                                       "Local Dirtied Blocks": 0,                                                                                                           +
                                                       "Local Written Blocks": 0,                                                                                                           +
                                                       "Temp Read Blocks": 0,                                                                                                               +
                                                       "Temp Written Blocks": 0                                                                                                             +
                                                     }                                                                                                                                      +
                                                   ]                                                                                                                                        +
                                                 }                                                                                                                                          +
                                               ]                                                                                                                                            +
                                             },                                                                                                                                             +
                                             {                                                                                                                                              +
                                               "Node Type": "Sort",                                                                                                                         +
                                               "Parent Relationship": "Inner",                                                                                                              +
                                               "Parallel Aware": false,                                                                                                                     +
                                               "Startup Cost": 5875.81,                                                                                                                     +
                                               "Total Cost": 5983.06,                                                                                                                       +
                                               "Plan Rows": 1381453,                                                                                                                        +
                                               "Plan Width": 25,                                                                                                                            +
                                               "Actual Startup Time": 2024.205,                                                                                                             +
                                               "Actual Total Time": 2186.516,                                                                                                               +
                                               "Actual Rows": 1315331,                                                                                                                      +
                                               "Actual Loops": 1,                                                                                                                           +
                                               "Sort Key": ["t.id"],                                                                                                                        +
                                               "Sort Method": "quicksort",                                                                                                                  +
                                               "Sort Space Used": 153732,                                                                                                                   +
                                               "Sort Space Type": "Memory",                                                                                                                 +
                                               "Shared Hit Blocks": 2,                                                                                                                      +
                                               "Shared Read Blocks": 35996,                                                                                                                 +
                                               "Shared Dirtied Blocks": 0,                                                                                                                  +
                                               "Shared Written Blocks": 0,                                                                                                                  +
                                               "Local Hit Blocks": 0,                                                                                                                       +
                                               "Local Read Blocks": 0,                                                                                                                      +
                                               "Local Dirtied Blocks": 0,                                                                                                                   +
                                               "Local Written Blocks": 0,                                                                                                                   +
                                               "Temp Read Blocks": 0,                                                                                                                       +
                                               "Temp Written Blocks": 0,                                                                                                                    +
                                               "Plans": [                                                                                                                                   +
                                                 {                                                                                                                                          +
                                                   "Node Type": "Seq Scan",                                                                                                                 +
                                                   "Parent Relationship": "Outer",                                                                                                          +
                                                   "Parallel Aware": false,                                                                                                                 +
                                                   "Relation Name": "title",                                                                                                                +
                                                   "Alias": "t",                                                                                                                            +
                                                   "Startup Cost": 0.00,                                                                                                                    +
                                                   "Total Cost": 1500.26,                                                                                                                   +
                                                   "Plan Rows": 1381453,                                                                                                                    +
                                                   "Plan Width": 25,                                                                                                                        +
                                                   "Actual Startup Time": 9.557,                                                                                                            +
                                                   "Actual Total Time": 1218.829,                                                                                                           +
                                                   "Actual Rows": 1381453,                                                                                                                  +
                                                   "Actual Loops": 1,                                                                                                                       +
                                                   "Filter": "(production_year > 2000)",                                                                                                    +
                                                   "Rows Removed by Filter": 1146859,                                                                                                       +
                                                   "Shared Hit Blocks": 2,                                                                                                                  +
                                                   "Shared Read Blocks": 35996,                                                                                                             +
                                                   "Shared Dirtied Blocks": 0,                                                                                                              +
                                                   "Shared Written Blocks": 0,                                                                                                              +
                                                   "Local Hit Blocks": 0,                                                                                                                   +
                                                   "Local Read Blocks": 0,                                                                                                                  +
                                                   "Local Dirtied Blocks": 0,                                                                                                               +
                                                   "Local Written Blocks": 0,                                                                                                               +
                                                   "Temp Read Blocks": 0,                                                                                                                   +
                                                   "Temp Written Blocks": 0                                                                                                                 +
                                                 }                                                                                                                                          +
                                               ]                                                                                                                                            +
                                             }                                                                                                                                              +
                                           ]                                                                                                                                                +
                                         }                                                                                                                                                  +
                                       ]                                                                                                                                                    +
                                     },                                                                                                                                                     +
                                     {                                                                                                                                                      +
                                       "Node Type": "Sort",                                                                                                                                 +
                                       "Parent Relationship": "Inner",                                                                                                                      +
                                       "Parallel Aware": false,                                                                                                                             +
                                       "Startup Cost": 0.03,                                                                                                                                +
                                       "Total Cost": 0.03,                                                                                                                                  +
                                       "Plan Rows": 1,                                                                                                                                      +
                                       "Plan Width": 4,                                                                                                                                     +
                                       "Actual Startup Time": 0.027,                                                                                                                        +
                                       "Actual Total Time": 0.028,                                                                                                                          +
                                       "Actual Rows": 1,                                                                                                                                    +
                                       "Actual Loops": 1,                                                                                                                                   +
                                       "Sort Key": ["cct1.id"],                                                                                                                             +
                                       "Sort Method": "quicksort",                                                                                                                          +
                                       "Sort Space Used": 25,                                                                                                                               +
                                       "Sort Space Type": "Memory",                                                                                                                         +
                                       "Shared Hit Blocks": 1,                                                                                                                              +
                                       "Shared Read Blocks": 0,                                                                                                                             +
                                       "Shared Dirtied Blocks": 0,                                                                                                                          +
                                       "Shared Written Blocks": 0,                                                                                                                          +
                                       "Local Hit Blocks": 0,                                                                                                                               +
                                       "Local Read Blocks": 0,                                                                                                                              +
                                       "Local Dirtied Blocks": 0,                                                                                                                           +
                                       "Local Written Blocks": 0,                                                                                                                           +
                                       "Temp Read Blocks": 0,                                                                                                                               +
                                       "Temp Written Blocks": 0,                                                                                                                            +
                                       "Plans": [                                                                                                                                           +
                                         {                                                                                                                                                  +
                                           "Node Type": "Seq Scan",                                                                                                                         +
                                           "Parent Relationship": "Outer",                                                                                                                  +
                                           "Parallel Aware": false,                                                                                                                         +
                                           "Relation Name": "comp_cast_type",                                                                                                               +
                                           "Alias": "cct1",                                                                                                                                 +
                                           "Startup Cost": 0.00,                                                                                                                            +
                                           "Total Cost": 0.03,                                                                                                                              +
                                           "Plan Rows": 1,                                                                                                                                  +
                                           "Plan Width": 4,                                                                                                                                 +
                                           "Actual Startup Time": 0.015,                                                                                                                    +
                                           "Actual Total Time": 0.017,                                                                                                                      +
                                           "Actual Rows": 1,                                                                                                                                +
                                           "Actual Loops": 1,                                                                                                                               +
                                           "Filter": "((kind)::text = 'cast'::text)",                                                                                                       +
                                           "Rows Removed by Filter": 3,                                                                                                                     +
                                           "Shared Hit Blocks": 1,                                                                                                                          +
                                           "Shared Read Blocks": 0,                                                                                                                         +
                                           "Shared Dirtied Blocks": 0,                                                                                                                      +
                                           "Shared Written Blocks": 0,                                                                                                                      +
                                           "Local Hit Blocks": 0,                                                                                                                           +
                                           "Local Read Blocks": 0,                                                                                                                          +
                                           "Local Dirtied Blocks": 0,                                                                                                                       +
                                           "Local Written Blocks": 0,                                                                                                                       +
                                           "Temp Read Blocks": 0,                                                                                                                           +
                                           "Temp Written Blocks": 0                                                                                                                         +
                                         }                                                                                                                                                  +
                                       ]                                                                                                                                                    +
                                     }                                                                                                                                                      +
                                   ]                                                                                                                                                        +
                                 }                                                                                                                                                          +
                               ]                                                                                                                                                            +
                             },                                                                                                                                                             +
                             {                                                                                                                                                              +
                               "Node Type": "Sort",                                                                                                                                         +
                               "Parent Relationship": "Inner",                                                                                                                              +
                               "Parallel Aware": false,                                                                                                                                     +
                               "Startup Cost": 0.03,                                                                                                                                        +
                               "Total Cost": 0.03,                                                                                                                                          +
                               "Plan Rows": 1,                                                                                                                                              +
                               "Plan Width": 4,                                                                                                                                             +
                               "Actual Startup Time": 0.008,                                                                                                                                +
                               "Actual Total Time": 0.008,                                                                                                                                  +
                               "Actual Rows": 2,                                                                                                                                            +
                               "Actual Loops": 1,                                                                                                                                           +
                               "Sort Key": ["cct2.id"],                                                                                                                                     +
                               "Sort Method": "quicksort",                                                                                                                                  +
                               "Sort Space Used": 25,                                                                                                                                       +
                               "Sort Space Type": "Memory",                                                                                                                                 +
                               "Shared Hit Blocks": 1,                                                                                                                                      +
                               "Shared Read Blocks": 0,                                                                                                                                     +
                               "Shared Dirtied Blocks": 0,                                                                                                                                  +
                               "Shared Written Blocks": 0,                                                                                                                                  +
                               "Local Hit Blocks": 0,                                                                                                                                       +
                               "Local Read Blocks": 0,                                                                                                                                      +
                               "Local Dirtied Blocks": 0,                                                                                                                                   +
                               "Local Written Blocks": 0,                                                                                                                                   +
                               "Temp Read Blocks": 0,                                                                                                                                       +
                               "Temp Written Blocks": 0,                                                                                                                                    +
                               "Plans": [                                                                                                                                                   +
                                 {                                                                                                                                                          +
                                   "Node Type": "Seq Scan",                                                                                                                                 +
                                   "Parent Relationship": "Outer",                                                                                                                          +
                                   "Parallel Aware": false,                                                                                                                                 +
                                   "Relation Name": "comp_cast_type",                                                                                                                       +
                                   "Alias": "cct2",                                                                                                                                         +
                                   "Startup Cost": 0.00,                                                                                                                                    +
                                   "Total Cost": 0.03,                                                                                                                                      +
                                   "Plan Rows": 1,                                                                                                                                          +
                                   "Plan Width": 4,                                                                                                                                         +
                                   "Actual Startup Time": 0.005,                                                                                                                            +
                                   "Actual Total Time": 0.006,                                                                                                                              +
                                   "Actual Rows": 2,                                                                                                                                        +
                                   "Actual Loops": 1,                                                                                                                                       +
                                   "Filter": "((kind)::text ~~ '%complete%'::text)",                                                                                                        +
                                   "Rows Removed by Filter": 2,                                                                                                                             +
                                   "Shared Hit Blocks": 1,                                                                                                                                  +
                                   "Shared Read Blocks": 0,                                                                                                                                 +
                                   "Shared Dirtied Blocks": 0,                                                                                                                              +
                                   "Shared Written Blocks": 0,                                                                                                                              +
                                   "Local Hit Blocks": 0,                                                                                                                                   +
                                   "Local Read Blocks": 0,                                                                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                                                                               +
                                   "Local Written Blocks": 0,                                                                                                                               +
                                   "Temp Read Blocks": 0,                                                                                                                                   +
                                   "Temp Written Blocks": 0                                                                                                                                 +
                                 }                                                                                                                                                          +
                               ]                                                                                                                                                            +
                             }                                                                                                                                                              +
                           ]                                                                                                                                                                +
                         }                                                                                                                                                                  +
                       ]                                                                                                                                                                    +
                     },                                                                                                                                                                     +
                     {                                                                                                                                                                      +
                       "Node Type": "Sort",                                                                                                                                                 +
                       "Parent Relationship": "Inner",                                                                                                                                      +
                       "Parallel Aware": false,                                                                                                                                             +
                       "Startup Cost": 0.03,                                                                                                                                                +
                       "Total Cost": 0.03,                                                                                                                                                  +
                       "Plan Rows": 1,                                                                                                                                                      +
                       "Plan Width": 4,                                                                                                                                                     +
                       "Actual Startup Time": 0.008,                                                                                                                                        +
                       "Actual Total Time": 0.008,                                                                                                                                          +
                       "Actual Rows": 1,                                                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                                                   +
                       "Sort Key": ["kt.id"],                                                                                                                                               +
                       "Sort Method": "quicksort",                                                                                                                                          +
                       "Sort Space Used": 25,                                                                                                                                               +
                       "Sort Space Type": "Memory",                                                                                                                                         +
                       "Shared Hit Blocks": 1,                                                                                                                                              +
                       "Shared Read Blocks": 0,                                                                                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                                                                                          +
                       "Shared Written Blocks": 0,                                                                                                                                          +
                       "Local Hit Blocks": 0,                                                                                                                                               +
                       "Local Read Blocks": 0,                                                                                                                                              +
                       "Local Dirtied Blocks": 0,                                                                                                                                           +
                       "Local Written Blocks": 0,                                                                                                                                           +
                       "Temp Read Blocks": 0,                                                                                                                                               +
                       "Temp Written Blocks": 0,                                                                                                                                            +
                       "Plans": [                                                                                                                                                           +
                         {                                                                                                                                                                  +
                           "Node Type": "Seq Scan",                                                                                                                                         +
                           "Parent Relationship": "Outer",                                                                                                                                  +
                           "Parallel Aware": false,                                                                                                                                         +
                           "Relation Name": "kind_type",                                                                                                                                    +
                           "Alias": "kt",                                                                                                                                                   +
                           "Startup Cost": 0.00,                                                                                                                                            +
                           "Total Cost": 0.03,                                                                                                                                              +
                           "Plan Rows": 1,                                                                                                                                                  +
                           "Plan Width": 4,                                                                                                                                                 +
                           "Actual Startup Time": 0.004,                                                                                                                                    +
                           "Actual Total Time": 0.005,                                                                                                                                      +
                           "Actual Rows": 1,                                                                                                                                                +
                           "Actual Loops": 1,                                                                                                                                               +
                           "Filter": "((kind)::text = 'movie'::text)",                                                                                                                      +
                           "Rows Removed by Filter": 6,                                                                                                                                     +
                           "Shared Hit Blocks": 1,                                                                                                                                          +
                           "Shared Read Blocks": 0,                                                                                                                                         +
                           "Shared Dirtied Blocks": 0,                                                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                                                           +
                           "Temp Written Blocks": 0                                                                                                                                         +
                         }                                                                                                                                                                  +
                       ]                                                                                                                                                                    +
                     }                                                                                                                                                                      +
                   ]                                                                                                                                                                        +
                 }                                                                                                                                                                          +
               ]                                                                                                                                                                            +
             },                                                                                                                                                                             +
             {                                                                                                                                                                              +
               "Node Type": "Sort",                                                                                                                                                         +
               "Parent Relationship": "Inner",                                                                                                                                              +
               "Parallel Aware": false,                                                                                                                                                     +
               "Startup Cost": 49.06,                                                                                                                                                       +
               "Total Cost": 49.06,                                                                                                                                                         +
               "Plan Rows": 8,                                                                                                                                                              +
               "Plan Width": 4,                                                                                                                                                             +
               "Actual Startup Time": 92.106,                                                                                                                                               +
               "Actual Total Time": 92.108,                                                                                                                                                 +
               "Actual Rows": 8,                                                                                                                                                            +
               "Actual Loops": 1,                                                                                                                                                           +
               "Sort Key": ["k.id"],                                                                                                                                                        +
               "Sort Method": "quicksort",                                                                                                                                                  +
               "Sort Space Used": 25,                                                                                                                                                       +
               "Sort Space Type": "Memory",                                                                                                                                                 +
               "Shared Hit Blocks": 15,                                                                                                                                                     +
               "Shared Read Blocks": 20,                                                                                                                                                    +
               "Shared Dirtied Blocks": 0,                                                                                                                                                  +
               "Shared Written Blocks": 0,                                                                                                                                                  +
               "Local Hit Blocks": 0,                                                                                                                                                       +
               "Local Read Blocks": 0,                                                                                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                                                                                   +
               "Local Written Blocks": 0,                                                                                                                                                   +
               "Temp Read Blocks": 0,                                                                                                                                                       +
               "Temp Written Blocks": 0,                                                                                                                                                    +
               "Plans": [                                                                                                                                                                   +
                 {                                                                                                                                                                          +
                   "Node Type": "Index Scan",                                                                                                                                               +
                   "Parent Relationship": "Outer",                                                                                                                                          +
                   "Parallel Aware": false,                                                                                                                                                 +
                   "Scan Direction": "Forward",                                                                                                                                             +
                   "Index Name": "keyword_idx_keyword",                                                                                                                                     +
                   "Relation Name": "keyword",                                                                                                                                              +
                   "Alias": "k",                                                                                                                                                            +
                   "Startup Cost": 0.01,                                                                                                                                                    +
                   "Total Cost": 49.06,                                                                                                                                                     +
                   "Plan Rows": 8,                                                                                                                                                          +
                   "Plan Width": 4,                                                                                                                                                         +
                   "Actual Startup Time": 39.851,                                                                                                                                           +
                   "Actual Total Time": 92.069,                                                                                                                                             +
                   "Actual Rows": 8,                                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                                       +
                   "Index Cond": "(keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))",                                       +
                   "Rows Removed by Index Recheck": 0,                                                                                                                                      +
                   "Shared Hit Blocks": 15,                                                                                                                                                 +
                   "Shared Read Blocks": 20,                                                                                                                                                +
                   "Shared Dirtied Blocks": 0,                                                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                                                   +
                   "Temp Written Blocks": 0                                                                                                                                                 +
                 }                                                                                                                                                                          +
               ]                                                                                                                                                                            +
             }                                                                                                                                                                              +
           ]                                                                                                                                                                                +
         }                                                                                                                                                                                  +
       ]                                                                                                                                                                                    +
     },                                                                                                                                                                                     +
     "Planning Time": 6152.978,                                                                                                                                                             +
     "Triggers": [                                                                                                                                                                          +
     ],                                                                                                                                                                                     +
     "Execution Time": 30311.085                                                                                                                                                            +
   }                                                                                                                                                                                        +
 ]
(1 row)
