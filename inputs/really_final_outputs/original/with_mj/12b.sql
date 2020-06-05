                                                                                  QUERY PLAN                                                                                  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                           +
   {                                                                                                                                                                         +
     "Plan": {                                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                                             +
       "Parallel Aware": false,                                                                                                                                              +
       "Startup Cost": 80307.52,                                                                                                                                             +
       "Total Cost": 80307.52,                                                                                                                                               +
       "Plan Rows": 1,                                                                                                                                                       +
       "Plan Width": 64,                                                                                                                                                     +
       "Actual Startup Time": 18945.537,                                                                                                                                     +
       "Actual Total Time": 18945.537,                                                                                                                                       +
       "Actual Rows": 1,                                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                                    +
       "Shared Hit Blocks": 17,                                                                                                                                              +
       "Shared Read Blocks": 228116,                                                                                                                                         +
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
           "Startup Cost": 80307.52,                                                                                                                                         +
           "Total Cost": 80307.52,                                                                                                                                           +
           "Plan Rows": 1,                                                                                                                                                   +
           "Plan Width": 59,                                                                                                                                                 +
           "Actual Startup Time": 18945.485,                                                                                                                                 +
           "Actual Total Time": 18945.488,                                                                                                                                   +
           "Actual Rows": 10,                                                                                                                                                +
           "Actual Loops": 1,                                                                                                                                                +
           "Inner Unique": true,                                                                                                                                             +
           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                                                   +
           "Shared Hit Blocks": 17,                                                                                                                                          +
           "Shared Read Blocks": 228116,                                                                                                                                     +
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
               "Startup Cost": 80307.47,                                                                                                                                     +
               "Total Cost": 80307.47,                                                                                                                                       +
               "Plan Rows": 40,                                                                                                                                              +
               "Plan Width": 63,                                                                                                                                             +
               "Actual Startup Time": 18945.257,                                                                                                                             +
               "Actual Total Time": 18945.318,                                                                                                                               +
               "Actual Rows": 1393,                                                                                                                                          +
               "Actual Loops": 1,                                                                                                                                            +
               "Sort Key": ["mi_idx.info_type_id"],                                                                                                                          +
               "Sort Method": "quicksort",                                                                                                                                   +
               "Sort Space Used": 171,                                                                                                                                       +
               "Sort Space Type": "Memory",                                                                                                                                  +
               "Shared Hit Blocks": 16,                                                                                                                                      +
               "Shared Read Blocks": 228116,                                                                                                                                 +
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
                   "Startup Cost": 80306.73,                                                                                                                                 +
                   "Total Cost": 80307.44,                                                                                                                                   +
                   "Plan Rows": 40,                                                                                                                                          +
                   "Plan Width": 63,                                                                                                                                         +
                   "Actual Startup Time": 18944.360,                                                                                                                         +
                   "Actual Total Time": 18944.855,                                                                                                                           +
                   "Actual Rows": 1393,                                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                                        +
                   "Inner Unique": true,                                                                                                                                     +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                               +
                   "Shared Hit Blocks": 12,                                                                                                                                  +
                   "Shared Read Blocks": 228116,                                                                                                                             +
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
                       "Node Type": "Sort",                                                                                                                                  +
                       "Parent Relationship": "Outer",                                                                                                                       +
                       "Parallel Aware": false,                                                                                                                              +
                       "Startup Cost": 80306.68,                                                                                                                             +
                       "Total Cost": 80307.03,                                                                                                                               +
                       "Plan Rows": 4538,                                                                                                                                    +
                       "Plan Width": 67,                                                                                                                                     +
                       "Actual Startup Time": 18915.803,                                                                                                                     +
                       "Actual Total Time": 18927.146,                                                                                                                       +
                       "Actual Rows": 134531,                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                                    +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                      +
                       "Sort Method": "quicksort",                                                                                                                           +
                       "Sort Space Used": 39107,                                                                                                                             +
                       "Sort Space Type": "Memory",                                                                                                                          +
                       "Shared Hit Blocks": 11,                                                                                                                              +
                       "Shared Read Blocks": 228116,                                                                                                                         +
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
                           "Startup Cost": 77781.65,                                                                                                                         +
                           "Total Cost": 80298.12,                                                                                                                           +
                           "Plan Rows": 4538,                                                                                                                                +
                           "Plan Width": 67,                                                                                                                                 +
                           "Actual Startup Time": 16131.422,                                                                                                                 +
                           "Actual Total Time": 18865.871,                                                                                                                   +
                           "Actual Rows": 162067,                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                                +
                           "Inner Unique": false,                                                                                                                            +
                           "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                                         +
                           "Shared Hit Blocks": 11,                                                                                                                          +
                           "Shared Read Blocks": 228116,                                                                                                                     +
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
                               "Startup Cost": 73050.35,                                                                                                                     +
                               "Total Cost": 75354.17,                                                                                                                       +
                               "Plan Rows": 5144,                                                                                                                            +
                               "Plan Width": 75,                                                                                                                             +
                               "Actual Startup Time": 15303.738,                                                                                                             +
                               "Actual Total Time": 17795.632,                                                                                                               +
                               "Actual Rows": 59405,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                            +
                               "Inner Unique": false,                                                                                                                        +
                               "Merge Cond": "(t.id = mi.movie_id)",                                                                                                         +
                               "Shared Hit Blocks": 9,                                                                                                                       +
                               "Shared Read Blocks": 219665,                                                                                                                 +
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
                                   "Startup Cost": 12066.89,                                                                                                                 +
                                   "Total Cost": 12066.91,                                                                                                                   +
                                   "Plan Rows": 252,                                                                                                                         +
                                   "Plan Width": 25,                                                                                                                         +
                                   "Actual Startup Time": 3960.997,                                                                                                          +
                                   "Actual Total Time": 3961.399,                                                                                                            +
                                   "Actual Rows": 2127,                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                        +
                                   "Sort Key": ["mc.movie_id"],                                                                                                              +
                                   "Sort Method": "quicksort",                                                                                                               +
                                   "Sort Space Used": 286,                                                                                                                   +
                                   "Sort Space Type": "Memory",                                                                                                              +
                                   "Shared Hit Blocks": 7,                                                                                                                   +
                                   "Shared Read Blocks": 57775,                                                                                                              +
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
                                       "Startup Cost": 12066.48,                                                                                                             +
                                       "Total Cost": 12066.58,                                                                                                               +
                                       "Plan Rows": 252,                                                                                                                     +
                                       "Plan Width": 25,                                                                                                                     +
                                       "Actual Startup Time": 3959.717,                                                                                                      +
                                       "Actual Total Time": 3960.299,                                                                                                        +
                                       "Actual Rows": 2127,                                                                                                                  +
                                       "Actual Loops": 1,                                                                                                                    +
                                       "Inner Unique": true,                                                                                                                 +
                                       "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                         +
                                       "Shared Hit Blocks": 7,                                                                                                               +
                                       "Shared Read Blocks": 57775,                                                                                                          +
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
                                           "Startup Cost": 12066.45,                                                                                                         +
                                           "Total Cost": 12066.49,                                                                                                           +
                                           "Plan Rows": 505,                                                                                                                 +
                                           "Plan Width": 29,                                                                                                                 +
                                           "Actual Startup Time": 3959.694,                                                                                                  +
                                           "Actual Total Time": 3959.801,                                                                                                    +
                                           "Actual Rows": 2127,                                                                                                              +
                                           "Actual Loops": 1,                                                                                                                +
                                           "Sort Key": ["mc.company_type_id"],                                                                                               +
                                           "Sort Method": "quicksort",                                                                                                       +
                                           "Sort Space Used": 294,                                                                                                           +
                                           "Sort Space Type": "Memory",                                                                                                      +
                                           "Shared Hit Blocks": 6,                                                                                                           +
                                           "Shared Read Blocks": 57775,                                                                                                      +
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
                                               "Startup Cost": 12052.32,                                                                                                     +
                                               "Total Cost": 12065.75,                                                                                                       +
                                               "Plan Rows": 505,                                                                                                             +
                                               "Plan Width": 29,                                                                                                             +
                                               "Actual Startup Time": 3940.474,                                                                                              +
                                               "Actual Total Time": 3959.155,                                                                                                +
                                               "Actual Rows": 2127,                                                                                                          +
                                               "Actual Loops": 1,                                                                                                            +
                                               "Inner Unique": true,                                                                                                         +
                                               "Merge Cond": "(mc.company_id = cn.id)",                                                                                      +
                                               "Shared Hit Blocks": 6,                                                                                                       +
                                               "Shared Read Blocks": 57775,                                                                                                  +
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
                                                   "Node Type": "Sort",                                                                                                      +
                                                   "Parent Relationship": "Outer",                                                                                           +
                                                   "Parallel Aware": false,                                                                                                  +
                                                   "Startup Cost": 11708.22,                                                                                                 +
                                                   "Total Cost": 11708.32,                                                                                                   +
                                                   "Plan Rows": 1398,                                                                                                        +
                                                   "Plan Width": 33,                                                                                                         +
                                                   "Actual Startup Time": 3774.078,                                                                                          +
                                                   "Actual Total Time": 3774.627,                                                                                            +
                                                   "Actual Rows": 3968,                                                                                                      +
                                                   "Actual Loops": 1,                                                                                                        +
                                                   "Sort Key": ["mc.company_id"],                                                                                            +
                                                   "Sort Method": "quicksort",                                                                                               +
                                                   "Sort Space Used": 476,                                                                                                   +
                                                   "Sort Space Type": "Memory",                                                                                              +
                                                   "Shared Hit Blocks": 4,                                                                                                   +
                                                   "Shared Read Blocks": 54783,                                                                                              +
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
                                                       "Startup Cost": 11300.50,                                                                                             +
                                                       "Total Cost": 11705.95,                                                                                               +
                                                       "Plan Rows": 1398,                                                                                                    +
                                                       "Plan Width": 33,                                                                                                     +
                                                       "Actual Startup Time": 3406.239,                                                                                      +
                                                       "Actual Total Time": 3772.514,                                                                                        +
                                                       "Actual Rows": 3968,                                                                                                  +
                                                       "Actual Loops": 1,                                                                                                    +
                                                       "Inner Unique": true,                                                                                                 +
                                                       "Merge Cond": "(mc.movie_id = t.id)",                                                                                 +
                                                       "Shared Hit Blocks": 4,                                                                                               +
                                                       "Shared Read Blocks": 54783,                                                                                          +
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
                                                           "Startup Cost": 9405.45,                                                                                          +
                                                           "Total Cost": 9608.03,                                                                                            +
                                                           "Plan Rows": 2609129,                                                                                             +
                                                           "Plan Width": 12,                                                                                                 +
                                                           "Actual Startup Time": 1677.895,                                                                                  +
                                                           "Actual Total Time": 1796.607,                                                                                    +
                                                           "Actual Rows": 2609129,                                                                                           +
                                                           "Actual Loops": 1,                                                                                                +
                                                           "Sort Key": ["mc.movie_id"],                                                                                      +
                                                           "Sort Method": "quicksort",                                                                                       +
                                                           "Sort Space Used": 220607,                                                                                        +
                                                           "Sort Space Type": "Memory",                                                                                      +
                                                           "Shared Hit Blocks": 3,                                                                                           +
                                                           "Shared Read Blocks": 18786,                                                                                      +
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
                                                               "Relation Name": "movie_companies",                                                                           +
                                                               "Alias": "mc",                                                                                                +
                                                               "Startup Cost": 0.00,                                                                                         +
                                                               "Total Cost": 769.75,                                                                                         +
                                                               "Plan Rows": 2609129,                                                                                         +
                                                               "Plan Width": 12,                                                                                             +
                                                               "Actual Startup Time": 0.016,                                                                                 +
                                                               "Actual Total Time": 695.075,                                                                                 +
                                                               "Actual Rows": 2609129,                                                                                       +
                                                               "Actual Loops": 1,                                                                                            +
                                                               "Shared Hit Blocks": 3,                                                                                       +
                                                               "Shared Read Blocks": 18786,                                                                                  +
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
                                                         },                                                                                                                  +
                                                         {                                                                                                                   +
                                                           "Node Type": "Sort",                                                                                              +
                                                           "Parent Relationship": "Inner",                                                                                   +
                                                           "Parallel Aware": false,                                                                                          +
                                                           "Startup Cost": 1895.04,                                                                                          +
                                                           "Total Cost": 1895.15,                                                                                            +
                                                           "Plan Rows": 1355,                                                                                                +
                                                           "Plan Width": 21,                                                                                                 +
                                                           "Actual Startup Time": 1726.798,                                                                                  +
                                                           "Actual Total Time": 1727.088,                                                                                    +
                                                           "Actual Rows": 2535,                                                                                              +
                                                           "Actual Loops": 1,                                                                                                +
                                                           "Sort Key": ["t.id"],                                                                                             +
                                                           "Sort Method": "quicksort",                                                                                       +
                                                           "Sort Space Used": 309,                                                                                           +
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
                                                               "Total Cost": 1892.85,                                                                                        +
                                                               "Plan Rows": 1355,                                                                                            +
                                                               "Plan Width": 21,                                                                                             +
                                                               "Actual Startup Time": 19.221,                                                                                +
                                                               "Actual Total Time": 1723.997,                                                                                +
                                                               "Actual Rows": 2536,                                                                                          +
                                                               "Actual Loops": 1,                                                                                            +
                                                               "Filter": "((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))",      +
                                                               "Rows Removed by Filter": 2525776,                                                                            +
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
                                                     }                                                                                                                       +
                                                   ]                                                                                                                         +
                                                 },                                                                                                                          +
                                                 {                                                                                                                           +
                                                   "Node Type": "Sort",                                                                                                      +
                                                   "Parent Relationship": "Inner",                                                                                           +
                                                   "Parallel Aware": false,                                                                                                  +
                                                   "Startup Cost": 344.10,                                                                                                   +
                                                   "Total Cost": 350.69,                                                                                                     +
                                                   "Plan Rows": 84843,                                                                                                       +
                                                   "Plan Width": 4,                                                                                                          +
                                                   "Actual Startup Time": 166.388,                                                                                           +
                                                   "Actual Total Time": 174.492,                                                                                             +
                                                   "Actual Rows": 84817,                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                        +
                                                   "Sort Key": ["cn.id"],                                                                                                    +
                                                   "Sort Method": "quicksort",                                                                                               +
                                                   "Sort Space Used": 7050,                                                                                                  +
                                                   "Sort Space Type": "Memory",                                                                                              +
                                                   "Shared Hit Blocks": 2,                                                                                                   +
                                                   "Shared Read Blocks": 2992,                                                                                               +
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
                                                       "Relation Name": "company_name",                                                                                      +
                                                       "Alias": "cn",                                                                                                        +
                                                       "Startup Cost": 0.00,                                                                                                 +
                                                       "Total Cost": 128.41,                                                                                                 +
                                                       "Plan Rows": 84843,                                                                                                   +
                                                       "Plan Width": 4,                                                                                                      +
                                                       "Actual Startup Time": 5.221,                                                                                         +
                                                       "Actual Total Time": 117.724,                                                                                         +
                                                       "Actual Rows": 84843,                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                    +
                                                       "Filter": "((country_code)::text = '[us]'::text)",                                                                    +
                                                       "Rows Removed by Filter": 150154,                                                                                     +
                                                       "Shared Hit Blocks": 2,                                                                                               +
                                                       "Shared Read Blocks": 2992,                                                                                           +
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
                                           "Startup Cost": 0.03,                                                                                                             +
                                           "Total Cost": 0.03,                                                                                                               +
                                           "Plan Rows": 2,                                                                                                                   +
                                           "Plan Width": 4,                                                                                                                  +
                                           "Actual Startup Time": 0.019,                                                                                                     +
                                           "Actual Total Time": 0.019,                                                                                                       +
                                           "Actual Rows": 2,                                                                                                                 +
                                           "Actual Loops": 1,                                                                                                                +
                                           "Sort Key": ["ct.id"],                                                                                                            +
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
                                               "Relation Name": "company_type",                                                                                              +
                                               "Alias": "ct",                                                                                                                +
                                               "Startup Cost": 0.00,                                                                                                         +
                                               "Total Cost": 0.03,                                                                                                           +
                                               "Plan Rows": 2,                                                                                                               +
                                               "Plan Width": 4,                                                                                                              +
                                               "Actual Startup Time": 0.010,                                                                                                 +
                                               "Actual Total Time": 0.012,                                                                                                   +
                                               "Actual Rows": 2,                                                                                                             +
                                               "Actual Loops": 1,                                                                                                            +
                                               "Filter": "((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))",+
                                               "Rows Removed by Filter": 2,                                                                                                  +
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
                                   "Startup Cost": 60983.46,                                                                                                                 +
                                   "Total Cost": 62135.30,                                                                                                                   +
                                   "Plan Rows": 14835720,                                                                                                                    +
                                   "Plan Width": 50,                                                                                                                         +
                                   "Actual Startup Time": 11337.709,                                                                                                         +
                                   "Actual Total Time": 12174.072,                                                                                                           +
                                   "Actual Rows": 14868551,                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                        +
                                   "Sort Key": ["mi.movie_id"],                                                                                                              +
                                   "Sort Method": "quicksort",                                                                                                               +
                                   "Sort Space Used": 1986756,                                                                                                               +
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
                                       "Total Cost": 6103.84,                                                                                                                +
                                       "Plan Rows": 14835720,                                                                                                                +
                                       "Plan Width": 50,                                                                                                                     +
                                       "Actual Startup Time": 5.304,                                                                                                         +
                                       "Actual Total Time": 4728.038,                                                                                                        +
                                       "Actual Rows": 14835720,                                                                                                              +
                                       "Actual Loops": 1,                                                                                                                    +
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
                             },                                                                                                                                              +
                             {                                                                                                                                               +
                               "Node Type": "Sort",                                                                                                                          +
                               "Parent Relationship": "Inner",                                                                                                               +
                               "Parallel Aware": false,                                                                                                                      +
                               "Startup Cost": 4731.30,                                                                                                                      +
                               "Total Cost": 4838.45,                                                                                                                        +
                               "Plan Rows": 1380035,                                                                                                                         +
                               "Plan Width": 8,                                                                                                                              +
                               "Actual Startup Time": 827.029,                                                                                                               +
                               "Actual Total Time": 902.641,                                                                                                                 +
                               "Actual Rows": 1539518,                                                                                                                       +
                               "Actual Loops": 1,                                                                                                                            +
                               "Sort Key": ["mi_idx.movie_id"],                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                                   +
                               "Sort Space Used": 113842,                                                                                                                    +
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
                                   "Plan Width": 8,                                                                                                                          +
                                   "Actual Startup Time": 0.015,                                                                                                             +
                                   "Actual Total Time": 341.540,                                                                                                             +
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
                         }                                                                                                                                                   +
                       ]                                                                                                                                                     +
                     },                                                                                                                                                      +
                     {                                                                                                                                                       +
                       "Node Type": "Sort",                                                                                                                                  +
                       "Parent Relationship": "Inner",                                                                                                                       +
                       "Parallel Aware": false,                                                                                                                              +
                       "Startup Cost": 0.05,                                                                                                                                 +
                       "Total Cost": 0.05,                                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                                       +
                       "Plan Width": 4,                                                                                                                                      +
                       "Actual Startup Time": 0.038,                                                                                                                         +
                       "Actual Total Time": 0.038,                                                                                                                           +
                       "Actual Rows": 1,                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                    +
                       "Sort Key": ["it1.id"],                                                                                                                               +
                       "Sort Method": "quicksort",                                                                                                                           +
                       "Sort Space Used": 25,                                                                                                                                +
                       "Sort Space Type": "Memory",                                                                                                                          +
                       "Shared Hit Blocks": 1,                                                                                                                               +
                       "Shared Read Blocks": 0,                                                                                                                              +
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
                           "Relation Name": "info_type",                                                                                                                     +
                           "Alias": "it1",                                                                                                                                   +
                           "Startup Cost": 0.00,                                                                                                                             +
                           "Total Cost": 0.05,                                                                                                                               +
                           "Plan Rows": 1,                                                                                                                                   +
                           "Plan Width": 4,                                                                                                                                  +
                           "Actual Startup Time": 0.028,                                                                                                                     +
                           "Actual Total Time": 0.030,                                                                                                                       +
                           "Actual Rows": 1,                                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                                +
                           "Filter": "((info)::text = 'budget'::text)",                                                                                                      +
                           "Rows Removed by Filter": 112,                                                                                                                    +
                           "Shared Hit Blocks": 1,                                                                                                                           +
                           "Shared Read Blocks": 0,                                                                                                                          +
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
               "Startup Cost": 0.05,                                                                                                                                         +
               "Total Cost": 0.05,                                                                                                                                           +
               "Plan Rows": 1,                                                                                                                                               +
               "Plan Width": 4,                                                                                                                                              +
               "Actual Startup Time": 0.024,                                                                                                                                 +
               "Actual Total Time": 0.025,                                                                                                                                   +
               "Actual Rows": 1,                                                                                                                                             +
               "Actual Loops": 1,                                                                                                                                            +
               "Sort Key": ["it2.id"],                                                                                                                                       +
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
                   "Relation Name": "info_type",                                                                                                                             +
                   "Alias": "it2",                                                                                                                                           +
                   "Startup Cost": 0.00,                                                                                                                                     +
                   "Total Cost": 0.05,                                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                                           +
                   "Plan Width": 4,                                                                                                                                          +
                   "Actual Startup Time": 0.020,                                                                                                                             +
                   "Actual Total Time": 0.021,                                                                                                                               +
                   "Actual Rows": 1,                                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                                        +
                   "Filter": "((info)::text = 'bottom 10 rank'::text)",                                                                                                      +
                   "Rows Removed by Filter": 112,                                                                                                                            +
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
     "Planning Time": 4937.758,                                                                                                                                              +
     "Triggers": [                                                                                                                                                           +
     ],                                                                                                                                                                      +
     "Execution Time": 19065.681                                                                                                                                             +
   }                                                                                                                                                                         +
 ]
(1 row)
