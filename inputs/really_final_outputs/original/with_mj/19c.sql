                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                            +
   {                                                                                                                                                                                          +
     "Plan": {                                                                                                                                                                                +
       "Node Type": "Aggregate",                                                                                                                                                              +
       "Strategy": "Plain",                                                                                                                                                                   +
       "Partial Mode": "Simple",                                                                                                                                                              +
       "Parallel Aware": false,                                                                                                                                                               +
       "Startup Cost": 63361.38,                                                                                                                                                              +
       "Total Cost": 63361.38,                                                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                                                        +
       "Plan Width": 64,                                                                                                                                                                      +
       "Actual Startup Time": 34868.222,                                                                                                                                                      +
       "Actual Total Time": 34868.222,                                                                                                                                                        +
       "Actual Rows": 1,                                                                                                                                                                      +
       "Actual Loops": 1,                                                                                                                                                                     +
       "Shared Hit Blocks": 6695,                                                                                                                                                             +
       "Shared Read Blocks": 576184,                                                                                                                                                          +
       "Shared Dirtied Blocks": 0,                                                                                                                                                            +
       "Shared Written Blocks": 0,                                                                                                                                                            +
       "Local Hit Blocks": 0,                                                                                                                                                                 +
       "Local Read Blocks": 0,                                                                                                                                                                +
       "Local Dirtied Blocks": 0,                                                                                                                                                             +
       "Local Written Blocks": 0,                                                                                                                                                             +
       "Temp Read Blocks": 0,                                                                                                                                                                 +
       "Temp Written Blocks": 0,                                                                                                                                                              +
       "Plans": [                                                                                                                                                                             +
         {                                                                                                                                                                                    +
           "Node Type": "Merge Join",                                                                                                                                                         +
           "Parent Relationship": "Outer",                                                                                                                                                    +
           "Parallel Aware": false,                                                                                                                                                           +
           "Join Type": "Inner",                                                                                                                                                              +
           "Startup Cost": 62873.75,                                                                                                                                                          +
           "Total Cost": 63361.38,                                                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                                                    +
           "Plan Width": 32,                                                                                                                                                                  +
           "Actual Startup Time": 34144.878,                                                                                                                                                  +
           "Actual Total Time": 34854.851,                                                                                                                                                    +
           "Actual Rows": 3575,                                                                                                                                                               +
           "Actual Loops": 1,                                                                                                                                                                 +
           "Inner Unique": true,                                                                                                                                                              +
           "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                                                                      +
           "Shared Hit Blocks": 6695,                                                                                                                                                         +
           "Shared Read Blocks": 576184,                                                                                                                                                      +
           "Shared Dirtied Blocks": 0,                                                                                                                                                        +
           "Shared Written Blocks": 0,                                                                                                                                                        +
           "Local Hit Blocks": 0,                                                                                                                                                             +
           "Local Read Blocks": 0,                                                                                                                                                            +
           "Local Dirtied Blocks": 0,                                                                                                                                                         +
           "Local Written Blocks": 0,                                                                                                                                                         +
           "Temp Read Blocks": 0,                                                                                                                                                             +
           "Temp Written Blocks": 0,                                                                                                                                                          +
           "Plans": [                                                                                                                                                                         +
             {                                                                                                                                                                                +
               "Node Type": "Sort",                                                                                                                                                           +
               "Parent Relationship": "Outer",                                                                                                                                                +
               "Parallel Aware": false,                                                                                                                                                       +
               "Startup Cost": 50989.12,                                                                                                                                                      +
               "Total Cost": 50989.12,                                                                                                                                                        +
               "Plan Rows": 1,                                                                                                                                                                +
               "Plan Width": 36,                                                                                                                                                              +
               "Actual Startup Time": 31680.895,                                                                                                                                              +
               "Actual Total Time": 31681.363,                                                                                                                                                +
               "Actual Rows": 3576,                                                                                                                                                           +
               "Actual Loops": 1,                                                                                                                                                             +
               "Sort Key": ["ci.person_role_id"],                                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                                                    +
               "Sort Space Used": 449,                                                                                                                                                        +
               "Sort Space Type": "Memory",                                                                                                                                                   +
               "Shared Hit Blocks": 6693,                                                                                                                                                     +
               "Shared Read Blocks": 539739,                                                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                                                    +
               "Shared Written Blocks": 0,                                                                                                                                                    +
               "Local Hit Blocks": 0,                                                                                                                                                         +
               "Local Read Blocks": 0,                                                                                                                                                        +
               "Local Dirtied Blocks": 0,                                                                                                                                                     +
               "Local Written Blocks": 0,                                                                                                                                                     +
               "Temp Read Blocks": 0,                                                                                                                                                         +
               "Temp Written Blocks": 0,                                                                                                                                                      +
               "Plans": [                                                                                                                                                                     +
                 {                                                                                                                                                                            +
                   "Node Type": "Merge Join",                                                                                                                                                 +
                   "Parent Relationship": "Outer",                                                                                                                                            +
                   "Parallel Aware": false,                                                                                                                                                   +
                   "Join Type": "Inner",                                                                                                                                                      +
                   "Startup Cost": 50989.12,                                                                                                                                                  +
                   "Total Cost": 50989.12,                                                                                                                                                    +
                   "Plan Rows": 1,                                                                                                                                                            +
                   "Plan Width": 36,                                                                                                                                                          +
                   "Actual Startup Time": 31669.712,                                                                                                                                          +
                   "Actual Total Time": 31670.782,                                                                                                                                            +
                   "Actual Rows": 3744,                                                                                                                                                       +
                   "Actual Loops": 1,                                                                                                                                                         +
                   "Inner Unique": true,                                                                                                                                                      +
                   "Merge Cond": "(ci.role_id = rt.id)",                                                                                                                                      +
                   "Shared Hit Blocks": 6689,                                                                                                                                                 +
                   "Shared Read Blocks": 539739,                                                                                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                +
                   "Shared Written Blocks": 0,                                                                                                                                                +
                   "Local Hit Blocks": 0,                                                                                                                                                     +
                   "Local Read Blocks": 0,                                                                                                                                                    +
                   "Local Dirtied Blocks": 0,                                                                                                                                                 +
                   "Local Written Blocks": 0,                                                                                                                                                 +
                   "Temp Read Blocks": 0,                                                                                                                                                     +
                   "Temp Written Blocks": 0,                                                                                                                                                  +
                   "Plans": [                                                                                                                                                                 +
                     {                                                                                                                                                                        +
                       "Node Type": "Sort",                                                                                                                                                   +
                       "Parent Relationship": "Outer",                                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                                               +
                       "Startup Cost": 50989.08,                                                                                                                                              +
                       "Total Cost": 50989.08,                                                                                                                                                +
                       "Plan Rows": 14,                                                                                                                                                       +
                       "Plan Width": 40,                                                                                                                                                      +
                       "Actual Startup Time": 31669.687,                                                                                                                                      +
                       "Actual Total Time": 31669.876,                                                                                                                                        +
                       "Actual Rows": 3744,                                                                                                                                                   +
                       "Actual Loops": 1,                                                                                                                                                     +
                       "Sort Key": ["ci.role_id"],                                                                                                                                            +
                       "Sort Method": "quicksort",                                                                                                                                            +
                       "Sort Space Used": 473,                                                                                                                                                +
                       "Sort Space Type": "Memory",                                                                                                                                           +
                       "Shared Hit Blocks": 6688,                                                                                                                                             +
                       "Shared Read Blocks": 539739,                                                                                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                                                                                            +
                       "Shared Written Blocks": 0,                                                                                                                                            +
                       "Local Hit Blocks": 0,                                                                                                                                                 +
                       "Local Read Blocks": 0,                                                                                                                                                +
                       "Local Dirtied Blocks": 0,                                                                                                                                             +
                       "Local Written Blocks": 0,                                                                                                                                             +
                       "Temp Read Blocks": 0,                                                                                                                                                 +
                       "Temp Written Blocks": 0,                                                                                                                                              +
                       "Plans": [                                                                                                                                                             +
                         {                                                                                                                                                                    +
                           "Node Type": "Merge Join",                                                                                                                                         +
                           "Parent Relationship": "Outer",                                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                                           +
                           "Join Type": "Inner",                                                                                                                                              +
                           "Startup Cost": 50975.89,                                                                                                                                          +
                           "Total Cost": 50989.08,                                                                                                                                            +
                           "Plan Rows": 14,                                                                                                                                                   +
                           "Plan Width": 40,                                                                                                                                                  +
                           "Actual Startup Time": 31647.692,                                                                                                                                  +
                           "Actual Total Time": 31668.775,                                                                                                                                    +
                           "Actual Rows": 3744,                                                                                                                                               +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Inner Unique": true,                                                                                                                                              +
                           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                           +
                           "Shared Hit Blocks": 6688,                                                                                                                                         +
                           "Shared Read Blocks": 539739,                                                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                                                        +
                           "Shared Written Blocks": 0,                                                                                                                                        +
                           "Local Hit Blocks": 0,                                                                                                                                             +
                           "Local Read Blocks": 0,                                                                                                                                            +
                           "Local Dirtied Blocks": 0,                                                                                                                                         +
                           "Local Written Blocks": 0,                                                                                                                                         +
                           "Temp Read Blocks": 0,                                                                                                                                             +
                           "Temp Written Blocks": 0,                                                                                                                                          +
                           "Plans": [                                                                                                                                                         +
                             {                                                                                                                                                                +
                               "Node Type": "Sort",                                                                                                                                           +
                               "Parent Relationship": "Outer",                                                                                                                                +
                               "Parallel Aware": false,                                                                                                                                       +
                               "Startup Cost": 50631.79,                                                                                                                                      +
                               "Total Cost": 50631.79,                                                                                                                                        +
                               "Plan Rows": 39,                                                                                                                                               +
                               "Plan Width": 44,                                                                                                                                              +
                               "Actual Startup Time": 31454.084,                                                                                                                              +
                               "Actual Total Time": 31455.606,                                                                                                                                +
                               "Actual Rows": 12363,                                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                                             +
                               "Sort Key": ["mc.company_id"],                                                                                                                                 +
                               "Sort Method": "quicksort",                                                                                                                                    +
                               "Sort Space Used": 1674,                                                                                                                                       +
                               "Sort Space Type": "Memory",                                                                                                                                   +
                               "Shared Hit Blocks": 6686,                                                                                                                                     +
                               "Shared Read Blocks": 536747,                                                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                                                                    +
                               "Shared Written Blocks": 0,                                                                                                                                    +
                               "Local Hit Blocks": 0,                                                                                                                                         +
                               "Local Read Blocks": 0,                                                                                                                                        +
                               "Local Dirtied Blocks": 0,                                                                                                                                     +
                               "Local Written Blocks": 0,                                                                                                                                     +
                               "Temp Read Blocks": 0,                                                                                                                                         +
                               "Temp Written Blocks": 0,                                                                                                                                      +
                               "Plans": [                                                                                                                                                     +
                                 {                                                                                                                                                            +
                                   "Node Type": "Merge Join",                                                                                                                                 +
                                   "Parent Relationship": "Outer",                                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                                   +
                                   "Join Type": "Inner",                                                                                                                                      +
                                   "Startup Cost": 50504.68,                                                                                                                                  +
                                   "Total Cost": 50631.76,                                                                                                                                    +
                                   "Plan Rows": 39,                                                                                                                                           +
                                   "Plan Width": 44,                                                                                                                                          +
                                   "Actual Startup Time": 31100.224,                                                                                                                          +
                                   "Actual Total Time": 31449.914,                                                                                                                            +
                                   "Actual Rows": 12363,                                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Inner Unique": true,                                                                                                                                      +
                                   "Merge Cond": "(ci.person_id = n.id)",                                                                                                                     +
                                   "Shared Hit Blocks": 6686,                                                                                                                                 +
                                   "Shared Read Blocks": 536747,                                                                                                                              +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                +
                                   "Shared Written Blocks": 0,                                                                                                                                +
                                   "Local Hit Blocks": 0,                                                                                                                                     +
                                   "Local Read Blocks": 0,                                                                                                                                    +
                                   "Local Dirtied Blocks": 0,                                                                                                                                 +
                                   "Local Written Blocks": 0,                                                                                                                                 +
                                   "Temp Read Blocks": 0,                                                                                                                                     +
                                   "Temp Written Blocks": 0,                                                                                                                                  +
                                   "Plans": [                                                                                                                                                 +
                                     {                                                                                                                                                        +
                                       "Node Type": "Merge Join",                                                                                                                             +
                                       "Parent Relationship": "Outer",                                                                                                                        +
                                       "Parallel Aware": false,                                                                                                                               +
                                       "Join Type": "Inner",                                                                                                                                  +
                                       "Startup Cost": 47735.98,                                                                                                                              +
                                       "Total Cost": 47857.01,                                                                                                                                +
                                       "Plan Rows": 4306,                                                                                                                                     +
                                       "Plan Width": 37,                                                                                                                                      +
                                       "Actual Startup Time": 27673.798,                                                                                                                      +
                                       "Actual Total Time": 28620.925,                                                                                                                        +
                                       "Actual Rows": 2478661,                                                                                                                                +
                                       "Actual Loops": 1,                                                                                                                                     +
                                       "Inner Unique": false,                                                                                                                                 +
                                       "Merge Cond": "(ci.person_id = an.person_id)",                                                                                                         +
                                       "Shared Hit Blocks": 6684,                                                                                                                             +
                                       "Shared Read Blocks": 481136,                                                                                                                          +
                                       "Shared Dirtied Blocks": 0,                                                                                                                            +
                                       "Shared Written Blocks": 0,                                                                                                                            +
                                       "Local Hit Blocks": 0,                                                                                                                                 +
                                       "Local Read Blocks": 0,                                                                                                                                +
                                       "Local Dirtied Blocks": 0,                                                                                                                             +
                                       "Local Written Blocks": 0,                                                                                                                             +
                                       "Temp Read Blocks": 0,                                                                                                                                 +
                                       "Temp Written Blocks": 0,                                                                                                                              +
                                       "Plans": [                                                                                                                                             +
                                         {                                                                                                                                                    +
                                           "Node Type": "Sort",                                                                                                                               +
                                           "Parent Relationship": "Outer",                                                                                                                    +
                                           "Parallel Aware": false,                                                                                                                           +
                                           "Startup Cost": 44547.58,                                                                                                                          +
                                           "Total Cost": 44547.96,                                                                                                                            +
                                           "Plan Rows": 4953,                                                                                                                                 +
                                           "Plan Width": 33,                                                                                                                                  +
                                           "Actual Startup Time": 26920.976,                                                                                                                  +
                                           "Actual Total Time": 27040.641,                                                                                                                    +
                                           "Actual Rows": 1212899,                                                                                                                            +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Sort Key": ["ci.person_id"],                                                                                                                      +
                                           "Sort Method": "quicksort",                                                                                                                        +
                                           "Sort Space Used": 153998,                                                                                                                         +
                                           "Sort Space Type": "Memory",                                                                                                                       +
                                           "Shared Hit Blocks": 6682,                                                                                                                         +
                                           "Shared Read Blocks": 469743,                                                                                                                      +
                                           "Shared Dirtied Blocks": 0,                                                                                                                        +
                                           "Shared Written Blocks": 0,                                                                                                                        +
                                           "Local Hit Blocks": 0,                                                                                                                             +
                                           "Local Read Blocks": 0,                                                                                                                            +
                                           "Local Dirtied Blocks": 0,                                                                                                                         +
                                           "Local Written Blocks": 0,                                                                                                                         +
                                           "Temp Read Blocks": 0,                                                                                                                             +
                                           "Temp Written Blocks": 0,                                                                                                                          +
                                           "Plans": [                                                                                                                                         +
                                             {                                                                                                                                                +
                                               "Node Type": "Merge Join",                                                                                                                     +
                                               "Parent Relationship": "Outer",                                                                                                                +
                                               "Parallel Aware": false,                                                                                                                       +
                                               "Join Type": "Inner",                                                                                                                          +
                                               "Startup Cost": 43783.68,                                                                                                                      +
                                               "Total Cost": 44538.14,                                                                                                                        +
                                               "Plan Rows": 4953,                                                                                                                             +
                                               "Plan Width": 33,                                                                                                                              +
                                               "Actual Startup Time": 24970.334,                                                                                                              +
                                               "Actual Total Time": 26514.875,                                                                                                                +
                                               "Actual Rows": 1213469,                                                                                                                        +
                                               "Actual Loops": 1,                                                                                                                             +
                                               "Inner Unique": false,                                                                                                                         +
                                               "Merge Cond": "(t.id = mc.movie_id)",                                                                                                          +
                                               "Shared Hit Blocks": 6682,                                                                                                                     +
                                               "Shared Read Blocks": 469743,                                                                                                                  +
                                               "Shared Dirtied Blocks": 0,                                                                                                                    +
                                               "Shared Written Blocks": 0,                                                                                                                    +
                                               "Local Hit Blocks": 0,                                                                                                                         +
                                               "Local Read Blocks": 0,                                                                                                                        +
                                               "Local Dirtied Blocks": 0,                                                                                                                     +
                                               "Local Written Blocks": 0,                                                                                                                     +
                                               "Temp Read Blocks": 0,                                                                                                                         +
                                               "Temp Written Blocks": 0,                                                                                                                      +
                                               "Plans": [                                                                                                                                     +
                                                 {                                                                                                                                            +
                                                   "Node Type": "Merge Join",                                                                                                                 +
                                                   "Parent Relationship": "Outer",                                                                                                            +
                                                   "Parallel Aware": false,                                                                                                                   +
                                                   "Join Type": "Inner",                                                                                                                      +
                                                   "Startup Cost": 34378.22,                                                                                                                  +
                                                   "Total Cost": 34727.78,                                                                                                                    +
                                                   "Plan Rows": 1521,                                                                                                                         +
                                                   "Plan Width": 41,                                                                                                                          +
                                                   "Actual Startup Time": 23487.528,                                                                                                          +
                                                   "Actual Total Time": 24312.130,                                                                                                            +
                                                   "Actual Rows": 374134,                                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                                         +
                                                   "Inner Unique": false,                                                                                                                     +
                                                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                                      +
                                                   "Shared Hit Blocks": 6679,                                                                                                                 +
                                                   "Shared Read Blocks": 450957,                                                                                                              +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                +
                                                   "Shared Written Blocks": 0,                                                                                                                +
                                                   "Local Hit Blocks": 0,                                                                                                                     +
                                                   "Local Read Blocks": 0,                                                                                                                    +
                                                   "Local Dirtied Blocks": 0,                                                                                                                 +
                                                   "Local Written Blocks": 0,                                                                                                                 +
                                                   "Temp Read Blocks": 0,                                                                                                                     +
                                                   "Temp Written Blocks": 0,                                                                                                                  +
                                                   "Plans": [                                                                                                                                 +
                                                     {                                                                                                                                        +
                                                       "Node Type": "Merge Join",                                                                                                             +
                                                       "Parent Relationship": "Outer",                                                                                                        +
                                                       "Parallel Aware": false,                                                                                                               +
                                                       "Join Type": "Inner",                                                                                                                  +
                                                       "Startup Cost": 15668.09,                                                                                                              +
                                                       "Total Cost": 15883.21,                                                                                                                +
                                                       "Plan Rows": 2169,                                                                                                                     +
                                                       "Plan Width": 25,                                                                                                                      +
                                                       "Actual Startup Time": 11410.440,                                                                                                      +
                                                       "Actual Total Time": 11963.257,                                                                                                        +
                                                       "Actual Rows": 424568,                                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                                     +
                                                       "Inner Unique": true,                                                                                                                  +
                                                       "Merge Cond": "(mi.movie_id = t.id)",                                                                                                  +
                                                       "Shared Hit Blocks": 6674,                                                                                                             +
                                                       "Shared Read Blocks": 198308,                                                                                                          +
                                                       "Shared Dirtied Blocks": 0,                                                                                                            +
                                                       "Shared Written Blocks": 0,                                                                                                            +
                                                       "Local Hit Blocks": 0,                                                                                                                 +
                                                       "Local Read Blocks": 0,                                                                                                                +
                                                       "Local Dirtied Blocks": 0,                                                                                                             +
                                                       "Local Written Blocks": 0,                                                                                                             +
                                                       "Temp Read Blocks": 0,                                                                                                                 +
                                                       "Temp Written Blocks": 0,                                                                                                              +
                                                       "Plans": [                                                                                                                             +
                                                         {                                                                                                                                    +
                                                           "Node Type": "Sort",                                                                                                               +
                                                           "Parent Relationship": "Outer",                                                                                                    +
                                                           "Parallel Aware": false,                                                                                                           +
                                                           "Startup Cost": 9792.29,                                                                                                           +
                                                           "Total Cost": 9792.59,                                                                                                             +
                                                           "Plan Rows": 3969,                                                                                                                 +
                                                           "Plan Width": 4,                                                                                                                   +
                                                           "Actual Startup Time": 9369.871,                                                                                                   +
                                                           "Actual Total Time": 9406.089,                                                                                                     +
                                                           "Actual Rows": 451039,                                                                                                             +
                                                           "Actual Loops": 1,                                                                                                                 +
                                                           "Sort Key": ["mi.movie_id"],                                                                                                       +
                                                           "Sort Method": "quicksort",                                                                                                        +
                                                           "Sort Space Used": 33431,                                                                                                          +
                                                           "Sort Space Type": "Memory",                                                                                                       +
                                                           "Shared Hit Blocks": 6673,                                                                                                         +
                                                           "Shared Read Blocks": 162311,                                                                                                      +
                                                           "Shared Dirtied Blocks": 0,                                                                                                        +
                                                           "Shared Written Blocks": 0,                                                                                                        +
                                                           "Local Hit Blocks": 0,                                                                                                             +
                                                           "Local Read Blocks": 0,                                                                                                            +
                                                           "Local Dirtied Blocks": 0,                                                                                                         +
                                                           "Local Written Blocks": 0,                                                                                                         +
                                                           "Temp Read Blocks": 0,                                                                                                             +
                                                           "Temp Written Blocks": 0,                                                                                                          +
                                                           "Plans": [                                                                                                                         +
                                                             {                                                                                                                                +
                                                               "Node Type": "Merge Join",                                                                                                     +
                                                               "Parent Relationship": "Outer",                                                                                                +
                                                               "Parallel Aware": false,                                                                                                       +
                                                               "Join Type": "Inner",                                                                                                          +
                                                               "Startup Cost": 9715.00,                                                                                                       +
                                                               "Total Cost": 9784.92,                                                                                                         +
                                                               "Plan Rows": 3969,                                                                                                             +
                                                               "Plan Width": 4,                                                                                                               +
                                                               "Actual Startup Time": 9140.960,                                                                                               +
                                                               "Actual Total Time": 9234.717,                                                                                                 +
                                                               "Actual Rows": 451039,                                                                                                         +
                                                               "Actual Loops": 1,                                                                                                             +
                                                               "Inner Unique": false,                                                                                                         +
                                                               "Merge Cond": "(it.id = mi.info_type_id)",                                                                                     +
                                                               "Shared Hit Blocks": 6673,                                                                                                     +
                                                               "Shared Read Blocks": 162311,                                                                                                  +
                                                               "Shared Dirtied Blocks": 0,                                                                                                    +
                                                               "Shared Written Blocks": 0,                                                                                                    +
                                                               "Local Hit Blocks": 0,                                                                                                         +
                                                               "Local Read Blocks": 0,                                                                                                        +
                                                               "Local Dirtied Blocks": 0,                                                                                                     +
                                                               "Local Written Blocks": 0,                                                                                                     +
                                                               "Temp Read Blocks": 0,                                                                                                         +
                                                               "Temp Written Blocks": 0,                                                                                                      +
                                                               "Plans": [                                                                                                                     +
                                                                 {                                                                                                                            +
                                                                   "Node Type": "Sort",                                                                                                       +
                                                                   "Parent Relationship": "Outer",                                                                                            +
                                                                   "Parallel Aware": false,                                                                                                   +
                                                                   "Startup Cost": 0.05,                                                                                                      +
                                                                   "Total Cost": 0.05,                                                                                                        +
                                                                   "Plan Rows": 1,                                                                                                            +
                                                                   "Plan Width": 4,                                                                                                           +
                                                                   "Actual Startup Time": 0.077,                                                                                              +
                                                                   "Actual Total Time": 0.078,                                                                                                +
                                                                   "Actual Rows": 1,                                                                                                          +
                                                                   "Actual Loops": 1,                                                                                                         +
                                                                   "Sort Key": ["it.id"],                                                                                                     +
                                                                   "Sort Method": "quicksort",                                                                                                +
                                                                   "Sort Space Used": 25,                                                                                                     +
                                                                   "Sort Space Type": "Memory",                                                                                               +
                                                                   "Shared Hit Blocks": 1,                                                                                                    +
                                                                   "Shared Read Blocks": 0,                                                                                                   +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                +
                                                                   "Shared Written Blocks": 0,                                                                                                +
                                                                   "Local Hit Blocks": 0,                                                                                                     +
                                                                   "Local Read Blocks": 0,                                                                                                    +
                                                                   "Local Dirtied Blocks": 0,                                                                                                 +
                                                                   "Local Written Blocks": 0,                                                                                                 +
                                                                   "Temp Read Blocks": 0,                                                                                                     +
                                                                   "Temp Written Blocks": 0,                                                                                                  +
                                                                   "Plans": [                                                                                                                 +
                                                                     {                                                                                                                        +
                                                                       "Node Type": "Seq Scan",                                                                                               +
                                                                       "Parent Relationship": "Outer",                                                                                        +
                                                                       "Parallel Aware": false,                                                                                               +
                                                                       "Relation Name": "info_type",                                                                                          +
                                                                       "Alias": "it",                                                                                                         +
                                                                       "Startup Cost": 0.00,                                                                                                  +
                                                                       "Total Cost": 0.05,                                                                                                    +
                                                                       "Plan Rows": 1,                                                                                                        +
                                                                       "Plan Width": 4,                                                                                                       +
                                                                       "Actual Startup Time": 0.028,                                                                                          +
                                                                       "Actual Total Time": 0.061,                                                                                            +
                                                                       "Actual Rows": 1,                                                                                                      +
                                                                       "Actual Loops": 1,                                                                                                     +
                                                                       "Filter": "((info)::text = 'release dates'::text)",                                                                    +
                                                                       "Rows Removed by Filter": 112,                                                                                         +
                                                                       "Shared Hit Blocks": 1,                                                                                                +
                                                                       "Shared Read Blocks": 0,                                                                                               +
                                                                       "Shared Dirtied Blocks": 0,                                                                                            +
                                                                       "Shared Written Blocks": 0,                                                                                            +
                                                                       "Local Hit Blocks": 0,                                                                                                 +
                                                                       "Local Read Blocks": 0,                                                                                                +
                                                                       "Local Dirtied Blocks": 0,                                                                                             +
                                                                       "Local Written Blocks": 0,                                                                                             +
                                                                       "Temp Read Blocks": 0,                                                                                                 +
                                                                       "Temp Written Blocks": 0                                                                                               +
                                                                     }                                                                                                                        +
                                                                   ]                                                                                                                          +
                                                                 },                                                                                                                           +
                                                                 {                                                                                                                            +
                                                                   "Node Type": "Sort",                                                                                                       +
                                                                   "Parent Relationship": "Inner",                                                                                            +
                                                                   "Parallel Aware": false,                                                                                                   +
                                                                   "Startup Cost": 9714.96,                                                                                                   +
                                                                   "Total Cost": 9749.78,                                                                                                     +
                                                                   "Plan Rows": 448472,                                                                                                       +
                                                                   "Plan Width": 8,                                                                                                           +
                                                                   "Actual Startup Time": 9140.865,                                                                                           +
                                                                   "Actual Total Time": 9161.548,                                                                                             +
                                                                   "Actual Rows": 451104,                                                                                                     +
                                                                   "Actual Loops": 1,                                                                                                         +
                                                                   "Sort Key": ["mi.info_type_id"],                                                                                           +
                                                                   "Sort Method": "quicksort",                                                                                                +
                                                                   "Sort Space Used": 33434,                                                                                                  +
                                                                   "Sort Space Type": "Memory",                                                                                               +
                                                                   "Shared Hit Blocks": 6672,                                                                                                 +
                                                                   "Shared Read Blocks": 162311,                                                                                              +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                +
                                                                   "Shared Written Blocks": 0,                                                                                                +
                                                                   "Local Hit Blocks": 0,                                                                                                     +
                                                                   "Local Read Blocks": 0,                                                                                                    +
                                                                   "Local Dirtied Blocks": 0,                                                                                                 +
                                                                   "Local Written Blocks": 0,                                                                                                 +
                                                                   "Temp Read Blocks": 0,                                                                                                     +
                                                                   "Temp Written Blocks": 0,                                                                                                  +
                                                                   "Plans": [                                                                                                                 +
                                                                     {                                                                                                                        +
                                                                       "Node Type": "Seq Scan",                                                                                               +
                                                                       "Parent Relationship": "Outer",                                                                                        +
                                                                       "Parallel Aware": false,                                                                                               +
                                                                       "Relation Name": "movie_info",                                                                                         +
                                                                       "Alias": "mi",                                                                                                         +
                                                                       "Startup Cost": 0.00,                                                                                                  +
                                                                       "Total Cost": 8407.52,                                                                                                 +
                                                                       "Plan Rows": 448472,                                                                                                   +
                                                                       "Plan Width": 8,                                                                                                       +
                                                                       "Actual Startup Time": 689.534,                                                                                        +
                                                                       "Actual Total Time": 9036.943,                                                                                         +
                                                                       "Actual Rows": 451104,                                                                                                 +
                                                                       "Actual Loops": 1,                                                                                                     +
                                                                       "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))",                   +
                                                                       "Rows Removed by Filter": 14384616,                                                                                    +
                                                                       "Shared Hit Blocks": 6672,                                                                                             +
                                                                       "Shared Read Blocks": 162311,                                                                                          +
                                                                       "Shared Dirtied Blocks": 0,                                                                                            +
                                                                       "Shared Written Blocks": 0,                                                                                            +
                                                                       "Local Hit Blocks": 0,                                                                                                 +
                                                                       "Local Read Blocks": 0,                                                                                                +
                                                                       "Local Dirtied Blocks": 0,                                                                                             +
                                                                       "Local Written Blocks": 0,                                                                                             +
                                                                       "Temp Read Blocks": 0,                                                                                                 +
                                                                       "Temp Written Blocks": 0                                                                                               +
                                                                     }                                                                                                                        +
                                                                   ]                                                                                                                          +
                                                                 }                                                                                                                            +
                                                               ]                                                                                                                              +
                                                             }                                                                                                                                +
                                                           ]                                                                                                                                  +
                                                         },                                                                                                                                   +
                                                         {                                                                                                                                    +
                                                           "Node Type": "Sort",                                                                                                               +
                                                           "Parent Relationship": "Inner",                                                                                                    +
                                                           "Parallel Aware": false,                                                                                                           +
                                                           "Startup Cost": 5875.81,                                                                                                           +
                                                           "Total Cost": 5983.06,                                                                                                             +
                                                           "Plan Rows": 1381453,                                                                                                              +
                                                           "Plan Width": 21,                                                                                                                  +
                                                           "Actual Startup Time": 2040.553,                                                                                                   +
                                                           "Actual Total Time": 2220.158,                                                                                                     +
                                                           "Actual Rows": 1381290,                                                                                                            +
                                                           "Actual Loops": 1,                                                                                                                 +
                                                           "Sort Key": ["t.id"],                                                                                                              +
                                                           "Sort Method": "quicksort",                                                                                                        +
                                                           "Sort Space Used": 145245,                                                                                                         +
                                                           "Sort Space Type": "Memory",                                                                                                       +
                                                           "Shared Hit Blocks": 1,                                                                                                            +
                                                           "Shared Read Blocks": 35997,                                                                                                       +
                                                           "Shared Dirtied Blocks": 0,                                                                                                        +
                                                           "Shared Written Blocks": 0,                                                                                                        +
                                                           "Local Hit Blocks": 0,                                                                                                             +
                                                           "Local Read Blocks": 0,                                                                                                            +
                                                           "Local Dirtied Blocks": 0,                                                                                                         +
                                                           "Local Written Blocks": 0,                                                                                                         +
                                                           "Temp Read Blocks": 0,                                                                                                             +
                                                           "Temp Written Blocks": 0,                                                                                                          +
                                                           "Plans": [                                                                                                                         +
                                                             {                                                                                                                                +
                                                               "Node Type": "Seq Scan",                                                                                                       +
                                                               "Parent Relationship": "Outer",                                                                                                +
                                                               "Parallel Aware": false,                                                                                                       +
                                                               "Relation Name": "title",                                                                                                      +
                                                               "Alias": "t",                                                                                                                  +
                                                               "Startup Cost": 0.00,                                                                                                          +
                                                               "Total Cost": 1500.26,                                                                                                         +
                                                               "Plan Rows": 1381453,                                                                                                          +
                                                               "Plan Width": 21,                                                                                                              +
                                                               "Actual Startup Time": 25.522,                                                                                                 +
                                                               "Actual Total Time": 1256.685,                                                                                                 +
                                                               "Actual Rows": 1381453,                                                                                                        +
                                                               "Actual Loops": 1,                                                                                                             +
                                                               "Filter": "(production_year > 2000)",                                                                                          +
                                                               "Rows Removed by Filter": 1146859,                                                                                             +
                                                               "Shared Hit Blocks": 1,                                                                                                        +
                                                               "Shared Read Blocks": 35997,                                                                                                   +
                                                               "Shared Dirtied Blocks": 0,                                                                                                    +
                                                               "Shared Written Blocks": 0,                                                                                                    +
                                                               "Local Hit Blocks": 0,                                                                                                         +
                                                               "Local Read Blocks": 0,                                                                                                        +
                                                               "Local Dirtied Blocks": 0,                                                                                                     +
                                                               "Local Written Blocks": 0,                                                                                                     +
                                                               "Temp Read Blocks": 0,                                                                                                         +
                                                               "Temp Written Blocks": 0                                                                                                       +
                                                             }                                                                                                                                +
                                                           ]                                                                                                                                  +
                                                         }                                                                                                                                    +
                                                       ]                                                                                                                                      +
                                                     },                                                                                                                                       +
                                                     {                                                                                                                                        +
                                                       "Node Type": "Sort",                                                                                                                   +
                                                       "Parent Relationship": "Inner",                                                                                                        +
                                                       "Parallel Aware": false,                                                                                                               +
                                                       "Startup Cost": 18710.13,                                                                                                              +
                                                       "Total Cost": 18777.34,                                                                                                                +
                                                       "Plan Rows": 865636,                                                                                                                   +
                                                       "Plan Width": 16,                                                                                                                      +
                                                       "Actual Startup Time": 12076.911,                                                                                                      +
                                                       "Actual Total Time": 12158.925,                                                                                                        +
                                                       "Actual Rows": 936122,                                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                                     +
                                                       "Sort Key": ["ci.movie_id"],                                                                                                           +
                                                       "Sort Method": "quicksort",                                                                                                            +
                                                       "Sort Space Used": 65239,                                                                                                              +
                                                       "Sort Space Type": "Memory",                                                                                                           +
                                                       "Shared Hit Blocks": 5,                                                                                                                +
                                                       "Shared Read Blocks": 252649,                                                                                                          +
                                                       "Shared Dirtied Blocks": 0,                                                                                                            +
                                                       "Shared Written Blocks": 0,                                                                                                            +
                                                       "Local Hit Blocks": 0,                                                                                                                 +
                                                       "Local Read Blocks": 0,                                                                                                                +
                                                       "Local Dirtied Blocks": 0,                                                                                                             +
                                                       "Local Written Blocks": 0,                                                                                                             +
                                                       "Temp Read Blocks": 0,                                                                                                                 +
                                                       "Temp Written Blocks": 0,                                                                                                              +
                                                       "Plans": [                                                                                                                             +
                                                         {                                                                                                                                    +
                                                           "Node Type": "Seq Scan",                                                                                                           +
                                                           "Parent Relationship": "Outer",                                                                                                    +
                                                           "Parallel Aware": false,                                                                                                           +
                                                           "Relation Name": "cast_info",                                                                                                      +
                                                           "Alias": "ci",                                                                                                                     +
                                                           "Startup Cost": 0.00,                                                                                                              +
                                                           "Total Cost": 16059.00,                                                                                                            +
                                                           "Plan Rows": 865636,                                                                                                               +
                                                           "Plan Width": 16,                                                                                                                  +
                                                           "Actual Startup Time": 0.020,                                                                                                      +
                                                           "Actual Total Time": 11651.036,                                                                                                    +
                                                           "Actual Rows": 867477,                                                                                                             +
                                                           "Actual Loops": 1,                                                                                                                 +
                                                           "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                                           "Rows Removed by Filter": 35376867,                                                                                                +
                                                           "Shared Hit Blocks": 5,                                                                                                            +
                                                           "Shared Read Blocks": 252649,                                                                                                      +
                                                           "Shared Dirtied Blocks": 0,                                                                                                        +
                                                           "Shared Written Blocks": 0,                                                                                                        +
                                                           "Local Hit Blocks": 0,                                                                                                             +
                                                           "Local Read Blocks": 0,                                                                                                            +
                                                           "Local Dirtied Blocks": 0,                                                                                                         +
                                                           "Local Written Blocks": 0,                                                                                                         +
                                                           "Temp Read Blocks": 0,                                                                                                             +
                                                           "Temp Written Blocks": 0                                                                                                           +
                                                         }                                                                                                                                    +
                                                       ]                                                                                                                                      +
                                                     }                                                                                                                                        +
                                                   ]                                                                                                                                          +
                                                 },                                                                                                                                           +
                                                 {                                                                                                                                            +
                                                   "Node Type": "Sort",                                                                                                                       +
                                                   "Parent Relationship": "Inner",                                                                                                            +
                                                   "Parallel Aware": false,                                                                                                                   +
                                                   "Startup Cost": 9405.45,                                                                                                                   +
                                                   "Total Cost": 9608.03,                                                                                                                     +
                                                   "Plan Rows": 2609129,                                                                                                                      +
                                                   "Plan Width": 8,                                                                                                                           +
                                                   "Actual Startup Time": 1482.623,                                                                                                           +
                                                   "Actual Total Time": 1681.284,                                                                                                             +
                                                   "Actual Rows": 3756876,                                                                                                                    +
                                                   "Actual Loops": 1,                                                                                                                         +
                                                   "Sort Key": ["mc.movie_id"],                                                                                                               +
                                                   "Sort Method": "quicksort",                                                                                                                +
                                                   "Sort Space Used": 220607,                                                                                                                 +
                                                   "Sort Space Type": "Memory",                                                                                                               +
                                                   "Shared Hit Blocks": 3,                                                                                                                    +
                                                   "Shared Read Blocks": 18786,                                                                                                               +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                +
                                                   "Shared Written Blocks": 0,                                                                                                                +
                                                   "Local Hit Blocks": 0,                                                                                                                     +
                                                   "Local Read Blocks": 0,                                                                                                                    +
                                                   "Local Dirtied Blocks": 0,                                                                                                                 +
                                                   "Local Written Blocks": 0,                                                                                                                 +
                                                   "Temp Read Blocks": 0,                                                                                                                     +
                                                   "Temp Written Blocks": 0,                                                                                                                  +
                                                   "Plans": [                                                                                                                                 +
                                                     {                                                                                                                                        +
                                                       "Node Type": "Seq Scan",                                                                                                               +
                                                       "Parent Relationship": "Outer",                                                                                                        +
                                                       "Parallel Aware": false,                                                                                                               +
                                                       "Relation Name": "movie_companies",                                                                                                    +
                                                       "Alias": "mc",                                                                                                                         +
                                                       "Startup Cost": 0.00,                                                                                                                  +
                                                       "Total Cost": 769.75,                                                                                                                  +
                                                       "Plan Rows": 2609129,                                                                                                                  +
                                                       "Plan Width": 8,                                                                                                                       +
                                                       "Actual Startup Time": 0.016,                                                                                                          +
                                                       "Actual Total Time": 553.570,                                                                                                          +
                                                       "Actual Rows": 2609129,                                                                                                                +
                                                       "Actual Loops": 1,                                                                                                                     +
                                                       "Shared Hit Blocks": 3,                                                                                                                +
                                                       "Shared Read Blocks": 18786,                                                                                                           +
                                                       "Shared Dirtied Blocks": 0,                                                                                                            +
                                                       "Shared Written Blocks": 0,                                                                                                            +
                                                       "Local Hit Blocks": 0,                                                                                                                 +
                                                       "Local Read Blocks": 0,                                                                                                                +
                                                       "Local Dirtied Blocks": 0,                                                                                                             +
                                                       "Local Written Blocks": 0,                                                                                                             +
                                                       "Temp Read Blocks": 0,                                                                                                                 +
                                                       "Temp Written Blocks": 0                                                                                                               +
                                                     }                                                                                                                                        +
                                                   ]                                                                                                                                          +
                                                 }                                                                                                                                            +
                                               ]                                                                                                                                              +
                                             }                                                                                                                                                +
                                           ]                                                                                                                                                  +
                                         },                                                                                                                                                   +
                                         {                                                                                                                                                    +
                                           "Node Type": "Sort",                                                                                                                               +
                                           "Parent Relationship": "Inner",                                                                                                                    +
                                           "Parallel Aware": false,                                                                                                                           +
                                           "Startup Cost": 3188.40,                                                                                                                           +
                                           "Total Cost": 3258.38,                                                                                                                             +
                                           "Plan Rows": 901343,                                                                                                                               +
                                           "Plan Width": 4,                                                                                                                                   +
                                           "Actual Startup Time": 752.811,                                                                                                                    +
                                           "Actual Total Time": 905.008,                                                                                                                      +
                                           "Actual Rows": 3056030,                                                                                                                            +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Sort Key": ["an.person_id"],                                                                                                                      +
                                           "Sort Method": "quicksort",                                                                                                                        +
                                           "Sort Space Used": 66827,                                                                                                                          +
                                           "Sort Space Type": "Memory",                                                                                                                       +
                                           "Shared Hit Blocks": 2,                                                                                                                            +
                                           "Shared Read Blocks": 11393,                                                                                                                       +
                                           "Shared Dirtied Blocks": 0,                                                                                                                        +
                                           "Shared Written Blocks": 0,                                                                                                                        +
                                           "Local Hit Blocks": 0,                                                                                                                             +
                                           "Local Read Blocks": 0,                                                                                                                            +
                                           "Local Dirtied Blocks": 0,                                                                                                                         +
                                           "Local Written Blocks": 0,                                                                                                                         +
                                           "Temp Read Blocks": 0,                                                                                                                             +
                                           "Temp Written Blocks": 0,                                                                                                                          +
                                           "Plans": [                                                                                                                                         +
                                             {                                                                                                                                                +
                                               "Node Type": "Seq Scan",                                                                                                                       +
                                               "Parent Relationship": "Outer",                                                                                                                +
                                               "Parallel Aware": false,                                                                                                                       +
                                               "Relation Name": "aka_name",                                                                                                                   +
                                               "Alias": "an",                                                                                                                                 +
                                               "Startup Cost": 0.00,                                                                                                                          +
                                               "Total Cost": 419.75,                                                                                                                          +
                                               "Plan Rows": 901343,                                                                                                                           +
                                               "Plan Width": 4,                                                                                                                               +
                                               "Actual Startup Time": 0.014,                                                                                                                  +
                                               "Actual Total Time": 350.814,                                                                                                                  +
                                               "Actual Rows": 901343,                                                                                                                         +
                                               "Actual Loops": 1,                                                                                                                             +
                                               "Shared Hit Blocks": 2,                                                                                                                        +
                                               "Shared Read Blocks": 11393,                                                                                                                   +
                                               "Shared Dirtied Blocks": 0,                                                                                                                    +
                                               "Shared Written Blocks": 0,                                                                                                                    +
                                               "Local Hit Blocks": 0,                                                                                                                         +
                                               "Local Read Blocks": 0,                                                                                                                        +
                                               "Local Dirtied Blocks": 0,                                                                                                                     +
                                               "Local Written Blocks": 0,                                                                                                                     +
                                               "Temp Read Blocks": 0,                                                                                                                         +
                                               "Temp Written Blocks": 0                                                                                                                       +
                                             }                                                                                                                                                +
                                           ]                                                                                                                                                  +
                                         }                                                                                                                                                    +
                                       ]                                                                                                                                                      +
                                     },                                                                                                                                                       +
                                     {                                                                                                                                                        +
                                       "Node Type": "Sort",                                                                                                                                   +
                                       "Parent Relationship": "Inner",                                                                                                                        +
                                       "Parallel Aware": false,                                                                                                                               +
                                       "Startup Cost": 2768.70,                                                                                                                               +
                                       "Total Cost": 2771.63,                                                                                                                                 +
                                       "Plan Rows": 37708,                                                                                                                                    +
                                       "Plan Width": 19,                                                                                                                                      +
                                       "Actual Startup Time": 2618.202,                                                                                                                       +
                                       "Actual Total Time": 2622.348,                                                                                                                         +
                                       "Actual Rows": 50011,                                                                                                                                  +
                                       "Actual Loops": 1,                                                                                                                                     +
                                       "Sort Key": ["n.id"],                                                                                                                                  +
                                       "Sort Method": "quicksort",                                                                                                                            +
                                       "Sort Space Used": 5246,                                                                                                                               +
                                       "Sort Space Type": "Memory",                                                                                                                           +
                                       "Shared Hit Blocks": 2,                                                                                                                                +
                                       "Shared Read Blocks": 55611,                                                                                                                           +
                                       "Shared Dirtied Blocks": 0,                                                                                                                            +
                                       "Shared Written Blocks": 0,                                                                                                                            +
                                       "Local Hit Blocks": 0,                                                                                                                                 +
                                       "Local Read Blocks": 0,                                                                                                                                +
                                       "Local Dirtied Blocks": 0,                                                                                                                             +
                                       "Local Written Blocks": 0,                                                                                                                             +
                                       "Temp Read Blocks": 0,                                                                                                                                 +
                                       "Temp Written Blocks": 0,                                                                                                                              +
                                       "Plans": [                                                                                                                                             +
                                         {                                                                                                                                                    +
                                           "Node Type": "Seq Scan",                                                                                                                           +
                                           "Parent Relationship": "Outer",                                                                                                                    +
                                           "Parallel Aware": false,                                                                                                                           +
                                           "Relation Name": "name",                                                                                                                           +
                                           "Alias": "n",                                                                                                                                      +
                                           "Startup Cost": 0.00,                                                                                                                              +
                                           "Total Cost": 2679.69,                                                                                                                             +
                                           "Plan Rows": 37708,                                                                                                                                +
                                           "Plan Width": 19,                                                                                                                                  +
                                           "Actual Startup Time": 1094.089,                                                                                                                   +
                                           "Actual Total Time": 2580.763,                                                                                                                     +
                                           "Actual Rows": 50011,                                                                                                                              +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                                             +
                                           "Rows Removed by Filter": 4117480,                                                                                                                 +
                                           "Shared Hit Blocks": 2,                                                                                                                            +
                                           "Shared Read Blocks": 55611,                                                                                                                       +
                                           "Shared Dirtied Blocks": 0,                                                                                                                        +
                                           "Shared Written Blocks": 0,                                                                                                                        +
                                           "Local Hit Blocks": 0,                                                                                                                             +
                                           "Local Read Blocks": 0,                                                                                                                            +
                                           "Local Dirtied Blocks": 0,                                                                                                                         +
                                           "Local Written Blocks": 0,                                                                                                                         +
                                           "Temp Read Blocks": 0,                                                                                                                             +
                                           "Temp Written Blocks": 0                                                                                                                           +
                                         }                                                                                                                                                    +
                                       ]                                                                                                                                                      +
                                     }                                                                                                                                                        +
                                   ]                                                                                                                                                          +
                                 }                                                                                                                                                            +
                               ]                                                                                                                                                              +
                             },                                                                                                                                                               +
                             {                                                                                                                                                                +
                               "Node Type": "Sort",                                                                                                                                           +
                               "Parent Relationship": "Inner",                                                                                                                                +
                               "Parallel Aware": false,                                                                                                                                       +
                               "Startup Cost": 344.10,                                                                                                                                        +
                               "Total Cost": 350.69,                                                                                                                                          +
                               "Plan Rows": 84843,                                                                                                                                            +
                               "Plan Width": 4,                                                                                                                                               +
                               "Actual Startup Time": 193.590,                                                                                                                                +
                               "Actual Total Time": 201.828,                                                                                                                                  +
                               "Actual Rows": 84239,                                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                                             +
                               "Sort Key": ["cn.id"],                                                                                                                                         +
                               "Sort Method": "quicksort",                                                                                                                                    +
                               "Sort Space Used": 7050,                                                                                                                                       +
                               "Sort Space Type": "Memory",                                                                                                                                   +
                               "Shared Hit Blocks": 2,                                                                                                                                        +
                               "Shared Read Blocks": 2992,                                                                                                                                    +
                               "Shared Dirtied Blocks": 0,                                                                                                                                    +
                               "Shared Written Blocks": 0,                                                                                                                                    +
                               "Local Hit Blocks": 0,                                                                                                                                         +
                               "Local Read Blocks": 0,                                                                                                                                        +
                               "Local Dirtied Blocks": 0,                                                                                                                                     +
                               "Local Written Blocks": 0,                                                                                                                                     +
                               "Temp Read Blocks": 0,                                                                                                                                         +
                               "Temp Written Blocks": 0,                                                                                                                                      +
                               "Plans": [                                                                                                                                                     +
                                 {                                                                                                                                                            +
                                   "Node Type": "Seq Scan",                                                                                                                                   +
                                   "Parent Relationship": "Outer",                                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                                   +
                                   "Relation Name": "company_name",                                                                                                                           +
                                   "Alias": "cn",                                                                                                                                             +
                                   "Startup Cost": 0.00,                                                                                                                                      +
                                   "Total Cost": 128.41,                                                                                                                                      +
                                   "Plan Rows": 84843,                                                                                                                                        +
                                   "Plan Width": 4,                                                                                                                                           +
                                   "Actual Startup Time": 31.447,                                                                                                                             +
                                   "Actual Total Time": 141.657,                                                                                                                              +
                                   "Actual Rows": 84843,                                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Filter": "((country_code)::text = '[us]'::text)",                                                                                                         +
                                   "Rows Removed by Filter": 150154,                                                                                                                          +
                                   "Shared Hit Blocks": 2,                                                                                                                                    +
                                   "Shared Read Blocks": 2992,                                                                                                                                +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                +
                                   "Shared Written Blocks": 0,                                                                                                                                +
                                   "Local Hit Blocks": 0,                                                                                                                                     +
                                   "Local Read Blocks": 0,                                                                                                                                    +
                                   "Local Dirtied Blocks": 0,                                                                                                                                 +
                                   "Local Written Blocks": 0,                                                                                                                                 +
                                   "Temp Read Blocks": 0,                                                                                                                                     +
                                   "Temp Written Blocks": 0                                                                                                                                   +
                                 }                                                                                                                                                            +
                               ]                                                                                                                                                              +
                             }                                                                                                                                                                +
                           ]                                                                                                                                                                  +
                         }                                                                                                                                                                    +
                       ]                                                                                                                                                                      +
                     },                                                                                                                                                                       +
                     {                                                                                                                                                                        +
                       "Node Type": "Sort",                                                                                                                                                   +
                       "Parent Relationship": "Inner",                                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                                               +
                       "Startup Cost": 0.03,                                                                                                                                                  +
                       "Total Cost": 0.03,                                                                                                                                                    +
                       "Plan Rows": 1,                                                                                                                                                        +
                       "Plan Width": 4,                                                                                                                                                       +
                       "Actual Startup Time": 0.020,                                                                                                                                          +
                       "Actual Total Time": 0.020,                                                                                                                                            +
                       "Actual Rows": 1,                                                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                                                     +
                       "Sort Key": ["rt.id"],                                                                                                                                                 +
                       "Sort Method": "quicksort",                                                                                                                                            +
                       "Sort Space Used": 25,                                                                                                                                                 +
                       "Sort Space Type": "Memory",                                                                                                                                           +
                       "Shared Hit Blocks": 1,                                                                                                                                                +
                       "Shared Read Blocks": 0,                                                                                                                                               +
                       "Shared Dirtied Blocks": 0,                                                                                                                                            +
                       "Shared Written Blocks": 0,                                                                                                                                            +
                       "Local Hit Blocks": 0,                                                                                                                                                 +
                       "Local Read Blocks": 0,                                                                                                                                                +
                       "Local Dirtied Blocks": 0,                                                                                                                                             +
                       "Local Written Blocks": 0,                                                                                                                                             +
                       "Temp Read Blocks": 0,                                                                                                                                                 +
                       "Temp Written Blocks": 0,                                                                                                                                              +
                       "Plans": [                                                                                                                                                             +
                         {                                                                                                                                                                    +
                           "Node Type": "Seq Scan",                                                                                                                                           +
                           "Parent Relationship": "Outer",                                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                                           +
                           "Relation Name": "role_type",                                                                                                                                      +
                           "Alias": "rt",                                                                                                                                                     +
                           "Startup Cost": 0.00,                                                                                                                                              +
                           "Total Cost": 0.03,                                                                                                                                                +
                           "Plan Rows": 1,                                                                                                                                                    +
                           "Plan Width": 4,                                                                                                                                                   +
                           "Actual Startup Time": 0.009,                                                                                                                                      +
                           "Actual Total Time": 0.011,                                                                                                                                        +
                           "Actual Rows": 1,                                                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Filter": "((role)::text = 'actress'::text)",                                                                                                                      +
                           "Rows Removed by Filter": 11,                                                                                                                                      +
                           "Shared Hit Blocks": 1,                                                                                                                                            +
                           "Shared Read Blocks": 0,                                                                                                                                           +
                           "Shared Dirtied Blocks": 0,                                                                                                                                        +
                           "Shared Written Blocks": 0,                                                                                                                                        +
                           "Local Hit Blocks": 0,                                                                                                                                             +
                           "Local Read Blocks": 0,                                                                                                                                            +
                           "Local Dirtied Blocks": 0,                                                                                                                                         +
                           "Local Written Blocks": 0,                                                                                                                                         +
                           "Temp Read Blocks": 0,                                                                                                                                             +
                           "Temp Written Blocks": 0                                                                                                                                           +
                         }                                                                                                                                                                    +
                       ]                                                                                                                                                                      +
                     }                                                                                                                                                                        +
                   ]                                                                                                                                                                          +
                 }                                                                                                                                                                            +
               ]                                                                                                                                                                              +
             },                                                                                                                                                                               +
             {                                                                                                                                                                                +
               "Node Type": "Sort",                                                                                                                                                           +
               "Parent Relationship": "Inner",                                                                                                                                                +
               "Parallel Aware": false,                                                                                                                                                       +
               "Startup Cost": 11884.63,                                                                                                                                                      +
               "Total Cost": 12128.45,                                                                                                                                                        +
               "Plan Rows": 3140339,                                                                                                                                                          +
               "Plan Width": 4,                                                                                                                                                               +
               "Actual Startup Time": 2463.957,                                                                                                                                               +
               "Actual Total Time": 2830.727,                                                                                                                                                 +
               "Actual Rows": 3133144,                                                                                                                                                        +
               "Actual Loops": 1,                                                                                                                                                             +
               "Sort Key": ["chn.id"],                                                                                                                                                        +
               "Sort Method": "quicksort",                                                                                                                                                    +
               "Sort Space Used": 245508,                                                                                                                                                     +
               "Sort Space Type": "Memory",                                                                                                                                                   +
               "Shared Hit Blocks": 2,                                                                                                                                                        +
               "Shared Read Blocks": 36445,                                                                                                                                                   +
               "Shared Dirtied Blocks": 0,                                                                                                                                                    +
               "Shared Written Blocks": 0,                                                                                                                                                    +
               "Local Hit Blocks": 0,                                                                                                                                                         +
               "Local Read Blocks": 0,                                                                                                                                                        +
               "Local Dirtied Blocks": 0,                                                                                                                                                     +
               "Local Written Blocks": 0,                                                                                                                                                     +
               "Temp Read Blocks": 0,                                                                                                                                                         +
               "Temp Written Blocks": 0,                                                                                                                                                      +
               "Plans": [                                                                                                                                                                     +
                 {                                                                                                                                                                            +
                   "Node Type": "Seq Scan",                                                                                                                                                   +
                   "Parent Relationship": "Outer",                                                                                                                                            +
                   "Parallel Aware": false,                                                                                                                                                   +
                   "Relation Name": "char_name",                                                                                                                                              +
                   "Alias": "chn",                                                                                                                                                            +
                   "Startup Cost": 0.00,                                                                                                                                                      +
                   "Total Cost": 1360.36,                                                                                                                                                     +
                   "Plan Rows": 3140339,                                                                                                                                                      +
                   "Plan Width": 4,                                                                                                                                                           +
                   "Actual Startup Time": 9.189,                                                                                                                                              +
                   "Actual Total Time": 1041.168,                                                                                                                                             +
                   "Actual Rows": 3140339,                                                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                                                         +
                   "Shared Hit Blocks": 2,                                                                                                                                                    +
                   "Shared Read Blocks": 36445,                                                                                                                                               +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                +
                   "Shared Written Blocks": 0,                                                                                                                                                +
                   "Local Hit Blocks": 0,                                                                                                                                                     +
                   "Local Read Blocks": 0,                                                                                                                                                    +
                   "Local Dirtied Blocks": 0,                                                                                                                                                 +
                   "Local Written Blocks": 0,                                                                                                                                                 +
                   "Temp Read Blocks": 0,                                                                                                                                                     +
                   "Temp Written Blocks": 0                                                                                                                                                   +
                 }                                                                                                                                                                            +
               ]                                                                                                                                                                              +
             }                                                                                                                                                                                +
           ]                                                                                                                                                                                  +
         }                                                                                                                                                                                    +
       ]                                                                                                                                                                                      +
     },                                                                                                                                                                                       +
     "Planning Time": 7077.599,                                                                                                                                                               +
     "Triggers": [                                                                                                                                                                            +
     ],                                                                                                                                                                                       +
     "Execution Time": 34926.535                                                                                                                                                              +
   }                                                                                                                                                                                          +
 ]
(1 row)
