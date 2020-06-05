                                                       QUERY PLAN                                                       
------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                     +
   {                                                                                                                   +
     "Plan": {                                                                                                         +
       "Node Type": "Aggregate",                                                                                       +
       "Strategy": "Plain",                                                                                            +
       "Partial Mode": "Simple",                                                                                       +
       "Parallel Aware": false,                                                                                        +
       "Startup Cost": 88530.02,                                                                                       +
       "Total Cost": 88530.02,                                                                                         +
       "Plan Rows": 1,                                                                                                 +
       "Plan Width": 96,                                                                                               +
       "Actual Startup Time": 24090.291,                                                                               +
       "Actual Total Time": 24090.291,                                                                                 +
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
           "Startup Cost": 88529.17,                                                                                   +
           "Total Cost": 88530.01,                                                                                     +
           "Plan Rows": 47,                                                                                            +
           "Plan Width": 42,                                                                                           +
           "Actual Startup Time": 23658.855,                                                                           +
           "Actual Total Time": 23876.270,                                                                             +
           "Actual Rows": 670390,                                                                                      +
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
               "Startup Cost": 88529.12,                                                                               +
               "Total Cost": 88529.54,                                                                                 +
               "Plan Rows": 5352,                                                                                      +
               "Plan Width": 46,                                                                                       +
               "Actual Startup Time": 23138.451,                                                                       +
               "Actual Total Time": 23428.047,                                                                         +
               "Actual Rows": 2793912,                                                                                 +
               "Actual Loops": 1,                                                                                      +
               "Sort Key": ["mi.info_type_id"],                                                                        +
               "Sort Method": "quicksort",                                                                             +
               "Sort Space Used": 640438,                                                                              +
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
                   "Startup Cost": 86214.93,                                                                           +
                   "Total Cost": 88518.83,                                                                             +
                   "Plan Rows": 5352,                                                                                  +
                   "Plan Width": 46,                                                                                   +
                   "Actual Startup Time": 19667.336,                                                                   +
                   "Actual Total Time": 21950.761,                                                                     +
                   "Actual Rows": 4316584,                                                                             +
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
                       "Startup Cost": 25231.48,                                                                       +
                       "Total Cost": 25231.51,                                                                         +
                       "Plan Rows": 380,                                                                               +
                       "Plan Width": 54,                                                                               +
                       "Actual Startup Time": 7671.879,                                                                +
                       "Actual Total Time": 7684.781,                                                                  +
                       "Actual Rows": 87293,                                                                           +
                       "Actual Loops": 1,                                                                              +
                       "Sort Key": ["mc.movie_id"],                                                                    +
                       "Sort Method": "quicksort",                                                                     +
                       "Sort Space Used": 13992,                                                                       +
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
                           "Startup Cost": 25217.61,                                                                   +
                           "Total Cost": 25230.97,                                                                     +
                           "Plan Rows": 380,                                                                           +
                           "Plan Width": 54,                                                                           +
                           "Actual Startup Time": 7501.713,                                                            +
                           "Actual Total Time": 7629.623,                                                              +
                           "Actual Rows": 87293,                                                                       +
                           "Actual Loops": 1,                                                                          +
                           "Inner Unique": true,                                                                       +
                           "Merge Cond": "(mc.company_id = cn.id)",                                                    +
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
                               "Startup Cost": 24873.50,                                                               +
                               "Total Cost": 24873.58,                                                                 +
                               "Plan Rows": 1052,                                                                      +
                               "Plan Width": 39,                                                                       +
                               "Actual Startup Time": 7341.386,                                                        +
                               "Actual Total Time": 7384.373,                                                          +
                               "Actual Rows": 302610,                                                                  +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["mc.company_id"],                                                          +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 37984,                                                               +
                               "Sort Space Type": "Memory",                                                            +
                               "Shared Hit Blocks": 9,                                                                 +
                               "Shared Read Blocks": 63234,                                                            +
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
                                   "Startup Cost": 24871.14,                                                           +
                                   "Total Cost": 24871.86,                                                             +
                                   "Plan Rows": 1052,                                                                  +
                                   "Plan Width": 39,                                                                   +
                                   "Actual Startup Time": 7120.064,                                                    +
                                   "Actual Total Time": 7214.175,                                                      +
                                   "Actual Rows": 302610,                                                              +
                                   "Actual Loops": 1,                                                                  +
                                   "Inner Unique": true,                                                               +
                                   "Merge Cond": "(mc.company_type_id = ct.id)",                                       +
                                   "Shared Hit Blocks": 9,                                                             +
                                   "Shared Read Blocks": 63234,                                                        +
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
                                       "Actual Startup Time": 7039.608,                                                +
                                       "Actual Total Time": 7077.858,                                                  +
                                       "Actual Rows": 773084,                                                          +
                                       "Actual Loops": 1,                                                              +
                                       "Sort Key": ["mc.company_type_id"],                                             +
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
                                           "Actual Startup Time": 6401.247,                                            +
                                           "Actual Total Time": 6804.292,                                              +
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
                                               "Actual Startup Time": 4782.323,                                        +
                                               "Actual Total Time": 4792.622,                                          +
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
                                                   "Actual Startup Time": 4655.221,                                    +
                                                   "Actual Total Time": 4712.460,                                      +
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
                                                       "Actual Startup Time": 4655.188,                                +
                                                       "Actual Total Time": 4665.399,                                  +
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
                                                           "Actual Startup Time": 3594.760,                            +
                                                           "Actual Total Time": 4518.052,                              +
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
                                                               "Actual Startup Time": 1263.300,                        +
                                                               "Actual Total Time": 1322.445,                          +
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
                                                                   "Actual Startup Time": 978.077,                     +
                                                                   "Actual Total Time": 1087.710,                      +
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
                                                                       "Actual Startup Time": 0.094,                   +
                                                                       "Actual Total Time": 0.095,                     +
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
                                                                           "Actual Startup Time": 0.073,               +
                                                                           "Actual Total Time": 0.079,                 +
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
                                                                       "Actual Startup Time": 832.355,                 +
                                                                       "Actual Total Time": 904.756,                   +
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
                                                                           "Actual Startup Time": 0.011,               +
                                                                           "Actual Total Time": 481.815,               +
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
                                                               "Actual Startup Time": 2331.449,                        +
                                                               "Actual Total Time": 2657.630,                          +
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
                                                                   "Actual Startup Time": 24.746,                      +
                                                                   "Actual Total Time": 995.267,                       +
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
                                                       "Actual Total Time": 0.029,                                     +
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
                                                           "Actual Total Time": 0.019,                                 +
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
                                               "Actual Startup Time": 1494.391,                                        +
                                               "Actual Total Time": 1614.848,                                          +
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
                                                   "Actual Total Time": 537.222,                                       +
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
                                       "Startup Cost": 0.03,                                                           +
                                       "Total Cost": 0.03,                                                             +
                                       "Plan Rows": 1,                                                                 +
                                       "Plan Width": 4,                                                                +
                                       "Actual Startup Time": 0.029,                                                   +
                                       "Actual Total Time": 0.029,                                                     +
                                       "Actual Rows": 1,                                                               +
                                       "Actual Loops": 1,                                                              +
                                       "Sort Key": ["ct.id"],                                                          +
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
                                           "Relation Name": "company_type",                                            +
                                           "Alias": "ct",                                                              +
                                           "Startup Cost": 0.00,                                                       +
                                           "Total Cost": 0.03,                                                         +
                                           "Plan Rows": 1,                                                             +
                                           "Plan Width": 4,                                                            +
                                           "Actual Startup Time": 0.019,                                               +
                                           "Actual Total Time": 0.020,                                                 +
                                           "Actual Rows": 1,                                                           +
                                           "Actual Loops": 1,                                                          +
                                           "Filter": "((kind)::text = 'production companies'::text)",                  +
                                           "Rows Removed by Filter": 3,                                                +
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
                                     }                                                                                 +
                                   ]                                                                                   +
                                 }                                                                                     +
                               ]                                                                                       +
                             },                                                                                        +
                             {                                                                                         +
                               "Node Type": "Sort",                                                                    +
                               "Parent Relationship": "Inner",                                                         +
                               "Parallel Aware": false,                                                                +
                               "Startup Cost": 344.10,                                                                 +
                               "Total Cost": 350.69,                                                                   +
                               "Plan Rows": 84843,                                                                     +
                               "Plan Width": 23,                                                                       +
                               "Actual Startup Time": 160.317,                                                         +
                               "Actual Total Time": 171.641,                                                           +
                               "Actual Rows": 84843,                                                                   +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["cn.id"],                                                                  +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 9413,                                                                +
                               "Sort Space Type": "Memory",                                                            +
                               "Shared Hit Blocks": 2,                                                                 +
                               "Shared Read Blocks": 2992,                                                             +
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
                                   "Relation Name": "company_name",                                                    +
                                   "Alias": "cn",                                                                      +
                                   "Startup Cost": 0.00,                                                               +
                                   "Total Cost": 128.41,                                                               +
                                   "Plan Rows": 84843,                                                                 +
                                   "Plan Width": 23,                                                                   +
                                   "Actual Startup Time": 4.342,                                                       +
                                   "Actual Total Time": 109.684,                                                       +
                                   "Actual Rows": 84843,                                                               +
                                   "Actual Loops": 1,                                                                  +
                                   "Filter": "((country_code)::text = '[us]'::text)",                                  +
                                   "Rows Removed by Filter": 150154,                                                   +
                                   "Shared Hit Blocks": 2,                                                             +
                                   "Shared Read Blocks": 2992,                                                         +
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
                       "Plan Width": 8,                                                                                +
                       "Actual Startup Time": 11339.041,                                                               +
                       "Actual Total Time": 12209.645,                                                                 +
                       "Actual Rows": 16805450,                                                                        +
                       "Actual Loops": 1,                                                                              +
                       "Sort Key": ["mi.movie_id"],                                                                    +
                       "Sort Method": "quicksort",                                                                     +
                       "Sort Space Used": 1088641,                                                                     +
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
                           "Plan Width": 8,                                                                            +
                           "Actual Startup Time": 2.552,                                                               +
                           "Actual Total Time": 5586.830,                                                              +
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
               "Actual Startup Time": 0.039,                                                                           +
               "Actual Total Time": 0.039,                                                                             +
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
                   "Actual Total Time": 0.029,                                                                         +
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
     "Planning Time": 5040.838,                                                                                        +
     "Triggers": [                                                                                                     +
     ],                                                                                                                +
     "Execution Time": 24196.478                                                                                       +
   }                                                                                                                   +
 ]
(1 row)
