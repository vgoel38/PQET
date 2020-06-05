                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                             +
   {                                                                                                                                                           +
     "Plan": {                                                                                                                                                 +
       "Node Type": "Aggregate",                                                                                                                               +
       "Strategy": "Plain",                                                                                                                                    +
       "Partial Mode": "Simple",                                                                                                                               +
       "Parallel Aware": false,                                                                                                                                +
       "Startup Cost": 42414.36,                                                                                                                               +
       "Total Cost": 42414.36,                                                                                                                                 +
       "Plan Rows": 1,                                                                                                                                         +
       "Plan Width": 64,                                                                                                                                       +
       "Actual Startup Time": 15895.870,                                                                                                                       +
       "Actual Total Time": 15895.871,                                                                                                                         +
       "Actual Rows": 1,                                                                                                                                       +
       "Actual Loops": 1,                                                                                                                                      +
       "Shared Hit Blocks": 30,                                                                                                                                +
       "Shared Read Blocks": 244855,                                                                                                                           +
       "Shared Dirtied Blocks": 0,                                                                                                                             +
       "Shared Written Blocks": 0,                                                                                                                             +
       "Local Hit Blocks": 0,                                                                                                                                  +
       "Local Read Blocks": 0,                                                                                                                                 +
       "Local Dirtied Blocks": 0,                                                                                                                              +
       "Local Written Blocks": 0,                                                                                                                              +
       "Temp Read Blocks": 0,                                                                                                                                  +
       "Temp Written Blocks": 0,                                                                                                                               +
       "Plans": [                                                                                                                                              +
         {                                                                                                                                                     +
           "Node Type": "Merge Join",                                                                                                                          +
           "Parent Relationship": "Outer",                                                                                                                     +
           "Parallel Aware": false,                                                                                                                            +
           "Join Type": "Inner",                                                                                                                               +
           "Startup Cost": 42414.35,                                                                                                                           +
           "Total Cost": 42414.36,                                                                                                                             +
           "Plan Rows": 1,                                                                                                                                     +
           "Plan Width": 27,                                                                                                                                   +
           "Actual Startup Time": 15895.799,                                                                                                                   +
           "Actual Total Time": 15895.816,                                                                                                                     +
           "Actual Rows": 16,                                                                                                                                  +
           "Actual Loops": 1,                                                                                                                                  +
           "Inner Unique": true,                                                                                                                               +
           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                       +
           "Shared Hit Blocks": 30,                                                                                                                            +
           "Shared Read Blocks": 244855,                                                                                                                       +
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
               "Node Type": "Sort",                                                                                                                            +
               "Parent Relationship": "Outer",                                                                                                                 +
               "Parallel Aware": false,                                                                                                                        +
               "Startup Cost": 42414.32,                                                                                                                       +
               "Total Cost": 42414.32,                                                                                                                         +
               "Plan Rows": 1,                                                                                                                                 +
               "Plan Width": 31,                                                                                                                               +
               "Actual Startup Time": 15895.771,                                                                                                               +
               "Actual Total Time": 15895.774,                                                                                                                 +
               "Actual Rows": 16,                                                                                                                              +
               "Actual Loops": 1,                                                                                                                              +
               "Sort Key": ["mc.company_type_id"],                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                     +
               "Sort Space Used": 26,                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                    +
               "Shared Hit Blocks": 29,                                                                                                                        +
               "Shared Read Blocks": 244855,                                                                                                                   +
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
                   "Node Type": "Merge Join",                                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                                             +
                   "Parallel Aware": false,                                                                                                                    +
                   "Join Type": "Inner",                                                                                                                       +
                   "Startup Cost": 42414.32,                                                                                                                   +
                   "Total Cost": 42414.32,                                                                                                                     +
                   "Plan Rows": 1,                                                                                                                             +
                   "Plan Width": 31,                                                                                                                           +
                   "Actual Startup Time": 15886.629,                                                                                                           +
                   "Actual Total Time": 15886.645,                                                                                                             +
                   "Actual Rows": 16,                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                          +
                   "Inner Unique": true,                                                                                                                       +
                   "Merge Cond": "(t.kind_id = kt.id)",                                                                                                        +
                   "Shared Hit Blocks": 25,                                                                                                                    +
                   "Shared Read Blocks": 244855,                                                                                                               +
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
                       "Node Type": "Sort",                                                                                                                    +
                       "Parent Relationship": "Outer",                                                                                                         +
                       "Parallel Aware": false,                                                                                                                +
                       "Startup Cost": 42414.29,                                                                                                               +
                       "Total Cost": 42414.29,                                                                                                                 +
                       "Plan Rows": 1,                                                                                                                         +
                       "Plan Width": 25,                                                                                                                       +
                       "Actual Startup Time": 15886.603,                                                                                                       +
                       "Actual Total Time": 15886.606,                                                                                                         +
                       "Actual Rows": 16,                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                      +
                       "Sort Key": ["t.kind_id"],                                                                                                              +
                       "Sort Method": "quicksort",                                                                                                             +
                       "Sort Space Used": 26,                                                                                                                  +
                       "Sort Space Type": "Memory",                                                                                                            +
                       "Shared Hit Blocks": 24,                                                                                                                +
                       "Shared Read Blocks": 244855,                                                                                                           +
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
                           "Node Type": "Merge Join",                                                                                                          +
                           "Parent Relationship": "Outer",                                                                                                     +
                           "Parallel Aware": false,                                                                                                            +
                           "Join Type": "Inner",                                                                                                               +
                           "Startup Cost": 42414.29,                                                                                                           +
                           "Total Cost": 42414.29,                                                                                                             +
                           "Plan Rows": 1,                                                                                                                     +
                           "Plan Width": 25,                                                                                                                   +
                           "Actual Startup Time": 15886.560,                                                                                                   +
                           "Actual Total Time": 15886.578,                                                                                                     +
                           "Actual Rows": 16,                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                  +
                           "Inner Unique": true,                                                                                                               +
                           "Merge Cond": "(cc.status_id = cct1.id)",                                                                                           +
                           "Shared Hit Blocks": 24,                                                                                                            +
                           "Shared Read Blocks": 244855,                                                                                                       +
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
                               "Node Type": "Sort",                                                                                                            +
                               "Parent Relationship": "Outer",                                                                                                 +
                               "Parallel Aware": false,                                                                                                        +
                               "Startup Cost": 42414.25,                                                                                                       +
                               "Total Cost": 42414.25,                                                                                                         +
                               "Plan Rows": 1,                                                                                                                 +
                               "Plan Width": 29,                                                                                                               +
                               "Actual Startup Time": 15886.524,                                                                                               +
                               "Actual Total Time": 15886.527,                                                                                                 +
                               "Actual Rows": 16,                                                                                                              +
                               "Actual Loops": 1,                                                                                                              +
                               "Sort Key": ["cc.status_id"],                                                                                                   +
                               "Sort Method": "quicksort",                                                                                                     +
                               "Sort Space Used": 26,                                                                                                          +
                               "Sort Space Type": "Memory",                                                                                                    +
                               "Shared Hit Blocks": 23,                                                                                                        +
                               "Shared Read Blocks": 244855,                                                                                                   +
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
                                   "Node Type": "Merge Join",                                                                                                  +
                                   "Parent Relationship": "Outer",                                                                                             +
                                   "Parallel Aware": false,                                                                                                    +
                                   "Join Type": "Inner",                                                                                                       +
                                   "Startup Cost": 42414.25,                                                                                                   +
                                   "Total Cost": 42414.25,                                                                                                     +
                                   "Plan Rows": 1,                                                                                                             +
                                   "Plan Width": 29,                                                                                                           +
                                   "Actual Startup Time": 15886.067,                                                                                           +
                                   "Actual Total Time": 15886.492,                                                                                             +
                                   "Actual Rows": 16,                                                                                                          +
                                   "Actual Loops": 1,                                                                                                          +
                                   "Inner Unique": true,                                                                                                       +
                                   "Merge Cond": "(mk.keyword_id = k.id)",                                                                                     +
                                   "Shared Hit Blocks": 23,                                                                                                    +
                                   "Shared Read Blocks": 244855,                                                                                               +
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
                                       "Node Type": "Sort",                                                                                                    +
                                       "Parent Relationship": "Outer",                                                                                         +
                                       "Parallel Aware": false,                                                                                                +
                                       "Startup Cost": 42389.72,                                                                                               +
                                       "Total Cost": 42389.72,                                                                                                 +
                                       "Plan Rows": 7,                                                                                                         +
                                       "Plan Width": 33,                                                                                                       +
                                       "Actual Startup Time": 15756.914,                                                                                       +
                                       "Actual Total Time": 15757.062,                                                                                         +
                                       "Actual Rows": 686,                                                                                                     +
                                       "Actual Loops": 1,                                                                                                      +
                                       "Sort Key": ["mk.keyword_id"],                                                                                          +
                                       "Sort Method": "quicksort",                                                                                             +
                                       "Sort Space Used": 90,                                                                                                  +
                                       "Sort Space Type": "Memory",                                                                                            +
                                       "Shared Hit Blocks": 15,                                                                                                +
                                       "Shared Read Blocks": 244844,                                                                                           +
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
                                           "Startup Cost": 41452.32,                                                                                           +
                                           "Total Cost": 42389.72,                                                                                             +
                                           "Plan Rows": 7,                                                                                                     +
                                           "Plan Width": 33,                                                                                                   +
                                           "Actual Startup Time": 15157.797,                                                                                   +
                                           "Actual Total Time": 15756.607,                                                                                     +
                                           "Actual Rows": 839,                                                                                                 +
                                           "Actual Loops": 1,                                                                                                  +
                                           "Inner Unique": false,                                                                                              +
                                           "Merge Cond": "(t.id = mk.movie_id)",                                                                               +
                                           "Shared Hit Blocks": 15,                                                                                            +
                                           "Shared Read Blocks": 244844,                                                                                       +
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
                                               "Node Type": "Merge Join",                                                                                      +
                                               "Parent Relationship": "Outer",                                                                                 +
                                               "Parallel Aware": false,                                                                                        +
                                               "Join Type": "Inner",                                                                                           +
                                               "Startup Cost": 24841.39,                                                                                       +
                                               "Total Cost": 25076.32,                                                                                         +
                                               "Plan Rows": 1,                                                                                                 +
                                               "Plan Width": 45,                                                                                               +
                                               "Actual Startup Time": 12864.365,                                                                               +
                                               "Actual Total Time": 12978.818,                                                                                 +
                                               "Actual Rows": 48,                                                                                              +
                                               "Actual Loops": 1,                                                                                              +
                                               "Inner Unique": true,                                                                                           +
                                               "Merge Cond": "(mi.movie_id = t.id)",                                                                           +
                                               "Shared Hit Blocks": 12,                                                                                        +
                                               "Shared Read Blocks": 220393,                                                                                   +
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
                                                   "Startup Cost": 18965.59,                                                                                   +
                                                   "Total Cost": 18986.16,                                                                                     +
                                                   "Plan Rows": 1,                                                                                             +
                                                   "Plan Width": 20,                                                                                           +
                                                   "Actual Startup Time": 10548.752,                                                                           +
                                                   "Actual Total Time": 10568.003,                                                                             +
                                                   "Actual Rows": 50,                                                                                          +
                                                   "Actual Loops": 1,                                                                                          +
                                                   "Inner Unique": false,                                                                                      +
                                                   "Merge Cond": "(mi.movie_id = cc.movie_id)",                                                                +
                                                   "Shared Hit Blocks": 10,                                                                                    +
                                                   "Shared Read Blocks": 184397,                                                                               +
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
                                                       "Node Type": "Sort",                                                                                    +
                                                       "Parent Relationship": "Outer",                                                                         +
                                                       "Parallel Aware": false,                                                                                +
                                                       "Startup Cost": 18575.81,                                                                               +
                                                       "Total Cost": 18575.81,                                                                                 +
                                                       "Plan Rows": 3,                                                                                         +
                                                       "Plan Width": 12,                                                                                       +
                                                       "Actual Startup Time": 10440.383,                                                                       +
                                                       "Actual Total Time": 10440.652,                                                                         +
                                                       "Actual Rows": 2633,                                                                                    +
                                                       "Actual Loops": 1,                                                                                      +
                                                       "Sort Key": ["mc.movie_id"],                                                                            +
                                                       "Sort Method": "quicksort",                                                                             +
                                                       "Sort Space Used": 220,                                                                                 +
                                                       "Sort Space Type": "Memory",                                                                            +
                                                       "Shared Hit Blocks": 8,                                                                                 +
                                                       "Shared Read Blocks": 183668,                                                                           +
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
                                                           "Node Type": "Merge Join",                                                                          +
                                                           "Parent Relationship": "Outer",                                                                     +
                                                           "Parallel Aware": false,                                                                            +
                                                           "Join Type": "Inner",                                                                               +
                                                           "Startup Cost": 18562.64,                                                                           +
                                                           "Total Cost": 18575.81,                                                                             +
                                                           "Plan Rows": 3,                                                                                     +
                                                           "Plan Width": 12,                                                                                   +
                                                           "Actual Startup Time": 10421.411,                                                                   +
                                                           "Actual Total Time": 10439.484,                                                                     +
                                                           "Actual Rows": 2633,                                                                                +
                                                           "Actual Loops": 1,                                                                                  +
                                                           "Inner Unique": true,                                                                               +
                                                           "Merge Cond": "(mc.company_id = cn.id)",                                                            +
                                                           "Shared Hit Blocks": 8,                                                                             +
                                                           "Shared Read Blocks": 183668,                                                                       +
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
                                                               "Node Type": "Sort",                                                                            +
                                                               "Parent Relationship": "Outer",                                                                 +
                                                               "Parallel Aware": false,                                                                        +
                                                               "Startup Cost": 18218.53,                                                                       +
                                                               "Total Cost": 18218.53,                                                                         +
                                                               "Plan Rows": 7,                                                                                 +
                                                               "Plan Width": 16,                                                                               +
                                                               "Actual Startup Time": 10249.509,                                                               +
                                                               "Actual Total Time": 10249.823,                                                                 +
                                                               "Actual Rows": 2867,                                                                            +
                                                               "Actual Loops": 1,                                                                              +
                                                               "Sort Key": ["mc.company_id"],                                                                  +
                                                               "Sort Method": "quicksort",                                                                     +
                                                               "Sort Space Used": 231,                                                                         +
                                                               "Sort Space Type": "Memory",                                                                    +
                                                               "Shared Hit Blocks": 6,                                                                         +
                                                               "Shared Read Blocks": 180676,                                                                   +
                                                               "Shared Dirtied Blocks": 0,                                                                     +
                                                               "Shared Written Blocks": 0,                                                                     +
                                                               "Local Hit Blocks": 0,                                                                          +
                                                               "Local Read Blocks": 0,                                                                         +
                                                               "Local Dirtied Blocks": 0,                                                                      +
                                                               "Local Written Blocks": 0,                                                                      +
                                                               "Temp Read Blocks": 0,                                                                          +
                                                               "Temp Written Blocks": 0,                                                                       +
                                                               "Plans": [                                                                                      +
                                                                 {                                                                                             +
                                                                   "Node Type": "Merge Join",                                                                  +
                                                                   "Parent Relationship": "Outer",                                                             +
                                                                   "Parallel Aware": false,                                                                    +
                                                                   "Join Type": "Inner",                                                                       +
                                                                   "Startup Cost": 17813.39,                                                                   +
                                                                   "Total Cost": 18218.53,                                                                     +
                                                                   "Plan Rows": 7,                                                                             +
                                                                   "Plan Width": 16,                                                                           +
                                                                   "Actual Startup Time": 9882.766,                                                            +
                                                                   "Actual Total Time": 10248.537,                                                             +
                                                                   "Actual Rows": 2867,                                                                        +
                                                                   "Actual Loops": 1,                                                                          +
                                                                   "Inner Unique": false,                                                                      +
                                                                   "Merge Cond": "(mi.movie_id = mc.movie_id)",                                                +
                                                                   "Shared Hit Blocks": 6,                                                                     +
                                                                   "Shared Read Blocks": 180676,                                                               +
                                                                   "Shared Dirtied Blocks": 0,                                                                 +
                                                                   "Shared Written Blocks": 0,                                                                 +
                                                                   "Local Hit Blocks": 0,                                                                      +
                                                                   "Local Read Blocks": 0,                                                                     +
                                                                   "Local Dirtied Blocks": 0,                                                                  +
                                                                   "Local Written Blocks": 0,                                                                  +
                                                                   "Temp Read Blocks": 0,                                                                      +
                                                                   "Temp Written Blocks": 0,                                                                   +
                                                                   "Plans": [                                                                                  +
                                                                     {                                                                                         +
                                                                       "Node Type": "Sort",                                                                    +
                                                                       "Parent Relationship": "Outer",                                                         +
                                                                       "Parallel Aware": false,                                                                +
                                                                       "Startup Cost": 8407.93,                                                                +
                                                                       "Total Cost": 8407.93,                                                                  +
                                                                       "Plan Rows": 2,                                                                         +
                                                                       "Plan Width": 4,                                                                        +
                                                                       "Actual Startup Time": 8364.016,                                                        +
                                                                       "Actual Total Time": 8364.151,                                                          +
                                                                       "Actual Rows": 1771,                                                                    +
                                                                       "Actual Loops": 1,                                                                      +
                                                                       "Sort Key": ["mi.movie_id"],                                                            +
                                                                       "Sort Method": "quicksort",                                                             +
                                                                       "Sort Space Used": 132,                                                                 +
                                                                       "Sort Space Type": "Memory",                                                            +
                                                                       "Shared Hit Blocks": 3,                                                                 +
                                                                       "Shared Read Blocks": 161890,                                                           +
                                                                       "Shared Dirtied Blocks": 0,                                                             +
                                                                       "Shared Written Blocks": 0,                                                             +
                                                                       "Local Hit Blocks": 0,                                                                  +
                                                                       "Local Read Blocks": 0,                                                                 +
                                                                       "Local Dirtied Blocks": 0,                                                              +
                                                                       "Local Written Blocks": 0,                                                              +
                                                                       "Temp Read Blocks": 0,                                                                  +
                                                                       "Temp Written Blocks": 0,                                                               +
                                                                       "Plans": [                                                                              +
                                                                         {                                                                                     +
                                                                           "Node Type": "Merge Join",                                                          +
                                                                           "Parent Relationship": "Outer",                                                     +
                                                                           "Parallel Aware": false,                                                            +
                                                                           "Join Type": "Inner",                                                               +
                                                                           "Startup Cost": 8407.89,                                                            +
                                                                           "Total Cost": 8407.93,                                                              +
                                                                           "Plan Rows": 2,                                                                     +
                                                                           "Plan Width": 4,                                                                    +
                                                                           "Actual Startup Time": 8362.554,                                                    +
                                                                           "Actual Total Time": 8363.227,                                                      +
                                                                           "Actual Rows": 1771,                                                                +
                                                                           "Actual Loops": 1,                                                                  +
                                                                           "Inner Unique": false,                                                              +
                                                                           "Merge Cond": "(it1.id = mi.info_type_id)",                                         +
                                                                           "Shared Hit Blocks": 3,                                                             +
                                                                           "Shared Read Blocks": 161890,                                                       +
                                                                           "Shared Dirtied Blocks": 0,                                                         +
                                                                           "Shared Written Blocks": 0,                                                         +
                                                                           "Local Hit Blocks": 0,                                                              +
                                                                           "Local Read Blocks": 0,                                                             +
                                                                           "Local Dirtied Blocks": 0,                                                          +
                                                                           "Local Written Blocks": 0,                                                          +
                                                                           "Temp Read Blocks": 0,                                                              +
                                                                           "Temp Written Blocks": 0,                                                           +
                                                                           "Plans": [                                                                          +
                                                                             {                                                                                 +
                                                                               "Node Type": "Sort",                                                            +
                                                                               "Parent Relationship": "Outer",                                                 +
                                                                               "Parallel Aware": false,                                                        +
                                                                               "Startup Cost": 0.05,                                                           +
                                                                               "Total Cost": 0.05,                                                             +
                                                                               "Plan Rows": 1,                                                                 +
                                                                               "Plan Width": 4,                                                                +
                                                                               "Actual Startup Time": 0.081,                                                   +
                                                                               "Actual Total Time": 0.081,                                                     +
                                                                               "Actual Rows": 1,                                                               +
                                                                               "Actual Loops": 1,                                                              +
                                                                               "Sort Key": ["it1.id"],                                                         +
                                                                               "Sort Method": "quicksort",                                                     +
                                                                               "Sort Space Used": 25,                                                          +
                                                                               "Sort Space Type": "Memory",                                                    +
                                                                               "Shared Hit Blocks": 1,                                                         +
                                                                               "Shared Read Blocks": 0,                                                        +
                                                                               "Shared Dirtied Blocks": 0,                                                     +
                                                                               "Shared Written Blocks": 0,                                                     +
                                                                               "Local Hit Blocks": 0,                                                          +
                                                                               "Local Read Blocks": 0,                                                         +
                                                                               "Local Dirtied Blocks": 0,                                                      +
                                                                               "Local Written Blocks": 0,                                                      +
                                                                               "Temp Read Blocks": 0,                                                          +
                                                                               "Temp Written Blocks": 0,                                                       +
                                                                               "Plans": [                                                                      +
                                                                                 {                                                                             +
                                                                                   "Node Type": "Seq Scan",                                                    +
                                                                                   "Parent Relationship": "Outer",                                             +
                                                                                   "Parallel Aware": false,                                                    +
                                                                                   "Relation Name": "info_type",                                               +
                                                                                   "Alias": "it1",                                                             +
                                                                                   "Startup Cost": 0.00,                                                       +
                                                                                   "Total Cost": 0.05,                                                         +
                                                                                   "Plan Rows": 1,                                                             +
                                                                                   "Plan Width": 4,                                                            +
                                                                                   "Actual Startup Time": 0.028,                                               +
                                                                                   "Actual Total Time": 0.062,                                                 +
                                                                                   "Actual Rows": 1,                                                           +
                                                                                   "Actual Loops": 1,                                                          +
                                                                                   "Filter": "((info)::text = 'release dates'::text)",                         +
                                                                                   "Rows Removed by Filter": 112,                                              +
                                                                                   "Shared Hit Blocks": 1,                                                     +
                                                                                   "Shared Read Blocks": 0,                                                    +
                                                                                   "Shared Dirtied Blocks": 0,                                                 +
                                                                                   "Shared Written Blocks": 0,                                                 +
                                                                                   "Local Hit Blocks": 0,                                                      +
                                                                                   "Local Read Blocks": 0,                                                     +
                                                                                   "Local Dirtied Blocks": 0,                                                  +
                                                                                   "Local Written Blocks": 0,                                                  +
                                                                                   "Temp Read Blocks": 0,                                                      +
                                                                                   "Temp Written Blocks": 0                                                    +
                                                                                 }                                                                             +
                                                                               ]                                                                               +
                                                                             },                                                                                +
                                                                             {                                                                                 +
                                                                               "Node Type": "Sort",                                                            +
                                                                               "Parent Relationship": "Inner",                                                 +
                                                                               "Parallel Aware": false,                                                        +
                                                                               "Startup Cost": 8407.84,                                                        +
                                                                               "Total Cost": 8407.86,                                                          +
                                                                               "Plan Rows": 260,                                                               +
                                                                               "Plan Width": 8,                                                                +
                                                                               "Actual Startup Time": 8362.463,                                                +
                                                                               "Actual Total Time": 8362.613,                                                  +
                                                                               "Actual Rows": 1771,                                                            +
                                                                               "Actual Loops": 1,                                                              +
                                                                               "Sort Key": ["mi.info_type_id"],                                                +
                                                                               "Sort Method": "quicksort",                                                     +
                                                                               "Sort Space Used": 132,                                                         +
                                                                               "Sort Space Type": "Memory",                                                    +
                                                                               "Shared Hit Blocks": 2,                                                         +
                                                                               "Shared Read Blocks": 161890,                                                   +
                                                                               "Shared Dirtied Blocks": 0,                                                     +
                                                                               "Shared Written Blocks": 0,                                                     +
                                                                               "Local Hit Blocks": 0,                                                          +
                                                                               "Local Read Blocks": 0,                                                         +
                                                                               "Local Dirtied Blocks": 0,                                                      +
                                                                               "Local Written Blocks": 0,                                                      +
                                                                               "Temp Read Blocks": 0,                                                          +
                                                                               "Temp Written Blocks": 0,                                                       +
                                                                               "Plans": [                                                                      +
                                                                                 {                                                                             +
                                                                                   "Node Type": "Seq Scan",                                                    +
                                                                                   "Parent Relationship": "Outer",                                             +
                                                                                   "Parallel Aware": false,                                                    +
                                                                                   "Relation Name": "movie_info",                                              +
                                                                                   "Alias": "mi",                                                              +
                                                                                   "Startup Cost": 0.00,                                                       +
                                                                                   "Total Cost": 8407.52,                                                      +
                                                                                   "Plan Rows": 260,                                                           +
                                                                                   "Plan Width": 8,                                                            +
                                                                                   "Actual Startup Time": 1522.311,                                            +
                                                                                   "Actual Total Time": 8361.139,                                              +
                                                                                   "Actual Rows": 1771,                                                        +
                                                                                   "Actual Loops": 1,                                                          +
                                                                                   "Filter": "((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))",+
                                                                                   "Rows Removed by Filter": 14833949,                                         +
                                                                                   "Shared Hit Blocks": 2,                                                     +
                                                                                   "Shared Read Blocks": 161890,                                               +
                                                                                   "Shared Dirtied Blocks": 0,                                                 +
                                                                                   "Shared Written Blocks": 0,                                                 +
                                                                                   "Local Hit Blocks": 0,                                                      +
                                                                                   "Local Read Blocks": 0,                                                     +
                                                                                   "Local Dirtied Blocks": 0,                                                  +
                                                                                   "Local Written Blocks": 0,                                                  +
                                                                                   "Temp Read Blocks": 0,                                                      +
                                                                                   "Temp Written Blocks": 0                                                    +
                                                                                 }                                                                             +
                                                                               ]                                                                               +
                                                                             }                                                                                 +
                                                                           ]                                                                                   +
                                                                         }                                                                                     +
                                                                       ]                                                                                       +
                                                                     },                                                                                        +
                                                                     {                                                                                         +
                                                                       "Node Type": "Sort",                                                                    +
                                                                       "Parent Relationship": "Inner",                                                         +
                                                                       "Parallel Aware": false,                                                                +
                                                                       "Startup Cost": 9405.45,                                                                +
                                                                       "Total Cost": 9608.03,                                                                  +
                                                                       "Plan Rows": 2609129,                                                                   +
                                                                       "Plan Width": 12,                                                                       +
                                                                       "Actual Startup Time": 1518.709,                                                        +
                                                                       "Actual Total Time": 1636.447,                                                          +
                                                                       "Actual Rows": 2602970,                                                                 +
                                                                       "Actual Loops": 1,                                                                      +
                                                                       "Sort Key": ["mc.movie_id"],                                                            +
                                                                       "Sort Method": "quicksort",                                                             +
                                                                       "Sort Space Used": 220607,                                                              +
                                                                       "Sort Space Type": "Memory",                                                            +
                                                                       "Shared Hit Blocks": 3,                                                                 +
                                                                       "Shared Read Blocks": 18786,                                                            +
                                                                       "Shared Dirtied Blocks": 0,                                                             +
                                                                       "Shared Written Blocks": 0,                                                             +
                                                                       "Local Hit Blocks": 0,                                                                  +
                                                                       "Local Read Blocks": 0,                                                                 +
                                                                       "Local Dirtied Blocks": 0,                                                              +
                                                                       "Local Written Blocks": 0,                                                              +
                                                                       "Temp Read Blocks": 0,                                                                  +
                                                                       "Temp Written Blocks": 0,                                                               +
                                                                       "Plans": [                                                                              +
                                                                         {                                                                                     +
                                                                           "Node Type": "Seq Scan",                                                            +
                                                                           "Parent Relationship": "Outer",                                                     +
                                                                           "Parallel Aware": false,                                                            +
                                                                           "Relation Name": "movie_companies",                                                 +
                                                                           "Alias": "mc",                                                                      +
                                                                           "Startup Cost": 0.00,                                                               +
                                                                           "Total Cost": 769.75,                                                               +
                                                                           "Plan Rows": 2609129,                                                               +
                                                                           "Plan Width": 12,                                                                   +
                                                                           "Actual Startup Time": 0.012,                                                       +
                                                                           "Actual Total Time": 552.593,                                                       +
                                                                           "Actual Rows": 2609129,                                                             +
                                                                           "Actual Loops": 1,                                                                  +
                                                                           "Shared Hit Blocks": 3,                                                             +
                                                                           "Shared Read Blocks": 18786,                                                        +
                                                                           "Shared Dirtied Blocks": 0,                                                         +
                                                                           "Shared Written Blocks": 0,                                                         +
                                                                           "Local Hit Blocks": 0,                                                              +
                                                                           "Local Read Blocks": 0,                                                             +
                                                                           "Local Dirtied Blocks": 0,                                                          +
                                                                           "Local Written Blocks": 0,                                                          +
                                                                           "Temp Read Blocks": 0,                                                              +
                                                                           "Temp Written Blocks": 0                                                            +
                                                                         }                                                                                     +
                                                                       ]                                                                                       +
                                                                     }                                                                                         +
                                                                   ]                                                                                           +
                                                                 }                                                                                             +
                                                               ]                                                                                               +
                                                             },                                                                                                +
                                                             {                                                                                                 +
                                                               "Node Type": "Sort",                                                                            +
                                                               "Parent Relationship": "Inner",                                                                 +
                                                               "Parallel Aware": false,                                                                        +
                                                               "Startup Cost": 344.10,                                                                         +
                                                               "Total Cost": 350.69,                                                                           +
                                                               "Plan Rows": 84843,                                                                             +
                                                               "Plan Width": 4,                                                                                +
                                                               "Actual Startup Time": 171.894,                                                                 +
                                                               "Actual Total Time": 179.982,                                                                   +
                                                               "Actual Rows": 84824,                                                                           +
                                                               "Actual Loops": 1,                                                                              +
                                                               "Sort Key": ["cn.id"],                                                                          +
                                                               "Sort Method": "quicksort",                                                                     +
                                                               "Sort Space Used": 7050,                                                                        +
                                                               "Sort Space Type": "Memory",                                                                    +
                                                               "Shared Hit Blocks": 2,                                                                         +
                                                               "Shared Read Blocks": 2992,                                                                     +
                                                               "Shared Dirtied Blocks": 0,                                                                     +
                                                               "Shared Written Blocks": 0,                                                                     +
                                                               "Local Hit Blocks": 0,                                                                          +
                                                               "Local Read Blocks": 0,                                                                         +
                                                               "Local Dirtied Blocks": 0,                                                                      +
                                                               "Local Written Blocks": 0,                                                                      +
                                                               "Temp Read Blocks": 0,                                                                          +
                                                               "Temp Written Blocks": 0,                                                                       +
                                                               "Plans": [                                                                                      +
                                                                 {                                                                                             +
                                                                   "Node Type": "Seq Scan",                                                                    +
                                                                   "Parent Relationship": "Outer",                                                             +
                                                                   "Parallel Aware": false,                                                                    +
                                                                   "Relation Name": "company_name",                                                            +
                                                                   "Alias": "cn",                                                                              +
                                                                   "Startup Cost": 0.00,                                                                       +
                                                                   "Total Cost": 128.41,                                                                       +
                                                                   "Plan Rows": 84843,                                                                         +
                                                                   "Plan Width": 4,                                                                            +
                                                                   "Actual Startup Time": 20.457,                                                              +
                                                                   "Actual Total Time": 129.763,                                                               +
                                                                   "Actual Rows": 84843,                                                                       +
                                                                   "Actual Loops": 1,                                                                          +
                                                                   "Filter": "((country_code)::text = '[us]'::text)",                                          +
                                                                   "Rows Removed by Filter": 150154,                                                           +
                                                                   "Shared Hit Blocks": 2,                                                                     +
                                                                   "Shared Read Blocks": 2992,                                                                 +
                                                                   "Shared Dirtied Blocks": 0,                                                                 +
                                                                   "Shared Written Blocks": 0,                                                                 +
                                                                   "Local Hit Blocks": 0,                                                                      +
                                                                   "Local Read Blocks": 0,                                                                     +
                                                                   "Local Dirtied Blocks": 0,                                                                  +
                                                                   "Local Written Blocks": 0,                                                                  +
                                                                   "Temp Read Blocks": 0,                                                                      +
                                                                   "Temp Written Blocks": 0                                                                    +
                                                                 }                                                                                             +
                                                               ]                                                                                               +
                                                             }                                                                                                 +
                                                           ]                                                                                                   +
                                                         }                                                                                                     +
                                                       ]                                                                                                       +
                                                     },                                                                                                        +
                                                     {                                                                                                         +
                                                       "Node Type": "Sort",                                                                                    +
                                                       "Parent Relationship": "Inner",                                                                         +
                                                       "Parallel Aware": false,                                                                                +
                                                       "Startup Cost": 389.78,                                                                                 +
                                                       "Total Cost": 400.26,                                                                                   +
                                                       "Plan Rows": 135086,                                                                                    +
                                                       "Plan Width": 8,                                                                                        +
                                                       "Actual Startup Time": 107.574,                                                                         +
                                                       "Actual Total Time": 114.453,                                                                           +
                                                       "Actual Rows": 132180,                                                                                  +
                                                       "Actual Loops": 1,                                                                                      +
                                                       "Sort Key": ["cc.movie_id"],                                                                            +
                                                       "Sort Method": "quicksort",                                                                             +
                                                       "Sort Space Used": 12477,                                                                               +
                                                       "Sort Space Type": "Memory",                                                                            +
                                                       "Shared Hit Blocks": 2,                                                                                 +
                                                       "Shared Read Blocks": 729,                                                                              +
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
                                                           "Relation Name": "complete_cast",                                                                   +
                                                           "Alias": "cc",                                                                                      +
                                                           "Startup Cost": 0.00,                                                                               +
                                                           "Total Cost": 32.27,                                                                                +
                                                           "Plan Rows": 135086,                                                                                +
                                                           "Plan Width": 8,                                                                                    +
                                                           "Actual Startup Time": 19.541,                                                                      +
                                                           "Actual Total Time": 52.627,                                                                        +
                                                           "Actual Rows": 135086,                                                                              +
                                                           "Actual Loops": 1,                                                                                  +
                                                           "Shared Hit Blocks": 2,                                                                             +
                                                           "Shared Read Blocks": 729,                                                                          +
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
                                                 },                                                                                                            +
                                                 {                                                                                                             +
                                                   "Node Type": "Sort",                                                                                        +
                                                   "Parent Relationship": "Inner",                                                                             +
                                                   "Parallel Aware": false,                                                                                    +
                                                   "Startup Cost": 5875.81,                                                                                    +
                                                   "Total Cost": 5983.06,                                                                                      +
                                                   "Plan Rows": 1381453,                                                                                       +
                                                   "Plan Width": 25,                                                                                           +
                                                   "Actual Startup Time": 2044.470,                                                                            +
                                                   "Actual Total Time": 2211.357,                                                                              +
                                                   "Actual Rows": 1350742,                                                                                     +
                                                   "Actual Loops": 1,                                                                                          +
                                                   "Sort Key": ["t.id"],                                                                                       +
                                                   "Sort Method": "quicksort",                                                                                 +
                                                   "Sort Space Used": 153732,                                                                                  +
                                                   "Sort Space Type": "Memory",                                                                                +
                                                   "Shared Hit Blocks": 2,                                                                                     +
                                                   "Shared Read Blocks": 35996,                                                                                +
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
                                                       "Node Type": "Seq Scan",                                                                                +
                                                       "Parent Relationship": "Outer",                                                                         +
                                                       "Parallel Aware": false,                                                                                +
                                                       "Relation Name": "title",                                                                               +
                                                       "Alias": "t",                                                                                           +
                                                       "Startup Cost": 0.00,                                                                                   +
                                                       "Total Cost": 1500.26,                                                                                  +
                                                       "Plan Rows": 1381453,                                                                                   +
                                                       "Plan Width": 25,                                                                                       +
                                                       "Actual Startup Time": 21.508,                                                                          +
                                                       "Actual Total Time": 1221.653,                                                                          +
                                                       "Actual Rows": 1381453,                                                                                 +
                                                       "Actual Loops": 1,                                                                                      +
                                                       "Filter": "(production_year > 2000)",                                                                   +
                                                       "Rows Removed by Filter": 1146859,                                                                      +
                                                       "Shared Hit Blocks": 2,                                                                                 +
                                                       "Shared Read Blocks": 35996,                                                                            +
                                                       "Shared Dirtied Blocks": 0,                                                                             +
                                                       "Shared Written Blocks": 0,                                                                             +
                                                       "Local Hit Blocks": 0,                                                                                  +
                                                       "Local Read Blocks": 0,                                                                                 +
                                                       "Local Dirtied Blocks": 0,                                                                              +
                                                       "Local Written Blocks": 0,                                                                              +
                                                       "Temp Read Blocks": 0,                                                                                  +
                                                       "Temp Written Blocks": 0                                                                                +
                                                     }                                                                                                         +
                                                   ]                                                                                                           +
                                                 }                                                                                                             +
                                               ]                                                                                                               +
                                             },                                                                                                                +
                                             {                                                                                                                 +
                                               "Node Type": "Sort",                                                                                            +
                                               "Parent Relationship": "Inner",                                                                                 +
                                               "Parallel Aware": false,                                                                                        +
                                               "Startup Cost": 16610.92,                                                                                       +
                                               "Total Cost": 16962.16,                                                                                         +
                                               "Plan Rows": 4523930,                                                                                           +
                                               "Plan Width": 8,                                                                                                +
                                               "Actual Startup Time": 2172.144,                                                                                +
                                               "Actual Total Time": 2378.114,                                                                                  +
                                               "Actual Rows": 4267169,                                                                                         +
                                               "Actual Loops": 1,                                                                                              +
                                               "Sort Key": ["mk.movie_id"],                                                                                    +
                                               "Sort Method": "quicksort",                                                                                     +
                                               "Sort Space Used": 408668,                                                                                      +
                                               "Sort Space Type": "Memory",                                                                                    +
                                               "Shared Hit Blocks": 3,                                                                                         +
                                               "Shared Read Blocks": 24451,                                                                                    +
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
                                                   "Relation Name": "movie_keyword",                                                                           +
                                                   "Alias": "mk",                                                                                              +
                                                   "Startup Cost": 0.00,                                                                                       +
                                                   "Total Cost": 1079.84,                                                                                      +
                                                   "Plan Rows": 4523930,                                                                                       +
                                                   "Plan Width": 8,                                                                                            +
                                                   "Actual Startup Time": 0.015,                                                                               +
                                                   "Actual Total Time": 812.869,                                                                               +
                                                   "Actual Rows": 4523930,                                                                                     +
                                                   "Actual Loops": 1,                                                                                          +
                                                   "Shared Hit Blocks": 3,                                                                                     +
                                                   "Shared Read Blocks": 24451,                                                                                +
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
                                         }                                                                                                                     +
                                       ]                                                                                                                       +
                                     },                                                                                                                        +
                                     {                                                                                                                         +
                                       "Node Type": "Sort",                                                                                                    +
                                       "Parent Relationship": "Inner",                                                                                         +
                                       "Parallel Aware": false,                                                                                                +
                                       "Startup Cost": 24.53,                                                                                                  +
                                       "Total Cost": 24.53,                                                                                                    +
                                       "Plan Rows": 4,                                                                                                         +
                                       "Plan Width": 4,                                                                                                        +
                                       "Actual Startup Time": 129.113,                                                                                         +
                                       "Actual Total Time": 129.114,                                                                                           +
                                       "Actual Rows": 4,                                                                                                       +
                                       "Actual Loops": 1,                                                                                                      +
                                       "Sort Key": ["k.id"],                                                                                                   +
                                       "Sort Method": "quicksort",                                                                                             +
                                       "Sort Space Used": 25,                                                                                                  +
                                       "Sort Space Type": "Memory",                                                                                            +
                                       "Shared Hit Blocks": 8,                                                                                                 +
                                       "Shared Read Blocks": 11,                                                                                               +
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
                                           "Node Type": "Index Scan",                                                                                          +
                                           "Parent Relationship": "Outer",                                                                                     +
                                           "Parallel Aware": false,                                                                                            +
                                           "Scan Direction": "Forward",                                                                                        +
                                           "Index Name": "keyword_idx_keyword",                                                                                +
                                           "Relation Name": "keyword",                                                                                         +
                                           "Alias": "k",                                                                                                       +
                                           "Startup Cost": 0.01,                                                                                               +
                                           "Total Cost": 24.53,                                                                                                +
                                           "Plan Rows": 4,                                                                                                     +
                                           "Plan Width": 4,                                                                                                    +
                                           "Actual Startup Time": 90.765,                                                                                      +
                                           "Actual Total Time": 129.088,                                                                                       +
                                           "Actual Rows": 4,                                                                                                   +
                                           "Actual Loops": 1,                                                                                                  +
                                           "Index Cond": "(keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))",                                        +
                                           "Rows Removed by Index Recheck": 0,                                                                                 +
                                           "Shared Hit Blocks": 8,                                                                                             +
                                           "Shared Read Blocks": 11,                                                                                           +
                                           "Shared Dirtied Blocks": 0,                                                                                         +
                                           "Shared Written Blocks": 0,                                                                                         +
                                           "Local Hit Blocks": 0,                                                                                              +
                                           "Local Read Blocks": 0,                                                                                             +
                                           "Local Dirtied Blocks": 0,                                                                                          +
                                           "Local Written Blocks": 0,                                                                                          +
                                           "Temp Read Blocks": 0,                                                                                              +
                                           "Temp Written Blocks": 0                                                                                            +
                                         }                                                                                                                     +
                                       ]                                                                                                                       +
                                     }                                                                                                                         +
                                   ]                                                                                                                           +
                                 }                                                                                                                             +
                               ]                                                                                                                               +
                             },                                                                                                                                +
                             {                                                                                                                                 +
                               "Node Type": "Sort",                                                                                                            +
                               "Parent Relationship": "Inner",                                                                                                 +
                               "Parallel Aware": false,                                                                                                        +
                               "Startup Cost": 0.03,                                                                                                           +
                               "Total Cost": 0.03,                                                                                                             +
                               "Plan Rows": 1,                                                                                                                 +
                               "Plan Width": 4,                                                                                                                +
                               "Actual Startup Time": 0.031,                                                                                                   +
                               "Actual Total Time": 0.031,                                                                                                     +
                               "Actual Rows": 1,                                                                                                               +
                               "Actual Loops": 1,                                                                                                              +
                               "Sort Key": ["cct1.id"],                                                                                                        +
                               "Sort Method": "quicksort",                                                                                                     +
                               "Sort Space Used": 25,                                                                                                          +
                               "Sort Space Type": "Memory",                                                                                                    +
                               "Shared Hit Blocks": 1,                                                                                                         +
                               "Shared Read Blocks": 0,                                                                                                        +
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
                                   "Node Type": "Seq Scan",                                                                                                    +
                                   "Parent Relationship": "Outer",                                                                                             +
                                   "Parallel Aware": false,                                                                                                    +
                                   "Relation Name": "comp_cast_type",                                                                                          +
                                   "Alias": "cct1",                                                                                                            +
                                   "Startup Cost": 0.00,                                                                                                       +
                                   "Total Cost": 0.03,                                                                                                         +
                                   "Plan Rows": 1,                                                                                                             +
                                   "Plan Width": 4,                                                                                                            +
                                   "Actual Startup Time": 0.020,                                                                                               +
                                   "Actual Total Time": 0.021,                                                                                                 +
                                   "Actual Rows": 1,                                                                                                           +
                                   "Actual Loops": 1,                                                                                                          +
                                   "Filter": "((kind)::text = 'complete+verified'::text)",                                                                     +
                                   "Rows Removed by Filter": 3,                                                                                                +
                                   "Shared Hit Blocks": 1,                                                                                                     +
                                   "Shared Read Blocks": 0,                                                                                                    +
                                   "Shared Dirtied Blocks": 0,                                                                                                 +
                                   "Shared Written Blocks": 0,                                                                                                 +
                                   "Local Hit Blocks": 0,                                                                                                      +
                                   "Local Read Blocks": 0,                                                                                                     +
                                   "Local Dirtied Blocks": 0,                                                                                                  +
                                   "Local Written Blocks": 0,                                                                                                  +
                                   "Temp Read Blocks": 0,                                                                                                      +
                                   "Temp Written Blocks": 0                                                                                                    +
                                 }                                                                                                                             +
                               ]                                                                                                                               +
                             }                                                                                                                                 +
                           ]                                                                                                                                   +
                         }                                                                                                                                     +
                       ]                                                                                                                                       +
                     },                                                                                                                                        +
                     {                                                                                                                                         +
                       "Node Type": "Sort",                                                                                                                    +
                       "Parent Relationship": "Inner",                                                                                                         +
                       "Parallel Aware": false,                                                                                                                +
                       "Startup Cost": 0.03,                                                                                                                   +
                       "Total Cost": 0.03,                                                                                                                     +
                       "Plan Rows": 1,                                                                                                                         +
                       "Plan Width": 14,                                                                                                                       +
                       "Actual Startup Time": 0.019,                                                                                                           +
                       "Actual Total Time": 0.019,                                                                                                             +
                       "Actual Rows": 1,                                                                                                                       +
                       "Actual Loops": 1,                                                                                                                      +
                       "Sort Key": ["kt.id"],                                                                                                                  +
                       "Sort Method": "quicksort",                                                                                                             +
                       "Sort Space Used": 25,                                                                                                                  +
                       "Sort Space Type": "Memory",                                                                                                            +
                       "Shared Hit Blocks": 1,                                                                                                                 +
                       "Shared Read Blocks": 0,                                                                                                                +
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
                           "Node Type": "Seq Scan",                                                                                                            +
                           "Parent Relationship": "Outer",                                                                                                     +
                           "Parallel Aware": false,                                                                                                            +
                           "Relation Name": "kind_type",                                                                                                       +
                           "Alias": "kt",                                                                                                                      +
                           "Startup Cost": 0.00,                                                                                                               +
                           "Total Cost": 0.03,                                                                                                                 +
                           "Plan Rows": 1,                                                                                                                     +
                           "Plan Width": 14,                                                                                                                   +
                           "Actual Startup Time": 0.009,                                                                                                       +
                           "Actual Total Time": 0.013,                                                                                                         +
                           "Actual Rows": 1,                                                                                                                   +
                           "Actual Loops": 1,                                                                                                                  +
                           "Filter": "((kind)::text = 'movie'::text)",                                                                                         +
                           "Rows Removed by Filter": 6,                                                                                                        +
                           "Shared Hit Blocks": 1,                                                                                                             +
                           "Shared Read Blocks": 0,                                                                                                            +
                           "Shared Dirtied Blocks": 0,                                                                                                         +
                           "Shared Written Blocks": 0,                                                                                                         +
                           "Local Hit Blocks": 0,                                                                                                              +
                           "Local Read Blocks": 0,                                                                                                             +
                           "Local Dirtied Blocks": 0,                                                                                                          +
                           "Local Written Blocks": 0,                                                                                                          +
                           "Temp Read Blocks": 0,                                                                                                              +
                           "Temp Written Blocks": 0                                                                                                            +
                         }                                                                                                                                     +
                       ]                                                                                                                                       +
                     }                                                                                                                                         +
                   ]                                                                                                                                           +
                 }                                                                                                                                             +
               ]                                                                                                                                               +
             },                                                                                                                                                +
             {                                                                                                                                                 +
               "Node Type": "Sort",                                                                                                                            +
               "Parent Relationship": "Inner",                                                                                                                 +
               "Parallel Aware": false,                                                                                                                        +
               "Startup Cost": 0.03,                                                                                                                           +
               "Total Cost": 0.03,                                                                                                                             +
               "Plan Rows": 4,                                                                                                                                 +
               "Plan Width": 4,                                                                                                                                +
               "Actual Startup Time": 0.016,                                                                                                                   +
               "Actual Total Time": 0.016,                                                                                                                     +
               "Actual Rows": 2,                                                                                                                               +
               "Actual Loops": 1,                                                                                                                              +
               "Sort Key": ["ct.id"],                                                                                                                          +
               "Sort Method": "quicksort",                                                                                                                     +
               "Sort Space Used": 25,                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                    +
               "Shared Hit Blocks": 1,                                                                                                                         +
               "Shared Read Blocks": 0,                                                                                                                        +
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
                   "Node Type": "Seq Scan",                                                                                                                    +
                   "Parent Relationship": "Outer",                                                                                                             +
                   "Parallel Aware": false,                                                                                                                    +
                   "Relation Name": "company_type",                                                                                                            +
                   "Alias": "ct",                                                                                                                              +
                   "Startup Cost": 0.00,                                                                                                                       +
                   "Total Cost": 0.03,                                                                                                                         +
                   "Plan Rows": 4,                                                                                                                             +
                   "Plan Width": 4,                                                                                                                            +
                   "Actual Startup Time": 0.006,                                                                                                               +
                   "Actual Total Time": 0.009,                                                                                                                 +
                   "Actual Rows": 4,                                                                                                                           +
                   "Actual Loops": 1,                                                                                                                          +
                   "Shared Hit Blocks": 1,                                                                                                                     +
                   "Shared Read Blocks": 0,                                                                                                                    +
                   "Shared Dirtied Blocks": 0,                                                                                                                 +
                   "Shared Written Blocks": 0,                                                                                                                 +
                   "Local Hit Blocks": 0,                                                                                                                      +
                   "Local Read Blocks": 0,                                                                                                                     +
                   "Local Dirtied Blocks": 0,                                                                                                                  +
                   "Local Written Blocks": 0,                                                                                                                  +
                   "Temp Read Blocks": 0,                                                                                                                      +
                   "Temp Written Blocks": 0                                                                                                                    +
                 }                                                                                                                                             +
               ]                                                                                                                                               +
             }                                                                                                                                                 +
           ]                                                                                                                                                   +
         }                                                                                                                                                     +
       ]                                                                                                                                                       +
     },                                                                                                                                                        +
     "Planning Time": 9336.685,                                                                                                                                +
     "Triggers": [                                                                                                                                             +
     ],                                                                                                                                                        +
     "Execution Time": 15955.587                                                                                                                               +
   }                                                                                                                                                           +
 ]
(1 row)
