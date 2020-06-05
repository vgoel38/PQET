                                                       QUERY PLAN                                                       
------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                     +
   {                                                                                                                   +
     "Plan": {                                                                                                         +
       "Node Type": "Aggregate",                                                                                       +
       "Strategy": "Plain",                                                                                            +
       "Partial Mode": "Simple",                                                                                       +
       "Parallel Aware": false,                                                                                        +
       "Startup Cost": 88310.31,                                                                                       +
       "Total Cost": 88310.31,                                                                                         +
       "Plan Rows": 1,                                                                                                 +
       "Plan Width": 96,                                                                                               +
       "Actual Startup Time": 21965.042,                                                                               +
       "Actual Total Time": 21965.042,                                                                                 +
       "Actual Rows": 1,                                                                                               +
       "Actual Loops": 1,                                                                                              +
       "Shared Hit Blocks": 18,                                                                                        +
       "Shared Read Blocks": 228116,                                                                                   +
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
           "Startup Cost": 88310.22,                                                                                   +
           "Total Cost": 88310.31,                                                                                     +
           "Plan Rows": 5,                                                                                             +
           "Plan Width": 65,                                                                                           +
           "Actual Startup Time": 21864.097,                                                                           +
           "Actual Total Time": 21908.561,                                                                             +
           "Actual Rows": 111101,                                                                                      +
           "Actual Loops": 1,                                                                                          +
           "Inner Unique": true,                                                                                       +
           "Merge Cond": "(mi.info_type_id = it2.id)",                                                                 +
           "Shared Hit Blocks": 18,                                                                                    +
           "Shared Read Blocks": 228116,                                                                               +
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
               "Startup Cost": 88310.17,                                                                               +
               "Total Cost": 88310.22,                                                                                 +
               "Plan Rows": 617,                                                                                       +
               "Plan Width": 69,                                                                                       +
               "Actual Startup Time": 21795.823,                                                                       +
               "Actual Total Time": 21838.482,                                                                         +
               "Actual Rows": 370744,                                                                                  +
               "Actual Loops": 1,                                                                                      +
               "Sort Key": ["mi.info_type_id"],                                                                        +
               "Sort Method": "quicksort",                                                                             +
               "Sort Space Used": 88791,                                                                               +
               "Sort Space Type": "Memory",                                                                            +
               "Shared Hit Blocks": 17,                                                                                +
               "Shared Read Blocks": 228116,                                                                           +
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
                   "Startup Cost": 86005.57,                                                                           +
                   "Total Cost": 88309.28,                                                                             +
                   "Plan Rows": 617,                                                                                   +
                   "Plan Width": 69,                                                                                   +
                   "Actual Startup Time": 19813.010,                                                                   +
                   "Actual Total Time": 21638.608,                                                                     +
                   "Actual Rows": 516327,                                                                              +
                   "Actual Loops": 1,                                                                                  +
                   "Inner Unique": false,                                                                              +
                   "Merge Cond": "(t.id = mi.movie_id)",                                                               +
                   "Shared Hit Blocks": 13,                                                                            +
                   "Shared Read Blocks": 228116,                                                                       +
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
                       "Startup Cost": 25022.11,                                                                       +
                       "Total Cost": 25022.12,                                                                         +
                       "Plan Rows": 44,                                                                                +
                       "Plan Width": 35,                                                                               +
                       "Actual Startup Time": 7500.271,                                                                +
                       "Actual Total Time": 7502.931,                                                                  +
                       "Actual Rows": 16470,                                                                           +
                       "Actual Loops": 1,                                                                              +
                       "Sort Key": ["mc.movie_id"],                                                                    +
                       "Sort Method": "quicksort",                                                                     +
                       "Sort Space Used": 2167,                                                                        +
                       "Sort Space Type": "Memory",                                                                    +
                       "Shared Hit Blocks": 11,                                                                        +
                       "Shared Read Blocks": 66226,                                                                    +
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
                           "Startup Cost": 25022.05,                                                                   +
                           "Total Cost": 25022.08,                                                                     +
                           "Plan Rows": 44,                                                                            +
                           "Plan Width": 35,                                                                           +
                           "Actual Startup Time": 7488.560,                                                            +
                           "Actual Total Time": 7493.486,                                                              +
                           "Actual Rows": 16470,                                                                       +
                           "Actual Loops": 1,                                                                          +
                           "Inner Unique": true,                                                                       +
                           "Merge Cond": "(mc.company_type_id = ct.id)",                                               +
                           "Shared Hit Blocks": 11,                                                                    +
                           "Shared Read Blocks": 66226,                                                                +
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
                               "Startup Cost": 25022.01,                                                               +
                               "Total Cost": 25022.03,                                                                 +
                               "Plan Rows": 175,                                                                       +
                               "Plan Width": 39,                                                                       +
                               "Actual Startup Time": 7483.690,                                                        +
                               "Actual Total Time": 7486.023,                                                          +
                               "Actual Rows": 48640,                                                                   +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["mc.company_type_id"],                                                     +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 5751,                                                                +
                               "Sort Space Type": "Memory",                                                            +
                               "Shared Hit Blocks": 10,                                                                +
                               "Shared Read Blocks": 66226,                                                            +
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
                                   "Startup Cost": 25019.63,                                                           +
                                   "Total Cost": 25021.81,                                                             +
                                   "Plan Rows": 175,                                                                   +
                                   "Plan Width": 39,                                                                   +
                                   "Actual Startup Time": 7227.096,                                                    +
                                   "Actual Total Time": 7469.623,                                                      +
                                   "Actual Rows": 48640,                                                               +
                                   "Actual Loops": 1,                                                                  +
                                   "Inner Unique": true,                                                               +
                                   "Merge Cond": "(mc.company_id = cn.id)",                                            +
                                   "Shared Hit Blocks": 10,                                                            +
                                   "Shared Read Blocks": 66226,                                                        +
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
                                       "Startup Cost": 24871.10,                                                       +
                                       "Total Cost": 24871.43,                                                         +
                                       "Plan Rows": 4209,                                                              +
                                       "Plan Width": 43,                                                               +
                                       "Actual Startup Time": 7041.702,                                                +
                                       "Actual Total Time": 7153.158,                                                  +
                                       "Actual Rows": 773081,                                                          +
                                       "Actual Loops": 1,                                                              +
                                       "Sort Key": ["mc.company_id"],                                                  +
                                       "Sort Method": "quicksort",                                                     +
                                       "Sort Space Used": 92887,                                                       +
                                       "Sort Space Type": "Memory",                                                    +
                                       "Shared Hit Blocks": 8,                                                         +
                                       "Shared Read Blocks": 63234,                                                    +
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
                                           "Node Type": "Merge Join",                                                  +
                                           "Parent Relationship": "Outer",                                             +
                                           "Parallel Aware": false,                                                    +
                                           "Join Type": "Inner",                                                       +
                                           "Startup Cost": 24457.70,                                                   +
                                           "Total Cost": 24863.24,                                                     +
                                           "Plan Rows": 4209,                                                          +
                                           "Plan Width": 43,                                                           +
                                           "Actual Startup Time": 6294.952,                                            +
                                           "Actual Total Time": 6699.970,                                              +
                                           "Actual Rows": 773084,                                                      +
                                           "Actual Loops": 1,                                                          +
                                           "Inner Unique": false,                                                      +
                                           "Merge Cond": "(t.id = mc.movie_id)",                                       +
                                           "Shared Hit Blocks": 8,                                                     +
                                           "Shared Read Blocks": 63234,                                                +
                                           "Shared Dirtied Blocks": 0,                                                 +
                                           "Shared Written Blocks": 0,                                                 +
                                           "Local Hit Blocks": 0,                                                      +
                                           "Local Read Blocks": 0,                                                     +
                                           "Local Dirtied Blocks": 0,                                                  +
                                           "Local Written Blocks": 0,                                                  +
                                           "Temp Read Blocks": 0,                                                      +
                                           "Temp Written Blocks": 0,                                                   +
                                           "Plans": [                                                                  +
                                             {                                                                         +
                                               "Node Type": "Sort",                                                    +
                                               "Parent Relationship": "Outer",                                         +
                                               "Parallel Aware": false,                                                +
                                               "Startup Cost": 15052.24,                                               +
                                               "Total Cost": 15052.38,                                                 +
                                               "Plan Rows": 1745,                                                      +
                                               "Plan Width": 31,                                                       +
                                               "Actual Startup Time": 4649.972,                                        +
                                               "Actual Total Time": 4660.099,                                          +
                                               "Actual Rows": 209878,                                                  +
                                               "Actual Loops": 1,                                                      +
                                               "Sort Key": ["miidx.movie_id"],                                         +
                                               "Sort Method": "quicksort",                                             +
                                               "Sort Space Used": 23056,                                               +
                                               "Sort Space Type": "Memory",                                            +
                                               "Shared Hit Blocks": 5,                                                 +
                                               "Shared Read Blocks": 44448,                                            +
                                               "Shared Dirtied Blocks": 0,                                             +
                                               "Shared Written Blocks": 0,                                             +
                                               "Local Hit Blocks": 0,                                                  +
                                               "Local Read Blocks": 0,                                                 +
                                               "Local Dirtied Blocks": 0,                                              +
                                               "Local Written Blocks": 0,                                              +
                                               "Temp Read Blocks": 0,                                                  +
                                               "Temp Written Blocks": 0,                                               +
                                               "Plans": [                                                              +
                                                 {                                                                     +
                                                   "Node Type": "Merge Join",                                          +
                                                   "Parent Relationship": "Outer",                                     +
                                                   "Parallel Aware": false,                                            +
                                                   "Join Type": "Inner",                                               +
                                                   "Startup Cost": 15047.31,                                           +
                                                   "Total Cost": 15049.32,                                             +
                                                   "Plan Rows": 1745,                                                  +
                                                   "Plan Width": 31,                                                   +
                                                   "Actual Startup Time": 4521.747,                                    +
                                                   "Actual Total Time": 4579.902,                                      +
                                                   "Actual Rows": 209880,                                              +
                                                   "Actual Loops": 1,                                                  +
                                                   "Inner Unique": true,                                               +
                                                   "Merge Cond": "(t.kind_id = kt.id)",                                +
                                                   "Shared Hit Blocks": 5,                                             +
                                                   "Shared Read Blocks": 44448,                                        +
                                                   "Shared Dirtied Blocks": 0,                                         +
                                                   "Shared Written Blocks": 0,                                         +
                                                   "Local Hit Blocks": 0,                                              +
                                                   "Local Read Blocks": 0,                                             +
                                                   "Local Dirtied Blocks": 0,                                          +
                                                   "Local Written Blocks": 0,                                          +
                                                   "Temp Read Blocks": 0,                                              +
                                                   "Temp Written Blocks": 0,                                           +
                                                   "Plans": [                                                          +
                                                     {                                                                 +
                                                       "Node Type": "Sort",                                            +
                                                       "Parent Relationship": "Outer",                                 +
                                                       "Parallel Aware": false,                                        +
                                                       "Startup Cost": 15047.27,                                       +
                                                       "Total Cost": 15048.22,                                         +
                                                       "Plan Rows": 12213,                                             +
                                                       "Plan Width": 35,                                               +
                                                       "Actual Startup Time": 4521.715,                                +
                                                       "Actual Total Time": 4531.902,                                  +
                                                       "Actual Rows": 209881,                                          +
                                                       "Actual Loops": 1,                                              +
                                                       "Sort Key": ["t.kind_id"],                                      +
                                                       "Sort Method": "quicksort",                                     +
                                                       "Sort Space Used": 50930,                                       +
                                                       "Sort Space Type": "Memory",                                    +
                                                       "Shared Hit Blocks": 4,                                         +
                                                       "Shared Read Blocks": 44448,                                    +
                                                       "Shared Dirtied Blocks": 0,                                     +
                                                       "Shared Written Blocks": 0,                                     +
                                                       "Local Hit Blocks": 0,                                          +
                                                       "Local Read Blocks": 0,                                         +
                                                       "Local Dirtied Blocks": 0,                                      +
                                                       "Local Written Blocks": 0,                                      +
                                                       "Temp Read Blocks": 0,                                          +
                                                       "Temp Written Blocks": 0,                                       +
                                                       "Plans": [                                                      +
                                                         {                                                             +
                                                           "Node Type": "Merge Join",                                  +
                                                           "Parent Relationship": "Outer",                             +
                                                           "Parallel Aware": false,                                    +
                                                           "Join Type": "Inner",                                       +
                                                           "Startup Cost": 14626.58,                                   +
                                                           "Total Cost": 15021.53,                                     +
                                                           "Plan Rows": 12213,                                         +
                                                           "Plan Width": 35,                                           +
                                                           "Actual Startup Time": 3457.829,                            +
                                                           "Actual Total Time": 4385.866,                              +
                                                           "Actual Rows": 459925,                                      +
                                                           "Actual Loops": 1,                                          +
                                                           "Inner Unique": true,                                       +
                                                           "Merge Cond": "(miidx.movie_id = t.id)",                    +
                                                           "Shared Hit Blocks": 4,                                     +
                                                           "Shared Read Blocks": 44448,                                +
                                                           "Shared Dirtied Blocks": 0,                                 +
                                                           "Shared Written Blocks": 0,                                 +
                                                           "Local Hit Blocks": 0,                                      +
                                                           "Local Read Blocks": 0,                                     +
                                                           "Local Dirtied Blocks": 0,                                  +
                                                           "Local Written Blocks": 0,                                  +
                                                           "Temp Read Blocks": 0,                                      +
                                                           "Temp Written Blocks": 0,                                   +
                                                           "Plans": [                                                  +
                                                             {                                                         +
                                                               "Node Type": "Sort",                                    +
                                                               "Parent Relationship": "Outer",                         +
                                                               "Parallel Aware": false,                                +
                                                               "Startup Cost": 4972.23,                                +
                                                               "Total Cost": 4973.18,                                  +
                                                               "Plan Rows": 12213,                                     +
                                                               "Plan Width": 10,                                       +
                                                               "Actual Startup Time": 1121.196,                        +
                                                               "Actual Total Time": 1180.876,                          +
                                                               "Actual Rows": 459925,                                  +
                                                               "Actual Loops": 1,                                      +
                                                               "Sort Key": ["miidx.movie_id"],                         +
                                                               "Sort Method": "quicksort",                             +
                                                               "Sort Space Used": 33847,                               +
                                                               "Sort Space Type": "Memory",                            +
                                                               "Shared Hit Blocks": 3,                                 +
                                                               "Shared Read Blocks": 8451,                             +
                                                               "Shared Dirtied Blocks": 0,                             +
                                                               "Shared Written Blocks": 0,                             +
                                                               "Local Hit Blocks": 0,                                  +
                                                               "Local Read Blocks": 0,                                 +
                                                               "Local Dirtied Blocks": 0,                              +
                                                               "Local Written Blocks": 0,                              +
                                                               "Temp Read Blocks": 0,                                  +
                                                               "Temp Written Blocks": 0,                               +
                                                               "Plans": [                                              +
                                                                 {                                                     +
                                                                   "Node Type": "Merge Join",                          +
                                                                   "Parent Relationship": "Outer",                     +
                                                                   "Parallel Aware": false,                            +
                                                                   "Join Type": "Inner",                               +
                                                                   "Startup Cost": 4731.35,                            +
                                                                   "Total Cost": 4946.49,                              +
                                                                   "Plan Rows": 12213,                                 +
                                                                   "Plan Width": 10,                                   +
                                                                   "Actual Startup Time": 835.757,                     +
                                                                   "Actual Total Time": 944.455,                       +
                                                                   "Actual Rows": 459925,                              +
                                                                   "Actual Loops": 1,                                  +
                                                                   "Inner Unique": false,                              +
                                                                   "Merge Cond": "(it.id = miidx.info_type_id)",       +
                                                                   "Shared Hit Blocks": 3,                             +
                                                                   "Shared Read Blocks": 8451,                         +
                                                                   "Shared Dirtied Blocks": 0,                         +
                                                                   "Shared Written Blocks": 0,                         +
                                                                   "Local Hit Blocks": 0,                              +
                                                                   "Local Read Blocks": 0,                             +
                                                                   "Local Dirtied Blocks": 0,                          +
                                                                   "Local Written Blocks": 0,                          +
                                                                   "Temp Read Blocks": 0,                              +
                                                                   "Temp Written Blocks": 0,                           +
                                                                   "Plans": [                                          +
                                                                     {                                                 +
                                                                       "Node Type": "Sort",                            +
                                                                       "Parent Relationship": "Outer",                 +
                                                                       "Parallel Aware": false,                        +
                                                                       "Startup Cost": 0.05,                           +
                                                                       "Total Cost": 0.05,                             +
                                                                       "Plan Rows": 1,                                 +
                                                                       "Plan Width": 4,                                +
                                                                       "Actual Startup Time": 0.097,                   +
                                                                       "Actual Total Time": 0.098,                     +
                                                                       "Actual Rows": 1,                               +
                                                                       "Actual Loops": 1,                              +
                                                                       "Sort Key": ["it.id"],                          +
                                                                       "Sort Method": "quicksort",                     +
                                                                       "Sort Space Used": 25,                          +
                                                                       "Sort Space Type": "Memory",                    +
                                                                       "Shared Hit Blocks": 1,                         +
                                                                       "Shared Read Blocks": 0,                        +
                                                                       "Shared Dirtied Blocks": 0,                     +
                                                                       "Shared Written Blocks": 0,                     +
                                                                       "Local Hit Blocks": 0,                          +
                                                                       "Local Read Blocks": 0,                         +
                                                                       "Local Dirtied Blocks": 0,                      +
                                                                       "Local Written Blocks": 0,                      +
                                                                       "Temp Read Blocks": 0,                          +
                                                                       "Temp Written Blocks": 0,                       +
                                                                       "Plans": [                                      +
                                                                         {                                             +
                                                                           "Node Type": "Seq Scan",                    +
                                                                           "Parent Relationship": "Outer",             +
                                                                           "Parallel Aware": false,                    +
                                                                           "Relation Name": "info_type",               +
                                                                           "Alias": "it",                              +
                                                                           "Startup Cost": 0.00,                       +
                                                                           "Total Cost": 0.05,                         +
                                                                           "Plan Rows": 1,                             +
                                                                           "Plan Width": 4,                            +
                                                                           "Actual Startup Time": 0.075,               +
                                                                           "Actual Total Time": 0.080,                 +
                                                                           "Actual Rows": 1,                           +
                                                                           "Actual Loops": 1,                          +
                                                                           "Filter": "((info)::text = 'rating'::text)",+
                                                                           "Rows Removed by Filter": 112,              +
                                                                           "Shared Hit Blocks": 1,                     +
                                                                           "Shared Read Blocks": 0,                    +
                                                                           "Shared Dirtied Blocks": 0,                 +
                                                                           "Shared Written Blocks": 0,                 +
                                                                           "Local Hit Blocks": 0,                      +
                                                                           "Local Read Blocks": 0,                     +
                                                                           "Local Dirtied Blocks": 0,                  +
                                                                           "Local Written Blocks": 0,                  +
                                                                           "Temp Read Blocks": 0,                      +
                                                                           "Temp Written Blocks": 0                    +
                                                                         }                                             +
                                                                       ]                                               +
                                                                     },                                                +
                                                                     {                                                 +
                                                                       "Node Type": "Sort",                            +
                                                                       "Parent Relationship": "Inner",                 +
                                                                       "Parallel Aware": false,                        +
                                                                       "Startup Cost": 4731.30,                        +
                                                                       "Total Cost": 4838.45,                          +
                                                                       "Plan Rows": 1380035,                           +
                                                                       "Plan Width": 14,                               +
                                                                       "Actual Startup Time": 690.745,                 +
                                                                       "Actual Total Time": 763.017,                   +
                                                                       "Actual Rows": 1379776,                         +
                                                                       "Actual Loops": 1,                              +
                                                                       "Sort Key": ["miidx.info_type_id"],             +
                                                                       "Sort Method": "quicksort",                     +
                                                                       "Sort Space Used": 128214,                      +
                                                                       "Sort Space Type": "Memory",                    +
                                                                       "Shared Hit Blocks": 2,                         +
                                                                       "Shared Read Blocks": 8451,                     +
                                                                       "Shared Dirtied Blocks": 0,                     +
                                                                       "Shared Written Blocks": 0,                     +
                                                                       "Local Hit Blocks": 0,                          +
                                                                       "Local Read Blocks": 0,                         +
                                                                       "Local Dirtied Blocks": 0,                      +
                                                                       "Local Written Blocks": 0,                      +
                                                                       "Temp Read Blocks": 0,                          +
                                                                       "Temp Written Blocks": 0,                       +
                                                                       "Plans": [                                      +
                                                                         {                                             +
                                                                           "Node Type": "Seq Scan",                    +
                                                                           "Parent Relationship": "Outer",             +
                                                                           "Parallel Aware": false,                    +
                                                                           "Relation Name": "movie_info_idx",          +
                                                                           "Alias": "miidx",                           +
                                                                           "Startup Cost": 0.00,                       +
                                                                           "Total Cost": 360.56,                       +
                                                                           "Plan Rows": 1380035,                       +
                                                                           "Plan Width": 14,                           +
                                                                           "Actual Startup Time": 0.012,               +
                                                                           "Actual Total Time": 339.547,               +
                                                                           "Actual Rows": 1380035,                     +
                                                                           "Actual Loops": 1,                          +
                                                                           "Shared Hit Blocks": 2,                     +
                                                                           "Shared Read Blocks": 8451,                 +
                                                                           "Shared Dirtied Blocks": 0,                 +
                                                                           "Shared Written Blocks": 0,                 +
                                                                           "Local Hit Blocks": 0,                      +
                                                                           "Local Read Blocks": 0,                     +
                                                                           "Local Dirtied Blocks": 0,                  +
                                                                           "Local Written Blocks": 0,                  +
                                                                           "Temp Read Blocks": 0,                      +
                                                                           "Temp Written Blocks": 0                    +
                                                                         }                                             +
                                                                       ]                                               +
                                                                     }                                                 +
                                                                   ]                                                   +
                                                                 }                                                     +
                                                               ]                                                       +
                                                             },                                                        +
                                                             {                                                         +
                                                               "Node Type": "Sort",                                    +
                                                               "Parent Relationship": "Inner",                         +
                                                               "Parallel Aware": false,                                +
                                                               "Startup Cost": 9654.35,                                +
                                                               "Total Cost": 9850.65,                                  +
                                                               "Plan Rows": 2528312,                                   +
                                                               "Plan Width": 25,                                       +
                                                               "Actual Startup Time": 2336.621,                        +
                                                               "Actual Total Time": 2668.236,                          +
                                                               "Actual Rows": 2525793,                                 +
                                                               "Actual Loops": 1,                                      +
                                                               "Sort Key": ["t.id"],                                   +
                                                               "Sort Method": "quicksort",                             +
                                                               "Sort Space Used": 290000,                              +
                                                               "Sort Space Type": "Memory",                            +
                                                               "Shared Hit Blocks": 1,                                 +
                                                               "Shared Read Blocks": 35997,                            +
                                                               "Shared Dirtied Blocks": 0,                             +
                                                               "Shared Written Blocks": 0,                             +
                                                               "Local Hit Blocks": 0,                                  +
                                                               "Local Read Blocks": 0,                                 +
                                                               "Local Dirtied Blocks": 0,                              +
                                                               "Local Written Blocks": 0,                              +
                                                               "Temp Read Blocks": 0,                                  +
                                                               "Temp Written Blocks": 0,                               +
                                                               "Plans": [                                              +
                                                                 {                                                     +
                                                                   "Node Type": "Seq Scan",                            +
                                                                   "Parent Relationship": "Outer",                     +
                                                                   "Parallel Aware": false,                            +
                                                                   "Relation Name": "title",                           +
                                                                   "Alias": "t",                                       +
                                                                   "Startup Cost": 0.00,                               +
                                                                   "Total Cost": 1303.96,                              +
                                                                   "Plan Rows": 2528312,                               +
                                                                   "Plan Width": 25,                                   +
                                                                   "Actual Startup Time": 25.092,                      +
                                                                   "Actual Total Time": 1007.868,                      +
                                                                   "Actual Rows": 2528312,                             +
                                                                   "Actual Loops": 1,                                  +
                                                                   "Shared Hit Blocks": 1,                             +
                                                                   "Shared Read Blocks": 35997,                        +
                                                                   "Shared Dirtied Blocks": 0,                         +
                                                                   "Shared Written Blocks": 0,                         +
                                                                   "Local Hit Blocks": 0,                              +
                                                                   "Local Read Blocks": 0,                             +
                                                                   "Local Dirtied Blocks": 0,                          +
                                                                   "Local Written Blocks": 0,                          +
                                                                   "Temp Read Blocks": 0,                              +
                                                                   "Temp Written Blocks": 0                            +
                                                                 }                                                     +
                                                               ]                                                       +
                                                             }                                                         +
                                                           ]                                                           +
                                                         }                                                             +
                                                       ]                                                               +
                                                     },                                                                +
                                                     {                                                                 +
                                                       "Node Type": "Sort",                                            +
                                                       "Parent Relationship": "Inner",                                 +
                                                       "Parallel Aware": false,                                        +
                                                       "Startup Cost": 0.03,                                           +
                                                       "Total Cost": 0.03,                                             +
                                                       "Plan Rows": 1,                                                 +
                                                       "Plan Width": 4,                                                +
                                                       "Actual Startup Time": 0.028,                                   +
                                                       "Actual Total Time": 0.028,                                     +
                                                       "Actual Rows": 1,                                               +
                                                       "Actual Loops": 1,                                              +
                                                       "Sort Key": ["kt.id"],                                          +
                                                       "Sort Method": "quicksort",                                     +
                                                       "Sort Space Used": 25,                                          +
                                                       "Sort Space Type": "Memory",                                    +
                                                       "Shared Hit Blocks": 1,                                         +
                                                       "Shared Read Blocks": 0,                                        +
                                                       "Shared Dirtied Blocks": 0,                                     +
                                                       "Shared Written Blocks": 0,                                     +
                                                       "Local Hit Blocks": 0,                                          +
                                                       "Local Read Blocks": 0,                                         +
                                                       "Local Dirtied Blocks": 0,                                      +
                                                       "Local Written Blocks": 0,                                      +
                                                       "Temp Read Blocks": 0,                                          +
                                                       "Temp Written Blocks": 0,                                       +
                                                       "Plans": [                                                      +
                                                         {                                                             +
                                                           "Node Type": "Seq Scan",                                    +
                                                           "Parent Relationship": "Outer",                             +
                                                           "Parallel Aware": false,                                    +
                                                           "Relation Name": "kind_type",                               +
                                                           "Alias": "kt",                                              +
                                                           "Startup Cost": 0.00,                                       +
                                                           "Total Cost": 0.03,                                         +
                                                           "Plan Rows": 1,                                             +
                                                           "Plan Width": 4,                                            +
                                                           "Actual Startup Time": 0.017,                               +
                                                           "Actual Total Time": 0.018,                                 +
                                                           "Actual Rows": 1,                                           +
                                                           "Actual Loops": 1,                                          +
                                                           "Filter": "((kind)::text = 'movie'::text)",                 +
                                                           "Rows Removed by Filter": 6,                                +
                                                           "Shared Hit Blocks": 1,                                     +
                                                           "Shared Read Blocks": 0,                                    +
                                                           "Shared Dirtied Blocks": 0,                                 +
                                                           "Shared Written Blocks": 0,                                 +
                                                           "Local Hit Blocks": 0,                                      +
                                                           "Local Read Blocks": 0,                                     +
                                                           "Local Dirtied Blocks": 0,                                  +
                                                           "Local Written Blocks": 0,                                  +
                                                           "Temp Read Blocks": 0,                                      +
                                                           "Temp Written Blocks": 0                                    +
                                                         }                                                             +
                                                       ]                                                               +
                                                     }                                                                 +
                                                   ]                                                                   +
                                                 }                                                                     +
                                               ]                                                                       +
                                             },                                                                        +
                                             {                                                                         +
                                               "Node Type": "Sort",                                                    +
                                               "Parent Relationship": "Inner",                                         +
                                               "Parallel Aware": false,                                                +
                                               "Startup Cost": 9405.45,                                                +
                                               "Total Cost": 9608.03,                                                  +
                                               "Plan Rows": 2609129,                                                   +
                                               "Plan Width": 12,                                                       +
                                               "Actual Startup Time": 1519.900,                                        +
                                               "Actual Total Time": 1640.432,                                          +
                                               "Actual Rows": 2609129,                                                 +
                                               "Actual Loops": 1,                                                      +
                                               "Sort Key": ["mc.movie_id"],                                            +
                                               "Sort Method": "quicksort",                                             +
                                               "Sort Space Used": 220607,                                              +
                                               "Sort Space Type": "Memory",                                            +
                                               "Shared Hit Blocks": 3,                                                 +
                                               "Shared Read Blocks": 18786,                                            +
                                               "Shared Dirtied Blocks": 0,                                             +
                                               "Shared Written Blocks": 0,                                             +
                                               "Local Hit Blocks": 0,                                                  +
                                               "Local Read Blocks": 0,                                                 +
                                               "Local Dirtied Blocks": 0,                                              +
                                               "Local Written Blocks": 0,                                              +
                                               "Temp Read Blocks": 0,                                                  +
                                               "Temp Written Blocks": 0,                                               +
                                               "Plans": [                                                              +
                                                 {                                                                     +
                                                   "Node Type": "Seq Scan",                                            +
                                                   "Parent Relationship": "Outer",                                     +
                                                   "Parallel Aware": false,                                            +
                                                   "Relation Name": "movie_companies",                                 +
                                                   "Alias": "mc",                                                      +
                                                   "Startup Cost": 0.00,                                               +
                                                   "Total Cost": 769.75,                                               +
                                                   "Plan Rows": 2609129,                                               +
                                                   "Plan Width": 12,                                                   +
                                                   "Actual Startup Time": 0.013,                                       +
                                                   "Actual Total Time": 547.909,                                       +
                                                   "Actual Rows": 2609129,                                             +
                                                   "Actual Loops": 1,                                                  +
                                                   "Shared Hit Blocks": 3,                                             +
                                                   "Shared Read Blocks": 18786,                                        +
                                                   "Shared Dirtied Blocks": 0,                                         +
                                                   "Shared Written Blocks": 0,                                         +
                                                   "Local Hit Blocks": 0,                                              +
                                                   "Local Read Blocks": 0,                                             +
                                                   "Local Dirtied Blocks": 0,                                          +
                                                   "Local Written Blocks": 0,                                          +
                                                   "Temp Read Blocks": 0,                                              +
                                                   "Temp Written Blocks": 0                                            +
                                                 }                                                                     +
                                               ]                                                                       +
                                             }                                                                         +
                                           ]                                                                           +
                                         }                                                                             +
                                       ]                                                                               +
                                     },                                                                                +
                                     {                                                                                 +
                                       "Node Type": "Sort",                                                            +
                                       "Parent Relationship": "Inner",                                                 +
                                       "Parallel Aware": false,                                                        +
                                       "Startup Cost": 148.53,                                                         +
                                       "Total Cost": 149.28,                                                           +
                                       "Plan Rows": 9775,                                                              +
                                       "Plan Width": 4,                                                                +
                                       "Actual Startup Time": 183.625,                                                 +
                                       "Actual Total Time": 184.971,                                                   +
                                       "Actual Rows": 9775,                                                            +
                                       "Actual Loops": 1,                                                              +
                                       "Sort Key": ["cn.id"],                                                          +
                                       "Sort Method": "quicksort",                                                     +
                                       "Sort Space Used": 843,                                                         +
                                       "Sort Space Type": "Memory",                                                    +
                                       "Shared Hit Blocks": 2,                                                         +
                                       "Shared Read Blocks": 2992,                                                     +
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
                                           "Relation Name": "company_name",                                            +
                                           "Alias": "cn",                                                              +
                                           "Startup Cost": 0.00,                                                       +
                                           "Total Cost": 128.41,                                                       +
                                           "Plan Rows": 9775,                                                          +
                                           "Plan Width": 4,                                                            +
                                           "Actual Startup Time": 45.699,                                              +
                                           "Actual Total Time": 177.441,                                               +
                                           "Actual Rows": 9775,                                                        +
                                           "Actual Loops": 1,                                                          +
                                           "Filter": "((country_code)::text = '[de]'::text)",                          +
                                           "Rows Removed by Filter": 225222,                                           +
                                           "Shared Hit Blocks": 2,                                                     +
                                           "Shared Read Blocks": 2992,                                                 +
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
                               "Startup Cost": 0.03,                                                                   +
                               "Total Cost": 0.03,                                                                     +
                               "Plan Rows": 1,                                                                         +
                               "Plan Width": 4,                                                                        +
                               "Actual Startup Time": 0.025,                                                           +
                               "Actual Total Time": 0.025,                                                             +
                               "Actual Rows": 1,                                                                       +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["ct.id"],                                                                  +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 25,                                                                  +
                               "Sort Space Type": "Memory",                                                            +
                               "Shared Hit Blocks": 1,                                                                 +
                               "Shared Read Blocks": 0,                                                                +
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
                                   "Relation Name": "company_type",                                                    +
                                   "Alias": "ct",                                                                      +
                                   "Startup Cost": 0.00,                                                               +
                                   "Total Cost": 0.03,                                                                 +
                                   "Plan Rows": 1,                                                                     +
                                   "Plan Width": 4,                                                                    +
                                   "Actual Startup Time": 0.015,                                                       +
                                   "Actual Total Time": 0.016,                                                         +
                                   "Actual Rows": 1,                                                                   +
                                   "Actual Loops": 1,                                                                  +
                                   "Filter": "((kind)::text = 'production companies'::text)",                          +
                                   "Rows Removed by Filter": 3,                                                        +
                                   "Shared Hit Blocks": 1,                                                             +
                                   "Shared Read Blocks": 0,                                                            +
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
                       "Startup Cost": 60983.46,                                                                       +
                       "Total Cost": 62135.30,                                                                         +
                       "Plan Rows": 14835720,                                                                          +
                       "Plan Width": 50,                                                                               +
                       "Actual Startup Time": 11550.999,                                                               +
                       "Actual Total Time": 12404.464,                                                                 +
                       "Actual Rows": 15037274,                                                                        +
                       "Actual Loops": 1,                                                                              +
                       "Sort Key": ["mi.movie_id"],                                                                    +
                       "Sort Method": "quicksort",                                                                     +
                       "Sort Space Used": 1986756,                                                                     +
                       "Sort Space Type": "Memory",                                                                    +
                       "Shared Hit Blocks": 2,                                                                         +
                       "Shared Read Blocks": 161890,                                                                   +
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
                           "Relation Name": "movie_info",                                                              +
                           "Alias": "mi",                                                                              +
                           "Startup Cost": 0.00,                                                                       +
                           "Total Cost": 6103.84,                                                                      +
                           "Plan Rows": 14835720,                                                                      +
                           "Plan Width": 50,                                                                           +
                           "Actual Startup Time": 7.466,                                                               +
                           "Actual Total Time": 4874.509,                                                              +
                           "Actual Rows": 14835720,                                                                    +
                           "Actual Loops": 1,                                                                          +
                           "Shared Hit Blocks": 2,                                                                     +
                           "Shared Read Blocks": 161890,                                                               +
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
               "Startup Cost": 0.05,                                                                                   +
               "Total Cost": 0.05,                                                                                     +
               "Plan Rows": 1,                                                                                         +
               "Plan Width": 4,                                                                                        +
               "Actual Startup Time": 0.037,                                                                           +
               "Actual Total Time": 0.037,                                                                             +
               "Actual Rows": 1,                                                                                       +
               "Actual Loops": 1,                                                                                      +
               "Sort Key": ["it2.id"],                                                                                 +
               "Sort Method": "quicksort",                                                                             +
               "Sort Space Used": 25,                                                                                  +
               "Sort Space Type": "Memory",                                                                            +
               "Shared Hit Blocks": 1,                                                                                 +
               "Shared Read Blocks": 0,                                                                                +
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
                   "Relation Name": "info_type",                                                                       +
                   "Alias": "it2",                                                                                     +
                   "Startup Cost": 0.00,                                                                               +
                   "Total Cost": 0.05,                                                                                 +
                   "Plan Rows": 1,                                                                                     +
                   "Plan Width": 4,                                                                                    +
                   "Actual Startup Time": 0.019,                                                                       +
                   "Actual Total Time": 0.028,                                                                         +
                   "Actual Rows": 1,                                                                                   +
                   "Actual Loops": 1,                                                                                  +
                   "Filter": "((info)::text = 'release dates'::text)",                                                 +
                   "Rows Removed by Filter": 112,                                                                      +
                   "Shared Hit Blocks": 1,                                                                             +
                   "Shared Read Blocks": 0,                                                                            +
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
     "Planning Time": 5097.781,                                                                                        +
     "Triggers": [                                                                                                     +
     ],                                                                                                                +
     "Execution Time": 22076.530                                                                                       +
   }                                                                                                                   +
 ]
(1 row)
