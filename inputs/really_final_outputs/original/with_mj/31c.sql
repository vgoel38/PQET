                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                               +
   {                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                  +
       "Startup Cost": 90859.50,                                                                                                                                                 +
       "Total Cost": 90859.50,                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                           +
       "Plan Width": 128,                                                                                                                                                        +
       "Actual Startup Time": 39114.883,                                                                                                                                         +
       "Actual Total Time": 39114.883,                                                                                                                                           +
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
           "Startup Cost": 90859.50,                                                                                                                                             +
           "Total Cost": 90859.50,                                                                                                                                               +
           "Plan Rows": 1,                                                                                                                                                       +
           "Plan Width": 80,                                                                                                                                                     +
           "Actual Startup Time": 39113.001,                                                                                                                                     +
           "Actual Total Time": 39113.815,                                                                                                                                       +
           "Actual Rows": 2825,                                                                                                                                                  +
           "Actual Loops": 1,                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                 +
           "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                                           +
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
               "Startup Cost": 90859.45,                                                                                                                                         +
               "Total Cost": 90859.45,                                                                                                                                           +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 84,                                                                                                                                                 +
               "Actual Startup Time": 39112.977,                                                                                                                                 +
               "Actual Total Time": 39113.109,                                                                                                                                   +
               "Actual Rows": 2826,                                                                                                                                              +
               "Actual Loops": 1,                                                                                                                                                +
               "Sort Key": ["mi.info_type_id"],                                                                                                                                  +
               "Sort Method": "quicksort",                                                                                                                                       +
               "Sort Space Used": 397,                                                                                                                                           +
               "Sort Space Type": "Memory",                                                                                                                                      +
               "Shared Hit Blocks": 37,                                                                                                                                          +
               "Shared Read Blocks": 560846,                                                                                                                                     +
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
                   "Startup Cost": 90859.45,                                                                                                                                     +
                   "Total Cost": 90859.45,                                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                                               +
                   "Plan Width": 84,                                                                                                                                             +
                   "Actual Startup Time": 39102.186,                                                                                                                             +
                   "Actual Total Time": 39103.172,                                                                                                                               +
                   "Actual Rows": 3007,                                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Inner Unique": true,                                                                                                                                         +
                   "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                                               +
                   "Shared Hit Blocks": 33,                                                                                                                                      +
                   "Shared Read Blocks": 560846,                                                                                                                                 +
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
                       "Startup Cost": 90859.40,                                                                                                                                 +
                       "Total Cost": 90859.40,                                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                                           +
                       "Plan Width": 88,                                                                                                                                         +
                       "Actual Startup Time": 39101.473,                                                                                                                         +
                       "Actual Total Time": 39101.983,                                                                                                                           +
                       "Actual Rows": 6015,                                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Sort Key": ["mi_idx.info_type_id"],                                                                                                                      +
                       "Sort Method": "quicksort",                                                                                                                               +
                       "Sort Space Used": 1497,                                                                                                                                  +
                       "Sort Space Type": "Memory",                                                                                                                              +
                       "Shared Hit Blocks": 32,                                                                                                                                  +
                       "Shared Read Blocks": 560846,                                                                                                                             +
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
                           "Startup Cost": 90859.36,                                                                                                                             +
                           "Total Cost": 90859.40,                                                                                                                               +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 88,                                                                                                                                     +
                           "Actual Startup Time": 38764.017,                                                                                                                     +
                           "Actual Total Time": 39098.449,                                                                                                                       +
                           "Actual Rows": 9205,                                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Inner Unique": true,                                                                                                                                 +
                           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                              +
                           "Shared Hit Blocks": 32,                                                                                                                              +
                           "Shared Read Blocks": 560846,                                                                                                                         +
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
                               "Startup Cost": 90730.94,                                                                                                                         +
                               "Total Cost": 90730.95,                                                                                                                           +
                               "Plan Rows": 199,                                                                                                                                 +
                               "Plan Width": 92,                                                                                                                                 +
                               "Actual Startup Time": 38442.194,                                                                                                                 +
                               "Actual Total Time": 38715.435,                                                                                                                   +
                               "Actual Rows": 2075141,                                                                                                                           +
                               "Actual Loops": 1,                                                                                                                                +
                               "Sort Key": ["mc.company_id"],                                                                                                                    +
                               "Sort Method": "quicksort",                                                                                                                       +
                               "Sort Space Used": 382793,                                                                                                                        +
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
                                   "Startup Cost": 90099.93,                                                                                                                     +
                                   "Total Cost": 90730.70,                                                                                                                       +
                                   "Plan Rows": 199,                                                                                                                             +
                                   "Plan Width": 92,                                                                                                                             +
                                   "Actual Startup Time": 36004.949,                                                                                                             +
                                   "Actual Total Time": 37616.987,                                                                                                               +
                                   "Actual Rows": 2099185,                                                                                                                       +
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
                                       "Startup Cost": 73836.60,                                                                                                                 +
                                       "Total Cost": 73836.61,                                                                                                                   +
                                       "Plan Rows": 199,                                                                                                                         +
                                       "Plan Width": 81,                                                                                                                         +
                                       "Actual Startup Time": 32501.412,                                                                                                         +
                                       "Actual Total Time": 32653.538,                                                                                                           +
                                       "Actual Rows": 2099185,                                                                                                                   +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Sort Key": ["ci.person_id"],                                                                                                             +
                                       "Sort Method": "quicksort",                                                                                                               +
                                       "Sort Space Used": 318675,                                                                                                                +
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
                                           "Startup Cost": 72605.22,                                                                                                             +
                                           "Total Cost": 73836.36,                                                                                                               +
                                           "Plan Rows": 199,                                                                                                                     +
                                           "Plan Width": 81,                                                                                                                     +
                                           "Actual Startup Time": 28042.296,                                                                                                     +
                                           "Actual Total Time": 31724.601,                                                                                                       +
                                           "Actual Rows": 2099185,                                                                                                               +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Inner Unique": false,                                                                                                                +
                                           "Merge Cond": "(t.id = ci.movie_id)",                                                                                                 +
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
                                               "Startup Cost": 51222.01,                                                                                                         +
                                               "Total Cost": 52261.44,                                                                                                           +
                                               "Plan Rows": 573,                                                                                                                 +
                                               "Plan Width": 97,                                                                                                                 +
                                               "Actual Startup Time": 15510.028,                                                                                                 +
                                               "Actual Total Time": 18175.864,                                                                                                   +
                                               "Actual Rows": 2646951,                                                                                                           +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Inner Unique": false,                                                                                                            +
                                               "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                         +
                                               "Shared Hit Blocks": 25,                                                                                                          +
                                               "Shared Read Blocks": 249592,                                                                                                     +
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
                                                   "Startup Cost": 46490.71,                                                                                                     +
                                                   "Total Cost": 47317.05,                                                                                                       +
                                                   "Plan Rows": 649,                                                                                                             +
                                                   "Plan Width": 83,                                                                                                             +
                                                   "Actual Startup Time": 14683.624,                                                                                             +
                                                   "Actual Total Time": 16298.397,                                                                                               +
                                                   "Actual Rows": 876589,                                                                                                        +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Inner Unique": false,                                                                                                        +
                                                   "Merge Cond": "(t.id = mi.movie_id)",                                                                                         +
                                                   "Shared Hit Blocks": 23,                                                                                                      +
                                                   "Shared Read Blocks": 241141,                                                                                                 +
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
                                                       "Actual Startup Time": 6374.472,                                                                                          +
                                                       "Actual Total Time": 7648.705,                                                                                            +
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
                                                           "Actual Startup Time": 4891.677,                                                                                      +
                                                           "Actual Total Time": 5621.030,                                                                                        +
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
                                                               "Actual Startup Time": 2592.781,                                                                                  +
                                                               "Actual Total Time": 2604.296,                                                                                    +
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
                                                                   "Actual Startup Time": 2358.328,                                                                              +
                                                                   "Actual Total Time": 2566.691,                                                                                +
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
                                                                       "Actual Startup Time": 71.185,                                                                            +
                                                                       "Actual Total Time": 71.188,                                                                              +
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
                                                                           "Actual Startup Time": 30.520,                                                                        +
                                                                           "Actual Total Time": 71.145,                                                                          +
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
                                                                       "Actual Startup Time": 2236.142,                                                                          +
                                                                       "Actual Total Time": 2377.955,                                                                            +
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
                                                                           "Actual Total Time": 789.066,                                                                         +
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
                                                               "Actual Startup Time": 2298.687,                                                                                  +
                                                               "Actual Total Time": 2631.527,                                                                                    +
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
                                                                   "Actual Startup Time": 3.001,                                                                                 +
                                                                   "Actual Total Time": 982.739,                                                                                 +
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
                                                           "Actual Startup Time": 1482.725,                                                                                      +
                                                           "Actual Total Time": 1657.140,                                                                                        +
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
                                                               "Actual Startup Time": 0.012,                                                                                     +
                                                               "Actual Total Time": 538.485,                                                                                     +
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
                                                       "Startup Cost": 10074.27,                                                                                                 +
                                                       "Total Cost": 10088.96,                                                                                                   +
                                                       "Plan Rows": 189170,                                                                                                      +
                                                       "Plan Width": 50,                                                                                                         +
                                                       "Actual Startup Time": 8309.143,                                                                                          +
                                                       "Actual Total Time": 8363.424,                                                                                            +
                                                       "Actual Rows": 1030111,                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                        +
                                                       "Sort Key": ["mi.movie_id"],                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                               +
                                                       "Sort Space Used": 16323,                                                                                                 +
                                                       "Sort Space Type": "Memory",                                                                                              +
                                                       "Shared Hit Blocks": 2,                                                                                                   +
                                                       "Shared Read Blocks": 161890,                                                                                             +
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
                                                           "Relation Name": "movie_info",                                                                                        +
                                                           "Alias": "mi",                                                                                                        +
                                                           "Startup Cost": 0.00,                                                                                                 +
                                                           "Total Cost": 9559.36,                                                                                                +
                                                           "Plan Rows": 189170,                                                                                                  +
                                                           "Plan Width": 50,                                                                                                     +
                                                           "Actual Startup Time": 2711.698,                                                                                      +
                                                           "Actual Total Time": 8220.684,                                                                                        +
                                                           "Actual Rows": 188971,                                                                                                +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                                       +
                                                           "Rows Removed by Filter": 14646749,                                                                                   +
                                                           "Shared Hit Blocks": 2,                                                                                               +
                                                           "Shared Read Blocks": 161890,                                                                                         +
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
                                                   "Actual Startup Time": 826.334,                                                                                               +
                                                   "Actual Total Time": 1038.841,                                                                                                +
                                                   "Actual Rows": 3966695,                                                                                                       +
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
                                                       "Actual Startup Time": 0.009,                                                                                             +
                                                       "Actual Total Time": 303.572,                                                                                             +
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
                                               "Startup Cost": 21383.21,                                                                                                         +
                                               "Total Cost": 21479.94,                                                                                                           +
                                               "Plan Rows": 1245851,                                                                                                             +
                                               "Plan Width": 8,                                                                                                                  +
                                               "Actual Startup Time": 12525.969,                                                                                                 +
                                               "Actual Total Time": 12736.305,                                                                                                   +
                                               "Actual Rows": 3331481,                                                                                                           +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Sort Key": ["ci.movie_id"],                                                                                                      +
                                               "Sort Method": "quicksort",                                                                                                       +
                                               "Sort Space Used": 107499,                                                                                                        +
                                               "Sort Space Type": "Memory",                                                                                                      +
                                               "Shared Hit Blocks": 4,                                                                                                           +
                                               "Shared Read Blocks": 252650,                                                                                                     +
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
                                                   "Relation Name": "cast_info",                                                                                                 +
                                                   "Alias": "ci",                                                                                                                +
                                                   "Startup Cost": 0.00,                                                                                                         +
                                                   "Total Cost": 17466.00,                                                                                                       +
                                                   "Plan Rows": 1245851,                                                                                                         +
                                                   "Plan Width": 8,                                                                                                              +
                                                   "Actual Startup Time": 371.576,                                                                                               +
                                                   "Actual Total Time": 12037.128,                                                                                               +
                                                   "Actual Rows": 1244716,                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",                +
                                                   "Rows Removed by Filter": 34999628,                                                                                           +
                                                   "Shared Hit Blocks": 4,                                                                                                       +
                                                   "Shared Read Blocks": 252650,                                                                                                 +
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
                                       "Startup Cost": 16263.33,                                                                                                                 +
                                       "Total Cost": 16586.90,                                                                                                                   +
                                       "Plan Rows": 4167491,                                                                                                                     +
                                       "Plan Width": 19,                                                                                                                         +
                                       "Actual Startup Time": 3503.360,                                                                                                          +
                                       "Actual Total Time": 3898.531,                                                                                                            +
                                       "Actual Rows": 4030084,                                                                                                                   +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Sort Key": ["n.id"],                                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                               +
                                       "Sort Space Used": 405945,                                                                                                                +
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
                                           "Total Cost": 2032.56,                                                                                                                +
                                           "Plan Rows": 4167491,                                                                                                                 +
                                           "Plan Width": 19,                                                                                                                     +
                                           "Actual Startup Time": 19.560,                                                                                                        +
                                           "Actual Total Time": 1508.745,                                                                                                        +
                                           "Actual Rows": 4167491,                                                                                                               +
                                           "Actual Loops": 1,                                                                                                                    +
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
                               "Startup Cost": 128.43,                                                                                                                           +
                               "Total Cost": 128.43,                                                                                                                             +
                               "Plan Rows": 30,                                                                                                                                  +
                               "Plan Width": 4,                                                                                                                                  +
                               "Actual Startup Time": 144.797,                                                                                                                   +
                               "Actual Total Time": 144.802,                                                                                                                     +
                               "Actual Rows": 10,                                                                                                                                +
                               "Actual Loops": 1,                                                                                                                                +
                               "Sort Key": ["cn.id"],                                                                                                                            +
                               "Sort Method": "quicksort",                                                                                                                       +
                               "Sort Space Used": 25,                                                                                                                            +
                               "Sort Space Type": "Memory",                                                                                                                      +
                               "Shared Hit Blocks": 2,                                                                                                                           +
                               "Shared Read Blocks": 2992,                                                                                                                       +
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
                                   "Relation Name": "company_name",                                                                                                              +
                                   "Alias": "cn",                                                                                                                                +
                                   "Startup Cost": 0.00,                                                                                                                         +
                                   "Total Cost": 128.41,                                                                                                                         +
                                   "Plan Rows": 30,                                                                                                                              +
                                   "Plan Width": 4,                                                                                                                              +
                                   "Actual Startup Time": 12.475,                                                                                                                +
                                   "Actual Total Time": 144.762,                                                                                                                 +
                                   "Actual Rows": 10,                                                                                                                            +
                                   "Actual Loops": 1,                                                                                                                            +
                                   "Filter": "(name ~~ 'Lionsgate%'::text)",                                                                                                     +
                                   "Rows Removed by Filter": 234987,                                                                                                             +
                                   "Shared Hit Blocks": 2,                                                                                                                       +
                                   "Shared Read Blocks": 2992,                                                                                                                   +
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
                       "Actual Startup Time": 0.030,                                                                                                                             +
                       "Actual Total Time": 0.030,                                                                                                                               +
                       "Actual Rows": 1,                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Sort Key": ["it2.id"],                                                                                                                                   +
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
                           "Alias": "it2",                                                                                                                                       +
                           "Startup Cost": 0.00,                                                                                                                                 +
                           "Total Cost": 0.05,                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 4,                                                                                                                                      +
                           "Actual Startup Time": 0.022,                                                                                                                         +
                           "Actual Total Time": 0.024,                                                                                                                           +
                           "Actual Rows": 1,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Filter": "((info)::text = 'votes'::text)",                                                                                                           +
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
               "Startup Cost": 0.05,                                                                                                                                             +
               "Total Cost": 0.05,                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 4,                                                                                                                                                  +
               "Actual Startup Time": 0.021,                                                                                                                                     +
               "Actual Total Time": 0.021,                                                                                                                                       +
               "Actual Rows": 1,                                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                                +
               "Sort Key": ["it1.id"],                                                                                                                                           +
               "Sort Method": "quicksort",                                                                                                                                       +
               "Sort Space Used": 25,                                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                                                           +
               "Shared Read Blocks": 0,                                                                                                                                          +
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
                   "Relation Name": "info_type",                                                                                                                                 +
                   "Alias": "it1",                                                                                                                                               +
                   "Startup Cost": 0.00,                                                                                                                                         +
                   "Total Cost": 0.05,                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                               +
                   "Plan Width": 4,                                                                                                                                              +
                   "Actual Startup Time": 0.007,                                                                                                                                 +
                   "Actual Total Time": 0.018,                                                                                                                                   +
                   "Actual Rows": 1,                                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Filter": "((info)::text = 'genres'::text)",                                                                                                                  +
                   "Rows Removed by Filter": 112,                                                                                                                                +
                   "Shared Hit Blocks": 1,                                                                                                                                       +
                   "Shared Read Blocks": 0,                                                                                                                                      +
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
     "Planning Time": 15133.696,                                                                                                                                                 +
     "Triggers": [                                                                                                                                                               +
     ],                                                                                                                                                                          +
     "Execution Time": 39210.709                                                                                                                                                 +
   }                                                                                                                                                                             +
 ]
(1 row)

