                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                  +
   {                                                                                                                                                                                +
     "Plan": {                                                                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                                                                    +
       "Strategy": "Plain",                                                                                                                                                         +
       "Partial Mode": "Simple",                                                                                                                                                    +
       "Parallel Aware": false,                                                                                                                                                     +
       "Startup Cost": 46355.50,                                                                                                                                                    +
       "Total Cost": 46355.50,                                                                                                                                                      +
       "Plan Rows": 1,                                                                                                                                                              +
       "Plan Width": 64,                                                                                                                                                            +
       "Actual Startup Time": 31164.932,                                                                                                                                            +
       "Actual Total Time": 31164.932,                                                                                                                                              +
       "Actual Rows": 1,                                                                                                                                                            +
       "Actual Loops": 1,                                                                                                                                                           +
       "Shared Hit Blocks": 6695,                                                                                                                                                   +
       "Shared Read Blocks": 576184,                                                                                                                                                +
       "Shared Dirtied Blocks": 0,                                                                                                                                                  +
       "Shared Written Blocks": 0,                                                                                                                                                  +
       "Local Hit Blocks": 0,                                                                                                                                                       +
       "Local Read Blocks": 0,                                                                                                                                                      +
       "Local Dirtied Blocks": 0,                                                                                                                                                   +
       "Local Written Blocks": 0,                                                                                                                                                   +
       "Temp Read Blocks": 0,                                                                                                                                                       +
       "Temp Written Blocks": 0,                                                                                                                                                    +
       "Plans": [                                                                                                                                                                   +
         {                                                                                                                                                                          +
           "Node Type": "Merge Join",                                                                                                                                               +
           "Parent Relationship": "Outer",                                                                                                                                          +
           "Parallel Aware": false,                                                                                                                                                 +
           "Join Type": "Inner",                                                                                                                                                    +
           "Startup Cost": 45867.87,                                                                                                                                                +
           "Total Cost": 46355.50,                                                                                                                                                  +
           "Plan Rows": 1,                                                                                                                                                          +
           "Plan Width": 32,                                                                                                                                                        +
           "Actual Startup Time": 31164.890,                                                                                                                                        +
           "Actual Total Time": 31164.897,                                                                                                                                          +
           "Actual Rows": 15,                                                                                                                                                       +
           "Actual Loops": 1,                                                                                                                                                       +
           "Inner Unique": true,                                                                                                                                                    +
           "Merge Cond": "(ci.person_role_id = chn.id)",                                                                                                                            +
           "Shared Hit Blocks": 6695,                                                                                                                                               +
           "Shared Read Blocks": 576184,                                                                                                                                            +
           "Shared Dirtied Blocks": 0,                                                                                                                                              +
           "Shared Written Blocks": 0,                                                                                                                                              +
           "Local Hit Blocks": 0,                                                                                                                                                   +
           "Local Read Blocks": 0,                                                                                                                                                  +
           "Local Dirtied Blocks": 0,                                                                                                                                               +
           "Local Written Blocks": 0,                                                                                                                                               +
           "Temp Read Blocks": 0,                                                                                                                                                   +
           "Temp Written Blocks": 0,                                                                                                                                                +
           "Plans": [                                                                                                                                                               +
             {                                                                                                                                                                      +
               "Node Type": "Sort",                                                                                                                                                 +
               "Parent Relationship": "Outer",                                                                                                                                      +
               "Parallel Aware": false,                                                                                                                                             +
               "Startup Cost": 33983.24,                                                                                                                                            +
               "Total Cost": 33983.24,                                                                                                                                              +
               "Plan Rows": 1,                                                                                                                                                      +
               "Plan Width": 36,                                                                                                                                                    +
               "Actual Startup Time": 28224.216,                                                                                                                                    +
               "Actual Total Time": 28224.219,                                                                                                                                      +
               "Actual Rows": 15,                                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                                   +
               "Sort Key": ["ci.person_role_id"],                                                                                                                                   +
               "Sort Method": "quicksort",                                                                                                                                          +
               "Sort Space Used": 26,                                                                                                                                               +
               "Sort Space Type": "Memory",                                                                                                                                         +
               "Shared Hit Blocks": 6693,                                                                                                                                           +
               "Shared Read Blocks": 539739,                                                                                                                                        +
               "Shared Dirtied Blocks": 0,                                                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                                                               +
               "Local Read Blocks": 0,                                                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                                                           +
               "Local Written Blocks": 0,                                                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                                                               +
               "Temp Written Blocks": 0,                                                                                                                                            +
               "Plans": [                                                                                                                                                           +
                 {                                                                                                                                                                  +
                   "Node Type": "Merge Join",                                                                                                                                       +
                   "Parent Relationship": "Outer",                                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                                         +
                   "Join Type": "Inner",                                                                                                                                            +
                   "Startup Cost": 33862.85,                                                                                                                                        +
                   "Total Cost": 33983.24,                                                                                                                                          +
                   "Plan Rows": 1,                                                                                                                                                  +
                   "Plan Width": 36,                                                                                                                                                +
                   "Actual Startup Time": 28184.429,                                                                                                                                +
                   "Actual Total Time": 28198.890,                                                                                                                                  +
                   "Actual Rows": 15,                                                                                                                                               +
                   "Actual Loops": 1,                                                                                                                                               +
                   "Inner Unique": true,                                                                                                                                            +
                   "Merge Cond": "(ci.person_id = n.id)",                                                                                                                           +
                   "Shared Hit Blocks": 6689,                                                                                                                                       +
                   "Shared Read Blocks": 539739,                                                                                                                                    +
                   "Shared Dirtied Blocks": 0,                                                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                                                           +
                   "Temp Written Blocks": 0,                                                                                                                                        +
                   "Plans": [                                                                                                                                                       +
                     {                                                                                                                                                              +
                       "Node Type": "Merge Join",                                                                                                                                   +
                       "Parent Relationship": "Outer",                                                                                                                              +
                       "Parallel Aware": false,                                                                                                                                     +
                       "Join Type": "Inner",                                                                                                                                        +
                       "Startup Cost": 31178.26,                                                                                                                                    +
                       "Total Cost": 31298.23,                                                                                                                                      +
                       "Plan Rows": 1,                                                                                                                                              +
                       "Plan Width": 29,                                                                                                                                            +
                       "Actual Startup Time": 25571.316,                                                                                                                            +
                       "Actual Total Time": 25591.957,                                                                                                                              +
                       "Actual Rows": 36,                                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                                           +
                       "Inner Unique": false,                                                                                                                                       +
                       "Merge Cond": "(ci.person_id = an.person_id)",                                                                                                               +
                       "Shared Hit Blocks": 6687,                                                                                                                                   +
                       "Shared Read Blocks": 484128,                                                                                                                                +
                       "Shared Dirtied Blocks": 0,                                                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                                                    +
                       "Plans": [                                                                                                                                                   +
                         {                                                                                                                                                          +
                           "Node Type": "Sort",                                                                                                                                     +
                           "Parent Relationship": "Outer",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Startup Cost": 27989.87,                                                                                                                                +
                           "Total Cost": 27989.87,                                                                                                                                  +
                           "Plan Rows": 1,                                                                                                                                          +
                           "Plan Width": 25,                                                                                                                                        +
                           "Actual Startup Time": 24497.988,                                                                                                                        +
                           "Actual Total Time": 24497.994,                                                                                                                          +
                           "Actual Rows": 24,                                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                                       +
                           "Sort Key": ["ci.person_id"],                                                                                                                            +
                           "Sort Method": "quicksort",                                                                                                                              +
                           "Sort Space Used": 27,                                                                                                                                   +
                           "Sort Space Type": "Memory",                                                                                                                             +
                           "Shared Hit Blocks": 6685,                                                                                                                               +
                           "Shared Read Blocks": 472735,                                                                                                                            +
                           "Shared Dirtied Blocks": 0,                                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                                   +
                           "Temp Written Blocks": 0,                                                                                                                                +
                           "Plans": [                                                                                                                                               +
                             {                                                                                                                                                      +
                               "Node Type": "Merge Join",                                                                                                                           +
                               "Parent Relationship": "Outer",                                                                                                                      +
                               "Parallel Aware": false,                                                                                                                             +
                               "Join Type": "Inner",                                                                                                                                +
                               "Startup Cost": 27976.69,                                                                                                                            +
                               "Total Cost": 27989.87,                                                                                                                              +
                               "Plan Rows": 1,                                                                                                                                      +
                               "Plan Width": 25,                                                                                                                                    +
                               "Actual Startup Time": 24497.462,                                                                                                                    +
                               "Actual Total Time": 24497.969,                                                                                                                      +
                               "Actual Rows": 24,                                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                                   +
                               "Inner Unique": true,                                                                                                                                +
                               "Merge Cond": "(mc.company_id = cn.id)",                                                                                                             +
                               "Shared Hit Blocks": 6685,                                                                                                                           +
                               "Shared Read Blocks": 472735,                                                                                                                        +
                               "Shared Dirtied Blocks": 0,                                                                                                                          +
                               "Shared Written Blocks": 0,                                                                                                                          +
                               "Local Hit Blocks": 0,                                                                                                                               +
                               "Local Read Blocks": 0,                                                                                                                              +
                               "Local Dirtied Blocks": 0,                                                                                                                           +
                               "Local Written Blocks": 0,                                                                                                                           +
                               "Temp Read Blocks": 0,                                                                                                                               +
                               "Temp Written Blocks": 0,                                                                                                                            +
                               "Plans": [                                                                                                                                           +
                                 {                                                                                                                                                  +
                                   "Node Type": "Sort",                                                                                                                             +
                                   "Parent Relationship": "Outer",                                                                                                                  +
                                   "Parallel Aware": false,                                                                                                                         +
                                   "Startup Cost": 27632.59,                                                                                                                        +
                                   "Total Cost": 27632.59,                                                                                                                          +
                                   "Plan Rows": 1,                                                                                                                                  +
                                   "Plan Width": 29,                                                                                                                                +
                                   "Actual Startup Time": 24322.155,                                                                                                                +
                                   "Actual Total Time": 24322.159,                                                                                                                  +
                                   "Actual Rows": 24,                                                                                                                               +
                                   "Actual Loops": 1,                                                                                                                               +
                                   "Sort Key": ["mc.company_id"],                                                                                                                   +
                                   "Sort Method": "quicksort",                                                                                                                      +
                                   "Sort Space Used": 27,                                                                                                                           +
                                   "Sort Space Type": "Memory",                                                                                                                     +
                                   "Shared Hit Blocks": 6683,                                                                                                                       +
                                   "Shared Read Blocks": 469743,                                                                                                                    +
                                   "Shared Dirtied Blocks": 0,                                                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                                                           +
                                   "Local Read Blocks": 0,                                                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                                                       +
                                   "Local Written Blocks": 0,                                                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                                                           +
                                   "Temp Written Blocks": 0,                                                                                                                        +
                                   "Plans": [                                                                                                                                       +
                                     {                                                                                                                                              +
                                       "Node Type": "Merge Join",                                                                                                                   +
                                       "Parent Relationship": "Outer",                                                                                                              +
                                       "Parallel Aware": false,                                                                                                                     +
                                       "Join Type": "Inner",                                                                                                                        +
                                       "Startup Cost": 27632.59,                                                                                                                    +
                                       "Total Cost": 27632.59,                                                                                                                      +
                                       "Plan Rows": 1,                                                                                                                              +
                                       "Plan Width": 29,                                                                                                                            +
                                       "Actual Startup Time": 24322.131,                                                                                                            +
                                       "Actual Total Time": 24322.138,                                                                                                              +
                                       "Actual Rows": 24,                                                                                                                           +
                                       "Actual Loops": 1,                                                                                                                           +
                                       "Inner Unique": true,                                                                                                                        +
                                       "Merge Cond": "(ci.role_id = rt.id)",                                                                                                        +
                                       "Shared Hit Blocks": 6683,                                                                                                                   +
                                       "Shared Read Blocks": 469743,                                                                                                                +
                                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                                       +
                                       "Temp Written Blocks": 0,                                                                                                                    +
                                       "Plans": [                                                                                                                                   +
                                         {                                                                                                                                          +
                                           "Node Type": "Sort",                                                                                                                     +
                                           "Parent Relationship": "Outer",                                                                                                          +
                                           "Parallel Aware": false,                                                                                                                 +
                                           "Startup Cost": 27632.56,                                                                                                                +
                                           "Total Cost": 27632.56,                                                                                                                  +
                                           "Plan Rows": 1,                                                                                                                          +
                                           "Plan Width": 33,                                                                                                                        +
                                           "Actual Startup Time": 24322.109,                                                                                                        +
                                           "Actual Total Time": 24322.114,                                                                                                          +
                                           "Actual Rows": 100,                                                                                                                      +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Sort Key": ["ci.role_id"],                                                                                                              +
                                           "Sort Method": "quicksort",                                                                                                              +
                                           "Sort Space Used": 34,                                                                                                                   +
                                           "Sort Space Type": "Memory",                                                                                                             +
                                           "Shared Hit Blocks": 6682,                                                                                                               +
                                           "Shared Read Blocks": 469743,                                                                                                            +
                                           "Shared Dirtied Blocks": 0,                                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                                               +
                                           "Local Written Blocks": 0,                                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                                   +
                                           "Temp Written Blocks": 0,                                                                                                                +
                                           "Plans": [                                                                                                                               +
                                             {                                                                                                                                      +
                                               "Node Type": "Merge Join",                                                                                                           +
                                               "Parent Relationship": "Outer",                                                                                                      +
                                               "Parallel Aware": false,                                                                                                             +
                                               "Join Type": "Inner",                                                                                                                +
                                               "Startup Cost": 27632.55,                                                                                                            +
                                               "Total Cost": 27632.55,                                                                                                              +
                                               "Plan Rows": 1,                                                                                                                      +
                                               "Plan Width": 33,                                                                                                                    +
                                               "Actual Startup Time": 24322.038,                                                                                                    +
                                               "Actual Total Time": 24322.067,                                                                                                      +
                                               "Actual Rows": 100,                                                                                                                  +
                                               "Actual Loops": 1,                                                                                                                   +
                                               "Inner Unique": true,                                                                                                                +
                                               "Merge Cond": "(mi.info_type_id = it.id)",                                                                                           +
                                               "Shared Hit Blocks": 6682,                                                                                                           +
                                               "Shared Read Blocks": 469743,                                                                                                        +
                                               "Shared Dirtied Blocks": 0,                                                                                                          +
                                               "Shared Written Blocks": 0,                                                                                                          +
                                               "Local Hit Blocks": 0,                                                                                                               +
                                               "Local Read Blocks": 0,                                                                                                              +
                                               "Local Dirtied Blocks": 0,                                                                                                           +
                                               "Local Written Blocks": 0,                                                                                                           +
                                               "Temp Read Blocks": 0,                                                                                                               +
                                               "Temp Written Blocks": 0,                                                                                                            +
                                               "Plans": [                                                                                                                           +
                                                 {                                                                                                                                  +
                                                   "Node Type": "Sort",                                                                                                             +
                                                   "Parent Relationship": "Outer",                                                                                                  +
                                                   "Parallel Aware": false,                                                                                                         +
                                                   "Startup Cost": 27632.51,                                                                                                        +
                                                   "Total Cost": 27632.51,                                                                                                          +
                                                   "Plan Rows": 1,                                                                                                                  +
                                                   "Plan Width": 37,                                                                                                                +
                                                   "Actual Startup Time": 24322.006,                                                                                                +
                                                   "Actual Total Time": 24322.011,                                                                                                  +
                                                   "Actual Rows": 100,                                                                                                              +
                                                   "Actual Loops": 1,                                                                                                               +
                                                   "Sort Key": ["mi.info_type_id"],                                                                                                 +
                                                   "Sort Method": "quicksort",                                                                                                      +
                                                   "Sort Space Used": 34,                                                                                                           +
                                                   "Sort Space Type": "Memory",                                                                                                     +
                                                   "Shared Hit Blocks": 6681,                                                                                                       +
                                                   "Shared Read Blocks": 469743,                                                                                                    +
                                                   "Shared Dirtied Blocks": 0,                                                                                                      +
                                                   "Shared Written Blocks": 0,                                                                                                      +
                                                   "Local Hit Blocks": 0,                                                                                                           +
                                                   "Local Read Blocks": 0,                                                                                                          +
                                                   "Local Dirtied Blocks": 0,                                                                                                       +
                                                   "Local Written Blocks": 0,                                                                                                       +
                                                   "Temp Read Blocks": 0,                                                                                                           +
                                                   "Temp Written Blocks": 0,                                                                                                        +
                                                   "Plans": [                                                                                                                       +
                                                     {                                                                                                                              +
                                                       "Node Type": "Merge Join",                                                                                                   +
                                                       "Parent Relationship": "Outer",                                                                                              +
                                                       "Parallel Aware": false,                                                                                                     +
                                                       "Join Type": "Inner",                                                                                                        +
                                                       "Startup Cost": 27496.06,                                                                                                    +
                                                       "Total Cost": 27632.51,                                                                                                      +
                                                       "Plan Rows": 1,                                                                                                              +
                                                       "Plan Width": 37,                                                                                                            +
                                                       "Actual Startup Time": 24321.853,                                                                                            +
                                                       "Actual Total Time": 24321.962,                                                                                              +
                                                       "Actual Rows": 100,                                                                                                          +
                                                       "Actual Loops": 1,                                                                                                           +
                                                       "Inner Unique": false,                                                                                                       +
                                                       "Merge Cond": "(t.id = mi.movie_id)",                                                                                        +
                                                       "Shared Hit Blocks": 6681,                                                                                                   +
                                                       "Shared Read Blocks": 469743,                                                                                                +
                                                       "Shared Dirtied Blocks": 0,                                                                                                  +
                                                       "Shared Written Blocks": 0,                                                                                                  +
                                                       "Local Hit Blocks": 0,                                                                                                       +
                                                       "Local Read Blocks": 0,                                                                                                      +
                                                       "Local Dirtied Blocks": 0,                                                                                                   +
                                                       "Local Written Blocks": 0,                                                                                                   +
                                                       "Temp Read Blocks": 0,                                                                                                       +
                                                       "Temp Written Blocks": 0,                                                                                                    +
                                                       "Plans": [                                                                                                                   +
                                                         {                                                                                                                          +
                                                           "Node Type": "Merge Join",                                                                                               +
                                                           "Parent Relationship": "Outer",                                                                                          +
                                                           "Parallel Aware": false,                                                                                                 +
                                                           "Join Type": "Inner",                                                                                                    +
                                                           "Startup Cost": 18913.60,                                                                                                +
                                                           "Total Cost": 19039.17,                                                                                                  +
                                                           "Plan Rows": 1,                                                                                                          +
                                                           "Plan Width": 45,                                                                                                        +
                                                           "Actual Startup Time": 14944.767,                                                                                        +
                                                           "Actual Total Time": 14944.841,                                                                                          +
                                                           "Actual Rows": 100,                                                                                                      +
                                                           "Actual Loops": 1,                                                                                                       +
                                                           "Inner Unique": false,                                                                                                   +
                                                           "Merge Cond": "(t.id = ci.movie_id)",                                                                                    +
                                                           "Shared Hit Blocks": 9,                                                                                                  +
                                                           "Shared Read Blocks": 307432,                                                                                            +
                                                           "Shared Dirtied Blocks": 0,                                                                                              +
                                                           "Shared Written Blocks": 0,                                                                                              +
                                                           "Local Hit Blocks": 0,                                                                                                   +
                                                           "Local Read Blocks": 0,                                                                                                  +
                                                           "Local Dirtied Blocks": 0,                                                                                               +
                                                           "Local Written Blocks": 0,                                                                                               +
                                                           "Temp Read Blocks": 0,                                                                                                   +
                                                           "Temp Written Blocks": 0,                                                                                                +
                                                           "Plans": [                                                                                                               +
                                                             {                                                                                                                      +
                                                               "Node Type": "Merge Join",                                                                                           +
                                                               "Parent Relationship": "Outer",                                                                                      +
                                                               "Parallel Aware": false,                                                                                             +
                                                               "Join Type": "Inner",                                                                                                +
                                                               "Startup Cost": 3518.27,                                                                                             +
                                                               "Total Cost": 3533.25,                                                                                               +
                                                               "Plan Rows": 1,                                                                                                      +
                                                               "Plan Width": 29,                                                                                                    +
                                                               "Actual Startup Time": 2698.472,                                                                                     +
                                                               "Actual Total Time": 2698.477,                                                                                       +
                                                               "Actual Rows": 4,                                                                                                    +
                                                               "Actual Loops": 1,                                                                                                   +
                                                               "Inner Unique": true,                                                                                                +
                                                               "Merge Cond": "(mc.movie_id = t.id)",                                                                                +
                                                               "Shared Hit Blocks": 4,                                                                                              +
                                                               "Shared Read Blocks": 54783,                                                                                         +
                                                               "Shared Dirtied Blocks": 0,                                                                                          +
                                                               "Shared Written Blocks": 0,                                                                                          +
                                                               "Local Hit Blocks": 0,                                                                                               +
                                                               "Local Read Blocks": 0,                                                                                              +
                                                               "Local Dirtied Blocks": 0,                                                                                           +
                                                               "Local Written Blocks": 0,                                                                                           +
                                                               "Temp Read Blocks": 0,                                                                                               +
                                                               "Temp Written Blocks": 0,                                                                                            +
                                                               "Plans": [                                                                                                           +
                                                                 {                                                                                                                  +
                                                                   "Node Type": "Sort",                                                                                             +
                                                                   "Parent Relationship": "Outer",                                                                                  +
                                                                   "Parallel Aware": false,                                                                                         +
                                                                   "Startup Cost": 1625.41,                                                                                         +
                                                                   "Total Cost": 1632.90,                                                                                           +
                                                                   "Plan Rows": 96436,                                                                                              +
                                                                   "Plan Width": 8,                                                                                                 +
                                                                   "Actual Startup Time": 951.270,                                                                                  +
                                                                   "Actual Total Time": 960.176,                                                                                    +
                                                                   "Actual Rows": 124074,                                                                                           +
                                                                   "Actual Loops": 1,                                                                                               +
                                                                   "Sort Key": ["mc.movie_id"],                                                                                     +
                                                                   "Sort Method": "quicksort",                                                                                      +
                                                                   "Sort Space Used": 15450,                                                                                        +
                                                                   "Sort Space Type": "Memory",                                                                                     +
                                                                   "Shared Hit Blocks": 3,                                                                                          +
                                                                   "Shared Read Blocks": 18786,                                                                                     +
                                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                                   "Shared Written Blocks": 0,                                                                                      +
                                                                   "Local Hit Blocks": 0,                                                                                           +
                                                                   "Local Read Blocks": 0,                                                                                          +
                                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                                   "Local Written Blocks": 0,                                                                                       +
                                                                   "Temp Read Blocks": 0,                                                                                           +
                                                                   "Temp Written Blocks": 0,                                                                                        +
                                                                   "Plans": [                                                                                                       +
                                                                     {                                                                                                              +
                                                                       "Node Type": "Seq Scan",                                                                                     +
                                                                       "Parent Relationship": "Outer",                                                                              +
                                                                       "Parallel Aware": false,                                                                                     +
                                                                       "Relation Name": "movie_companies",                                                                          +
                                                                       "Alias": "mc",                                                                                               +
                                                                       "Startup Cost": 0.00,                                                                                        +
                                                                       "Total Cost": 1377.47,                                                                                       +
                                                                       "Plan Rows": 96436,                                                                                          +
                                                                       "Plan Width": 8,                                                                                             +
                                                                       "Actual Startup Time": 0.056,                                                                                +
                                                                       "Actual Total Time": 878.473,                                                                                +
                                                                       "Actual Rows": 198519,                                                                                       +
                                                                       "Actual Loops": 1,                                                                                           +
                                                                       "Filter": "((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))", +
                                                                       "Rows Removed by Filter": 2410610,                                                                           +
                                                                       "Shared Hit Blocks": 3,                                                                                      +
                                                                       "Shared Read Blocks": 18786,                                                                                 +
                                                                       "Shared Dirtied Blocks": 0,                                                                                  +
                                                                       "Shared Written Blocks": 0,                                                                                  +
                                                                       "Local Hit Blocks": 0,                                                                                       +
                                                                       "Local Read Blocks": 0,                                                                                      +
                                                                       "Local Dirtied Blocks": 0,                                                                                   +
                                                                       "Local Written Blocks": 0,                                                                                   +
                                                                       "Temp Read Blocks": 0,                                                                                       +
                                                                       "Temp Written Blocks": 0                                                                                     +
                                                                     }                                                                                                              +
                                                                   ]                                                                                                                +
                                                                 },                                                                                                                 +
                                                                 {                                                                                                                  +
                                                                   "Node Type": "Sort",                                                                                             +
                                                                   "Parent Relationship": "Inner",                                                                                  +
                                                                   "Parallel Aware": false,                                                                                         +
                                                                   "Startup Cost": 1892.87,                                                                                         +
                                                                   "Total Cost": 1892.87,                                                                                           +
                                                                   "Plan Rows": 18,                                                                                                 +
                                                                   "Plan Width": 21,                                                                                                +
                                                                   "Actual Startup Time": 1718.993,                                                                                 +
                                                                   "Actual Total Time": 1718.995,                                                                                   +
                                                                   "Actual Rows": 7,                                                                                                +
                                                                   "Actual Loops": 1,                                                                                               +
                                                                   "Sort Key": ["t.id"],                                                                                            +
                                                                   "Sort Method": "quicksort",                                                                                      +
                                                                   "Sort Space Used": 25,                                                                                           +
                                                                   "Sort Space Type": "Memory",                                                                                     +
                                                                   "Shared Hit Blocks": 1,                                                                                          +
                                                                   "Shared Read Blocks": 35997,                                                                                     +
                                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                                   "Shared Written Blocks": 0,                                                                                      +
                                                                   "Local Hit Blocks": 0,                                                                                           +
                                                                   "Local Read Blocks": 0,                                                                                          +
                                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                                   "Local Written Blocks": 0,                                                                                       +
                                                                   "Temp Read Blocks": 0,                                                                                           +
                                                                   "Temp Written Blocks": 0,                                                                                        +
                                                                   "Plans": [                                                                                                       +
                                                                     {                                                                                                              +
                                                                       "Node Type": "Seq Scan",                                                                                     +
                                                                       "Parent Relationship": "Outer",                                                                              +
                                                                       "Parallel Aware": false,                                                                                     +
                                                                       "Relation Name": "title",                                                                                    +
                                                                       "Alias": "t",                                                                                                +
                                                                       "Startup Cost": 0.00,                                                                                        +
                                                                       "Total Cost": 1892.85,                                                                                       +
                                                                       "Plan Rows": 18,                                                                                             +
                                                                       "Plan Width": 21,                                                                                            +
                                                                       "Actual Startup Time": 151.408,                                                                              +
                                                                       "Actual Total Time": 1718.933,                                                                               +
                                                                       "Actual Rows": 7,                                                                                            +
                                                                       "Actual Loops": 1,                                                                                           +
                                                                       "Filter": "((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))",+
                                                                       "Rows Removed by Filter": 2528305,                                                                           +
                                                                       "Shared Hit Blocks": 1,                                                                                      +
                                                                       "Shared Read Blocks": 35997,                                                                                 +
                                                                       "Shared Dirtied Blocks": 0,                                                                                  +
                                                                       "Shared Written Blocks": 0,                                                                                  +
                                                                       "Local Hit Blocks": 0,                                                                                       +
                                                                       "Local Read Blocks": 0,                                                                                      +
                                                                       "Local Dirtied Blocks": 0,                                                                                   +
                                                                       "Local Written Blocks": 0,                                                                                   +
                                                                       "Temp Read Blocks": 0,                                                                                       +
                                                                       "Temp Written Blocks": 0                                                                                     +
                                                                     }                                                                                                              +
                                                                   ]                                                                                                                +
                                                                 }                                                                                                                  +
                                                               ]                                                                                                                    +
                                                             },                                                                                                                     +
                                                             {                                                                                                                      +
                                                               "Node Type": "Sort",                                                                                                 +
                                                               "Parent Relationship": "Inner",                                                                                      +
                                                               "Parallel Aware": false,                                                                                             +
                                                               "Startup Cost": 15395.32,                                                                                            +
                                                               "Total Cost": 15450.62,                                                                                              +
                                                               "Plan Rows": 712274,                                                                                                 +
                                                               "Plan Width": 16,                                                                                                    +
                                                               "Actual Startup Time": 12134.423,                                                                                    +
                                                               "Actual Total Time": 12180.579,                                                                                      +
                                                               "Actual Rows": 619392,                                                                                               +
                                                               "Actual Loops": 1,                                                                                                   +
                                                               "Sort Key": ["ci.movie_id"],                                                                                         +
                                                               "Sort Method": "quicksort",                                                                                          +
                                                               "Sort Space Used": 58037,                                                                                            +
                                                               "Sort Space Type": "Memory",                                                                                         +
                                                               "Shared Hit Blocks": 5,                                                                                              +
                                                               "Shared Read Blocks": 252649,                                                                                        +
                                                               "Shared Dirtied Blocks": 0,                                                                                          +
                                                               "Shared Written Blocks": 0,                                                                                          +
                                                               "Local Hit Blocks": 0,                                                                                               +
                                                               "Local Read Blocks": 0,                                                                                              +
                                                               "Local Dirtied Blocks": 0,                                                                                           +
                                                               "Local Written Blocks": 0,                                                                                           +
                                                               "Temp Read Blocks": 0,                                                                                               +
                                                               "Temp Written Blocks": 0,                                                                                            +
                                                               "Plans": [                                                                                                           +
                                                                 {                                                                                                                  +
                                                                   "Node Type": "Seq Scan",                                                                                         +
                                                                   "Parent Relationship": "Outer",                                                                                  +
                                                                   "Parallel Aware": false,                                                                                         +
                                                                   "Relation Name": "cast_info",                                                                                    +
                                                                   "Alias": "ci",                                                                                                   +
                                                                   "Startup Cost": 0.00,                                                                                            +
                                                                   "Total Cost": 13245.00,                                                                                          +
                                                                   "Plan Rows": 712274,                                                                                             +
                                                                   "Plan Width": 16,                                                                                                +
                                                                   "Actual Startup Time": 0.018,                                                                                    +
                                                                   "Actual Total Time": 11759.254,                                                                                  +
                                                                   "Actual Rows": 713828,                                                                                           +
                                                                   "Actual Loops": 1,                                                                                               +
                                                                   "Filter": "(note = '(voice)'::text)",                                                                            +
                                                                   "Rows Removed by Filter": 35530516,                                                                              +
                                                                   "Shared Hit Blocks": 5,                                                                                          +
                                                                   "Shared Read Blocks": 252649,                                                                                    +
                                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                                   "Shared Written Blocks": 0,                                                                                      +
                                                                   "Local Hit Blocks": 0,                                                                                           +
                                                                   "Local Read Blocks": 0,                                                                                          +
                                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                                   "Local Written Blocks": 0,                                                                                       +
                                                                   "Temp Read Blocks": 0,                                                                                           +
                                                                   "Temp Written Blocks": 0                                                                                         +
                                                                 }                                                                                                                  +
                                                               ]                                                                                                                    +
                                                             }                                                                                                                      +
                                                           ]                                                                                                                        +
                                                         },                                                                                                                         +
                                                         {                                                                                                                          +
                                                           "Node Type": "Sort",                                                                                                     +
                                                           "Parent Relationship": "Inner",                                                                                          +
                                                           "Parallel Aware": false,                                                                                                 +
                                                           "Startup Cost": 8582.46,                                                                                                 +
                                                           "Total Cost": 8587.90,                                                                                                   +
                                                           "Plan Rows": 69999,                                                                                                      +
                                                           "Plan Width": 8,                                                                                                         +
                                                           "Actual Startup Time": 9369.517,                                                                                         +
                                                           "Actual Total Time": 9371.952,                                                                                           +
                                                           "Actual Rows": 54373,                                                                                                    +
                                                           "Actual Loops": 1,                                                                                                       +
                                                           "Sort Key": ["mi.movie_id"],                                                                                             +
                                                           "Sort Method": "quicksort",                                                                                              +
                                                           "Sort Space Used": 6329,                                                                                                 +
                                                           "Sort Space Type": "Memory",                                                                                             +
                                                           "Shared Hit Blocks": 6672,                                                                                               +
                                                           "Shared Read Blocks": 162311,                                                                                            +
                                                           "Shared Dirtied Blocks": 0,                                                                                              +
                                                           "Shared Written Blocks": 0,                                                                                              +
                                                           "Local Hit Blocks": 0,                                                                                                   +
                                                           "Local Read Blocks": 0,                                                                                                  +
                                                           "Local Dirtied Blocks": 0,                                                                                               +
                                                           "Local Written Blocks": 0,                                                                                               +
                                                           "Temp Read Blocks": 0,                                                                                                   +
                                                           "Temp Written Blocks": 0,                                                                                                +
                                                           "Plans": [                                                                                                               +
                                                             {                                                                                                                      +
                                                               "Node Type": "Seq Scan",                                                                                             +
                                                               "Parent Relationship": "Outer",                                                                                      +
                                                               "Parallel Aware": false,                                                                                             +
                                                               "Relation Name": "movie_info",                                                                                       +
                                                               "Alias": "mi",                                                                                                       +
                                                               "Startup Cost": 0.00,                                                                                                +
                                                               "Total Cost": 8407.52,                                                                                               +
                                                               "Plan Rows": 69999,                                                                                                  +
                                                               "Plan Width": 8,                                                                                                     +
                                                               "Actual Startup Time": 1501.691,                                                                                     +
                                                               "Actual Total Time": 9340.353,                                                                                       +
                                                               "Actual Rows": 69478,                                                                                                +
                                                               "Actual Loops": 1,                                                                                                   +
                                                               "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))",               +
                                                               "Rows Removed by Filter": 14766242,                                                                                  +
                                                               "Shared Hit Blocks": 6672,                                                                                           +
                                                               "Shared Read Blocks": 162311,                                                                                        +
                                                               "Shared Dirtied Blocks": 0,                                                                                          +
                                                               "Shared Written Blocks": 0,                                                                                          +
                                                               "Local Hit Blocks": 0,                                                                                               +
                                                               "Local Read Blocks": 0,                                                                                              +
                                                               "Local Dirtied Blocks": 0,                                                                                           +
                                                               "Local Written Blocks": 0,                                                                                           +
                                                               "Temp Read Blocks": 0,                                                                                               +
                                                               "Temp Written Blocks": 0                                                                                             +
                                                             }                                                                                                                      +
                                                           ]                                                                                                                        +
                                                         }                                                                                                                          +
                                                       ]                                                                                                                            +
                                                     }                                                                                                                              +
                                                   ]                                                                                                                                +
                                                 },                                                                                                                                 +
                                                 {                                                                                                                                  +
                                                   "Node Type": "Sort",                                                                                                             +
                                                   "Parent Relationship": "Inner",                                                                                                  +
                                                   "Parallel Aware": false,                                                                                                         +
                                                   "Startup Cost": 0.05,                                                                                                            +
                                                   "Total Cost": 0.05,                                                                                                              +
                                                   "Plan Rows": 1,                                                                                                                  +
                                                   "Plan Width": 4,                                                                                                                 +
                                                   "Actual Startup Time": 0.028,                                                                                                    +
                                                   "Actual Total Time": 0.028,                                                                                                      +
                                                   "Actual Rows": 1,                                                                                                                +
                                                   "Actual Loops": 1,                                                                                                               +
                                                   "Sort Key": ["it.id"],                                                                                                           +
                                                   "Sort Method": "quicksort",                                                                                                      +
                                                   "Sort Space Used": 25,                                                                                                           +
                                                   "Sort Space Type": "Memory",                                                                                                     +
                                                   "Shared Hit Blocks": 1,                                                                                                          +
                                                   "Shared Read Blocks": 0,                                                                                                         +
                                                   "Shared Dirtied Blocks": 0,                                                                                                      +
                                                   "Shared Written Blocks": 0,                                                                                                      +
                                                   "Local Hit Blocks": 0,                                                                                                           +
                                                   "Local Read Blocks": 0,                                                                                                          +
                                                   "Local Dirtied Blocks": 0,                                                                                                       +
                                                   "Local Written Blocks": 0,                                                                                                       +
                                                   "Temp Read Blocks": 0,                                                                                                           +
                                                   "Temp Written Blocks": 0,                                                                                                        +
                                                   "Plans": [                                                                                                                       +
                                                     {                                                                                                                              +
                                                       "Node Type": "Seq Scan",                                                                                                     +
                                                       "Parent Relationship": "Outer",                                                                                              +
                                                       "Parallel Aware": false,                                                                                                     +
                                                       "Relation Name": "info_type",                                                                                                +
                                                       "Alias": "it",                                                                                                               +
                                                       "Startup Cost": 0.00,                                                                                                        +
                                                       "Total Cost": 0.05,                                                                                                          +
                                                       "Plan Rows": 1,                                                                                                              +
                                                       "Plan Width": 4,                                                                                                             +
                                                       "Actual Startup Time": 0.012,                                                                                                +
                                                       "Actual Total Time": 0.021,                                                                                                  +
                                                       "Actual Rows": 1,                                                                                                            +
                                                       "Actual Loops": 1,                                                                                                           +
                                                       "Filter": "((info)::text = 'release dates'::text)",                                                                          +
                                                       "Rows Removed by Filter": 112,                                                                                               +
                                                       "Shared Hit Blocks": 1,                                                                                                      +
                                                       "Shared Read Blocks": 0,                                                                                                     +
                                                       "Shared Dirtied Blocks": 0,                                                                                                  +
                                                       "Shared Written Blocks": 0,                                                                                                  +
                                                       "Local Hit Blocks": 0,                                                                                                       +
                                                       "Local Read Blocks": 0,                                                                                                      +
                                                       "Local Dirtied Blocks": 0,                                                                                                   +
                                                       "Local Written Blocks": 0,                                                                                                   +
                                                       "Temp Read Blocks": 0,                                                                                                       +
                                                       "Temp Written Blocks": 0                                                                                                     +
                                                     }                                                                                                                              +
                                                   ]                                                                                                                                +
                                                 }                                                                                                                                  +
                                               ]                                                                                                                                    +
                                             }                                                                                                                                      +
                                           ]                                                                                                                                        +
                                         },                                                                                                                                         +
                                         {                                                                                                                                          +
                                           "Node Type": "Sort",                                                                                                                     +
                                           "Parent Relationship": "Inner",                                                                                                          +
                                           "Parallel Aware": false,                                                                                                                 +
                                           "Startup Cost": 0.03,                                                                                                                    +
                                           "Total Cost": 0.03,                                                                                                                      +
                                           "Plan Rows": 1,                                                                                                                          +
                                           "Plan Width": 4,                                                                                                                         +
                                           "Actual Startup Time": 0.008,                                                                                                            +
                                           "Actual Total Time": 0.008,                                                                                                              +
                                           "Actual Rows": 1,                                                                                                                        +
                                           "Actual Loops": 1,                                                                                                                       +
                                           "Sort Key": ["rt.id"],                                                                                                                   +
                                           "Sort Method": "quicksort",                                                                                                              +
                                           "Sort Space Used": 25,                                                                                                                   +
                                           "Sort Space Type": "Memory",                                                                                                             +
                                           "Shared Hit Blocks": 1,                                                                                                                  +
                                           "Shared Read Blocks": 0,                                                                                                                 +
                                           "Shared Dirtied Blocks": 0,                                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                                               +
                                           "Local Written Blocks": 0,                                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                                   +
                                           "Temp Written Blocks": 0,                                                                                                                +
                                           "Plans": [                                                                                                                               +
                                             {                                                                                                                                      +
                                               "Node Type": "Seq Scan",                                                                                                             +
                                               "Parent Relationship": "Outer",                                                                                                      +
                                               "Parallel Aware": false,                                                                                                             +
                                               "Relation Name": "role_type",                                                                                                        +
                                               "Alias": "rt",                                                                                                                       +
                                               "Startup Cost": 0.00,                                                                                                                +
                                               "Total Cost": 0.03,                                                                                                                  +
                                               "Plan Rows": 1,                                                                                                                      +
                                               "Plan Width": 4,                                                                                                                     +
                                               "Actual Startup Time": 0.004,                                                                                                        +
                                               "Actual Total Time": 0.006,                                                                                                          +
                                               "Actual Rows": 1,                                                                                                                    +
                                               "Actual Loops": 1,                                                                                                                   +
                                               "Filter": "((role)::text = 'actress'::text)",                                                                                        +
                                               "Rows Removed by Filter": 11,                                                                                                        +
                                               "Shared Hit Blocks": 1,                                                                                                              +
                                               "Shared Read Blocks": 0,                                                                                                             +
                                               "Shared Dirtied Blocks": 0,                                                                                                          +
                                               "Shared Written Blocks": 0,                                                                                                          +
                                               "Local Hit Blocks": 0,                                                                                                               +
                                               "Local Read Blocks": 0,                                                                                                              +
                                               "Local Dirtied Blocks": 0,                                                                                                           +
                                               "Local Written Blocks": 0,                                                                                                           +
                                               "Temp Read Blocks": 0,                                                                                                               +
                                               "Temp Written Blocks": 0                                                                                                             +
                                             }                                                                                                                                      +
                                           ]                                                                                                                                        +
                                         }                                                                                                                                          +
                                       ]                                                                                                                                            +
                                     }                                                                                                                                              +
                                   ]                                                                                                                                                +
                                 },                                                                                                                                                 +
                                 {                                                                                                                                                  +
                                   "Node Type": "Sort",                                                                                                                             +
                                   "Parent Relationship": "Inner",                                                                                                                  +
                                   "Parallel Aware": false,                                                                                                                         +
                                   "Startup Cost": 344.10,                                                                                                                          +
                                   "Total Cost": 350.69,                                                                                                                            +
                                   "Plan Rows": 84843,                                                                                                                              +
                                   "Plan Width": 4,                                                                                                                                 +
                                   "Actual Startup Time": 175.239,                                                                                                                  +
                                   "Actual Total Time": 175.546,                                                                                                                    +
                                   "Actual Rows": 2185,                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                               +
                                   "Sort Key": ["cn.id"],                                                                                                                           +
                                   "Sort Method": "quicksort",                                                                                                                      +
                                   "Sort Space Used": 7050,                                                                                                                         +
                                   "Sort Space Type": "Memory",                                                                                                                     +
                                   "Shared Hit Blocks": 2,                                                                                                                          +
                                   "Shared Read Blocks": 2992,                                                                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                                                           +
                                   "Local Read Blocks": 0,                                                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                                                       +
                                   "Local Written Blocks": 0,                                                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                                                           +
                                   "Temp Written Blocks": 0,                                                                                                                        +
                                   "Plans": [                                                                                                                                       +
                                     {                                                                                                                                              +
                                       "Node Type": "Seq Scan",                                                                                                                     +
                                       "Parent Relationship": "Outer",                                                                                                              +
                                       "Parallel Aware": false,                                                                                                                     +
                                       "Relation Name": "company_name",                                                                                                             +
                                       "Alias": "cn",                                                                                                                               +
                                       "Startup Cost": 0.00,                                                                                                                        +
                                       "Total Cost": 128.41,                                                                                                                        +
                                       "Plan Rows": 84843,                                                                                                                          +
                                       "Plan Width": 4,                                                                                                                             +
                                       "Actual Startup Time": 22.056,                                                                                                               +
                                       "Actual Total Time": 132.994,                                                                                                                +
                                       "Actual Rows": 84843,                                                                                                                        +
                                       "Actual Loops": 1,                                                                                                                           +
                                       "Filter": "((country_code)::text = '[us]'::text)",                                                                                           +
                                       "Rows Removed by Filter": 150154,                                                                                                            +
                                       "Shared Hit Blocks": 2,                                                                                                                      +
                                       "Shared Read Blocks": 2992,                                                                                                                  +
                                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                                       +
                                       "Temp Written Blocks": 0                                                                                                                     +
                                     }                                                                                                                                              +
                                   ]                                                                                                                                                +
                                 }                                                                                                                                                  +
                               ]                                                                                                                                                    +
                             }                                                                                                                                                      +
                           ]                                                                                                                                                        +
                         },                                                                                                                                                         +
                         {                                                                                                                                                          +
                           "Node Type": "Sort",                                                                                                                                     +
                           "Parent Relationship": "Inner",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Startup Cost": 3188.40,                                                                                                                                 +
                           "Total Cost": 3258.38,                                                                                                                                   +
                           "Plan Rows": 901343,                                                                                                                                     +
                           "Plan Width": 4,                                                                                                                                         +
                           "Actual Startup Time": 1011.457,                                                                                                                         +
                           "Actual Total Time": 1042.256,                                                                                                                           +
                           "Actual Rows": 552930,                                                                                                                                   +
                           "Actual Loops": 1,                                                                                                                                       +
                           "Sort Key": ["an.person_id"],                                                                                                                            +
                           "Sort Method": "quicksort",                                                                                                                              +
                           "Sort Space Used": 66827,                                                                                                                                +
                           "Sort Space Type": "Memory",                                                                                                                             +
                           "Shared Hit Blocks": 2,                                                                                                                                  +
                           "Shared Read Blocks": 11393,                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                                   +
                           "Temp Written Blocks": 0,                                                                                                                                +
                           "Plans": [                                                                                                                                               +
                             {                                                                                                                                                      +
                               "Node Type": "Seq Scan",                                                                                                                             +
                               "Parent Relationship": "Outer",                                                                                                                      +
                               "Parallel Aware": false,                                                                                                                             +
                               "Relation Name": "aka_name",                                                                                                                         +
                               "Alias": "an",                                                                                                                                       +
                               "Startup Cost": 0.00,                                                                                                                                +
                               "Total Cost": 419.75,                                                                                                                                +
                               "Plan Rows": 901343,                                                                                                                                 +
                               "Plan Width": 4,                                                                                                                                     +
                               "Actual Startup Time": 0.008,                                                                                                                        +
                               "Actual Total Time": 602.153,                                                                                                                        +
                               "Actual Rows": 901343,                                                                                                                               +
                               "Actual Loops": 1,                                                                                                                                   +
                               "Shared Hit Blocks": 2,                                                                                                                              +
                               "Shared Read Blocks": 11393,                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                          +
                               "Shared Written Blocks": 0,                                                                                                                          +
                               "Local Hit Blocks": 0,                                                                                                                               +
                               "Local Read Blocks": 0,                                                                                                                              +
                               "Local Dirtied Blocks": 0,                                                                                                                           +
                               "Local Written Blocks": 0,                                                                                                                           +
                               "Temp Read Blocks": 0,                                                                                                                               +
                               "Temp Written Blocks": 0                                                                                                                             +
                             }                                                                                                                                                      +
                           ]                                                                                                                                                        +
                         }                                                                                                                                                          +
                       ]                                                                                                                                                            +
                     },                                                                                                                                                             +
                     {                                                                                                                                                              +
                       "Node Type": "Sort",                                                                                                                                         +
                       "Parent Relationship": "Inner",                                                                                                                              +
                       "Parallel Aware": false,                                                                                                                                     +
                       "Startup Cost": 2684.59,                                                                                                                                     +
                       "Total Cost": 2684.80,                                                                                                                                       +
                       "Plan Rows": 2762,                                                                                                                                           +
                       "Plan Width": 19,                                                                                                                                            +
                       "Actual Startup Time": 2606.089,                                                                                                                             +
                       "Actual Total Time": 2606.405,                                                                                                                               +
                       "Actual Rows": 4838,                                                                                                                                         +
                       "Actual Loops": 1,                                                                                                                                           +
                       "Sort Key": ["n.id"],                                                                                                                                        +
                       "Sort Method": "quicksort",                                                                                                                                  +
                       "Sort Space Used": 603,                                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                                 +
                       "Shared Hit Blocks": 2,                                                                                                                                      +
                       "Shared Read Blocks": 55611,                                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                                                    +
                       "Plans": [                                                                                                                                                   +
                         {                                                                                                                                                          +
                           "Node Type": "Seq Scan",                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                          +
                           "Parallel Aware": false,                                                                                                                                 +
                           "Relation Name": "name",                                                                                                                                 +
                           "Alias": "n",                                                                                                                                            +
                           "Startup Cost": 0.00,                                                                                                                                    +
                           "Total Cost": 2679.69,                                                                                                                                   +
                           "Plan Rows": 2762,                                                                                                                                       +
                           "Plan Width": 19,                                                                                                                                        +
                           "Actual Startup Time": 1097.043,                                                                                                                         +
                           "Actual Total Time": 2602.662,                                                                                                                           +
                           "Actual Rows": 5409,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                       +
                           "Filter": "((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))",                                                                                +
                           "Rows Removed by Filter": 4162082,                                                                                                                       +
                           "Shared Hit Blocks": 2,                                                                                                                                  +
                           "Shared Read Blocks": 55611,                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                                   +
                           "Temp Written Blocks": 0                                                                                                                                 +
                         }                                                                                                                                                          +
                       ]                                                                                                                                                            +
                     }                                                                                                                                                              +
                   ]                                                                                                                                                                +
                 }                                                                                                                                                                  +
               ]                                                                                                                                                                    +
             },                                                                                                                                                                     +
             {                                                                                                                                                                      +
               "Node Type": "Sort",                                                                                                                                                 +
               "Parent Relationship": "Inner",                                                                                                                                      +
               "Parallel Aware": false,                                                                                                                                             +
               "Startup Cost": 11884.63,                                                                                                                                            +
               "Total Cost": 12128.45,                                                                                                                                              +
               "Plan Rows": 3140339,                                                                                                                                                +
               "Plan Width": 4,                                                                                                                                                     +
               "Actual Startup Time": 2453.685,                                                                                                                                     +
               "Actual Total Time": 2707.213,                                                                                                                                       +
               "Actual Rows": 2184244,                                                                                                                                              +
               "Actual Loops": 1,                                                                                                                                                   +
               "Sort Key": ["chn.id"],                                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                                          +
               "Sort Space Used": 245508,                                                                                                                                           +
               "Sort Space Type": "Memory",                                                                                                                                         +
               "Shared Hit Blocks": 2,                                                                                                                                              +
               "Shared Read Blocks": 36445,                                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                                                               +
               "Local Read Blocks": 0,                                                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                                                           +
               "Local Written Blocks": 0,                                                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                                                               +
               "Temp Written Blocks": 0,                                                                                                                                            +
               "Plans": [                                                                                                                                                           +
                 {                                                                                                                                                                  +
                   "Node Type": "Seq Scan",                                                                                                                                         +
                   "Parent Relationship": "Outer",                                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                                         +
                   "Relation Name": "char_name",                                                                                                                                    +
                   "Alias": "chn",                                                                                                                                                  +
                   "Startup Cost": 0.00,                                                                                                                                            +
                   "Total Cost": 1360.36,                                                                                                                                           +
                   "Plan Rows": 3140339,                                                                                                                                            +
                   "Plan Width": 4,                                                                                                                                                 +
                   "Actual Startup Time": 7.242,                                                                                                                                    +
                   "Actual Total Time": 1039.839,                                                                                                                                   +
                   "Actual Rows": 3140339,                                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                                               +
                   "Shared Hit Blocks": 2,                                                                                                                                          +
                   "Shared Read Blocks": 36445,                                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                                                           +
                   "Temp Written Blocks": 0                                                                                                                                         +
                 }                                                                                                                                                                  +
               ]                                                                                                                                                                    +
             }                                                                                                                                                                      +
           ]                                                                                                                                                                        +
         }                                                                                                                                                                          +
       ]                                                                                                                                                                            +
     },                                                                                                                                                                             +
     "Planning Time": 7427.910,                                                                                                                                                     +
     "Triggers": [                                                                                                                                                                  +
     ],                                                                                                                                                                             +
     "Execution Time": 31189.426                                                                                                                                                    +
   }                                                                                                                                                                                +
 ]
(1 row)
