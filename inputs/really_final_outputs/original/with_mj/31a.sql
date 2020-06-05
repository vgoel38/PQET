                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                               +
   {                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                  +
       "Startup Cost": 79531.42,                                                                                                                                                 +
       "Total Cost": 79531.42,                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                           +
       "Plan Width": 128,                                                                                                                                                        +
       "Actual Startup Time": 35474.833,                                                                                                                                         +
       "Actual Total Time": 35474.833,                                                                                                                                           +
       "Actual Rows": 1,                                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                                        +
       "Shared Hit Blocks": 38,                                                                                                                                                  +
       "Shared Read Blocks": 560846,                                                                                                                                             +
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
           "Node Type": "Merge Join",                                                                                                                                            +
           "Parent Relationship": "Outer",                                                                                                                                       +
           "Parallel Aware": false,                                                                                                                                              +
           "Join Type": "Inner",                                                                                                                                                 +
           "Startup Cost": 79531.42,                                                                                                                                             +
           "Total Cost": 79531.42,                                                                                                                                               +
           "Plan Rows": 1,                                                                                                                                                       +
           "Plan Width": 80,                                                                                                                                                     +
           "Actual Startup Time": 35439.872,                                                                                                                                     +
           "Actual Total Time": 35474.162,                                                                                                                                       +
           "Actual Rows": 1273,                                                                                                                                                  +
           "Actual Loops": 1,                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                 +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                              +
           "Shared Hit Blocks": 38,                                                                                                                                              +
           "Shared Read Blocks": 560846,                                                                                                                                         +
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
               "Node Type": "Sort",                                                                                                                                              +
               "Parent Relationship": "Outer",                                                                                                                                   +
               "Parallel Aware": false,                                                                                                                                          +
               "Startup Cost": 79402.99,                                                                                                                                         +
               "Total Cost": 79402.99,                                                                                                                                           +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 84,                                                                                                                                                 +
               "Actual Startup Time": 35271.177,                                                                                                                                 +
               "Actual Total Time": 35301.092,                                                                                                                                   +
               "Actual Rows": 184016,                                                                                                                                            +
               "Actual Loops": 1,                                                                                                                                                +
               "Sort Key": ["mc.company_id"],                                                                                                                                    +
               "Sort Method": "quicksort",                                                                                                                                       +
               "Sort Space Used": 25623,                                                                                                                                         +
               "Sort Space Type": "Memory",                                                                                                                                      +
               "Shared Hit Blocks": 36,                                                                                                                                          +
               "Shared Read Blocks": 557854,                                                                                                                                     +
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
                   "Node Type": "Merge Join",                                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                      +
                   "Join Type": "Inner",                                                                                                                                         +
                   "Startup Cost": 79402.99,                                                                                                                                     +
                   "Total Cost": 79402.99,                                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                                               +
                   "Plan Width": 84,                                                                                                                                             +
                   "Actual Startup Time": 35137.007,                                                                                                                             +
                   "Actual Total Time": 35193.338,                                                                                                                               +
                   "Actual Rows": 186510,                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Inner Unique": true,                                                                                                                                         +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                                   +
                   "Shared Hit Blocks": 32,                                                                                                                                      +
                   "Shared Read Blocks": 557854,                                                                                                                                 +
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
                       "Node Type": "Sort",                                                                                                                                      +
                       "Parent Relationship": "Outer",                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                  +
                       "Startup Cost": 79402.94,                                                                                                                                 +
                       "Total Cost": 79402.94,                                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                                           +
                       "Plan Width": 88,                                                                                                                                         +
                       "Actual Startup Time": 35136.967,                                                                                                                         +
                       "Actual Total Time": 35146.222,                                                                                                                           +
                       "Actual Rows": 186511,                                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                          +
                       "Sort Method": "quicksort",                                                                                                                               +
                       "Sort Space Used": 32790,                                                                                                                                 +
                       "Sort Space Type": "Memory",                                                                                                                              +
                       "Shared Hit Blocks": 31,                                                                                                                                  +
                       "Shared Read Blocks": 557854,                                                                                                                             +
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
                           "Startup Cost": 79402.93,                                                                                                                             +
                           "Total Cost": 79402.94,                                                                                                                               +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 88,                                                                                                                                     +
                           "Actual Startup Time": 35002.152,                                                                                                                     +
                           "Actual Total Time": 35076.130,                                                                                                                       +
                           "Actual Rows": 209397,                                                                                                                                +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Inner Unique": true,                                                                                                                                 +
                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                                       +
                           "Shared Hit Blocks": 31,                                                                                                                              +
                           "Shared Read Blocks": 557854,                                                                                                                         +
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
                               "Node Type": "Sort",                                                                                                                              +
                               "Parent Relationship": "Outer",                                                                                                                   +
                               "Parallel Aware": false,                                                                                                                          +
                               "Startup Cost": 79402.88,                                                                                                                         +
                               "Total Cost": 79402.89,                                                                                                                           +
                               "Plan Rows": 32,                                                                                                                                  +
                               "Plan Width": 92,                                                                                                                                 +
                               "Actual Startup Time": 34951.361,                                                                                                                 +
                               "Actual Total Time": 34992.951,                                                                                                                   +
                               "Actual Rows": 418795,                                                                                                                            +
                               "Actual Loops": 1,                                                                                                                                +
                               "Sort Key": ["mi_idx.info_type_id"],                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                                       +
                               "Sort Space Used": 112292,                                                                                                                        +
                               "Sort Space Type": "Memory",                                                                                                                      +
                               "Shared Hit Blocks": 30,                                                                                                                          +
                               "Shared Read Blocks": 557854,                                                                                                                     +
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
                                   "Node Type": "Merge Join",                                                                                                                    +
                                   "Parent Relationship": "Outer",                                                                                                               +
                                   "Parallel Aware": false,                                                                                                                      +
                                   "Join Type": "Inner",                                                                                                                         +
                                   "Startup Cost": 79139.59,                                                                                                                     +
                                   "Total Cost": 79402.86,                                                                                                                       +
                                   "Plan Rows": 32,                                                                                                                              +
                                   "Plan Width": 92,                                                                                                                             +
                                   "Actual Startup Time": 34114.648,                                                                                                             +
                                   "Actual Total Time": 34742.145,                                                                                                               +
                                   "Actual Rows": 637303,                                                                                                                        +
                                   "Actual Loops": 1,                                                                                                                            +
                                   "Inner Unique": true,                                                                                                                         +
                                   "Merge Cond": "(ci.person_id = n.id)",                                                                                                        +
                                   "Shared Hit Blocks": 30,                                                                                                                      +
                                   "Shared Read Blocks": 557854,                                                                                                                 +
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
                                       "Node Type": "Sort",                                                                                                                      +
                                       "Parent Relationship": "Outer",                                                                                                           +
                                       "Parallel Aware": false,                                                                                                                  +
                                       "Startup Cost": 71184.27,                                                                                                                 +
                                       "Total Cost": 71184.27,                                                                                                                   +
                                       "Plan Rows": 77,                                                                                                                          +
                                       "Plan Width": 81,                                                                                                                         +
                                       "Actual Startup Time": 31139.303,                                                                                                         +
                                       "Actual Total Time": 31186.306,                                                                                                           +
                                       "Actual Rows": 637304,                                                                                                                    +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Sort Key": ["ci.person_id"],                                                                                                             +
                                       "Sort Method": "quicksort",                                                                                                               +
                                       "Sort Space Used": 126605,                                                                                                                +
                                       "Sort Space Type": "Memory",                                                                                                              +
                                       "Shared Hit Blocks": 29,                                                                                                                  +
                                       "Shared Read Blocks": 502242,                                                                                                             +
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
                                           "Node Type": "Merge Join",                                                                                                            +
                                           "Parent Relationship": "Outer",                                                                                                       +
                                           "Parallel Aware": false,                                                                                                              +
                                           "Join Type": "Inner",                                                                                                                 +
                                           "Startup Cost": 69970.90,                                                                                                             +
                                           "Total Cost": 71184.19,                                                                                                               +
                                           "Plan Rows": 77,                                                                                                                      +
                                           "Plan Width": 81,                                                                                                                     +
                                           "Actual Startup Time": 28159.542,                                                                                                     +
                                           "Actual Total Time": 30794.918,                                                                                                       +
                                           "Actual Rows": 930288,                                                                                                                +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Inner Unique": false,                                                                                                                +
                                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                 +
                                           "Shared Hit Blocks": 29,                                                                                                              +
                                           "Shared Read Blocks": 502242,                                                                                                         +
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
                                               "Node Type": "Merge Join",                                                                                                        +
                                               "Parent Relationship": "Outer",                                                                                                   +
                                               "Parallel Aware": false,                                                                                                          +
                                               "Join Type": "Inner",                                                                                                             +
                                               "Startup Cost": 62530.95,                                                                                                         +
                                               "Total Cost": 63733.88,                                                                                                           +
                                               "Plan Rows": 1072,                                                                                                                +
                                               "Plan Width": 55,                                                                                                                 +
                                               "Actual Startup Time": 19642.792,                                                                                                 +
                                               "Actual Total Time": 21959.312,                                                                                                   +
                                               "Actual Rows": 1299082,                                                                                                           +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Inner Unique": false,                                                                                                            +
                                               "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                         +
                                               "Shared Hit Blocks": 27,                                                                                                          +
                                               "Shared Read Blocks": 340352,                                                                                                     +
                                               "Shared Dirtied Blocks": 0,                                                                                                       +
                                               "Shared Written Blocks": 0,                                                                                                       +
                                               "Local Hit Blocks": 0,                                                                                                            +
                                               "Local Read Blocks": 0,                                                                                                           +
                                               "Local Dirtied Blocks": 0,                                                                                                        +
                                               "Local Written Blocks": 0,                                                                                                        +
                                               "Temp Read Blocks": 0,                                                                                                            +
                                               "Temp Written Blocks": 0,                                                                                                         +
                                               "Plans": [                                                                                                                        +
                                                 {                                                                                                                               +
                                                   "Node Type": "Merge Join",                                                                                                    +
                                                   "Parent Relationship": "Outer",                                                                                               +
                                                   "Parallel Aware": false,                                                                                                      +
                                                   "Join Type": "Inner",                                                                                                         +
                                                   "Startup Cost": 57799.65,                                                                                                     +
                                                   "Total Cost": 58790.11,                                                                                                       +
                                                   "Plan Rows": 526,                                                                                                             +
                                                   "Plan Width": 41,                                                                                                             +
                                                   "Actual Startup Time": 18791.030,                                                                                             +
                                                   "Actual Total Time": 20483.181,                                                                                               +
                                                   "Actual Rows": 435137,                                                                                                        +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Inner Unique": false,                                                                                                        +
                                                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                         +
                                                   "Shared Hit Blocks": 25,                                                                                                      +
                                                   "Shared Read Blocks": 331901,                                                                                                 +
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
                                                       "Startup Cost": 36416.44,                                                                                                 +
                                                       "Total Cost": 37213.90,                                                                                                   +
                                                       "Plan Rows": 1317,                                                                                                        +
                                                       "Plan Width": 33,                                                                                                         +
                                                       "Actual Startup Time": 6389.910,                                                                                          +
                                                       "Actual Total Time": 7663.626,                                                                                            +
                                                       "Actual Rows": 619597,                                                                                                    +
                                                       "Actual Loops": 1,                                                                                                        +
                                                       "Inner Unique": false,                                                                                                    +
                                                       "Merge Cond": "(t.id = mc.movie_id)",                                                                                     +
                                                       "Shared Hit Blocks": 21,                                                                                                  +
                                                       "Shared Read Blocks": 79251,                                                                                              +
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
                                                           "Node Type": "Merge Join",                                                                                            +
                                                           "Parent Relationship": "Outer",                                                                                       +
                                                           "Parallel Aware": false,                                                                                              +
                                                           "Join Type": "Inner",                                                                                                 +
                                                           "Startup Cost": 27010.99,                                                                                             +
                                                           "Total Cost": 27403.27,                                                                                               +
                                                           "Plan Rows": 236,                                                                                                     +
                                                           "Plan Width": 25,                                                                                                     +
                                                           "Actual Startup Time": 4917.302,                                                                                      +
                                                           "Actual Total Time": 5645.554,                                                                                        +
                                                           "Actual Rows": 76714,                                                                                                 +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Inner Unique": true,                                                                                                 +
                                                           "Merge Cond": "(mk.movie_id = t.id)",                                                                                 +
                                                           "Shared Hit Blocks": 18,                                                                                              +
                                                           "Shared Read Blocks": 60465,                                                                                          +
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
                                                               "Node Type": "Sort",                                                                                              +
                                                               "Parent Relationship": "Outer",                                                                                   +
                                                               "Parallel Aware": false,                                                                                          +
                                                               "Startup Cost": 17356.63,                                                                                         +
                                                               "Total Cost": 17356.65,                                                                                           +
                                                               "Plan Rows": 236,                                                                                                 +
                                                               "Plan Width": 4,                                                                                                  +
                                                               "Actual Startup Time": 2615.778,                                                                                  +
                                                               "Actual Total Time": 2627.305,                                                                                    +
                                                               "Actual Rows": 76714,                                                                                             +
                                                               "Actual Loops": 1,                                                                                                +
                                                               "Sort Key": ["mk.movie_id"],                                                                                      +
                                                               "Sort Method": "quicksort",                                                                                       +
                                                               "Sort Space Used": 6668,                                                                                          +
                                                               "Sort Space Type": "Memory",                                                                                      +
                                                               "Shared Hit Blocks": 17,                                                                                          +
                                                               "Shared Read Blocks": 24468,                                                                                      +
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
                                                                   "Node Type": "Merge Join",                                                                                    +
                                                                   "Parent Relationship": "Outer",                                                                               +
                                                                   "Parallel Aware": false,                                                                                      +
                                                                   "Join Type": "Inner",                                                                                         +
                                                                   "Startup Cost": 16653.85,                                                                                     +
                                                                   "Total Cost": 17356.34,                                                                                       +
                                                                   "Plan Rows": 236,                                                                                             +
                                                                   "Plan Width": 4,                                                                                              +
                                                                   "Actual Startup Time": 2380.861,                                                                              +
                                                                   "Actual Total Time": 2589.837,                                                                                +
                                                                   "Actual Rows": 76714,                                                                                         +
                                                                   "Actual Loops": 1,                                                                                            +
                                                                   "Inner Unique": false,                                                                                        +
                                                                   "Merge Cond": "(k.id = mk.keyword_id)",                                                                       +
                                                                   "Shared Hit Blocks": 17,                                                                                      +
                                                                   "Shared Read Blocks": 24468,                                                                                  +
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
                                                                       "Node Type": "Sort",                                                                                      +
                                                                       "Parent Relationship": "Outer",                                                                           +
                                                                       "Parallel Aware": false,                                                                                  +
                                                                       "Startup Cost": 42.93,                                                                                    +
                                                                       "Total Cost": 42.93,                                                                                      +
                                                                       "Plan Rows": 7,                                                                                           +
                                                                       "Plan Width": 4,                                                                                          +
                                                                       "Actual Startup Time": 71.130,                                                                            +
                                                                       "Actual Total Time": 71.133,                                                                              +
                                                                       "Actual Rows": 7,                                                                                         +
                                                                       "Actual Loops": 1,                                                                                        +
                                                                       "Sort Key": ["k.id"],                                                                                     +
                                                                       "Sort Method": "quicksort",                                                                               +
                                                                       "Sort Space Used": 25,                                                                                    +
                                                                       "Sort Space Type": "Memory",                                                                              +
                                                                       "Shared Hit Blocks": 14,                                                                                  +
                                                                       "Shared Read Blocks": 17,                                                                                 +
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
                                                                           "Node Type": "Index Scan",                                                                            +
                                                                           "Parent Relationship": "Outer",                                                                       +
                                                                           "Parallel Aware": false,                                                                              +
                                                                           "Scan Direction": "Forward",                                                                          +
                                                                           "Index Name": "keyword_idx_keyword",                                                                  +
                                                                           "Relation Name": "keyword",                                                                           +
                                                                           "Alias": "k",                                                                                         +
                                                                           "Startup Cost": 0.01,                                                                                 +
                                                                           "Total Cost": 42.93,                                                                                  +
                                                                           "Plan Rows": 7,                                                                                       +
                                                                           "Plan Width": 4,                                                                                      +
                                                                           "Actual Startup Time": 30.469,                                                                        +
                                                                           "Actual Total Time": 71.088,                                                                          +
                                                                           "Actual Rows": 7,                                                                                     +
                                                                           "Actual Loops": 1,                                                                                    +
                                                                           "Index Cond": "(keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))",+
                                                                           "Rows Removed by Index Recheck": 0,                                                                   +
                                                                           "Shared Hit Blocks": 14,                                                                              +
                                                                           "Shared Read Blocks": 17,                                                                             +
                                                                           "Shared Dirtied Blocks": 0,                                                                           +
                                                                           "Shared Written Blocks": 0,                                                                           +
                                                                           "Local Hit Blocks": 0,                                                                                +
                                                                           "Local Read Blocks": 0,                                                                               +
                                                                           "Local Dirtied Blocks": 0,                                                                            +
                                                                           "Local Written Blocks": 0,                                                                            +
                                                                           "Temp Read Blocks": 0,                                                                                +
                                                                           "Temp Written Blocks": 0                                                                              +
                                                                         }                                                                                                       +
                                                                       ]                                                                                                         +
                                                                     },                                                                                                          +
                                                                     {                                                                                                           +
                                                                       "Node Type": "Sort",                                                                                      +
                                                                       "Parent Relationship": "Inner",                                                                           +
                                                                       "Parallel Aware": false,                                                                                  +
                                                                       "Startup Cost": 16610.92,                                                                                 +
                                                                       "Total Cost": 16962.16,                                                                                   +
                                                                       "Plan Rows": 4523930,                                                                                     +
                                                                       "Plan Width": 8,                                                                                          +
                                                                       "Actual Startup Time": 2257.945,                                                                          +
                                                                       "Actual Total Time": 2400.967,                                                                            +
                                                                       "Actual Rows": 943582,                                                                                    +
                                                                       "Actual Loops": 1,                                                                                        +
                                                                       "Sort Key": ["mk.keyword_id"],                                                                            +
                                                                       "Sort Method": "quicksort",                                                                               +
                                                                       "Sort Space Used": 408668,                                                                                +
                                                                       "Sort Space Type": "Memory",                                                                              +
                                                                       "Shared Hit Blocks": 3,                                                                                   +
                                                                       "Shared Read Blocks": 24451,                                                                              +
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
                                                                           "Node Type": "Seq Scan",                                                                              +
                                                                           "Parent Relationship": "Outer",                                                                       +
                                                                           "Parallel Aware": false,                                                                              +
                                                                           "Relation Name": "movie_keyword",                                                                     +
                                                                           "Alias": "mk",                                                                                        +
                                                                           "Startup Cost": 0.00,                                                                                 +
                                                                           "Total Cost": 1079.84,                                                                                +
                                                                           "Plan Rows": 4523930,                                                                                 +
                                                                           "Plan Width": 8,                                                                                      +
                                                                           "Actual Startup Time": 0.018,                                                                         +
                                                                           "Actual Total Time": 800.993,                                                                         +
                                                                           "Actual Rows": 4523930,                                                                               +
                                                                           "Actual Loops": 1,                                                                                    +
                                                                           "Shared Hit Blocks": 3,                                                                               +
                                                                           "Shared Read Blocks": 24451,                                                                          +
                                                                           "Shared Dirtied Blocks": 0,                                                                           +
                                                                           "Shared Written Blocks": 0,                                                                           +
                                                                           "Local Hit Blocks": 0,                                                                                +
                                                                           "Local Read Blocks": 0,                                                                               +
                                                                           "Local Dirtied Blocks": 0,                                                                            +
                                                                           "Local Written Blocks": 0,                                                                            +
                                                                           "Temp Read Blocks": 0,                                                                                +
                                                                           "Temp Written Blocks": 0                                                                              +
                                                                         }                                                                                                       +
                                                                       ]                                                                                                         +
                                                                     }                                                                                                           +
                                                                   ]                                                                                                             +
                                                                 }                                                                                                               +
                                                               ]                                                                                                                 +
                                                             },                                                                                                                  +
                                                             {                                                                                                                   +
                                                               "Node Type": "Sort",                                                                                              +
                                                               "Parent Relationship": "Inner",                                                                                   +
                                                               "Parallel Aware": false,                                                                                          +
                                                               "Startup Cost": 9654.35,                                                                                          +
                                                               "Total Cost": 9850.65,                                                                                            +
                                                               "Plan Rows": 2528312,                                                                                             +
                                                               "Plan Width": 21,                                                                                                 +
                                                               "Actual Startup Time": 2301.313,                                                                                  +
                                                               "Actual Total Time": 2632.410,                                                                                    +
                                                               "Actual Rows": 2525735,                                                                                           +
                                                               "Actual Loops": 1,                                                                                                +
                                                               "Sort Key": ["t.id"],                                                                                             +
                                                               "Sort Method": "quicksort",                                                                                       +
                                                               "Sort Space Used": 275055,                                                                                        +
                                                               "Sort Space Type": "Memory",                                                                                      +
                                                               "Shared Hit Blocks": 1,                                                                                           +
                                                               "Shared Read Blocks": 35997,                                                                                      +
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
                                                                   "Node Type": "Seq Scan",                                                                                      +
                                                                   "Parent Relationship": "Outer",                                                                               +
                                                                   "Parallel Aware": false,                                                                                      +
                                                                   "Relation Name": "title",                                                                                     +
                                                                   "Alias": "t",                                                                                                 +
                                                                   "Startup Cost": 0.00,                                                                                         +
                                                                   "Total Cost": 1303.96,                                                                                        +
                                                                   "Plan Rows": 2528312,                                                                                         +
                                                                   "Plan Width": 21,                                                                                             +
                                                                   "Actual Startup Time": 4.947,                                                                                 +
                                                                   "Actual Total Time": 998.568,                                                                                 +
                                                                   "Actual Rows": 2528312,                                                                                       +
                                                                   "Actual Loops": 1,                                                                                            +
                                                                   "Shared Hit Blocks": 1,                                                                                       +
                                                                   "Shared Read Blocks": 35997,                                                                                  +
                                                                   "Shared Dirtied Blocks": 0,                                                                                   +
                                                                   "Shared Written Blocks": 0,                                                                                   +
                                                                   "Local Hit Blocks": 0,                                                                                        +
                                                                   "Local Read Blocks": 0,                                                                                       +
                                                                   "Local Dirtied Blocks": 0,                                                                                    +
                                                                   "Local Written Blocks": 0,                                                                                    +
                                                                   "Temp Read Blocks": 0,                                                                                        +
                                                                   "Temp Written Blocks": 0                                                                                      +
                                                                 }                                                                                                               +
                                                               ]                                                                                                                 +
                                                             }                                                                                                                   +
                                                           ]                                                                                                                     +
                                                         },                                                                                                                      +
                                                         {                                                                                                                       +
                                                           "Node Type": "Sort",                                                                                                  +
                                                           "Parent Relationship": "Inner",                                                                                       +
                                                           "Parallel Aware": false,                                                                                              +
                                                           "Startup Cost": 9405.45,                                                                                              +
                                                           "Total Cost": 9608.03,                                                                                                +
                                                           "Plan Rows": 2609129,                                                                                                 +
                                                           "Plan Width": 8,                                                                                                      +
                                                           "Actual Startup Time": 1472.542,                                                                                      +
                                                           "Actual Total Time": 1649.086,                                                                                        +
                                                           "Actual Rows": 2913777,                                                                                               +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Sort Key": ["mc.movie_id"],                                                                                          +
                                                           "Sort Method": "quicksort",                                                                                           +
                                                           "Sort Space Used": 220607,                                                                                            +
                                                           "Sort Space Type": "Memory",                                                                                          +
                                                           "Shared Hit Blocks": 3,                                                                                               +
                                                           "Shared Read Blocks": 18786,                                                                                          +
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
                                                               "Relation Name": "movie_companies",                                                                               +
                                                               "Alias": "mc",                                                                                                    +
                                                               "Startup Cost": 0.00,                                                                                             +
                                                               "Total Cost": 769.75,                                                                                             +
                                                               "Plan Rows": 2609129,                                                                                             +
                                                               "Plan Width": 8,                                                                                                  +
                                                               "Actual Startup Time": 0.014,                                                                                     +
                                                               "Actual Total Time": 539.116,                                                                                     +
                                                               "Actual Rows": 2609129,                                                                                           +
                                                               "Actual Loops": 1,                                                                                                +
                                                               "Shared Hit Blocks": 3,                                                                                           +
                                                               "Shared Read Blocks": 18786,                                                                                      +
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
                                                     },                                                                                                                          +
                                                     {                                                                                                                           +
                                                       "Node Type": "Sort",                                                                                                      +
                                                       "Parent Relationship": "Inner",                                                                                           +
                                                       "Parallel Aware": false,                                                                                                  +
                                                       "Startup Cost": 21383.21,                                                                                                 +
                                                       "Total Cost": 21479.94,                                                                                                   +
                                                       "Plan Rows": 1245851,                                                                                                     +
                                                       "Plan Width": 8,                                                                                                          +
                                                       "Actual Startup Time": 12398.369,                                                                                         +
                                                       "Actual Total Time": 12529.722,                                                                                           +
                                                       "Actual Rows": 1654908,                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                        +
                                                       "Sort Key": ["ci.movie_id"],                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                               +
                                                       "Sort Space Used": 107499,                                                                                                +
                                                       "Sort Space Type": "Memory",                                                                                              +
                                                       "Shared Hit Blocks": 4,                                                                                                   +
                                                       "Shared Read Blocks": 252650,                                                                                             +
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
                                                           "Node Type": "Seq Scan",                                                                                              +
                                                           "Parent Relationship": "Outer",                                                                                       +
                                                           "Parallel Aware": false,                                                                                              +
                                                           "Relation Name": "cast_info",                                                                                         +
                                                           "Alias": "ci",                                                                                                        +
                                                           "Startup Cost": 0.00,                                                                                                 +
                                                           "Total Cost": 17466.00,                                                                                               +
                                                           "Plan Rows": 1245851,                                                                                                 +
                                                           "Plan Width": 8,                                                                                                      +
                                                           "Actual Startup Time": 364.092,                                                                                       +
                                                           "Actual Total Time": 11897.966,                                                                                       +
                                                           "Actual Rows": 1244716,                                                                                               +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",        +
                                                           "Rows Removed by Filter": 34999628,                                                                                   +
                                                           "Shared Hit Blocks": 4,                                                                                               +
                                                           "Shared Read Blocks": 252650,                                                                                         +
                                                           "Shared Dirtied Blocks": 0,                                                                                           +
                                                           "Shared Written Blocks": 0,                                                                                           +
                                                           "Local Hit Blocks": 0,                                                                                                +
                                                           "Local Read Blocks": 0,                                                                                               +
                                                           "Local Dirtied Blocks": 0,                                                                                            +
                                                           "Local Written Blocks": 0,                                                                                            +
                                                           "Temp Read Blocks": 0,                                                                                                +
                                                           "Temp Written Blocks": 0                                                                                              +
                                                         }                                                                                                                       +
                                                       ]                                                                                                                         +
                                                     }                                                                                                                           +
                                                   ]                                                                                                                             +
                                                 },                                                                                                                              +
                                                 {                                                                                                                               +
                                                   "Node Type": "Sort",                                                                                                          +
                                                   "Parent Relationship": "Inner",                                                                                               +
                                                   "Parallel Aware": false,                                                                                                      +
                                                   "Startup Cost": 4731.30,                                                                                                      +
                                                   "Total Cost": 4838.45,                                                                                                        +
                                                   "Plan Rows": 1380035,                                                                                                         +
                                                   "Plan Width": 14,                                                                                                             +
                                                   "Actual Startup Time": 851.360,                                                                                               +
                                                   "Actual Total Time": 995.344,                                                                                                 +
                                                   "Actual Rows": 2633492,                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Sort Key": ["mi_idx.movie_id"],                                                                                              +
                                                   "Sort Method": "quicksort",                                                                                                   +
                                                   "Sort Space Used": 128214,                                                                                                    +
                                                   "Sort Space Type": "Memory",                                                                                                  +
                                                   "Shared Hit Blocks": 2,                                                                                                       +
                                                   "Shared Read Blocks": 8451,                                                                                                   +
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
                                                       "Node Type": "Seq Scan",                                                                                                  +
                                                       "Parent Relationship": "Outer",                                                                                           +
                                                       "Parallel Aware": false,                                                                                                  +
                                                       "Relation Name": "movie_info_idx",                                                                                        +
                                                       "Alias": "mi_idx",                                                                                                        +
                                                       "Startup Cost": 0.00,                                                                                                     +
                                                       "Total Cost": 360.56,                                                                                                     +
                                                       "Plan Rows": 1380035,                                                                                                     +
                                                       "Plan Width": 14,                                                                                                         +
                                                       "Actual Startup Time": 0.014,                                                                                             +
                                                       "Actual Total Time": 321.946,                                                                                             +
                                                       "Actual Rows": 1380035,                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                        +
                                                       "Shared Hit Blocks": 2,                                                                                                   +
                                                       "Shared Read Blocks": 8451,                                                                                               +
                                                       "Shared Dirtied Blocks": 0,                                                                                               +
                                                       "Shared Written Blocks": 0,                                                                                               +
                                                       "Local Hit Blocks": 0,                                                                                                    +
                                                       "Local Read Blocks": 0,                                                                                                   +
                                                       "Local Dirtied Blocks": 0,                                                                                                +
                                                       "Local Written Blocks": 0,                                                                                                +
                                                       "Temp Read Blocks": 0,                                                                                                    +
                                                       "Temp Written Blocks": 0                                                                                                  +
                                                     }                                                                                                                           +
                                                   ]                                                                                                                             +
                                                 }                                                                                                                               +
                                               ]                                                                                                                                 +
                                             },                                                                                                                                  +
                                             {                                                                                                                                   +
                                               "Node Type": "Sort",                                                                                                              +
                                               "Parent Relationship": "Inner",                                                                                                   +
                                               "Parallel Aware": false,                                                                                                          +
                                               "Startup Cost": 7439.95,                                                                                                          +
                                               "Total Cost": 7445.65,                                                                                                            +
                                               "Plan Rows": 73417,                                                                                                               +
                                               "Plan Width": 50,                                                                                                                 +
                                               "Actual Startup Time": 8465.939,                                                                                                  +
                                               "Actual Total Time": 8514.976,                                                                                                    +
                                               "Actual Rows": 996560,                                                                                                            +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Sort Key": ["mi.movie_id"],                                                                                                      +
                                               "Sort Method": "quicksort",                                                                                                       +
                                               "Sort Space Used": 7817,                                                                                                          +
                                               "Sort Space Type": "Memory",                                                                                                      +
                                               "Shared Hit Blocks": 2,                                                                                                           +
                                               "Shared Read Blocks": 161890,                                                                                                     +
                                               "Shared Dirtied Blocks": 0,                                                                                                       +
                                               "Shared Written Blocks": 0,                                                                                                       +
                                               "Local Hit Blocks": 0,                                                                                                            +
                                               "Local Read Blocks": 0,                                                                                                           +
                                               "Local Dirtied Blocks": 0,                                                                                                        +
                                               "Local Written Blocks": 0,                                                                                                        +
                                               "Temp Read Blocks": 0,                                                                                                            +
                                               "Temp Written Blocks": 0,                                                                                                         +
                                               "Plans": [                                                                                                                        +
                                                 {                                                                                                                               +
                                                   "Node Type": "Seq Scan",                                                                                                      +
                                                   "Parent Relationship": "Outer",                                                                                               +
                                                   "Parallel Aware": false,                                                                                                      +
                                                   "Relation Name": "movie_info",                                                                                                +
                                                   "Alias": "mi",                                                                                                                +
                                                   "Startup Cost": 0.00,                                                                                                         +
                                                   "Total Cost": 7255.68,                                                                                                        +
                                                   "Plan Rows": 73417,                                                                                                           +
                                                   "Plan Width": 50,                                                                                                             +
                                                   "Actual Startup Time": 4917.627,                                                                                              +
                                                   "Actual Total Time": 8412.639,                                                                                                +
                                                   "Actual Rows": 73047,                                                                                                         +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Filter": "(info = ANY ('{Horror,Thriller}'::text[]))",                                                                       +
                                                   "Rows Removed by Filter": 14762673,                                                                                           +
                                                   "Shared Hit Blocks": 2,                                                                                                       +
                                                   "Shared Read Blocks": 161890,                                                                                                 +
                                                   "Shared Dirtied Blocks": 0,                                                                                                   +
                                                   "Shared Written Blocks": 0,                                                                                                   +
                                                   "Local Hit Blocks": 0,                                                                                                        +
                                                   "Local Read Blocks": 0,                                                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                                                    +
                                                   "Local Written Blocks": 0,                                                                                                    +
                                                   "Temp Read Blocks": 0,                                                                                                        +
                                                   "Temp Written Blocks": 0                                                                                                      +
                                                 }                                                                                                                               +
                                               ]                                                                                                                                 +
                                             }                                                                                                                                   +
                                           ]                                                                                                                                     +
                                         }                                                                                                                                       +
                                       ]                                                                                                                                         +
                                     },                                                                                                                                          +
                                     {                                                                                                                                           +
                                       "Node Type": "Sort",                                                                                                                      +
                                       "Parent Relationship": "Inner",                                                                                                           +
                                       "Parallel Aware": false,                                                                                                                  +
                                       "Startup Cost": 7955.33,                                                                                                                  +
                                       "Total Cost": 8090.37,                                                                                                                    +
                                       "Plan Rows": 1739438,                                                                                                                     +
                                       "Plan Width": 19,                                                                                                                         +
                                       "Actual Startup Time": 2975.086,                                                                                                          +
                                       "Actual Total Time": 3158.506,                                                                                                            +
                                       "Actual Rows": 1739579,                                                                                                                   +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Sort Key": ["n.id"],                                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                               +
                                       "Sort Space Used": 176730,                                                                                                                +
                                       "Sort Space Type": "Memory",                                                                                                              +
                                       "Shared Hit Blocks": 1,                                                                                                                   +
                                       "Shared Read Blocks": 55612,                                                                                                              +
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
                                           "Node Type": "Seq Scan",                                                                                                              +
                                           "Parent Relationship": "Outer",                                                                                                       +
                                           "Parallel Aware": false,                                                                                                              +
                                           "Relation Name": "name",                                                                                                              +
                                           "Alias": "n",                                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                                 +
                                           "Total Cost": 2356.12,                                                                                                                +
                                           "Plan Rows": 1739438,                                                                                                                 +
                                           "Plan Width": 19,                                                                                                                     +
                                           "Actual Startup Time": 23.371,                                                                                                        +
                                           "Actual Total Time": 2197.724,                                                                                                        +
                                           "Actual Rows": 1739579,                                                                                                               +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Filter": "((gender)::text = 'm'::text)",                                                                                             +
                                           "Rows Removed by Filter": 2427912,                                                                                                    +
                                           "Shared Hit Blocks": 1,                                                                                                               +
                                           "Shared Read Blocks": 55612,                                                                                                          +
                                           "Shared Dirtied Blocks": 0,                                                                                                           +
                                           "Shared Written Blocks": 0,                                                                                                           +
                                           "Local Hit Blocks": 0,                                                                                                                +
                                           "Local Read Blocks": 0,                                                                                                               +
                                           "Local Dirtied Blocks": 0,                                                                                                            +
                                           "Local Written Blocks": 0,                                                                                                            +
                                           "Temp Read Blocks": 0,                                                                                                                +
                                           "Temp Written Blocks": 0                                                                                                              +
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
                               "Startup Cost": 0.05,                                                                                                                             +
                               "Total Cost": 0.05,                                                                                                                               +
                               "Plan Rows": 1,                                                                                                                                   +
                               "Plan Width": 4,                                                                                                                                  +
                               "Actual Startup Time": 0.040,                                                                                                                     +
                               "Actual Total Time": 0.040,                                                                                                                       +
                               "Actual Rows": 1,                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                +
                               "Sort Key": ["it2.id"],                                                                                                                           +
                               "Sort Method": "quicksort",                                                                                                                       +
                               "Sort Space Used": 25,                                                                                                                            +
                               "Sort Space Type": "Memory",                                                                                                                      +
                               "Shared Hit Blocks": 1,                                                                                                                           +
                               "Shared Read Blocks": 0,                                                                                                                          +
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
                                   "Relation Name": "info_type",                                                                                                                 +
                                   "Alias": "it2",                                                                                                                               +
                                   "Startup Cost": 0.00,                                                                                                                         +
                                   "Total Cost": 0.05,                                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                               +
                                   "Plan Width": 4,                                                                                                                              +
                                   "Actual Startup Time": 0.028,                                                                                                                 +
                                   "Actual Total Time": 0.031,                                                                                                                   +
                                   "Actual Rows": 1,                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                            +
                                   "Filter": "((info)::text = 'votes'::text)",                                                                                                   +
                                   "Rows Removed by Filter": 112,                                                                                                                +
                                   "Shared Hit Blocks": 1,                                                                                                                       +
                                   "Shared Read Blocks": 0,                                                                                                                      +
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
                         }                                                                                                                                                       +
                       ]                                                                                                                                                         +
                     },                                                                                                                                                          +
                     {                                                                                                                                                           +
                       "Node Type": "Sort",                                                                                                                                      +
                       "Parent Relationship": "Inner",                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                  +
                       "Startup Cost": 0.05,                                                                                                                                     +
                       "Total Cost": 0.05,                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                           +
                       "Plan Width": 4,                                                                                                                                          +
                       "Actual Startup Time": 0.035,                                                                                                                             +
                       "Actual Total Time": 0.035,                                                                                                                               +
                       "Actual Rows": 1,                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Sort Key": ["it1.id"],                                                                                                                                   +
                       "Sort Method": "quicksort",                                                                                                                               +
                       "Sort Space Used": 25,                                                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                                                              +
                       "Shared Hit Blocks": 1,                                                                                                                                   +
                       "Shared Read Blocks": 0,                                                                                                                                  +
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
                           "Node Type": "Seq Scan",                                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                                       +
                           "Parallel Aware": false,                                                                                                                              +
                           "Relation Name": "info_type",                                                                                                                         +
                           "Alias": "it1",                                                                                                                                       +
                           "Startup Cost": 0.00,                                                                                                                                 +
                           "Total Cost": 0.05,                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 4,                                                                                                                                      +
                           "Actual Startup Time": 0.016,                                                                                                                         +
                           "Actual Total Time": 0.028,                                                                                                                           +
                           "Actual Rows": 1,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Filter": "((info)::text = 'genres'::text)",                                                                                                          +
                           "Rows Removed by Filter": 112,                                                                                                                        +
                           "Shared Hit Blocks": 1,                                                                                                                               +
                           "Shared Read Blocks": 0,                                                                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                                                                           +
                           "Shared Written Blocks": 0,                                                                                                                           +
                           "Local Hit Blocks": 0,                                                                                                                                +
                           "Local Read Blocks": 0,                                                                                                                               +
                           "Local Dirtied Blocks": 0,                                                                                                                            +
                           "Local Written Blocks": 0,                                                                                                                            +
                           "Temp Read Blocks": 0,                                                                                                                                +
                           "Temp Written Blocks": 0                                                                                                                              +
                         }                                                                                                                                                       +
                       ]                                                                                                                                                         +
                     }                                                                                                                                                           +
                   ]                                                                                                                                                             +
                 }                                                                                                                                                               +
               ]                                                                                                                                                                 +
             },                                                                                                                                                                  +
             {                                                                                                                                                                   +
               "Node Type": "Sort",                                                                                                                                              +
               "Parent Relationship": "Inner",                                                                                                                                   +
               "Parallel Aware": false,                                                                                                                                          +
               "Startup Cost": 128.43,                                                                                                                                           +
               "Total Cost": 128.43,                                                                                                                                             +
               "Plan Rows": 30,                                                                                                                                                  +
               "Plan Width": 4,                                                                                                                                                  +
               "Actual Startup Time": 141.987,                                                                                                                                   +
               "Actual Total Time": 141.989,                                                                                                                                     +
               "Actual Rows": 10,                                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                                +
               "Sort Key": ["cn.id"],                                                                                                                                            +
               "Sort Method": "quicksort",                                                                                                                                       +
               "Sort Space Used": 25,                                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                                      +
               "Shared Hit Blocks": 2,                                                                                                                                           +
               "Shared Read Blocks": 2992,                                                                                                                                       +
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
                   "Node Type": "Seq Scan",                                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                      +
                   "Relation Name": "company_name",                                                                                                                              +
                   "Alias": "cn",                                                                                                                                                +
                   "Startup Cost": 0.00,                                                                                                                                         +
                   "Total Cost": 128.41,                                                                                                                                         +
                   "Plan Rows": 30,                                                                                                                                              +
                   "Plan Width": 4,                                                                                                                                              +
                   "Actual Startup Time": 9.445,                                                                                                                                 +
                   "Actual Total Time": 141.958,                                                                                                                                 +
                   "Actual Rows": 10,                                                                                                                                            +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Filter": "(name ~~ 'Lionsgate%'::text)",                                                                                                                     +
                   "Rows Removed by Filter": 234987,                                                                                                                             +
                   "Shared Hit Blocks": 2,                                                                                                                                       +
                   "Shared Read Blocks": 2992,                                                                                                                                   +
                   "Shared Dirtied Blocks": 0,                                                                                                                                   +
                   "Shared Written Blocks": 0,                                                                                                                                   +
                   "Local Hit Blocks": 0,                                                                                                                                        +
                   "Local Read Blocks": 0,                                                                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                                                                    +
                   "Local Written Blocks": 0,                                                                                                                                    +
                   "Temp Read Blocks": 0,                                                                                                                                        +
                   "Temp Written Blocks": 0                                                                                                                                      +
                 }                                                                                                                                                               +
               ]                                                                                                                                                                 +
             }                                                                                                                                                                   +
           ]                                                                                                                                                                     +
         }                                                                                                                                                                       +
       ]                                                                                                                                                                         +
     },                                                                                                                                                                          +
     "Planning Time": 15444.551,                                                                                                                                                 +
     "Triggers": [                                                                                                                                                               +
     ],                                                                                                                                                                          +
     "Execution Time": 35556.781                                                                                                                                                 +
   }                                                                                                                                                                             +
 ]
(1 row)

