                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                               +
   {                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                  +
       "Startup Cost": 43249.03,                                                                                                                                                 +
       "Total Cost": 43249.03,                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                           +
       "Plan Width": 96,                                                                                                                                                         +
       "Actual Startup Time": 16190.922,                                                                                                                                         +
       "Actual Total Time": 16190.922,                                                                                                                                           +
       "Actual Rows": 1,                                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                                        +
       "Shared Hit Blocks": 29,                                                                                                                                                  +
       "Shared Read Blocks": 252577,                                                                                                                                             +
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
           "Startup Cost": 43229.43,                                                                                                                                             +
           "Total Cost": 43249.03,                                                                                                                                               +
           "Plan Rows": 1,                                                                                                                                                       +
           "Plan Width": 42,                                                                                                                                                     +
           "Actual Startup Time": 16138.983,                                                                                                                                     +
           "Actual Total Time": 16166.790,                                                                                                                                       +
           "Actual Rows": 21489,                                                                                                                                                 +
           "Actual Loops": 1,                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                 +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                              +
           "Shared Hit Blocks": 29,                                                                                                                                              +
           "Shared Read Blocks": 252577,                                                                                                                                         +
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
               "Startup Cost": 42768.87,                                                                                                                                         +
               "Total Cost": 42768.87,                                                                                                                                           +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 27,                                                                                                                                                 +
               "Actual Startup Time": 15907.730,                                                                                                                                 +
               "Actual Total Time": 15912.051,                                                                                                                                   +
               "Actual Rows": 23216,                                                                                                                                             +
               "Actual Loops": 1,                                                                                                                                                +
               "Sort Key": ["mc.company_id"],                                                                                                                                    +
               "Sort Method": "quicksort",                                                                                                                                       +
               "Sort Space Used": 2512,                                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                                      +
               "Shared Hit Blocks": 27,                                                                                                                                          +
               "Shared Read Blocks": 249585,                                                                                                                                     +
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
                   "Startup Cost": 42768.87,                                                                                                                                     +
                   "Total Cost": 42768.87,                                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                                               +
                   "Plan Width": 27,                                                                                                                                             +
                   "Actual Startup Time": 15885.335,                                                                                                                             +
                   "Actual Total Time": 15891.552,                                                                                                                               +
                   "Actual Rows": 23216,                                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Inner Unique": true,                                                                                                                                         +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                                 +
                   "Shared Hit Blocks": 23,                                                                                                                                      +
                   "Shared Read Blocks": 249585,                                                                                                                                 +
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
                       "Startup Cost": 42768.84,                                                                                                                                 +
                       "Total Cost": 42768.84,                                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                                           +
                       "Plan Width": 31,                                                                                                                                         +
                       "Actual Startup Time": 15885.322,                                                                                                                         +
                       "Actual Total Time": 15886.379,                                                                                                                           +
                       "Actual Rows": 23216,                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Sort Key": ["mc.company_type_id"],                                                                                                                       +
                       "Sort Method": "quicksort",                                                                                                                               +
                       "Sort Space Used": 2624,                                                                                                                                  +
                       "Sort Space Type": "Memory",                                                                                                                              +
                       "Shared Hit Blocks": 22,                                                                                                                                  +
                       "Shared Read Blocks": 249585,                                                                                                                             +
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
                           "Startup Cost": 42768.84,                                                                                                                             +
                           "Total Cost": 42768.84,                                                                                                                               +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 31,                                                                                                                                     +
                           "Actual Startup Time": 15873.507,                                                                                                                     +
                           "Actual Total Time": 15880.160,                                                                                                                       +
                           "Actual Rows": 23216,                                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Inner Unique": true,                                                                                                                                 +
                           "Merge Cond": "(t.kind_id = kt.id)",                                                                                                                  +
                           "Shared Hit Blocks": 22,                                                                                                                              +
                           "Shared Read Blocks": 249585,                                                                                                                         +
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
                               "Startup Cost": 42768.80,                                                                                                                         +
                               "Total Cost": 42768.80,                                                                                                                           +
                               "Plan Rows": 1,                                                                                                                                   +
                               "Plan Width": 35,                                                                                                                                 +
                               "Actual Startup Time": 15873.487,                                                                                                                 +
                               "Actual Total Time": 15874.711,                                                                                                                   +
                               "Actual Rows": 25309,                                                                                                                             +
                               "Actual Loops": 1,                                                                                                                                +
                               "Sort Key": ["t.kind_id"],                                                                                                                        +
                               "Sort Method": "quicksort",                                                                                                                       +
                               "Sort Space Used": 2826,                                                                                                                          +
                               "Sort Space Type": "Memory",                                                                                                                      +
                               "Shared Hit Blocks": 21,                                                                                                                          +
                               "Shared Read Blocks": 249585,                                                                                                                     +
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
                                   "Startup Cost": 42768.80,                                                                                                                     +
                                   "Total Cost": 42768.80,                                                                                                                       +
                                   "Plan Rows": 1,                                                                                                                               +
                                   "Plan Width": 35,                                                                                                                             +
                                   "Actual Startup Time": 15858.995,                                                                                                             +
                                   "Actual Total Time": 15866.447,                                                                                                               +
                                   "Actual Rows": 25309,                                                                                                                         +
                                   "Actual Loops": 1,                                                                                                                            +
                                   "Inner Unique": true,                                                                                                                         +
                                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                   +
                                   "Shared Hit Blocks": 21,                                                                                                                      +
                                   "Shared Read Blocks": 249585,                                                                                                                 +
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
                                       "Startup Cost": 42768.75,                                                                                                                 +
                                       "Total Cost": 42768.75,                                                                                                                   +
                                       "Plan Rows": 1,                                                                                                                           +
                                       "Plan Width": 39,                                                                                                                         +
                                       "Actual Startup Time": 15858.368,                                                                                                         +
                                       "Actual Total Time": 15859.803,                                                                                                           +
                                       "Actual Rows": 28076,                                                                                                                     +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Sort Key": ["mi.info_type_id"],                                                                                                          +
                                       "Sort Method": "quicksort",                                                                                                               +
                                       "Sort Space Used": 3151,                                                                                                                  +
                                       "Sort Space Type": "Memory",                                                                                                              +
                                       "Shared Hit Blocks": 20,                                                                                                                  +
                                       "Shared Read Blocks": 249585,                                                                                                             +
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
                                           "Startup Cost": 42768.75,                                                                                                             +
                                           "Total Cost": 42768.75,                                                                                                               +
                                           "Plan Rows": 1,                                                                                                                       +
                                           "Plan Width": 39,                                                                                                                     +
                                           "Actual Startup Time": 15840.584,                                                                                                     +
                                           "Actual Total Time": 15850.132,                                                                                                       +
                                           "Actual Rows": 28780,                                                                                                                 +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Inner Unique": true,                                                                                                                 +
                                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                       +
                                           "Shared Hit Blocks": 20,                                                                                                              +
                                           "Shared Read Blocks": 249585,                                                                                                         +
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
                                               "Startup Cost": 42768.70,                                                                                                         +
                                               "Total Cost": 42768.70,                                                                                                           +
                                               "Plan Rows": 26,                                                                                                                  +
                                               "Plan Width": 43,                                                                                                                 +
                                               "Actual Startup Time": 15829.063,                                                                                                 +
                                               "Actual Total Time": 15835.001,                                                                                                   +
                                               "Actual Rows": 85817,                                                                                                             +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Sort Key": ["mi_idx.info_type_id"],                                                                                              +
                                               "Sort Method": "quicksort",                                                                                                       +
                                               "Sort Space Used": 11138,                                                                                                         +
                                               "Sort Space Type": "Memory",                                                                                                      +
                                               "Shared Hit Blocks": 19,                                                                                                          +
                                               "Shared Read Blocks": 249585,                                                                                                     +
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
                                                   "Startup Cost": 42269.59,                                                                                                     +
                                                   "Total Cost": 42768.68,                                                                                                       +
                                                   "Plan Rows": 26,                                                                                                              +
                                                   "Plan Width": 43,                                                                                                             +
                                                   "Actual Startup Time": 15079.557,                                                                                             +
                                                   "Actual Total Time": 15800.473,                                                                                               +
                                                   "Actual Rows": 87092,                                                                                                         +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Inner Unique": false,                                                                                                        +
                                                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                     +
                                                   "Shared Hit Blocks": 19,                                                                                                      +
                                                   "Shared Read Blocks": 249585,                                                                                                 +
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
                                                       "Startup Cost": 37554.76,                                                                                                 +
                                                       "Total Cost": 37845.22,                                                                                                   +
                                                       "Plan Rows": 30,                                                                                                          +
                                                       "Plan Width": 49,                                                                                                         +
                                                       "Actual Startup Time": 14193.544,                                                                                         +
                                                       "Actual Total Time": 14681.573,                                                                                           +
                                                       "Actual Rows": 29549,                                                                                                     +
                                                       "Actual Loops": 1,                                                                                                        +
                                                       "Inner Unique": false,                                                                                                    +
                                                       "Merge Cond": "(t.id = mi.movie_id)",                                                                                     +
                                                       "Shared Hit Blocks": 17,                                                                                                  +
                                                       "Shared Read Blocks": 241134,                                                                                             +
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
                                                           "Startup Cost": 23532.13,                                                                                             +
                                                           "Total Cost": 23711.54,                                                                                               +
                                                           "Plan Rows": 16,                                                                                                      +
                                                           "Plan Width": 41,                                                                                                     +
                                                           "Actual Startup Time": 5649.148,                                                                                      +
                                                           "Actual Total Time": 6019.670,                                                                                        +
                                                           "Actual Rows": 28679,                                                                                                 +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Inner Unique": true,                                                                                                 +
                                                           "Merge Cond": "(mk.movie_id = t.id)",                                                                                 +
                                                           "Shared Hit Blocks": 15,                                                                                              +
                                                           "Shared Read Blocks": 79244,                                                                                          +
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
                                                               "Startup Cost": 18894.01,                                                                                         +
                                                               "Total Cost": 18916.27,                                                                                           +
                                                               "Plan Rows": 41,                                                                                                  +
                                                               "Plan Width": 16,                                                                                                 +
                                                               "Actual Startup Time": 3607.814,                                                                                  +
                                                               "Actual Total Time": 3682.529,                                                                                    +
                                                               "Actual Rows": 86022,                                                                                             +
                                                               "Actual Loops": 1,                                                                                                +
                                                               "Inner Unique": false,                                                                                            +
                                                               "Merge Cond": "(mk.movie_id = mc.movie_id)",                                                                      +
                                                               "Shared Hit Blocks": 14,                                                                                          +
                                                               "Shared Read Blocks": 43247,                                                                                      +
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
                                                                   "Startup Cost": 17338.09,                                                                                     +
                                                                   "Total Cost": 17338.10,                                                                                       +
                                                                   "Plan Rows": 135,                                                                                             +
                                                                   "Plan Width": 4,                                                                                              +
                                                                   "Actual Startup Time": 2553.653,                                                                              +
                                                                   "Actual Total Time": 2558.919,                                                                                +
                                                                   "Actual Rows": 37091,                                                                                         +
                                                                   "Actual Loops": 1,                                                                                            +
                                                                   "Sort Key": ["mk.movie_id"],                                                                                  +
                                                                   "Sort Method": "quicksort",                                                                                   +
                                                                   "Sort Space Used": 3275,                                                                                      +
                                                                   "Sort Space Type": "Memory",                                                                                  +
                                                                   "Shared Hit Blocks": 11,                                                                                      +
                                                                   "Shared Read Blocks": 24461,                                                                                  +
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
                                                                       "Startup Cost": 16635.45,                                                                                 +
                                                                       "Total Cost": 17337.94,                                                                                   +
                                                                       "Plan Rows": 135,                                                                                         +
                                                                       "Plan Width": 4,                                                                                          +
                                                                       "Actual Startup Time": 2332.914,                                                                          +
                                                                       "Actual Total Time": 2541.335,                                                                            +
                                                                       "Actual Rows": 37091,                                                                                     +
                                                                       "Actual Loops": 1,                                                                                        +
                                                                       "Inner Unique": false,                                                                                    +
                                                                       "Merge Cond": "(k.id = mk.keyword_id)",                                                                   +
                                                                       "Shared Hit Blocks": 11,                                                                                  +
                                                                       "Shared Read Blocks": 24461,                                                                              +
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
                                                                           "Startup Cost": 24.53,                                                                                +
                                                                           "Total Cost": 24.53,                                                                                  +
                                                                           "Plan Rows": 4,                                                                                       +
                                                                           "Plan Width": 4,                                                                                      +
                                                                           "Actual Startup Time": 55.430,                                                                        +
                                                                           "Actual Total Time": 55.432,                                                                          +
                                                                           "Actual Rows": 3,                                                                                     +
                                                                           "Actual Loops": 1,                                                                                    +
                                                                           "Sort Key": ["k.id"],                                                                                 +
                                                                           "Sort Method": "quicksort",                                                                           +
                                                                           "Sort Space Used": 25,                                                                                +
                                                                           "Sort Space Type": "Memory",                                                                          +
                                                                           "Shared Hit Blocks": 8,                                                                               +
                                                                           "Shared Read Blocks": 10,                                                                             +
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
                                                                               "Node Type": "Index Scan",                                                                        +
                                                                               "Parent Relationship": "Outer",                                                                   +
                                                                               "Parallel Aware": false,                                                                          +
                                                                               "Scan Direction": "Forward",                                                                      +
                                                                               "Index Name": "keyword_idx_keyword",                                                              +
                                                                               "Relation Name": "keyword",                                                                       +
                                                                               "Alias": "k",                                                                                     +
                                                                               "Startup Cost": 0.01,                                                                             +
                                                                               "Total Cost": 24.53,                                                                              +
                                                                               "Plan Rows": 4,                                                                                   +
                                                                               "Plan Width": 4,                                                                                  +
                                                                               "Actual Startup Time": 30.457,                                                                    +
                                                                               "Actual Total Time": 55.402,                                                                      +
                                                                               "Actual Rows": 3,                                                                                 +
                                                                               "Actual Loops": 1,                                                                                +
                                                                               "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",              +
                                                                               "Rows Removed by Index Recheck": 0,                                                               +
                                                                               "Shared Hit Blocks": 8,                                                                           +
                                                                               "Shared Read Blocks": 10,                                                                         +
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
                                                                         },                                                                                                      +
                                                                         {                                                                                                       +
                                                                           "Node Type": "Sort",                                                                                  +
                                                                           "Parent Relationship": "Inner",                                                                       +
                                                                           "Parallel Aware": false,                                                                              +
                                                                           "Startup Cost": 16610.92,                                                                             +
                                                                           "Total Cost": 16962.16,                                                                               +
                                                                           "Plan Rows": 4523930,                                                                                 +
                                                                           "Plan Width": 8,                                                                                      +
                                                                           "Actual Startup Time": 2225.776,                                                                      +
                                                                           "Actual Total Time": 2370.387,                                                                        +
                                                                           "Actual Rows": 943582,                                                                                +
                                                                           "Actual Loops": 1,                                                                                    +
                                                                           "Sort Key": ["mk.keyword_id"],                                                                        +
                                                                           "Sort Method": "quicksort",                                                                           +
                                                                           "Sort Space Used": 408668,                                                                            +
                                                                           "Sort Space Type": "Memory",                                                                          +
                                                                           "Shared Hit Blocks": 3,                                                                               +
                                                                           "Shared Read Blocks": 24451,                                                                          +
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
                                                                               "Relation Name": "movie_keyword",                                                                 +
                                                                               "Alias": "mk",                                                                                    +
                                                                               "Startup Cost": 0.00,                                                                             +
                                                                               "Total Cost": 1079.84,                                                                            +
                                                                               "Plan Rows": 4523930,                                                                             +
                                                                               "Plan Width": 8,                                                                                  +
                                                                               "Actual Startup Time": 0.019,                                                                     +
                                                                               "Actual Total Time": 790.439,                                                                     +
                                                                               "Actual Rows": 4523930,                                                                           +
                                                                               "Actual Loops": 1,                                                                                +
                                                                               "Shared Hit Blocks": 3,                                                                           +
                                                                               "Shared Read Blocks": 24451,                                                                      +
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
                                                                   "Startup Cost": 1555.92,                                                                                      +
                                                                   "Total Cost": 1567.04,                                                                                        +
                                                                   "Plan Rows": 143259,                                                                                          +
                                                                   "Plan Width": 12,                                                                                             +
                                                                   "Actual Startup Time": 1054.143,                                                                              +
                                                                   "Actual Total Time": 1074.193,                                                                                +
                                                                   "Actual Rows": 339806,                                                                                        +
                                                                   "Actual Loops": 1,                                                                                            +
                                                                   "Sort Key": ["mc.movie_id"],                                                                                  +
                                                                   "Sort Method": "quicksort",                                                                                   +
                                                                   "Sort Space Used": 26504,                                                                                     +
                                                                   "Sort Space Type": "Memory",                                                                                  +
                                                                   "Shared Hit Blocks": 3,                                                                                       +
                                                                   "Shared Read Blocks": 18786,                                                                                  +
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
                                                                       "Relation Name": "movie_companies",                                                                       +
                                                                       "Alias": "mc",                                                                                            +
                                                                       "Startup Cost": 0.00,                                                                                     +
                                                                       "Total Cost": 1174.90,                                                                                    +
                                                                       "Plan Rows": 143259,                                                                                      +
                                                                       "Plan Width": 12,                                                                                         +
                                                                       "Actual Startup Time": 0.020,                                                                             +
                                                                       "Actual Total Time": 936.284,                                                                             +
                                                                       "Actual Rows": 303271,                                                                                    +
                                                                       "Actual Loops": 1,                                                                                        +
                                                                       "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                                  +
                                                                       "Rows Removed by Filter": 2305858,                                                                        +
                                                                       "Shared Hit Blocks": 3,                                                                                   +
                                                                       "Shared Read Blocks": 18786,                                                                              +
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
                                                             },                                                                                                                  +
                                                             {                                                                                                                   +
                                                               "Node Type": "Sort",                                                                                              +
                                                               "Parent Relationship": "Inner",                                                                                   +
                                                               "Parallel Aware": false,                                                                                          +
                                                               "Startup Cost": 4638.12,                                                                                          +
                                                               "Total Cost": 4716.76,                                                                                            +
                                                               "Plan Rows": 1012920,                                                                                             +
                                                               "Plan Width": 25,                                                                                                 +
                                                               "Actual Startup Time": 2041.250,                                                                                  +
                                                               "Actual Total Time": 2172.302,                                                                                    +
                                                               "Actual Rows": 1012555,                                                                                           +
                                                               "Actual Loops": 1,                                                                                                +
                                                               "Sort Key": ["t.id"],                                                                                             +
                                                               "Sort Method": "quicksort",                                                                                       +
                                                               "Sort Space Used": 101193,                                                                                        +
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
                                                                   "Total Cost": 1500.26,                                                                                        +
                                                                   "Plan Rows": 1012920,                                                                                         +
                                                                   "Plan Width": 25,                                                                                             +
                                                                   "Actual Startup Time": 4.523,                                                                                 +
                                                                   "Actual Total Time": 1413.508,                                                                                +
                                                                   "Actual Rows": 1012920,                                                                                       +
                                                                   "Actual Loops": 1,                                                                                            +
                                                                   "Filter": "(production_year > 2005)",                                                                         +
                                                                   "Rows Removed by Filter": 1515392,                                                                            +
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
                                                           "Startup Cost": 14022.63,                                                                                             +
                                                           "Total Cost": 14078.15,                                                                                               +
                                                           "Plan Rows": 715132,                                                                                                  +
                                                           "Plan Width": 8,                                                                                                      +
                                                           "Actual Startup Time": 8544.378,                                                                                      +
                                                           "Actual Total Time": 8581.663,                                                                                        +
                                                           "Actual Rows": 743638,                                                                                                +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Sort Key": ["mi.movie_id"],                                                                                          +
                                                           "Sort Method": "quicksort",                                                                                           +
                                                           "Sort Space Used": 58149,                                                                                             +
                                                           "Sort Space Type": "Memory",                                                                                          +
                                                           "Shared Hit Blocks": 2,                                                                                               +
                                                           "Shared Read Blocks": 161890,                                                                                         +
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
                                                               "Relation Name": "movie_info",                                                                                    +
                                                               "Alias": "mi",                                                                                                    +
                                                               "Startup Cost": 0.00,                                                                                             +
                                                               "Total Cost": 11863.04,                                                                                           +
                                                               "Plan Rows": 715132,                                                                                              +
                                                               "Plan Width": 8,                                                                                                  +
                                                               "Actual Startup Time": 13.959,                                                                                    +
                                                               "Actual Total Time": 8293.713,                                                                                    +
                                                               "Actual Rows": 716210,                                                                                            +
                                                               "Actual Loops": 1,                                                                                                +
                                                               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))",+
                                                               "Rows Removed by Filter": 14119510,                                                                               +
                                                               "Shared Hit Blocks": 2,                                                                                           +
                                                               "Shared Read Blocks": 161890,                                                                                     +
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
                                                       "Startup Cost": 4714.83,                                                                                                  +
                                                       "Total Cost": 4819.15,                                                                                                    +
                                                       "Plan Rows": 1343551,                                                                                                     +
                                                       "Plan Width": 14,                                                                                                         +
                                                       "Actual Startup Time": 885.941,                                                                                           +
                                                       "Actual Total Time": 958.503,                                                                                             +
                                                       "Actual Rows": 1425952,                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                        +
                                                       "Sort Key": ["mi_idx.movie_id"],                                                                                          +
                                                       "Sort Method": "quicksort",                                                                                               +
                                                       "Sort Space Used": 126497,                                                                                                +
                                                       "Sort Space Type": "Memory",                                                                                              +
                                                       "Shared Hit Blocks": 2,                                                                                                   +
                                                       "Shared Read Blocks": 8451,                                                                                               +
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
                                                           "Relation Name": "movie_info_idx",                                                                                    +
                                                           "Alias": "mi_idx",                                                                                                    +
                                                           "Startup Cost": 0.00,                                                                                                 +
                                                           "Total Cost": 467.71,                                                                                                 +
                                                           "Plan Rows": 1343551,                                                                                                 +
                                                           "Plan Width": 14,                                                                                                     +
                                                           "Actual Startup Time": 0.017,                                                                                         +
                                                           "Actual Total Time": 393.426,                                                                                         +
                                                           "Actual Rows": 1343555,                                                                                               +
                                                           "Actual Loops": 1,                                                                                                    +
                                                           "Filter": "(info < '8.5'::text)",                                                                                     +
                                                           "Rows Removed by Filter": 36480,                                                                                      +
                                                           "Shared Hit Blocks": 2,                                                                                               +
                                                           "Shared Read Blocks": 8451,                                                                                           +
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
                                                 }                                                                                                                               +
                                               ]                                                                                                                                 +
                                             },                                                                                                                                  +
                                             {                                                                                                                                   +
                                               "Node Type": "Sort",                                                                                                              +
                                               "Parent Relationship": "Inner",                                                                                                   +
                                               "Parallel Aware": false,                                                                                                          +
                                               "Startup Cost": 0.05,                                                                                                             +
                                               "Total Cost": 0.05,                                                                                                               +
                                               "Plan Rows": 1,                                                                                                                   +
                                               "Plan Width": 4,                                                                                                                  +
                                               "Actual Startup Time": 0.041,                                                                                                     +
                                               "Actual Total Time": 0.041,                                                                                                       +
                                               "Actual Rows": 1,                                                                                                                 +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Sort Key": ["it2.id"],                                                                                                           +
                                               "Sort Method": "quicksort",                                                                                                       +
                                               "Sort Space Used": 25,                                                                                                            +
                                               "Sort Space Type": "Memory",                                                                                                      +
                                               "Shared Hit Blocks": 1,                                                                                                           +
                                               "Shared Read Blocks": 0,                                                                                                          +
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
                                                   "Relation Name": "info_type",                                                                                                 +
                                                   "Alias": "it2",                                                                                                               +
                                                   "Startup Cost": 0.00,                                                                                                         +
                                                   "Total Cost": 0.05,                                                                                                           +
                                                   "Plan Rows": 1,                                                                                                               +
                                                   "Plan Width": 4,                                                                                                              +
                                                   "Actual Startup Time": 0.031,                                                                                                 +
                                                   "Actual Total Time": 0.033,                                                                                                   +
                                                   "Actual Rows": 1,                                                                                                             +
                                                   "Actual Loops": 1,                                                                                                            +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                                                  +
                                                   "Rows Removed by Filter": 112,                                                                                                +
                                                   "Shared Hit Blocks": 1,                                                                                                       +
                                                   "Shared Read Blocks": 0,                                                                                                      +
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
                                       "Startup Cost": 0.05,                                                                                                                     +
                                       "Total Cost": 0.05,                                                                                                                       +
                                       "Plan Rows": 1,                                                                                                                           +
                                       "Plan Width": 4,                                                                                                                          +
                                       "Actual Startup Time": 0.031,                                                                                                             +
                                       "Actual Total Time": 0.031,                                                                                                               +
                                       "Actual Rows": 1,                                                                                                                         +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Sort Key": ["it1.id"],                                                                                                                   +
                                       "Sort Method": "quicksort",                                                                                                               +
                                       "Sort Space Used": 25,                                                                                                                    +
                                       "Sort Space Type": "Memory",                                                                                                              +
                                       "Shared Hit Blocks": 1,                                                                                                                   +
                                       "Shared Read Blocks": 0,                                                                                                                  +
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
                                           "Relation Name": "info_type",                                                                                                         +
                                           "Alias": "it1",                                                                                                                       +
                                           "Startup Cost": 0.00,                                                                                                                 +
                                           "Total Cost": 0.05,                                                                                                                   +
                                           "Plan Rows": 1,                                                                                                                       +
                                           "Plan Width": 4,                                                                                                                      +
                                           "Actual Startup Time": 0.014,                                                                                                         +
                                           "Actual Total Time": 0.025,                                                                                                           +
                                           "Actual Rows": 1,                                                                                                                     +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Filter": "((info)::text = 'countries'::text)",                                                                                       +
                                           "Rows Removed by Filter": 112,                                                                                                        +
                                           "Shared Hit Blocks": 1,                                                                                                               +
                                           "Shared Read Blocks": 0,                                                                                                              +
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
                               "Startup Cost": 0.03,                                                                                                                             +
                               "Total Cost": 0.03,                                                                                                                               +
                               "Plan Rows": 2,                                                                                                                                   +
                               "Plan Width": 4,                                                                                                                                  +
                               "Actual Startup Time": 0.017,                                                                                                                     +
                               "Actual Total Time": 0.017,                                                                                                                       +
                               "Actual Rows": 2,                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                +
                               "Sort Key": ["kt.id"],                                                                                                                            +
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
                                   "Relation Name": "kind_type",                                                                                                                 +
                                   "Alias": "kt",                                                                                                                                +
                                   "Startup Cost": 0.00,                                                                                                                         +
                                   "Total Cost": 0.03,                                                                                                                           +
                                   "Plan Rows": 2,                                                                                                                               +
                                   "Plan Width": 4,                                                                                                                              +
                                   "Actual Startup Time": 0.011,                                                                                                                 +
                                   "Actual Total Time": 0.013,                                                                                                                   +
                                   "Actual Rows": 2,                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                            +
                                   "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                 +
                                   "Rows Removed by Filter": 5,                                                                                                                  +
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
                       "Startup Cost": 0.03,                                                                                                                                     +
                       "Total Cost": 0.03,                                                                                                                                       +
                       "Plan Rows": 4,                                                                                                                                           +
                       "Plan Width": 4,                                                                                                                                          +
                       "Actual Startup Time": 0.010,                                                                                                                             +
                       "Actual Total Time": 0.010,                                                                                                                               +
                       "Actual Rows": 1,                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Sort Key": ["ct.id"],                                                                                                                                    +
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
                           "Relation Name": "company_type",                                                                                                                      +
                           "Alias": "ct",                                                                                                                                        +
                           "Startup Cost": 0.00,                                                                                                                                 +
                           "Total Cost": 0.03,                                                                                                                                   +
                           "Plan Rows": 4,                                                                                                                                       +
                           "Plan Width": 4,                                                                                                                                      +
                           "Actual Startup Time": 0.005,                                                                                                                         +
                           "Actual Total Time": 0.006,                                                                                                                           +
                           "Actual Rows": 4,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                    +
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
               "Startup Cost": 460.56,                                                                                                                                           +
               "Total Cost": 470.36,                                                                                                                                             +
               "Plan Rows": 126230,                                                                                                                                              +
               "Plan Width": 23,                                                                                                                                                 +
               "Actual Startup Time": 231.245,                                                                                                                                   +
               "Actual Total Time": 236.185,                                                                                                                                     +
               "Actual Rows": 38787,                                                                                                                                             +
               "Actual Loops": 1,                                                                                                                                                +
               "Sort Key": ["cn.id"],                                                                                                                                            +
               "Sort Method": "quicksort",                                                                                                                                       +
               "Sort Space Used": 12077,                                                                                                                                         +
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
                   "Plan Rows": 126230,                                                                                                                                          +
                   "Plan Width": 23,                                                                                                                                             +
                   "Actual Startup Time": 71.055,                                                                                                                                +
                   "Actual Total Time": 167.742,                                                                                                                                 +
                   "Actual Rows": 126230,                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                                                           +
                   "Rows Removed by Filter": 108767,                                                                                                                             +
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
     "Planning Time": 9444.270,                                                                                                                                                  +
     "Triggers": [                                                                                                                                                               +
     ],                                                                                                                                                                          +
     "Execution Time": 16262.729                                                                                                                                                 +
   }                                                                                                                                                                             +
 ]
(1 row)

