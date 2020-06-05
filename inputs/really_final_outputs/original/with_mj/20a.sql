                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                                   +
   {                                                                                                                                                                                                 +
     "Plan": {                                                                                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                                                                                     +
       "Strategy": "Plain",                                                                                                                                                                          +
       "Partial Mode": "Simple",                                                                                                                                                                     +
       "Parallel Aware": false,                                                                                                                                                                      +
       "Startup Cost": 200613.86,                                                                                                                                                                    +
       "Total Cost": 200613.86,                                                                                                                                                                      +
       "Plan Rows": 1,                                                                                                                                                                               +
       "Plan Width": 32,                                                                                                                                                                             +
       "Actual Startup Time": 32278.182,                                                                                                                                                             +
       "Actual Total Time": 32278.182,                                                                                                                                                               +
       "Actual Rows": 1,                                                                                                                                                                             +
       "Actual Loops": 1,                                                                                                                                                                            +
       "Shared Hit Blocks": 37,                                                                                                                                                                      +
       "Shared Read Blocks": 405902,                                                                                                                                                                 +
       "Shared Dirtied Blocks": 0,                                                                                                                                                                   +
       "Shared Written Blocks": 0,                                                                                                                                                                   +
       "Local Hit Blocks": 0,                                                                                                                                                                        +
       "Local Read Blocks": 0,                                                                                                                                                                       +
       "Local Dirtied Blocks": 0,                                                                                                                                                                    +
       "Local Written Blocks": 0,                                                                                                                                                                    +
       "Temp Read Blocks": 0,                                                                                                                                                                        +
       "Temp Written Blocks": 0,                                                                                                                                                                     +
       "Plans": [                                                                                                                                                                                    +
         {                                                                                                                                                                                           +
           "Node Type": "Merge Join",                                                                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                                                                           +
           "Parallel Aware": false,                                                                                                                                                                  +
           "Join Type": "Inner",                                                                                                                                                                     +
           "Startup Cost": 199983.14,                                                                                                                                                                +
           "Total Cost": 200613.86,                                                                                                                                                                  +
           "Plan Rows": 1,                                                                                                                                                                           +
           "Plan Width": 17,                                                                                                                                                                         +
           "Actual Startup Time": 32042.432,                                                                                                                                                         +
           "Actual Total Time": 32278.126,                                                                                                                                                           +
           "Actual Rows": 33,                                                                                                                                                                        +
           "Actual Loops": 1,                                                                                                                                                                        +
           "Inner Unique": true,                                                                                                                                                                     +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                                                    +
           "Shared Hit Blocks": 37,                                                                                                                                                                  +
           "Shared Read Blocks": 405902,                                                                                                                                                             +
           "Shared Dirtied Blocks": 0,                                                                                                                                                               +
           "Shared Written Blocks": 0,                                                                                                                                                               +
           "Local Hit Blocks": 0,                                                                                                                                                                    +
           "Local Read Blocks": 0,                                                                                                                                                                   +
           "Local Dirtied Blocks": 0,                                                                                                                                                                +
           "Local Written Blocks": 0,                                                                                                                                                                +
           "Temp Read Blocks": 0,                                                                                                                                                                    +
           "Temp Written Blocks": 0,                                                                                                                                                                 +
           "Plans": [                                                                                                                                                                                +
             {                                                                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                                                                  +
               "Parent Relationship": "Outer",                                                                                                                                                       +
               "Parallel Aware": false,                                                                                                                                                              +
               "Startup Cost": 183719.80,                                                                                                                                                            +
               "Total Cost": 183719.80,                                                                                                                                                              +
               "Plan Rows": 1,                                                                                                                                                                       +
               "Plan Width": 21,                                                                                                                                                                     +
               "Actual Startup Time": 28485.844,                                                                                                                                                     +
               "Actual Total Time": 28485.849,                                                                                                                                                       +
               "Actual Rows": 33,                                                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                                                    +
               "Sort Key": ["ci.person_id"],                                                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                                                           +
               "Sort Space Used": 26,                                                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                                                          +
               "Shared Hit Blocks": 36,                                                                                                                                                              +
               "Shared Read Blocks": 350290,                                                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                                                           +
               "Shared Written Blocks": 0,                                                                                                                                                           +
               "Local Hit Blocks": 0,                                                                                                                                                                +
               "Local Read Blocks": 0,                                                                                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                                                                                            +
               "Local Written Blocks": 0,                                                                                                                                                            +
               "Temp Read Blocks": 0,                                                                                                                                                                +
               "Temp Written Blocks": 0,                                                                                                                                                             +
               "Plans": [                                                                                                                                                                            +
                 {                                                                                                                                                                                   +
                   "Node Type": "Merge Join",                                                                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                                                                   +
                   "Parallel Aware": false,                                                                                                                                                          +
                   "Join Type": "Inner",                                                                                                                                                             +
                   "Startup Cost": 183719.80,                                                                                                                                                        +
                   "Total Cost": 183719.80,                                                                                                                                                          +
                   "Plan Rows": 1,                                                                                                                                                                   +
                   "Plan Width": 21,                                                                                                                                                                 +
                   "Actual Startup Time": 28476.609,                                                                                                                                                 +
                   "Actual Total Time": 28476.617,                                                                                                                                                   +
                   "Actual Rows": 33,                                                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                                                                +
                   "Inner Unique": true,                                                                                                                                                             +
                   "Merge Cond": "(t.kind_id = kt.id)",                                                                                                                                              +
                   "Shared Hit Blocks": 32,                                                                                                                                                          +
                   "Shared Read Blocks": 350290,                                                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                       +
                   "Shared Written Blocks": 0,                                                                                                                                                       +
                   "Local Hit Blocks": 0,                                                                                                                                                            +
                   "Local Read Blocks": 0,                                                                                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                                                                                        +
                   "Local Written Blocks": 0,                                                                                                                                                        +
                   "Temp Read Blocks": 0,                                                                                                                                                            +
                   "Temp Written Blocks": 0,                                                                                                                                                         +
                   "Plans": [                                                                                                                                                                        +
                     {                                                                                                                                                                               +
                       "Node Type": "Sort",                                                                                                                                                          +
                       "Parent Relationship": "Outer",                                                                                                                                               +
                       "Parallel Aware": false,                                                                                                                                                      +
                       "Startup Cost": 183719.77,                                                                                                                                                    +
                       "Total Cost": 183719.77,                                                                                                                                                      +
                       "Plan Rows": 1,                                                                                                                                                               +
                       "Plan Width": 25,                                                                                                                                                             +
                       "Actual Startup Time": 28476.598,                                                                                                                                             +
                       "Actual Total Time": 28476.599,                                                                                                                                               +
                       "Actual Rows": 33,                                                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                                            +
                       "Sort Key": ["t.kind_id"],                                                                                                                                                    +
                       "Sort Method": "quicksort",                                                                                                                                                   +
                       "Sort Space Used": 27,                                                                                                                                                        +
                       "Sort Space Type": "Memory",                                                                                                                                                  +
                       "Shared Hit Blocks": 31,                                                                                                                                                      +
                       "Shared Read Blocks": 350290,                                                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                   +
                       "Shared Written Blocks": 0,                                                                                                                                                   +
                       "Local Hit Blocks": 0,                                                                                                                                                        +
                       "Local Read Blocks": 0,                                                                                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                                                                                    +
                       "Local Written Blocks": 0,                                                                                                                                                    +
                       "Temp Read Blocks": 0,                                                                                                                                                        +
                       "Temp Written Blocks": 0,                                                                                                                                                     +
                       "Plans": [                                                                                                                                                                    +
                         {                                                                                                                                                                           +
                           "Node Type": "Merge Join",                                                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                                                           +
                           "Parallel Aware": false,                                                                                                                                                  +
                           "Join Type": "Inner",                                                                                                                                                     +
                           "Startup Cost": 183719.77,                                                                                                                                                +
                           "Total Cost": 183719.77,                                                                                                                                                  +
                           "Plan Rows": 1,                                                                                                                                                           +
                           "Plan Width": 25,                                                                                                                                                         +
                           "Actual Startup Time": 28476.569,                                                                                                                                         +
                           "Actual Total Time": 28476.579,                                                                                                                                           +
                           "Actual Rows": 33,                                                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                                                        +
                           "Inner Unique": true,                                                                                                                                                     +
                           "Merge Cond": "(cc.status_id = cct2.id)",                                                                                                                                 +
                           "Shared Hit Blocks": 31,                                                                                                                                                  +
                           "Shared Read Blocks": 350290,                                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                                               +
                           "Shared Written Blocks": 0,                                                                                                                                               +
                           "Local Hit Blocks": 0,                                                                                                                                                    +
                           "Local Read Blocks": 0,                                                                                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                                                                                +
                           "Local Written Blocks": 0,                                                                                                                                                +
                           "Temp Read Blocks": 0,                                                                                                                                                    +
                           "Temp Written Blocks": 0,                                                                                                                                                 +
                           "Plans": [                                                                                                                                                                +
                             {                                                                                                                                                                       +
                               "Node Type": "Sort",                                                                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                                                                       +
                               "Parallel Aware": false,                                                                                                                                              +
                               "Startup Cost": 183719.73,                                                                                                                                            +
                               "Total Cost": 183719.73,                                                                                                                                              +
                               "Plan Rows": 1,                                                                                                                                                       +
                               "Plan Width": 29,                                                                                                                                                     +
                               "Actual Startup Time": 28476.559,                                                                                                                                     +
                               "Actual Total Time": 28476.561,                                                                                                                                       +
                               "Actual Rows": 33,                                                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                                                    +
                               "Sort Key": ["cc.status_id"],                                                                                                                                         +
                               "Sort Method": "quicksort",                                                                                                                                           +
                               "Sort Space Used": 27,                                                                                                                                                +
                               "Sort Space Type": "Memory",                                                                                                                                          +
                               "Shared Hit Blocks": 30,                                                                                                                                              +
                               "Shared Read Blocks": 350290,                                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                                           +
                               "Shared Written Blocks": 0,                                                                                                                                           +
                               "Local Hit Blocks": 0,                                                                                                                                                +
                               "Local Read Blocks": 0,                                                                                                                                               +
                               "Local Dirtied Blocks": 0,                                                                                                                                            +
                               "Local Written Blocks": 0,                                                                                                                                            +
                               "Temp Read Blocks": 0,                                                                                                                                                +
                               "Temp Written Blocks": 0,                                                                                                                                             +
                               "Plans": [                                                                                                                                                            +
                                 {                                                                                                                                                                   +
                                   "Node Type": "Merge Join",                                                                                                                                        +
                                   "Parent Relationship": "Outer",                                                                                                                                   +
                                   "Parallel Aware": false,                                                                                                                                          +
                                   "Join Type": "Inner",                                                                                                                                             +
                                   "Startup Cost": 183719.73,                                                                                                                                        +
                                   "Total Cost": 183719.73,                                                                                                                                          +
                                   "Plan Rows": 1,                                                                                                                                                   +
                                   "Plan Width": 29,                                                                                                                                                 +
                                   "Actual Startup Time": 28476.518,                                                                                                                                 +
                                   "Actual Total Time": 28476.528,                                                                                                                                   +
                                   "Actual Rows": 33,                                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                                                +
                                   "Inner Unique": true,                                                                                                                                             +
                                   "Merge Cond": "(cc.subject_id = cct1.id)",                                                                                                                        +
                                   "Shared Hit Blocks": 30,                                                                                                                                          +
                                   "Shared Read Blocks": 350290,                                                                                                                                     +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                       +
                                   "Shared Written Blocks": 0,                                                                                                                                       +
                                   "Local Hit Blocks": 0,                                                                                                                                            +
                                   "Local Read Blocks": 0,                                                                                                                                           +
                                   "Local Dirtied Blocks": 0,                                                                                                                                        +
                                   "Local Written Blocks": 0,                                                                                                                                        +
                                   "Temp Read Blocks": 0,                                                                                                                                            +
                                   "Temp Written Blocks": 0,                                                                                                                                         +
                                   "Plans": [                                                                                                                                                        +
                                     {                                                                                                                                                               +
                                       "Node Type": "Sort",                                                                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                                                               +
                                       "Parallel Aware": false,                                                                                                                                      +
                                       "Startup Cost": 183719.70,                                                                                                                                    +
                                       "Total Cost": 183719.70,                                                                                                                                      +
                                       "Plan Rows": 1,                                                                                                                                               +
                                       "Plan Width": 33,                                                                                                                                             +
                                       "Actual Startup Time": 28476.488,                                                                                                                             +
                                       "Actual Total Time": 28476.490,                                                                                                                               +
                                       "Actual Rows": 33,                                                                                                                                            +
                                       "Actual Loops": 1,                                                                                                                                            +
                                       "Sort Key": ["cc.subject_id"],                                                                                                                                +
                                       "Sort Method": "quicksort",                                                                                                                                   +
                                       "Sort Space Used": 27,                                                                                                                                        +
                                       "Sort Space Type": "Memory",                                                                                                                                  +
                                       "Shared Hit Blocks": 29,                                                                                                                                      +
                                       "Shared Read Blocks": 350290,                                                                                                                                 +
                                       "Shared Dirtied Blocks": 0,                                                                                                                                   +
                                       "Shared Written Blocks": 0,                                                                                                                                   +
                                       "Local Hit Blocks": 0,                                                                                                                                        +
                                       "Local Read Blocks": 0,                                                                                                                                       +
                                       "Local Dirtied Blocks": 0,                                                                                                                                    +
                                       "Local Written Blocks": 0,                                                                                                                                    +
                                       "Temp Read Blocks": 0,                                                                                                                                        +
                                       "Temp Written Blocks": 0,                                                                                                                                     +
                                       "Plans": [                                                                                                                                                    +
                                         {                                                                                                                                                           +
                                           "Node Type": "Merge Join",                                                                                                                                +
                                           "Parent Relationship": "Outer",                                                                                                                           +
                                           "Parallel Aware": false,                                                                                                                                  +
                                           "Join Type": "Inner",                                                                                                                                     +
                                           "Startup Cost": 183343.71,                                                                                                                                +
                                           "Total Cost": 183719.70,                                                                                                                                  +
                                           "Plan Rows": 1,                                                                                                                                           +
                                           "Plan Width": 33,                                                                                                                                         +
                                           "Actual Startup Time": 28339.706,                                                                                                                         +
                                           "Actual Total Time": 28476.440,                                                                                                                           +
                                           "Actual Rows": 33,                                                                                                                                        +
                                           "Actual Loops": 1,                                                                                                                                        +
                                           "Inner Unique": true,                                                                                                                                     +
                                           "Merge Cond": "(mk.movie_id = t.id)",                                                                                                                     +
                                           "Shared Hit Blocks": 29,                                                                                                                                  +
                                           "Shared Read Blocks": 350290,                                                                                                                             +
                                           "Shared Dirtied Blocks": 0,                                                                                                                               +
                                           "Shared Written Blocks": 0,                                                                                                                               +
                                           "Local Hit Blocks": 0,                                                                                                                                    +
                                           "Local Read Blocks": 0,                                                                                                                                   +
                                           "Local Dirtied Blocks": 0,                                                                                                                                +
                                           "Local Written Blocks": 0,                                                                                                                                +
                                           "Temp Read Blocks": 0,                                                                                                                                    +
                                           "Temp Written Blocks": 0,                                                                                                                                 +
                                           "Plans": [                                                                                                                                                +
                                             {                                                                                                                                                       +
                                               "Node Type": "Merge Join",                                                                                                                            +
                                               "Parent Relationship": "Outer",                                                                                                                       +
                                               "Parallel Aware": false,                                                                                                                              +
                                               "Join Type": "Inner",                                                                                                                                 +
                                               "Startup Cost": 174340.49,                                                                                                                            +
                                               "Total Cost": 174361.65,                                                                                                                              +
                                               "Plan Rows": 1,                                                                                                                                       +
                                               "Plan Width": 24,                                                                                                                                     +
                                               "Actual Startup Time": 25373.759,                                                                                                                     +
                                               "Actual Total Time": 25387.422,                                                                                                                       +
                                               "Actual Rows": 33,                                                                                                                                    +
                                               "Actual Loops": 1,                                                                                                                                    +
                                               "Inner Unique": false,                                                                                                                                +
                                               "Merge Cond": "(mk.movie_id = cc.movie_id)",                                                                                                          +
                                               "Shared Hit Blocks": 27,                                                                                                                              +
                                               "Shared Read Blocks": 314294,                                                                                                                         +
                                               "Shared Dirtied Blocks": 0,                                                                                                                           +
                                               "Shared Written Blocks": 0,                                                                                                                           +
                                               "Local Hit Blocks": 0,                                                                                                                                +
                                               "Local Read Blocks": 0,                                                                                                                               +
                                               "Local Dirtied Blocks": 0,                                                                                                                            +
                                               "Local Written Blocks": 0,                                                                                                                            +
                                               "Temp Read Blocks": 0,                                                                                                                                +
                                               "Temp Written Blocks": 0,                                                                                                                             +
                                               "Plans": [                                                                                                                                            +
                                                 {                                                                                                                                                   +
                                                   "Node Type": "Merge Join",                                                                                                                        +
                                                   "Parent Relationship": "Outer",                                                                                                                   +
                                                   "Parallel Aware": false,                                                                                                                          +
                                                   "Join Type": "Inner",                                                                                                                             +
                                                   "Startup Cost": 173950.72,                                                                                                                        +
                                                   "Total Cost": 173951.31,                                                                                                                          +
                                                   "Plan Rows": 1,                                                                                                                                   +
                                                   "Plan Width": 12,                                                                                                                                 +
                                                   "Actual Startup Time": 25243.911,                                                                                                                 +
                                                   "Actual Total Time": 25252.290,                                                                                                                   +
                                                   "Actual Rows": 176,                                                                                                                               +
                                                   "Actual Loops": 1,                                                                                                                                +
                                                   "Inner Unique": false,                                                                                                                            +
                                                   "Merge Cond": "(ci.movie_id = mk.movie_id)",                                                                                                      +
                                                   "Shared Hit Blocks": 25,                                                                                                                          +
                                                   "Shared Read Blocks": 313565,                                                                                                                     +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                       +
                                                   "Shared Written Blocks": 0,                                                                                                                       +
                                                   "Local Hit Blocks": 0,                                                                                                                            +
                                                   "Local Read Blocks": 0,                                                                                                                           +
                                                   "Local Dirtied Blocks": 0,                                                                                                                        +
                                                   "Local Written Blocks": 0,                                                                                                                        +
                                                   "Temp Read Blocks": 0,                                                                                                                            +
                                                   "Temp Written Blocks": 0,                                                                                                                         +
                                                   "Plans": [                                                                                                                                        +
                                                     {                                                                                                                                               +
                                                       "Node Type": "Sort",                                                                                                                          +
                                                       "Parent Relationship": "Outer",                                                                                                               +
                                                       "Parallel Aware": false,                                                                                                                      +
                                                       "Startup Cost": 156587.90,                                                                                                                    +
                                                       "Total Cost": 156588.17,                                                                                                                      +
                                                       "Plan Rows": 3518,                                                                                                                            +
                                                       "Plan Width": 8,                                                                                                                              +
                                                       "Actual Startup Time": 22163.625,                                                                                                             +
                                                       "Actual Total Time": 22163.675,                                                                                                               +
                                                       "Actual Rows": 556,                                                                                                                           +
                                                       "Actual Loops": 1,                                                                                                                            +
                                                       "Sort Key": ["ci.movie_id"],                                                                                                                  +
                                                       "Sort Method": "quicksort",                                                                                                                   +
                                                       "Sort Space Used": 51,                                                                                                                        +
                                                       "Sort Space Type": "Memory",                                                                                                                  +
                                                       "Shared Hit Blocks": 7,                                                                                                                       +
                                                       "Shared Read Blocks": 289094,                                                                                                                 +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                   +
                                                       "Shared Written Blocks": 0,                                                                                                                   +
                                                       "Local Hit Blocks": 0,                                                                                                                        +
                                                       "Local Read Blocks": 0,                                                                                                                       +
                                                       "Local Dirtied Blocks": 0,                                                                                                                    +
                                                       "Local Written Blocks": 0,                                                                                                                    +
                                                       "Temp Read Blocks": 0,                                                                                                                        +
                                                       "Temp Written Blocks": 0,                                                                                                                     +
                                                       "Plans": [                                                                                                                                    +
                                                         {                                                                                                                                           +
                                                           "Node Type": "Merge Join",                                                                                                                +
                                                           "Parent Relationship": "Outer",                                                                                                           +
                                                           "Parallel Aware": false,                                                                                                                  +
                                                           "Join Type": "Inner",                                                                                                                     +
                                                           "Startup Cost": 153849.84,                                                                                                                +
                                                           "Total Cost": 156581.47,                                                                                                                  +
                                                           "Plan Rows": 3518,                                                                                                                        +
                                                           "Plan Width": 8,                                                                                                                          +
                                                           "Actual Startup Time": 19510.669,                                                                                                         +
                                                           "Actual Total Time": 22163.417,                                                                                                           +
                                                           "Actual Rows": 556,                                                                                                                       +
                                                           "Actual Loops": 1,                                                                                                                        +
                                                           "Inner Unique": false,                                                                                                                    +
                                                           "Merge Cond": "(chn.id = ci.person_role_id)",                                                                                             +
                                                           "Shared Hit Blocks": 7,                                                                                                                   +
                                                           "Shared Read Blocks": 289094,                                                                                                             +
                                                           "Shared Dirtied Blocks": 0,                                                                                                               +
                                                           "Shared Written Blocks": 0,                                                                                                               +
                                                           "Local Hit Blocks": 0,                                                                                                                    +
                                                           "Local Read Blocks": 0,                                                                                                                   +
                                                           "Local Dirtied Blocks": 0,                                                                                                                +
                                                           "Local Written Blocks": 0,                                                                                                                +
                                                           "Temp Read Blocks": 0,                                                                                                                    +
                                                           "Temp Written Blocks": 0,                                                                                                                 +
                                                           "Plans": [                                                                                                                                +
                                                             {                                                                                                                                       +
                                                               "Node Type": "Sort",                                                                                                                  +
                                                               "Parent Relationship": "Outer",                                                                                                       +
                                                               "Parallel Aware": false,                                                                                                              +
                                                               "Startup Cost": 2092.71,                                                                                                              +
                                                               "Total Cost": 2092.76,                                                                                                                +
                                                               "Plan Rows": 628,                                                                                                                     +
                                                               "Plan Width": 4,                                                                                                                      +
                                                               "Actual Startup Time": 1736.059,                                                                                                      +
                                                               "Actual Total Time": 1736.072,                                                                                                        +
                                                               "Actual Rows": 30,                                                                                                                    +
                                                               "Actual Loops": 1,                                                                                                                    +
                                                               "Sort Key": ["chn.id"],                                                                                                               +
                                                               "Sort Method": "quicksort",                                                                                                           +
                                                               "Sort Space Used": 26,                                                                                                                +
                                                               "Sort Space Type": "Memory",                                                                                                          +
                                                               "Shared Hit Blocks": 2,                                                                                                               +
                                                               "Shared Read Blocks": 36445,                                                                                                          +
                                                               "Shared Dirtied Blocks": 0,                                                                                                           +
                                                               "Shared Written Blocks": 0,                                                                                                           +
                                                               "Local Hit Blocks": 0,                                                                                                                +
                                                               "Local Read Blocks": 0,                                                                                                               +
                                                               "Local Dirtied Blocks": 0,                                                                                                            +
                                                               "Local Written Blocks": 0,                                                                                                            +
                                                               "Temp Read Blocks": 0,                                                                                                                +
                                                               "Temp Written Blocks": 0,                                                                                                             +
                                                               "Plans": [                                                                                                                            +
                                                                 {                                                                                                                                   +
                                                                   "Node Type": "Seq Scan",                                                                                                          +
                                                                   "Parent Relationship": "Outer",                                                                                                   +
                                                                   "Parallel Aware": false,                                                                                                          +
                                                                   "Relation Name": "char_name",                                                                                                     +
                                                                   "Alias": "chn",                                                                                                                   +
                                                                   "Startup Cost": 0.00,                                                                                                             +
                                                                   "Total Cost": 2091.81,                                                                                                            +
                                                                   "Plan Rows": 628,                                                                                                                 +
                                                                   "Plan Width": 4,                                                                                                                  +
                                                                   "Actual Startup Time": 77.330,                                                                                                    +
                                                                   "Actual Total Time": 1735.930,                                                                                                    +
                                                                   "Actual Rows": 30,                                                                                                                +
                                                                   "Actual Loops": 1,                                                                                                                +
                                                                   "Filter": "((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))",                 +
                                                                   "Rows Removed by Filter": 3140309,                                                                                                +
                                                                   "Shared Hit Blocks": 2,                                                                                                           +
                                                                   "Shared Read Blocks": 36445,                                                                                                      +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                       +
                                                                   "Shared Written Blocks": 0,                                                                                                       +
                                                                   "Local Hit Blocks": 0,                                                                                                            +
                                                                   "Local Read Blocks": 0,                                                                                                           +
                                                                   "Local Dirtied Blocks": 0,                                                                                                        +
                                                                   "Local Written Blocks": 0,                                                                                                        +
                                                                   "Temp Read Blocks": 0,                                                                                                            +
                                                                   "Temp Written Blocks": 0                                                                                                          +
                                                                 }                                                                                                                                   +
                                                               ]                                                                                                                                     +
                                                             },                                                                                                                                      +
                                                             {                                                                                                                                       +
                                                               "Node Type": "Sort",                                                                                                                  +
                                                               "Parent Relationship": "Inner",                                                                                                       +
                                                               "Parallel Aware": false,                                                                                                              +
                                                               "Startup Cost": 151757.13,                                                                                                            +
                                                               "Total Cost": 154571.13,                                                                                                              +
                                                               "Plan Rows": 36244344,                                                                                                                +
                                                               "Plan Width": 12,                                                                                                                     +
                                                               "Actual Startup Time": 16878.316,                                                                                                     +
                                                               "Actual Total Time": 18585.657,                                                                                                       +
                                                               "Actual Rows": 16788386,                                                                                                              +
                                                               "Actual Loops": 1,                                                                                                                    +
                                                               "Sort Key": ["ci.person_role_id"],                                                                                                    +
                                                               "Sort Method": "quicksort",                                                                                                           +
                                                               "Sort Space Used": 3271818,                                                                                                           +
                                                               "Sort Space Type": "Memory",                                                                                                          +
                                                               "Shared Hit Blocks": 5,                                                                                                               +
                                                               "Shared Read Blocks": 252649,                                                                                                         +
                                                               "Shared Dirtied Blocks": 0,                                                                                                           +
                                                               "Shared Written Blocks": 0,                                                                                                           +
                                                               "Local Hit Blocks": 0,                                                                                                                +
                                                               "Local Read Blocks": 0,                                                                                                               +
                                                               "Local Dirtied Blocks": 0,                                                                                                            +
                                                               "Local Written Blocks": 0,                                                                                                            +
                                                               "Temp Read Blocks": 0,                                                                                                                +
                                                               "Temp Written Blocks": 0,                                                                                                             +
                                                               "Plans": [                                                                                                                            +
                                                                 {                                                                                                                                   +
                                                                   "Node Type": "Seq Scan",                                                                                                          +
                                                                   "Parent Relationship": "Outer",                                                                                                   +
                                                                   "Parallel Aware": false,                                                                                                          +
                                                                   "Relation Name": "cast_info",                                                                                                     +
                                                                   "Alias": "ci",                                                                                                                    +
                                                                   "Startup Cost": 0.00,                                                                                                             +
                                                                   "Total Cost": 10431.00,                                                                                                           +
                                                                   "Plan Rows": 36244344,                                                                                                            +
                                                                   "Plan Width": 12,                                                                                                                 +
                                                                   "Actual Startup Time": 0.007,                                                                                                     +
                                                                   "Actual Total Time": 7086.647,                                                                                                    +
                                                                   "Actual Rows": 36244344,                                                                                                          +
                                                                   "Actual Loops": 1,                                                                                                                +
                                                                   "Shared Hit Blocks": 5,                                                                                                           +
                                                                   "Shared Read Blocks": 252649,                                                                                                     +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                       +
                                                                   "Shared Written Blocks": 0,                                                                                                       +
                                                                   "Local Hit Blocks": 0,                                                                                                            +
                                                                   "Local Read Blocks": 0,                                                                                                           +
                                                                   "Local Dirtied Blocks": 0,                                                                                                        +
                                                                   "Local Written Blocks": 0,                                                                                                        +
                                                                   "Temp Read Blocks": 0,                                                                                                            +
                                                                   "Temp Written Blocks": 0                                                                                                          +
                                                                 }                                                                                                                                   +
                                                               ]                                                                                                                                     +
                                                             }                                                                                                                                       +
                                                           ]                                                                                                                                         +
                                                         }                                                                                                                                           +
                                                       ]                                                                                                                                             +
                                                     },                                                                                                                                              +
                                                     {                                                                                                                                               +
                                                       "Node Type": "Sort",                                                                                                                          +
                                                       "Parent Relationship": "Inner",                                                                                                               +
                                                       "Parallel Aware": false,                                                                                                                      +
                                                       "Startup Cost": 17362.82,                                                                                                                     +
                                                       "Total Cost": 17362.84,                                                                                                                       +
                                                       "Plan Rows": 270,                                                                                                                             +
                                                       "Plan Width": 4,                                                                                                                              +
                                                       "Actual Startup Time": 3080.191,                                                                                                              +
                                                       "Actual Total Time": 3084.600,                                                                                                                +
                                                       "Actual Rows": 34895,                                                                                                                         +
                                                       "Actual Loops": 1,                                                                                                                            +
                                                       "Sort Key": ["mk.movie_id"],                                                                                                                  +
                                                       "Sort Method": "quicksort",                                                                                                                   +
                                                       "Sort Space Used": 3203,                                                                                                                      +
                                                       "Sort Space Type": "Memory",                                                                                                                  +
                                                       "Shared Hit Blocks": 18,                                                                                                                      +
                                                       "Shared Read Blocks": 24471,                                                                                                                  +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                   +
                                                       "Shared Written Blocks": 0,                                                                                                                   +
                                                       "Local Hit Blocks": 0,                                                                                                                        +
                                                       "Local Read Blocks": 0,                                                                                                                       +
                                                       "Local Dirtied Blocks": 0,                                                                                                                    +
                                                       "Local Written Blocks": 0,                                                                                                                    +
                                                       "Temp Read Blocks": 0,                                                                                                                        +
                                                       "Temp Written Blocks": 0,                                                                                                                     +
                                                       "Plans": [                                                                                                                                    +
                                                         {                                                                                                                                           +
                                                           "Node Type": "Merge Join",                                                                                                                +
                                                           "Parent Relationship": "Outer",                                                                                                           +
                                                           "Parallel Aware": false,                                                                                                                  +
                                                           "Join Type": "Inner",                                                                                                                     +
                                                           "Startup Cost": 16659.99,                                                                                                                 +
                                                           "Total Cost": 17362.48,                                                                                                                   +
                                                           "Plan Rows": 270,                                                                                                                         +
                                                           "Plan Width": 4,                                                                                                                          +
                                                           "Actual Startup Time": 2456.230,                                                                                                          +
                                                           "Actual Total Time": 3068.033,                                                                                                            +
                                                           "Actual Rows": 35548,                                                                                                                     +
                                                           "Actual Loops": 1,                                                                                                                        +
                                                           "Inner Unique": false,                                                                                                                    +
                                                           "Merge Cond": "(k.id = mk.keyword_id)",                                                                                                   +
                                                           "Shared Hit Blocks": 18,                                                                                                                  +
                                                           "Shared Read Blocks": 24471,                                                                                                              +
                                                           "Shared Dirtied Blocks": 0,                                                                                                               +
                                                           "Shared Written Blocks": 0,                                                                                                               +
                                                           "Local Hit Blocks": 0,                                                                                                                    +
                                                           "Local Read Blocks": 0,                                                                                                                   +
                                                           "Local Dirtied Blocks": 0,                                                                                                                +
                                                           "Local Written Blocks": 0,                                                                                                                +
                                                           "Temp Read Blocks": 0,                                                                                                                    +
                                                           "Temp Written Blocks": 0,                                                                                                                 +
                                                           "Plans": [                                                                                                                                +
                                                             {                                                                                                                                       +
                                                               "Node Type": "Sort",                                                                                                                  +
                                                               "Parent Relationship": "Outer",                                                                                                       +
                                                               "Parallel Aware": false,                                                                                                              +
                                                               "Startup Cost": 49.06,                                                                                                                +
                                                               "Total Cost": 49.06,                                                                                                                  +
                                                               "Plan Rows": 8,                                                                                                                       +
                                                               "Plan Width": 4,                                                                                                                      +
                                                               "Actual Startup Time": 106.207,                                                                                                       +
                                                               "Actual Total Time": 106.210,                                                                                                         +
                                                               "Actual Rows": 8,                                                                                                                     +
                                                               "Actual Loops": 1,                                                                                                                    +
                                                               "Sort Key": ["k.id"],                                                                                                                 +
                                                               "Sort Method": "quicksort",                                                                                                           +
                                                               "Sort Space Used": 25,                                                                                                                +
                                                               "Sort Space Type": "Memory",                                                                                                          +
                                                               "Shared Hit Blocks": 15,                                                                                                              +
                                                               "Shared Read Blocks": 20,                                                                                                             +
                                                               "Shared Dirtied Blocks": 0,                                                                                                           +
                                                               "Shared Written Blocks": 0,                                                                                                           +
                                                               "Local Hit Blocks": 0,                                                                                                                +
                                                               "Local Read Blocks": 0,                                                                                                               +
                                                               "Local Dirtied Blocks": 0,                                                                                                            +
                                                               "Local Written Blocks": 0,                                                                                                            +
                                                               "Temp Read Blocks": 0,                                                                                                                +
                                                               "Temp Written Blocks": 0,                                                                                                             +
                                                               "Plans": [                                                                                                                            +
                                                                 {                                                                                                                                   +
                                                                   "Node Type": "Index Scan",                                                                                                        +
                                                                   "Parent Relationship": "Outer",                                                                                                   +
                                                                   "Parallel Aware": false,                                                                                                          +
                                                                   "Scan Direction": "Forward",                                                                                                      +
                                                                   "Index Name": "keyword_idx_keyword",                                                                                              +
                                                                   "Relation Name": "keyword",                                                                                                       +
                                                                   "Alias": "k",                                                                                                                     +
                                                                   "Startup Cost": 0.01,                                                                                                             +
                                                                   "Total Cost": 49.06,                                                                                                              +
                                                                   "Plan Rows": 8,                                                                                                                   +
                                                                   "Plan Width": 4,                                                                                                                  +
                                                                   "Actual Startup Time": 53.959,                                                                                                    +
                                                                   "Actual Total Time": 106.174,                                                                                                     +
                                                                   "Actual Rows": 8,                                                                                                                 +
                                                                   "Actual Loops": 1,                                                                                                                +
                                                                   "Index Cond": "(keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))",+
                                                                   "Rows Removed by Index Recheck": 0,                                                                                               +
                                                                   "Shared Hit Blocks": 15,                                                                                                          +
                                                                   "Shared Read Blocks": 20,                                                                                                         +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                       +
                                                                   "Shared Written Blocks": 0,                                                                                                       +
                                                                   "Local Hit Blocks": 0,                                                                                                            +
                                                                   "Local Read Blocks": 0,                                                                                                           +
                                                                   "Local Dirtied Blocks": 0,                                                                                                        +
                                                                   "Local Written Blocks": 0,                                                                                                        +
                                                                   "Temp Read Blocks": 0,                                                                                                            +
                                                                   "Temp Written Blocks": 0                                                                                                          +
                                                                 }                                                                                                                                   +
                                                               ]                                                                                                                                     +
                                                             },                                                                                                                                      +
                                                             {                                                                                                                                       +
                                                               "Node Type": "Sort",                                                                                                                  +
                                                               "Parent Relationship": "Inner",                                                                                                       +
                                                               "Parallel Aware": false,                                                                                                              +
                                                               "Startup Cost": 16610.92,                                                                                                             +
                                                               "Total Cost": 16962.16,                                                                                                               +
                                                               "Plan Rows": 4523930,                                                                                                                 +
                                                               "Plan Width": 8,                                                                                                                      +
                                                               "Actual Startup Time": 2203.534,                                                                                                      +
                                                               "Actual Total Time": 2621.616,                                                                                                        +
                                                               "Actual Rows": 2796931,                                                                                                               +
                                                               "Actual Loops": 1,                                                                                                                    +
                                                               "Sort Key": ["mk.keyword_id"],                                                                                                        +
                                                               "Sort Method": "quicksort",                                                                                                           +
                                                               "Sort Space Used": 408668,                                                                                                            +
                                                               "Sort Space Type": "Memory",                                                                                                          +
                                                               "Shared Hit Blocks": 3,                                                                                                               +
                                                               "Shared Read Blocks": 24451,                                                                                                          +
                                                               "Shared Dirtied Blocks": 0,                                                                                                           +
                                                               "Shared Written Blocks": 0,                                                                                                           +
                                                               "Local Hit Blocks": 0,                                                                                                                +
                                                               "Local Read Blocks": 0,                                                                                                               +
                                                               "Local Dirtied Blocks": 0,                                                                                                            +
                                                               "Local Written Blocks": 0,                                                                                                            +
                                                               "Temp Read Blocks": 0,                                                                                                                +
                                                               "Temp Written Blocks": 0,                                                                                                             +
                                                               "Plans": [                                                                                                                            +
                                                                 {                                                                                                                                   +
                                                                   "Node Type": "Seq Scan",                                                                                                          +
                                                                   "Parent Relationship": "Outer",                                                                                                   +
                                                                   "Parallel Aware": false,                                                                                                          +
                                                                   "Relation Name": "movie_keyword",                                                                                                 +
                                                                   "Alias": "mk",                                                                                                                    +
                                                                   "Startup Cost": 0.00,                                                                                                             +
                                                                   "Total Cost": 1079.84,                                                                                                            +
                                                                   "Plan Rows": 4523930,                                                                                                             +
                                                                   "Plan Width": 8,                                                                                                                  +
                                                                   "Actual Startup Time": 0.019,                                                                                                     +
                                                                   "Actual Total Time": 771.679,                                                                                                     +
                                                                   "Actual Rows": 4523930,                                                                                                           +
                                                                   "Actual Loops": 1,                                                                                                                +
                                                                   "Shared Hit Blocks": 3,                                                                                                           +
                                                                   "Shared Read Blocks": 24451,                                                                                                      +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                       +
                                                                   "Shared Written Blocks": 0,                                                                                                       +
                                                                   "Local Hit Blocks": 0,                                                                                                            +
                                                                   "Local Read Blocks": 0,                                                                                                           +
                                                                   "Local Dirtied Blocks": 0,                                                                                                        +
                                                                   "Local Written Blocks": 0,                                                                                                        +
                                                                   "Temp Read Blocks": 0,                                                                                                            +
                                                                   "Temp Written Blocks": 0                                                                                                          +
                                                                 }                                                                                                                                   +
                                                               ]                                                                                                                                     +
                                                             }                                                                                                                                       +
                                                           ]                                                                                                                                         +
                                                         }                                                                                                                                           +
                                                       ]                                                                                                                                             +
                                                     }                                                                                                                                               +
                                                   ]                                                                                                                                                 +
                                                 },                                                                                                                                                  +
                                                 {                                                                                                                                                   +
                                                   "Node Type": "Sort",                                                                                                                              +
                                                   "Parent Relationship": "Inner",                                                                                                                   +
                                                   "Parallel Aware": false,                                                                                                                          +
                                                   "Startup Cost": 389.78,                                                                                                                           +
                                                   "Total Cost": 400.26,                                                                                                                             +
                                                   "Plan Rows": 135086,                                                                                                                              +
                                                   "Plan Width": 12,                                                                                                                                 +
                                                   "Actual Startup Time": 115.942,                                                                                                                   +
                                                   "Actual Total Time": 122.681,                                                                                                                     +
                                                   "Actual Rows": 131489,                                                                                                                            +
                                                   "Actual Loops": 1,                                                                                                                                +
                                                   "Sort Key": ["cc.movie_id"],                                                                                                                      +
                                                   "Sort Method": "quicksort",                                                                                                                       +
                                                   "Sort Space Used": 12477,                                                                                                                         +
                                                   "Sort Space Type": "Memory",                                                                                                                      +
                                                   "Shared Hit Blocks": 2,                                                                                                                           +
                                                   "Shared Read Blocks": 729,                                                                                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                       +
                                                   "Shared Written Blocks": 0,                                                                                                                       +
                                                   "Local Hit Blocks": 0,                                                                                                                            +
                                                   "Local Read Blocks": 0,                                                                                                                           +
                                                   "Local Dirtied Blocks": 0,                                                                                                                        +
                                                   "Local Written Blocks": 0,                                                                                                                        +
                                                   "Temp Read Blocks": 0,                                                                                                                            +
                                                   "Temp Written Blocks": 0,                                                                                                                         +
                                                   "Plans": [                                                                                                                                        +
                                                     {                                                                                                                                               +
                                                       "Node Type": "Seq Scan",                                                                                                                      +
                                                       "Parent Relationship": "Outer",                                                                                                               +
                                                       "Parallel Aware": false,                                                                                                                      +
                                                       "Relation Name": "complete_cast",                                                                                                             +
                                                       "Alias": "cc",                                                                                                                                +
                                                       "Startup Cost": 0.00,                                                                                                                         +
                                                       "Total Cost": 32.27,                                                                                                                          +
                                                       "Plan Rows": 135086,                                                                                                                          +
                                                       "Plan Width": 12,                                                                                                                             +
                                                       "Actual Startup Time": 23.498,                                                                                                                +
                                                       "Actual Total Time": 58.033,                                                                                                                  +
                                                       "Actual Rows": 135086,                                                                                                                        +
                                                       "Actual Loops": 1,                                                                                                                            +
                                                       "Shared Hit Blocks": 2,                                                                                                                       +
                                                       "Shared Read Blocks": 729,                                                                                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                   +
                                                       "Shared Written Blocks": 0,                                                                                                                   +
                                                       "Local Hit Blocks": 0,                                                                                                                        +
                                                       "Local Read Blocks": 0,                                                                                                                       +
                                                       "Local Dirtied Blocks": 0,                                                                                                                    +
                                                       "Local Written Blocks": 0,                                                                                                                    +
                                                       "Temp Read Blocks": 0,                                                                                                                        +
                                                       "Temp Written Blocks": 0                                                                                                                      +
                                                     }                                                                                                                                               +
                                                   ]                                                                                                                                                 +
                                                 }                                                                                                                                                   +
                                               ]                                                                                                                                                     +
                                             },                                                                                                                                                      +
                                             {                                                                                                                                                       +
                                               "Node Type": "Sort",                                                                                                                                  +
                                               "Parent Relationship": "Inner",                                                                                                                       +
                                               "Parallel Aware": false,                                                                                                                              +
                                               "Startup Cost": 9003.22,                                                                                                                              +
                                               "Total Cost": 9180.80,                                                                                                                                +
                                               "Plan Rows": 2287272,                                                                                                                                 +
                                               "Plan Width": 25,                                                                                                                                     +
                                               "Actual Startup Time": 2492.454,                                                                                                                      +
                                               "Actual Total Time": 2766.396,                                                                                                                        +
                                               "Actual Rows": 2174198,                                                                                                                               +
                                               "Actual Loops": 1,                                                                                                                                    +
                                               "Sort Key": ["t.id"],                                                                                                                                 +
                                               "Sort Method": "quicksort",                                                                                                                           +
                                               "Sort Space Used": 271529,                                                                                                                            +
                                               "Sort Space Type": "Memory",                                                                                                                          +
                                               "Shared Hit Blocks": 2,                                                                                                                               +
                                               "Shared Read Blocks": 35996,                                                                                                                          +
                                               "Shared Dirtied Blocks": 0,                                                                                                                           +
                                               "Shared Written Blocks": 0,                                                                                                                           +
                                               "Local Hit Blocks": 0,                                                                                                                                +
                                               "Local Read Blocks": 0,                                                                                                                               +
                                               "Local Dirtied Blocks": 0,                                                                                                                            +
                                               "Local Written Blocks": 0,                                                                                                                            +
                                               "Temp Read Blocks": 0,                                                                                                                                +
                                               "Temp Written Blocks": 0,                                                                                                                             +
                                               "Plans": [                                                                                                                                            +
                                                 {                                                                                                                                                   +
                                                   "Node Type": "Seq Scan",                                                                                                                          +
                                                   "Parent Relationship": "Outer",                                                                                                                   +
                                                   "Parallel Aware": false,                                                                                                                          +
                                                   "Relation Name": "title",                                                                                                                         +
                                                   "Alias": "t",                                                                                                                                     +
                                                   "Startup Cost": 0.00,                                                                                                                             +
                                                   "Total Cost": 1500.26,                                                                                                                            +
                                                   "Plan Rows": 2287272,                                                                                                                             +
                                                   "Plan Width": 25,                                                                                                                                 +
                                                   "Actual Startup Time": 20.642,                                                                                                                    +
                                                   "Actual Total Time": 1274.397,                                                                                                                    +
                                                   "Actual Rows": 2287271,                                                                                                                           +
                                                   "Actual Loops": 1,                                                                                                                                +
                                                   "Filter": "(production_year > 1950)",                                                                                                             +
                                                   "Rows Removed by Filter": 241041,                                                                                                                 +
                                                   "Shared Hit Blocks": 2,                                                                                                                           +
                                                   "Shared Read Blocks": 35996,                                                                                                                      +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                       +
                                                   "Shared Written Blocks": 0,                                                                                                                       +
                                                   "Local Hit Blocks": 0,                                                                                                                            +
                                                   "Local Read Blocks": 0,                                                                                                                           +
                                                   "Local Dirtied Blocks": 0,                                                                                                                        +
                                                   "Local Written Blocks": 0,                                                                                                                        +
                                                   "Temp Read Blocks": 0,                                                                                                                            +
                                                   "Temp Written Blocks": 0                                                                                                                          +
                                                 }                                                                                                                                                   +
                                               ]                                                                                                                                                     +
                                             }                                                                                                                                                       +
                                           ]                                                                                                                                                         +
                                         }                                                                                                                                                           +
                                       ]                                                                                                                                                             +
                                     },                                                                                                                                                              +
                                     {                                                                                                                                                               +
                                       "Node Type": "Sort",                                                                                                                                          +
                                       "Parent Relationship": "Inner",                                                                                                                               +
                                       "Parallel Aware": false,                                                                                                                                      +
                                       "Startup Cost": 0.03,                                                                                                                                         +
                                       "Total Cost": 0.03,                                                                                                                                           +
                                       "Plan Rows": 1,                                                                                                                                               +
                                       "Plan Width": 4,                                                                                                                                              +
                                       "Actual Startup Time": 0.025,                                                                                                                                 +
                                       "Actual Total Time": 0.025,                                                                                                                                   +
                                       "Actual Rows": 1,                                                                                                                                             +
                                       "Actual Loops": 1,                                                                                                                                            +
                                       "Sort Key": ["cct1.id"],                                                                                                                                      +
                                       "Sort Method": "quicksort",                                                                                                                                   +
                                       "Sort Space Used": 25,                                                                                                                                        +
                                       "Sort Space Type": "Memory",                                                                                                                                  +
                                       "Shared Hit Blocks": 1,                                                                                                                                       +
                                       "Shared Read Blocks": 0,                                                                                                                                      +
                                       "Shared Dirtied Blocks": 0,                                                                                                                                   +
                                       "Shared Written Blocks": 0,                                                                                                                                   +
                                       "Local Hit Blocks": 0,                                                                                                                                        +
                                       "Local Read Blocks": 0,                                                                                                                                       +
                                       "Local Dirtied Blocks": 0,                                                                                                                                    +
                                       "Local Written Blocks": 0,                                                                                                                                    +
                                       "Temp Read Blocks": 0,                                                                                                                                        +
                                       "Temp Written Blocks": 0,                                                                                                                                     +
                                       "Plans": [                                                                                                                                                    +
                                         {                                                                                                                                                           +
                                           "Node Type": "Seq Scan",                                                                                                                                  +
                                           "Parent Relationship": "Outer",                                                                                                                           +
                                           "Parallel Aware": false,                                                                                                                                  +
                                           "Relation Name": "comp_cast_type",                                                                                                                        +
                                           "Alias": "cct1",                                                                                                                                          +
                                           "Startup Cost": 0.00,                                                                                                                                     +
                                           "Total Cost": 0.03,                                                                                                                                       +
                                           "Plan Rows": 1,                                                                                                                                           +
                                           "Plan Width": 4,                                                                                                                                          +
                                           "Actual Startup Time": 0.015,                                                                                                                             +
                                           "Actual Total Time": 0.017,                                                                                                                               +
                                           "Actual Rows": 1,                                                                                                                                         +
                                           "Actual Loops": 1,                                                                                                                                        +
                                           "Filter": "((kind)::text = 'cast'::text)",                                                                                                                +
                                           "Rows Removed by Filter": 3,                                                                                                                              +
                                           "Shared Hit Blocks": 1,                                                                                                                                   +
                                           "Shared Read Blocks": 0,                                                                                                                                  +
                                           "Shared Dirtied Blocks": 0,                                                                                                                               +
                                           "Shared Written Blocks": 0,                                                                                                                               +
                                           "Local Hit Blocks": 0,                                                                                                                                    +
                                           "Local Read Blocks": 0,                                                                                                                                   +
                                           "Local Dirtied Blocks": 0,                                                                                                                                +
                                           "Local Written Blocks": 0,                                                                                                                                +
                                           "Temp Read Blocks": 0,                                                                                                                                    +
                                           "Temp Written Blocks": 0                                                                                                                                  +
                                         }                                                                                                                                                           +
                                       ]                                                                                                                                                             +
                                     }                                                                                                                                                               +
                                   ]                                                                                                                                                                 +
                                 }                                                                                                                                                                   +
                               ]                                                                                                                                                                     +
                             },                                                                                                                                                                      +
                             {                                                                                                                                                                       +
                               "Node Type": "Sort",                                                                                                                                                  +
                               "Parent Relationship": "Inner",                                                                                                                                       +
                               "Parallel Aware": false,                                                                                                                                              +
                               "Startup Cost": 0.03,                                                                                                                                                 +
                               "Total Cost": 0.03,                                                                                                                                                   +
                               "Plan Rows": 1,                                                                                                                                                       +
                               "Plan Width": 4,                                                                                                                                                      +
                               "Actual Startup Time": 0.007,                                                                                                                                         +
                               "Actual Total Time": 0.007,                                                                                                                                           +
                               "Actual Rows": 2,                                                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                                                    +
                               "Sort Key": ["cct2.id"],                                                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                                                           +
                               "Sort Space Used": 25,                                                                                                                                                +
                               "Sort Space Type": "Memory",                                                                                                                                          +
                               "Shared Hit Blocks": 1,                                                                                                                                               +
                               "Shared Read Blocks": 0,                                                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                                                           +
                               "Shared Written Blocks": 0,                                                                                                                                           +
                               "Local Hit Blocks": 0,                                                                                                                                                +
                               "Local Read Blocks": 0,                                                                                                                                               +
                               "Local Dirtied Blocks": 0,                                                                                                                                            +
                               "Local Written Blocks": 0,                                                                                                                                            +
                               "Temp Read Blocks": 0,                                                                                                                                                +
                               "Temp Written Blocks": 0,                                                                                                                                             +
                               "Plans": [                                                                                                                                                            +
                                 {                                                                                                                                                                   +
                                   "Node Type": "Seq Scan",                                                                                                                                          +
                                   "Parent Relationship": "Outer",                                                                                                                                   +
                                   "Parallel Aware": false,                                                                                                                                          +
                                   "Relation Name": "comp_cast_type",                                                                                                                                +
                                   "Alias": "cct2",                                                                                                                                                  +
                                   "Startup Cost": 0.00,                                                                                                                                             +
                                   "Total Cost": 0.03,                                                                                                                                               +
                                   "Plan Rows": 1,                                                                                                                                                   +
                                   "Plan Width": 4,                                                                                                                                                  +
                                   "Actual Startup Time": 0.004,                                                                                                                                     +
                                   "Actual Total Time": 0.004,                                                                                                                                       +
                                   "Actual Rows": 2,                                                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                                                +
                                   "Filter": "((kind)::text ~~ '%complete%'::text)",                                                                                                                 +
                                   "Rows Removed by Filter": 2,                                                                                                                                      +
                                   "Shared Hit Blocks": 1,                                                                                                                                           +
                                   "Shared Read Blocks": 0,                                                                                                                                          +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                       +
                                   "Shared Written Blocks": 0,                                                                                                                                       +
                                   "Local Hit Blocks": 0,                                                                                                                                            +
                                   "Local Read Blocks": 0,                                                                                                                                           +
                                   "Local Dirtied Blocks": 0,                                                                                                                                        +
                                   "Local Written Blocks": 0,                                                                                                                                        +
                                   "Temp Read Blocks": 0,                                                                                                                                            +
                                   "Temp Written Blocks": 0                                                                                                                                          +
                                 }                                                                                                                                                                   +
                               ]                                                                                                                                                                     +
                             }                                                                                                                                                                       +
                           ]                                                                                                                                                                         +
                         }                                                                                                                                                                           +
                       ]                                                                                                                                                                             +
                     },                                                                                                                                                                              +
                     {                                                                                                                                                                               +
                       "Node Type": "Sort",                                                                                                                                                          +
                       "Parent Relationship": "Inner",                                                                                                                                               +
                       "Parallel Aware": false,                                                                                                                                                      +
                       "Startup Cost": 0.03,                                                                                                                                                         +
                       "Total Cost": 0.03,                                                                                                                                                           +
                       "Plan Rows": 1,                                                                                                                                                               +
                       "Plan Width": 4,                                                                                                                                                              +
                       "Actual Startup Time": 0.008,                                                                                                                                                 +
                       "Actual Total Time": 0.008,                                                                                                                                                   +
                       "Actual Rows": 1,                                                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                                            +
                       "Sort Key": ["kt.id"],                                                                                                                                                        +
                       "Sort Method": "quicksort",                                                                                                                                                   +
                       "Sort Space Used": 25,                                                                                                                                                        +
                       "Sort Space Type": "Memory",                                                                                                                                                  +
                       "Shared Hit Blocks": 1,                                                                                                                                                       +
                       "Shared Read Blocks": 0,                                                                                                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                   +
                       "Shared Written Blocks": 0,                                                                                                                                                   +
                       "Local Hit Blocks": 0,                                                                                                                                                        +
                       "Local Read Blocks": 0,                                                                                                                                                       +
                       "Local Dirtied Blocks": 0,                                                                                                                                                    +
                       "Local Written Blocks": 0,                                                                                                                                                    +
                       "Temp Read Blocks": 0,                                                                                                                                                        +
                       "Temp Written Blocks": 0,                                                                                                                                                     +
                       "Plans": [                                                                                                                                                                    +
                         {                                                                                                                                                                           +
                           "Node Type": "Seq Scan",                                                                                                                                                  +
                           "Parent Relationship": "Outer",                                                                                                                                           +
                           "Parallel Aware": false,                                                                                                                                                  +
                           "Relation Name": "kind_type",                                                                                                                                             +
                           "Alias": "kt",                                                                                                                                                            +
                           "Startup Cost": 0.00,                                                                                                                                                     +
                           "Total Cost": 0.03,                                                                                                                                                       +
                           "Plan Rows": 1,                                                                                                                                                           +
                           "Plan Width": 4,                                                                                                                                                          +
                           "Actual Startup Time": 0.005,                                                                                                                                             +
                           "Actual Total Time": 0.006,                                                                                                                                               +
                           "Actual Rows": 1,                                                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                                                        +
                           "Filter": "((kind)::text = 'movie'::text)",                                                                                                                               +
                           "Rows Removed by Filter": 6,                                                                                                                                              +
                           "Shared Hit Blocks": 1,                                                                                                                                                   +
                           "Shared Read Blocks": 0,                                                                                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                                                                                               +
                           "Shared Written Blocks": 0,                                                                                                                                               +
                           "Local Hit Blocks": 0,                                                                                                                                                    +
                           "Local Read Blocks": 0,                                                                                                                                                   +
                           "Local Dirtied Blocks": 0,                                                                                                                                                +
                           "Local Written Blocks": 0,                                                                                                                                                +
                           "Temp Read Blocks": 0,                                                                                                                                                    +
                           "Temp Written Blocks": 0                                                                                                                                                  +
                         }                                                                                                                                                                           +
                       ]                                                                                                                                                                             +
                     }                                                                                                                                                                               +
                   ]                                                                                                                                                                                 +
                 }                                                                                                                                                                                   +
               ]                                                                                                                                                                                     +
             },                                                                                                                                                                                      +
             {                                                                                                                                                                                       +
               "Node Type": "Sort",                                                                                                                                                                  +
               "Parent Relationship": "Inner",                                                                                                                                                       +
               "Parallel Aware": false,                                                                                                                                                              +
               "Startup Cost": 16263.33,                                                                                                                                                             +
               "Total Cost": 16586.90,                                                                                                                                                               +
               "Plan Rows": 4167491,                                                                                                                                                                 +
               "Plan Width": 4,                                                                                                                                                                      +
               "Actual Startup Time": 3487.988,                                                                                                                                                      +
               "Actual Total Time": 3613.666,                                                                                                                                                        +
               "Actual Rows": 1857974,                                                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                                                    +
               "Sort Key": ["n.id"],                                                                                                                                                                 +
               "Sort Method": "quicksort",                                                                                                                                                           +
               "Sort Space Used": 293656,                                                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                                                          +
               "Shared Hit Blocks": 1,                                                                                                                                                               +
               "Shared Read Blocks": 55612,                                                                                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                                                                                           +
               "Shared Written Blocks": 0,                                                                                                                                                           +
               "Local Hit Blocks": 0,                                                                                                                                                                +
               "Local Read Blocks": 0,                                                                                                                                                               +
               "Local Dirtied Blocks": 0,                                                                                                                                                            +
               "Local Written Blocks": 0,                                                                                                                                                            +
               "Temp Read Blocks": 0,                                                                                                                                                                +
               "Temp Written Blocks": 0,                                                                                                                                                             +
               "Plans": [                                                                                                                                                                            +
                 {                                                                                                                                                                                   +
                   "Node Type": "Seq Scan",                                                                                                                                                          +
                   "Parent Relationship": "Outer",                                                                                                                                                   +
                   "Parallel Aware": false,                                                                                                                                                          +
                   "Relation Name": "name",                                                                                                                                                          +
                   "Alias": "n",                                                                                                                                                                     +
                   "Startup Cost": 0.00,                                                                                                                                                             +
                   "Total Cost": 2032.56,                                                                                                                                                            +
                   "Plan Rows": 4167491,                                                                                                                                                             +
                   "Plan Width": 4,                                                                                                                                                                  +
                   "Actual Startup Time": 19.536,                                                                                                                                                    +
                   "Actual Total Time": 1644.959,                                                                                                                                                    +
                   "Actual Rows": 4167491,                                                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                                                                +
                   "Shared Hit Blocks": 1,                                                                                                                                                           +
                   "Shared Read Blocks": 55612,                                                                                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                       +
                   "Shared Written Blocks": 0,                                                                                                                                                       +
                   "Local Hit Blocks": 0,                                                                                                                                                            +
                   "Local Read Blocks": 0,                                                                                                                                                           +
                   "Local Dirtied Blocks": 0,                                                                                                                                                        +
                   "Local Written Blocks": 0,                                                                                                                                                        +
                   "Temp Read Blocks": 0,                                                                                                                                                            +
                   "Temp Written Blocks": 0                                                                                                                                                          +
                 }                                                                                                                                                                                   +
               ]                                                                                                                                                                                     +
             }                                                                                                                                                                                       +
           ]                                                                                                                                                                                         +
         }                                                                                                                                                                                           +
       ]                                                                                                                                                                                             +
     },                                                                                                                                                                                              +
     "Planning Time": 6217.421,                                                                                                                                                                      +
     "Triggers": [                                                                                                                                                                                   +
     ],                                                                                                                                                                                              +
     "Execution Time": 32413.462                                                                                                                                                                     +
   }                                                                                                                                                                                                 +
 ]
(1 row)

