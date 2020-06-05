                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                               +
   {                                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                                  +
       "Startup Cost": 62754.47,                                                                                                                                                                 +
       "Total Cost": 62754.47,                                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                                           +
       "Plan Width": 128,                                                                                                                                                                        +
       "Actual Startup Time": 31218.336,                                                                                                                                                         +
       "Actual Total Time": 31218.336,                                                                                                                                                           +
       "Actual Rows": 1,                                                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                                                        +
       "Shared Hit Blocks": 38,                                                                                                                                                                  +
       "Shared Read Blocks": 560846,                                                                                                                                                             +
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
           "Node Type": "Merge Join",                                                                                                                                                            +
           "Parent Relationship": "Outer",                                                                                                                                                       +
           "Parallel Aware": false,                                                                                                                                                              +
           "Join Type": "Inner",                                                                                                                                                                 +
           "Startup Cost": 62491.21,                                                                                                                                                             +
           "Total Cost": 62754.47,                                                                                                                                                               +
           "Plan Rows": 1,                                                                                                                                                                       +
           "Plan Width": 80,                                                                                                                                                                     +
           "Actual Startup Time": 30870.231,                                                                                                                                                     +
           "Actual Total Time": 31218.259,                                                                                                                                                       +
           "Actual Rows": 84,                                                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                                 +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                                                +
           "Shared Hit Blocks": 38,                                                                                                                                                              +
           "Shared Read Blocks": 560846,                                                                                                                                                         +
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
               "Node Type": "Sort",                                                                                                                                                              +
               "Parent Relationship": "Outer",                                                                                                                                                   +
               "Parallel Aware": false,                                                                                                                                                          +
               "Startup Cost": 54535.89,                                                                                                                                                         +
               "Total Cost": 54535.89,                                                                                                                                                           +
               "Plan Rows": 1,                                                                                                                                                                   +
               "Plan Width": 69,                                                                                                                                                                 +
               "Actual Startup Time": 27846.865,                                                                                                                                                 +
               "Actual Total Time": 27846.877,                                                                                                                                                   +
               "Actual Rows": 84,                                                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                                                +
               "Sort Key": ["ci.person_id"],                                                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                                                                       +
               "Sort Space Used": 31,                                                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                                                      +
               "Shared Hit Blocks": 37,                                                                                                                                                          +
               "Shared Read Blocks": 505234,                                                                                                                                                     +
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
                   "Node Type": "Merge Join",                                                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                                      +
                   "Join Type": "Inner",                                                                                                                                                         +
                   "Startup Cost": 54535.89,                                                                                                                                                     +
                   "Total Cost": 54535.89,                                                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                                                               +
                   "Plan Width": 69,                                                                                                                                                             +
                   "Actual Startup Time": 27837.344,                                                                                                                                             +
                   "Actual Total Time": 27837.368,                                                                                                                                               +
                   "Actual Rows": 84,                                                                                                                                                            +
                   "Actual Loops": 1,                                                                                                                                                            +
                   "Inner Unique": true,                                                                                                                                                         +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                                                   +
                   "Shared Hit Blocks": 33,                                                                                                                                                      +
                   "Shared Read Blocks": 505234,                                                                                                                                                 +
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
                       "Node Type": "Sort",                                                                                                                                                      +
                       "Parent Relationship": "Outer",                                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                                  +
                       "Startup Cost": 54535.84,                                                                                                                                                 +
                       "Total Cost": 54535.84,                                                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                                                           +
                       "Plan Width": 73,                                                                                                                                                         +
                       "Actual Startup Time": 27837.325,                                                                                                                                         +
                       "Actual Total Time": 27837.329,                                                                                                                                           +
                       "Actual Rows": 84,                                                                                                                                                        +
                       "Actual Loops": 1,                                                                                                                                                        +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                                          +
                       "Sort Method": "quicksort",                                                                                                                                               +
                       "Sort Space Used": 31,                                                                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                                                                              +
                       "Shared Hit Blocks": 32,                                                                                                                                                  +
                       "Shared Read Blocks": 505234,                                                                                                                                             +
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
                           "Startup Cost": 54535.84,                                                                                                                                             +
                           "Total Cost": 54535.84,                                                                                                                                               +
                           "Plan Rows": 1,                                                                                                                                                       +
                           "Plan Width": 73,                                                                                                                                                     +
                           "Actual Startup Time": 27837.268,                                                                                                                                     +
                           "Actual Total Time": 27837.293,                                                                                                                                       +
                           "Actual Rows": 84,                                                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                                                    +
                           "Inner Unique": true,                                                                                                                                                 +
                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                                                       +
                           "Shared Hit Blocks": 32,                                                                                                                                              +
                           "Shared Read Blocks": 505234,                                                                                                                                         +
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
                               "Startup Cost": 54535.79,                                                                                                                                         +
                               "Total Cost": 54535.79,                                                                                                                                           +
                               "Plan Rows": 1,                                                                                                                                                   +
                               "Plan Width": 77,                                                                                                                                                 +
                               "Actual Startup Time": 27837.226,                                                                                                                                 +
                               "Actual Total Time": 27837.234,                                                                                                                                   +
                               "Actual Rows": 169,                                                                                                                                               +
                               "Actual Loops": 1,                                                                                                                                                +
                               "Sort Key": ["mi_idx.info_type_id"],                                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                                                       +
                               "Sort Space Used": 44,                                                                                                                                            +
                               "Sort Space Type": "Memory",                                                                                                                                      +
                               "Shared Hit Blocks": 31,                                                                                                                                          +
                               "Shared Read Blocks": 505234,                                                                                                                                     +
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
                                   "Startup Cost": 54535.79,                                                                                                                                     +
                                   "Total Cost": 54535.79,                                                                                                                                       +
                                   "Plan Rows": 1,                                                                                                                                               +
                                   "Plan Width": 77,                                                                                                                                             +
                                   "Actual Startup Time": 27836.346,                                                                                                                             +
                                   "Actual Total Time": 27836.995,                                                                                                                               +
                                   "Actual Rows": 252,                                                                                                                                           +
                                   "Actual Loops": 1,                                                                                                                                            +
                                   "Inner Unique": true,                                                                                                                                         +
                                   "Merge Cond": "(mk.keyword_id = k.id)",                                                                                                                       +
                                   "Shared Hit Blocks": 31,                                                                                                                                      +
                                   "Shared Read Blocks": 505234,                                                                                                                                 +
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
                                       "Startup Cost": 54492.86,                                                                                                                                 +
                                       "Total Cost": 54492.86,                                                                                                                                   +
                                       "Plan Rows": 1,                                                                                                                                           +
                                       "Plan Width": 81,                                                                                                                                         +
                                       "Actual Startup Time": 27765.149,                                                                                                                         +
                                       "Actual Total Time": 27765.340,                                                                                                                           +
                                       "Actual Rows": 934,                                                                                                                                       +
                                       "Actual Loops": 1,                                                                                                                                        +
                                       "Sort Key": ["mk.keyword_id"],                                                                                                                            +
                                       "Sort Method": "quicksort",                                                                                                                               +
                                       "Sort Space Used": 822,                                                                                                                                   +
                                       "Sort Space Type": "Memory",                                                                                                                              +
                                       "Shared Hit Blocks": 17,                                                                                                                                  +
                                       "Shared Read Blocks": 505217,                                                                                                                             +
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
                                           "Startup Cost": 53373.31,                                                                                                                             +
                                           "Total Cost": 54492.86,                                                                                                                               +
                                           "Plan Rows": 1,                                                                                                                                       +
                                           "Plan Width": 81,                                                                                                                                     +
                                           "Actual Startup Time": 27543.635,                                                                                                                     +
                                           "Actual Total Time": 27762.282,                                                                                                                       +
                                           "Actual Rows": 8058,                                                                                                                                  +
                                           "Actual Loops": 1,                                                                                                                                    +
                                           "Inner Unique": false,                                                                                                                                +
                                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                                 +
                                           "Shared Hit Blocks": 17,                                                                                                                              +
                                           "Shared Read Blocks": 505217,                                                                                                                         +
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
                                               "Startup Cost": 44815.31,                                                                                                                         +
                                               "Total Cost": 45924.30,                                                                                                                           +
                                               "Plan Rows": 2184,                                                                                                                                +
                                               "Plan Width": 51,                                                                                                                                 +
                                               "Actual Startup Time": 16924.803,                                                                                                                 +
                                               "Actual Total Time": 17943.631,                                                                                                                   +
                                               "Actual Rows": 6873,                                                                                                                              +
                                               "Actual Loops": 1,                                                                                                                                +
                                               "Inner Unique": false,                                                                                                                            +
                                               "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                                         +
                                               "Shared Hit Blocks": 10,                                                                                                                          +
                                               "Shared Read Blocks": 321549,                                                                                                                     +
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
                                                   "Startup Cost": 40084.01,                                                                                                                     +
                                                   "Total Cost": 40979.42,                                                                                                                       +
                                                   "Plan Rows": 1071,                                                                                                                            +
                                                   "Plan Width": 37,                                                                                                                             +
                                                   "Actual Startup Time": 16078.920,                                                                                                             +
                                                   "Actual Total Time": 16920.329,                                                                                                               +
                                                   "Actual Rows": 2335,                                                                                                                          +
                                                   "Actual Loops": 1,                                                                                                                            +
                                                   "Inner Unique": false,                                                                                                                        +
                                                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                                         +
                                                   "Shared Hit Blocks": 8,                                                                                                                       +
                                                   "Shared Read Blocks": 313098,                                                                                                                 +
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
                                                       "Startup Cost": 18700.80,                                                                                                                 +
                                                       "Total Cost": 19403.41,                                                                                                                   +
                                                       "Plan Rows": 923,                                                                                                                         +
                                                       "Plan Width": 29,                                                                                                                         +
                                                       "Actual Startup Time": 3892.759,                                                                                                          +
                                                       "Actual Total Time": 4522.778,                                                                                                            +
                                                       "Actual Rows": 1545,                                                                                                                      +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Inner Unique": true,                                                                                                                     +
                                                       "Merge Cond": "(mk.movie_id = t.id)",                                                                                                     +
                                                       "Shared Hit Blocks": 4,                                                                                                                   +
                                                       "Shared Read Blocks": 60448,                                                                                                              +
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
                                                           "Startup Cost": 16610.92,                                                                                                             +
                                                           "Total Cost": 16962.16,                                                                                                               +
                                                           "Plan Rows": 4523930,                                                                                                                 +
                                                           "Plan Width": 8,                                                                                                                      +
                                                           "Actual Startup Time": 2159.311,                                                                                                      +
                                                           "Actual Total Time": 2379.294,                                                                                                        +
                                                           "Actual Rows": 4516360,                                                                                                               +
                                                           "Actual Loops": 1,                                                                                                                    +
                                                           "Sort Key": ["mk.movie_id"],                                                                                                          +
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
                                                               "Actual Startup Time": 0.020,                                                                                                     +
                                                               "Actual Total Time": 786.905,                                                                                                     +
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
                                                         },                                                                                                                                      +
                                                         {                                                                                                                                       +
                                                           "Node Type": "Sort",                                                                                                                  +
                                                           "Parent Relationship": "Inner",                                                                                                       +
                                                           "Parallel Aware": false,                                                                                                              +
                                                           "Startup Cost": 2089.87,                                                                                                              +
                                                           "Total Cost": 2089.91,                                                                                                                +
                                                           "Plan Rows": 516,                                                                                                                     +
                                                           "Plan Width": 21,                                                                                                                     +
                                                           "Actual Startup Time": 1711.610,                                                                                                      +
                                                           "Actual Total Time": 1711.688,                                                                                                        +
                                                           "Actual Rows": 533,                                                                                                                   +
                                                           "Actual Loops": 1,                                                                                                                    +
                                                           "Sort Key": ["t.id"],                                                                                                                 +
                                                           "Sort Method": "quicksort",                                                                                                           +
                                                           "Sort Space Used": 70,                                                                                                                +
                                                           "Sort Space Type": "Memory",                                                                                                          +
                                                           "Shared Hit Blocks": 1,                                                                                                               +
                                                           "Shared Read Blocks": 35997,                                                                                                          +
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
                                                               "Relation Name": "title",                                                                                                         +
                                                               "Alias": "t",                                                                                                                     +
                                                               "Startup Cost": 0.00,                                                                                                             +
                                                               "Total Cost": 2089.15,                                                                                                            +
                                                               "Plan Rows": 516,                                                                                                                 +
                                                               "Plan Width": 21,                                                                                                                 +
                                                               "Actual Startup Time": 10.359,                                                                                                    +
                                                               "Actual Total Time": 1710.692,                                                                                                    +
                                                               "Actual Rows": 533,                                                                                                               +
                                                               "Actual Loops": 1,                                                                                                                +
                                                               "Filter": "((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))",+
                                                               "Rows Removed by Filter": 2527779,                                                                                                +
                                                               "Shared Hit Blocks": 1,                                                                                                           +
                                                               "Shared Read Blocks": 35997,                                                                                                      +
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
                                                     },                                                                                                                                          +
                                                     {                                                                                                                                           +
                                                       "Node Type": "Sort",                                                                                                                      +
                                                       "Parent Relationship": "Inner",                                                                                                           +
                                                       "Parallel Aware": false,                                                                                                                  +
                                                       "Startup Cost": 21383.21,                                                                                                                 +
                                                       "Total Cost": 21479.94,                                                                                                                   +
                                                       "Plan Rows": 1245851,                                                                                                                     +
                                                       "Plan Width": 8,                                                                                                                          +
                                                       "Actual Startup Time": 12163.879,                                                                                                         +
                                                       "Actual Total Time": 12267.169,                                                                                                           +
                                                       "Actual Rows": 1217056,                                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Sort Key": ["ci.movie_id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                               +
                                                       "Sort Space Used": 107499,                                                                                                                +
                                                       "Sort Space Type": "Memory",                                                                                                              +
                                                       "Shared Hit Blocks": 4,                                                                                                                   +
                                                       "Shared Read Blocks": 252650,                                                                                                             +
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
                                                           "Relation Name": "cast_info",                                                                                                         +
                                                           "Alias": "ci",                                                                                                                        +
                                                           "Startup Cost": 0.00,                                                                                                                 +
                                                           "Total Cost": 17466.00,                                                                                                               +
                                                           "Plan Rows": 1245851,                                                                                                                 +
                                                           "Plan Width": 8,                                                                                                                      +
                                                           "Actual Startup Time": 480.597,                                                                                                       +
                                                           "Actual Total Time": 11681.572,                                                                                                       +
                                                           "Actual Rows": 1244716,                                                                                                               +
                                                           "Actual Loops": 1,                                                                                                                    +
                                                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",                        +
                                                           "Rows Removed by Filter": 34999628,                                                                                                   +
                                                           "Shared Hit Blocks": 4,                                                                                                               +
                                                           "Shared Read Blocks": 252650,                                                                                                         +
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
                                                 },                                                                                                                                              +
                                                 {                                                                                                                                               +
                                                   "Node Type": "Sort",                                                                                                                          +
                                                   "Parent Relationship": "Inner",                                                                                                               +
                                                   "Parallel Aware": false,                                                                                                                      +
                                                   "Startup Cost": 4731.30,                                                                                                                      +
                                                   "Total Cost": 4838.45,                                                                                                                        +
                                                   "Plan Rows": 1380035,                                                                                                                         +
                                                   "Plan Width": 14,                                                                                                                             +
                                                   "Actual Startup Time": 833.747,                                                                                                               +
                                                   "Actual Total Time": 891.969,                                                                                                                 +
                                                   "Actual Rows": 1289268,                                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                                            +
                                                   "Sort Key": ["mi_idx.movie_id"],                                                                                                              +
                                                   "Sort Method": "quicksort",                                                                                                                   +
                                                   "Sort Space Used": 128214,                                                                                                                    +
                                                   "Sort Space Type": "Memory",                                                                                                                  +
                                                   "Shared Hit Blocks": 2,                                                                                                                       +
                                                   "Shared Read Blocks": 8451,                                                                                                                   +
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
                                                       "Node Type": "Seq Scan",                                                                                                                  +
                                                       "Parent Relationship": "Outer",                                                                                                           +
                                                       "Parallel Aware": false,                                                                                                                  +
                                                       "Relation Name": "movie_info_idx",                                                                                                        +
                                                       "Alias": "mi_idx",                                                                                                                        +
                                                       "Startup Cost": 0.00,                                                                                                                     +
                                                       "Total Cost": 360.56,                                                                                                                     +
                                                       "Plan Rows": 1380035,                                                                                                                     +
                                                       "Plan Width": 14,                                                                                                                         +
                                                       "Actual Startup Time": 0.014,                                                                                                             +
                                                       "Actual Total Time": 313.795,                                                                                                             +
                                                       "Actual Rows": 1380035,                                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Shared Hit Blocks": 2,                                                                                                                   +
                                                       "Shared Read Blocks": 8451,                                                                                                               +
                                                       "Shared Dirtied Blocks": 0,                                                                                                               +
                                                       "Shared Written Blocks": 0,                                                                                                               +
                                                       "Local Hit Blocks": 0,                                                                                                                    +
                                                       "Local Read Blocks": 0,                                                                                                                   +
                                                       "Local Dirtied Blocks": 0,                                                                                                                +
                                                       "Local Written Blocks": 0,                                                                                                                +
                                                       "Temp Read Blocks": 0,                                                                                                                    +
                                                       "Temp Written Blocks": 0                                                                                                                  +
                                                     }                                                                                                                                           +
                                                   ]                                                                                                                                             +
                                                 }                                                                                                                                               +
                                               ]                                                                                                                                                 +
                                             },                                                                                                                                                  +
                                             {                                                                                                                                                   +
                                               "Node Type": "Materialize",                                                                                                                       +
                                               "Parent Relationship": "Inner",                                                                                                                   +
                                               "Parallel Aware": false,                                                                                                                          +
                                               "Startup Cost": 8558.00,                                                                                                                          +
                                               "Total Cost": 8569.40,                                                                                                                            +
                                               "Plan Rows": 1,                                                                                                                                   +
                                               "Plan Width": 54,                                                                                                                                 +
                                               "Actual Startup Time": 9806.842,                                                                                                                  +
                                               "Actual Total Time": 9816.228,                                                                                                                    +
                                               "Actual Rows": 8141,                                                                                                                              +
                                               "Actual Loops": 1,                                                                                                                                +
                                               "Shared Hit Blocks": 7,                                                                                                                           +
                                               "Shared Read Blocks": 183668,                                                                                                                     +
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
                                                   "Startup Cost": 8558.00,                                                                                                                      +
                                                   "Total Cost": 8569.40,                                                                                                                        +
                                                   "Plan Rows": 1,                                                                                                                               +
                                                   "Plan Width": 54,                                                                                                                             +
                                                   "Actual Startup Time": 9806.836,                                                                                                              +
                                                   "Actual Total Time": 9815.806,                                                                                                                +
                                                   "Actual Rows": 91,                                                                                                                            +
                                                   "Actual Loops": 1,                                                                                                                            +
                                                   "Inner Unique": false,                                                                                                                        +
                                                   "Merge Cond": "(mc.movie_id = mi.movie_id)",                                                                                                  +
                                                   "Shared Hit Blocks": 7,                                                                                                                       +
                                                   "Shared Read Blocks": 183668,                                                                                                                 +
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
                                                       "Startup Cost": 1118.05,                                                                                                                  +
                                                       "Total Cost": 1118.05,                                                                                                                    +
                                                       "Plan Rows": 1,                                                                                                                           +
                                                       "Plan Width": 4,                                                                                                                          +
                                                       "Actual Startup Time": 1089.802,                                                                                                          +
                                                       "Actual Total Time": 1089.820,                                                                                                            +
                                                       "Actual Rows": 123,                                                                                                                       +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Sort Key": ["mc.movie_id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                               +
                                                       "Sort Space Used": 31,                                                                                                                    +
                                                       "Sort Space Type": "Memory",                                                                                                              +
                                                       "Shared Hit Blocks": 5,                                                                                                                   +
                                                       "Shared Read Blocks": 21778,                                                                                                              +
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
                                                           "Startup Cost": 1116.81,                                                                                                              +
                                                           "Total Cost": 1118.05,                                                                                                                +
                                                           "Plan Rows": 1,                                                                                                                       +
                                                           "Plan Width": 4,                                                                                                                      +
                                                           "Actual Startup Time": 1089.216,                                                                                                      +
                                                           "Actual Total Time": 1089.762,                                                                                                        +
                                                           "Actual Rows": 135,                                                                                                                   +
                                                           "Actual Loops": 1,                                                                                                                    +
                                                           "Inner Unique": false,                                                                                                                +
                                                           "Merge Cond": "(cn.id = mc.company_id)",                                                                                              +
                                                           "Shared Hit Blocks": 5,                                                                                                               +
                                                           "Shared Read Blocks": 21778,                                                                                                          +
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
                                                               "Node Type": "Sort",                                                                                                              +
                                                               "Parent Relationship": "Outer",                                                                                                   +
                                                               "Parallel Aware": false,                                                                                                          +
                                                               "Startup Cost": 128.43,                                                                                                           +
                                                               "Total Cost": 128.43,                                                                                                             +
                                                               "Plan Rows": 30,                                                                                                                  +
                                                               "Plan Width": 4,                                                                                                                  +
                                                               "Actual Startup Time": 197.001,                                                                                                   +
                                                               "Actual Total Time": 197.002,                                                                                                     +
                                                               "Actual Rows": 10,                                                                                                                +
                                                               "Actual Loops": 1,                                                                                                                +
                                                               "Sort Key": ["cn.id"],                                                                                                            +
                                                               "Sort Method": "quicksort",                                                                                                       +
                                                               "Sort Space Used": 25,                                                                                                            +
                                                               "Sort Space Type": "Memory",                                                                                                      +
                                                               "Shared Hit Blocks": 2,                                                                                                           +
                                                               "Shared Read Blocks": 2992,                                                                                                       +
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
                                                                   "Relation Name": "company_name",                                                                                              +
                                                                   "Alias": "cn",                                                                                                                +
                                                                   "Startup Cost": 0.00,                                                                                                         +
                                                                   "Total Cost": 128.41,                                                                                                         +
                                                                   "Plan Rows": 30,                                                                                                              +
                                                                   "Plan Width": 4,                                                                                                              +
                                                                   "Actual Startup Time": 64.470,                                                                                                +
                                                                   "Actual Total Time": 196.972,                                                                                                 +
                                                                   "Actual Rows": 10,                                                                                                            +
                                                                   "Actual Loops": 1,                                                                                                            +
                                                                   "Filter": "(name ~~ 'Lionsgate%'::text)",                                                                                     +
                                                                   "Rows Removed by Filter": 234987,                                                                                             +
                                                                   "Shared Hit Blocks": 2,                                                                                                       +
                                                                   "Shared Read Blocks": 2992,                                                                                                   +
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
                                                             },                                                                                                                                  +
                                                             {                                                                                                                                   +
                                                               "Node Type": "Sort",                                                                                                              +
                                                               "Parent Relationship": "Inner",                                                                                                   +
                                                               "Parallel Aware": false,                                                                                                          +
                                                               "Startup Cost": 988.38,                                                                                                           +
                                                               "Total Cost": 989.00,                                                                                                             +
                                                               "Plan Rows": 7977,                                                                                                                +
                                                               "Plan Width": 8,                                                                                                                  +
                                                               "Actual Startup Time": 891.117,                                                                                                   +
                                                               "Actual Total Time": 891.833,                                                                                                     +
                                                               "Actual Rows": 7963,                                                                                                              +
                                                               "Actual Loops": 1,                                                                                                                +
                                                               "Sort Key": ["mc.company_id"],                                                                                                    +
                                                               "Sort Method": "quicksort",                                                                                                       +
                                                               "Sort Space Used": 566,                                                                                                           +
                                                               "Sort Space Type": "Memory",                                                                                                      +
                                                               "Shared Hit Blocks": 3,                                                                                                           +
                                                               "Shared Read Blocks": 18786,                                                                                                      +
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
                                                                   "Relation Name": "movie_companies",                                                                                           +
                                                                   "Alias": "mc",                                                                                                                +
                                                                   "Startup Cost": 0.00,                                                                                                         +
                                                                   "Total Cost": 972.33,                                                                                                         +
                                                                   "Plan Rows": 7977,                                                                                                            +
                                                                   "Plan Width": 8,                                                                                                              +
                                                                   "Actual Startup Time": 4.629,                                                                                                 +
                                                                   "Actual Total Time": 887.994,                                                                                                 +
                                                                   "Actual Rows": 7963,                                                                                                          +
                                                                   "Actual Loops": 1,                                                                                                            +
                                                                   "Filter": "(note ~~ '%(Blu-ray)%'::text)",                                                                                    +
                                                                   "Rows Removed by Filter": 2601166,                                                                                            +
                                                                   "Shared Hit Blocks": 3,                                                                                                       +
                                                                   "Shared Read Blocks": 18786,                                                                                                  +
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
                                                       "Startup Cost": 7439.95,                                                                                                                  +
                                                       "Total Cost": 7445.65,                                                                                                                    +
                                                       "Plan Rows": 73417,                                                                                                                       +
                                                       "Plan Width": 50,                                                                                                                         +
                                                       "Actual Startup Time": 8716.055,                                                                                                          +
                                                       "Actual Total Time": 8719.115,                                                                                                            +
                                                       "Actual Rows": 66338,                                                                                                                     +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Sort Key": ["mi.movie_id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                               +
                                                       "Sort Space Used": 7817,                                                                                                                  +
                                                       "Sort Space Type": "Memory",                                                                                                              +
                                                       "Shared Hit Blocks": 2,                                                                                                                   +
                                                       "Shared Read Blocks": 161890,                                                                                                             +
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
                                                           "Relation Name": "movie_info",                                                                                                        +
                                                           "Alias": "mi",                                                                                                                        +
                                                           "Startup Cost": 0.00,                                                                                                                 +
                                                           "Total Cost": 7255.68,                                                                                                                +
                                                           "Plan Rows": 73417,                                                                                                                   +
                                                           "Plan Width": 50,                                                                                                                     +
                                                           "Actual Startup Time": 4789.645,                                                                                                      +
                                                           "Actual Total Time": 8672.688,                                                                                                        +
                                                           "Actual Rows": 73047,                                                                                                                 +
                                                           "Actual Loops": 1,                                                                                                                    +
                                                           "Filter": "(info = ANY ('{Horror,Thriller}'::text[]))",                                                                               +
                                                           "Rows Removed by Filter": 14762673,                                                                                                   +
                                                           "Shared Hit Blocks": 2,                                                                                                               +
                                                           "Shared Read Blocks": 161890,                                                                                                         +
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
                                             }                                                                                                                                                   +
                                           ]                                                                                                                                                     +
                                         }                                                                                                                                                       +
                                       ]                                                                                                                                                         +
                                     },                                                                                                                                                          +
                                     {                                                                                                                                                           +
                                       "Node Type": "Sort",                                                                                                                                      +
                                       "Parent Relationship": "Inner",                                                                                                                           +
                                       "Parallel Aware": false,                                                                                                                                  +
                                       "Startup Cost": 42.93,                                                                                                                                    +
                                       "Total Cost": 42.93,                                                                                                                                      +
                                       "Plan Rows": 7,                                                                                                                                           +
                                       "Plan Width": 4,                                                                                                                                          +
                                       "Actual Startup Time": 71.091,                                                                                                                            +
                                       "Actual Total Time": 71.093,                                                                                                                              +
                                       "Actual Rows": 7,                                                                                                                                         +
                                       "Actual Loops": 1,                                                                                                                                        +
                                       "Sort Key": ["k.id"],                                                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                                               +
                                       "Sort Space Used": 25,                                                                                                                                    +
                                       "Sort Space Type": "Memory",                                                                                                                              +
                                       "Shared Hit Blocks": 14,                                                                                                                                  +
                                       "Shared Read Blocks": 17,                                                                                                                                 +
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
                                           "Node Type": "Index Scan",                                                                                                                            +
                                           "Parent Relationship": "Outer",                                                                                                                       +
                                           "Parallel Aware": false,                                                                                                                              +
                                           "Scan Direction": "Forward",                                                                                                                          +
                                           "Index Name": "keyword_idx_keyword",                                                                                                                  +
                                           "Relation Name": "keyword",                                                                                                                           +
                                           "Alias": "k",                                                                                                                                         +
                                           "Startup Cost": 0.01,                                                                                                                                 +
                                           "Total Cost": 42.93,                                                                                                                                  +
                                           "Plan Rows": 7,                                                                                                                                       +
                                           "Plan Width": 4,                                                                                                                                      +
                                           "Actual Startup Time": 22.105,                                                                                                                        +
                                           "Actual Total Time": 71.058,                                                                                                                          +
                                           "Actual Rows": 7,                                                                                                                                     +
                                           "Actual Loops": 1,                                                                                                                                    +
                                           "Index Cond": "(keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))",                                                +
                                           "Rows Removed by Index Recheck": 0,                                                                                                                   +
                                           "Shared Hit Blocks": 14,                                                                                                                              +
                                           "Shared Read Blocks": 17,                                                                                                                             +
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
                               "Actual Startup Time": 0.024,                                                                                                                                     +
                               "Actual Total Time": 0.024,                                                                                                                                       +
                               "Actual Rows": 1,                                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                                +
                               "Sort Key": ["it2.id"],                                                                                                                                           +
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
                                   "Alias": "it2",                                                                                                                                               +
                                   "Startup Cost": 0.00,                                                                                                                                         +
                                   "Total Cost": 0.05,                                                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                                               +
                                   "Plan Width": 4,                                                                                                                                              +
                                   "Actual Startup Time": 0.019,                                                                                                                                 +
                                   "Actual Total Time": 0.021,                                                                                                                                   +
                                   "Actual Rows": 1,                                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                                            +
                                   "Filter": "((info)::text = 'votes'::text)",                                                                                                                   +
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
                     {                                                                                                                                                                           +
                       "Node Type": "Sort",                                                                                                                                                      +
                       "Parent Relationship": "Inner",                                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                                  +
                       "Startup Cost": 0.05,                                                                                                                                                     +
                       "Total Cost": 0.05,                                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                                           +
                       "Plan Width": 4,                                                                                                                                                          +
                       "Actual Startup Time": 0.015,                                                                                                                                             +
                       "Actual Total Time": 0.015,                                                                                                                                               +
                       "Actual Rows": 1,                                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                                        +
                       "Sort Key": ["it1.id"],                                                                                                                                                   +
                       "Sort Method": "quicksort",                                                                                                                                               +
                       "Sort Space Used": 25,                                                                                                                                                    +
                       "Sort Space Type": "Memory",                                                                                                                                              +
                       "Shared Hit Blocks": 1,                                                                                                                                                   +
                       "Shared Read Blocks": 0,                                                                                                                                                  +
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
                           "Node Type": "Seq Scan",                                                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                                                       +
                           "Parallel Aware": false,                                                                                                                                              +
                           "Relation Name": "info_type",                                                                                                                                         +
                           "Alias": "it1",                                                                                                                                                       +
                           "Startup Cost": 0.00,                                                                                                                                                 +
                           "Total Cost": 0.05,                                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                                       +
                           "Plan Width": 4,                                                                                                                                                      +
                           "Actual Startup Time": 0.003,                                                                                                                                         +
                           "Actual Total Time": 0.013,                                                                                                                                           +
                           "Actual Rows": 1,                                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                                    +
                           "Filter": "((info)::text = 'genres'::text)",                                                                                                                          +
                           "Rows Removed by Filter": 112,                                                                                                                                        +
                           "Shared Hit Blocks": 1,                                                                                                                                               +
                           "Shared Read Blocks": 0,                                                                                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                                                                                           +
                           "Shared Written Blocks": 0,                                                                                                                                           +
                           "Local Hit Blocks": 0,                                                                                                                                                +
                           "Local Read Blocks": 0,                                                                                                                                               +
                           "Local Dirtied Blocks": 0,                                                                                                                                            +
                           "Local Written Blocks": 0,                                                                                                                                            +
                           "Temp Read Blocks": 0,                                                                                                                                                +
                           "Temp Written Blocks": 0                                                                                                                                              +
                         }                                                                                                                                                                       +
                       ]                                                                                                                                                                         +
                     }                                                                                                                                                                           +
                   ]                                                                                                                                                                             +
                 }                                                                                                                                                                               +
               ]                                                                                                                                                                                 +
             },                                                                                                                                                                                  +
             {                                                                                                                                                                                   +
               "Node Type": "Sort",                                                                                                                                                              +
               "Parent Relationship": "Inner",                                                                                                                                                   +
               "Parallel Aware": false,                                                                                                                                                          +
               "Startup Cost": 7955.33,                                                                                                                                                          +
               "Total Cost": 8090.37,                                                                                                                                                            +
               "Plan Rows": 1739438,                                                                                                                                                             +
               "Plan Width": 19,                                                                                                                                                                 +
               "Actual Startup Time": 2982.474,                                                                                                                                                  +
               "Actual Total Time": 3158.439,                                                                                                                                                    +
               "Actual Rows": 1669246,                                                                                                                                                           +
               "Actual Loops": 1,                                                                                                                                                                +
               "Sort Key": ["n.id"],                                                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                                                       +
               "Sort Space Used": 176730,                                                                                                                                                        +
               "Sort Space Type": "Memory",                                                                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                                                                           +
               "Shared Read Blocks": 55612,                                                                                                                                                      +
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
                   "Node Type": "Seq Scan",                                                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                                      +
                   "Relation Name": "name",                                                                                                                                                      +
                   "Alias": "n",                                                                                                                                                                 +
                   "Startup Cost": 0.00,                                                                                                                                                         +
                   "Total Cost": 2356.12,                                                                                                                                                        +
                   "Plan Rows": 1739438,                                                                                                                                                         +
                   "Plan Width": 19,                                                                                                                                                             +
                   "Actual Startup Time": 25.475,                                                                                                                                                +
                   "Actual Total Time": 2209.576,                                                                                                                                                +
                   "Actual Rows": 1739579,                                                                                                                                                       +
                   "Actual Loops": 1,                                                                                                                                                            +
                   "Filter": "((gender)::text = 'm'::text)",                                                                                                                                     +
                   "Rows Removed by Filter": 2427912,                                                                                                                                            +
                   "Shared Hit Blocks": 1,                                                                                                                                                       +
                   "Shared Read Blocks": 55612,                                                                                                                                                  +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                   +
                   "Shared Written Blocks": 0,                                                                                                                                                   +
                   "Local Hit Blocks": 0,                                                                                                                                                        +
                   "Local Read Blocks": 0,                                                                                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                                                                                    +
                   "Local Written Blocks": 0,                                                                                                                                                    +
                   "Temp Read Blocks": 0,                                                                                                                                                        +
                   "Temp Written Blocks": 0                                                                                                                                                      +
                 }                                                                                                                                                                               +
               ]                                                                                                                                                                                 +
             }                                                                                                                                                                                   +
           ]                                                                                                                                                                                     +
         }                                                                                                                                                                                       +
       ]                                                                                                                                                                                         +
     },                                                                                                                                                                                          +
     "Planning Time": 15410.725,                                                                                                                                                                 +
     "Triggers": [                                                                                                                                                                               +
     ],                                                                                                                                                                                          +
     "Execution Time": 31280.166                                                                                                                                                                 +
   }                                                                                                                                                                                             +
 ]
(1 row)

