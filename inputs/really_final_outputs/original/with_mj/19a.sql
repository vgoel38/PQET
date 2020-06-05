                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                            +
   {                                                                                                                                                                                          +
     "Plan": {                                                                                                                                                                                +
       "Node Type": "Aggregate",                                                                                                                                                              +
       "Strategy": "Plain",                                                                                                                                                                   +
       "Partial Mode": "Simple",                                                                                                                                                              +
       "Parallel Aware": false,                                                                                                                                                               +
       "Startup Cost": 52901.91,                                                                                                                                                              +
       "Total Cost": 52901.91,                                                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                                                        +
       "Plan Width": 64,                                                                                                                                                                      +
       "Actual Startup Time": 32607.445,                                                                                                                                                      +
       "Actual Total Time": 32607.445,                                                                                                                                                        +
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
           "Startup Cost": 52414.28,                                                                                                                                                          +
           "Total Cost": 52901.91,                                                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                                                    +
           "Plan Width": 32,                                                                                                                                                                  +
           "Actual Startup Time": 31946.773,                                                                                                                                                  +
           "Actual Total Time": 32607.331,                                                                                                                                                    +
           "Actual Rows": 184,                                                                                                                                                                +
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
               "Startup Cost": 40529.65,                                                                                                                                                      +
               "Total Cost": 40529.65,                                                                                                                                                        +
               "Plan Rows": 1,                                                                                                                                                                +
               "Plan Width": 36,                                                                                                                                                              +
               "Actual Startup Time": 29377.214,                                                                                                                                              +
               "Actual Total Time": 29377.240,                                                                                                                                                +
               "Actual Rows": 185,                                                                                                                                                            +
               "Actual Loops": 1,                                                                                                                                                             +
               "Sort Key": ["ci.person_role_id"],                                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                                                    +
               "Sort Space Used": 41,                                                                                                                                                         +
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
                   "Startup Cost": 40516.48,                                                                                                                                                  +
                   "Total Cost": 40529.65,                                                                                                                                                    +
                   "Plan Rows": 1,                                                                                                                                                            +
                   "Plan Width": 36,                                                                                                                                                          +
                   "Actual Startup Time": 29364.848,                                                                                                                                          +
                   "Actual Total Time": 29367.952,                                                                                                                                            +
                   "Actual Rows": 189,                                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                                         +
                   "Inner Unique": true,                                                                                                                                                      +
                   "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                                   +
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
                       "Startup Cost": 40172.37,                                                                                                                                              +
                       "Total Cost": 40172.37,                                                                                                                                                +
                       "Plan Rows": 1,                                                                                                                                                        +
                       "Plan Width": 40,                                                                                                                                                      +
                       "Actual Startup Time": 29199.720,                                                                                                                                      +
                       "Actual Total Time": 29199.745,                                                                                                                                        +
                       "Actual Rows": 199,                                                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                                                     +
                       "Sort Key": ["mc.company_id"],                                                                                                                                         +
                       "Sort Method": "quicksort",                                                                                                                                            +
                       "Sort Space Used": 43,                                                                                                                                                 +
                       "Sort Space Type": "Memory",                                                                                                                                           +
                       "Shared Hit Blocks": 6687,                                                                                                                                             +
                       "Shared Read Blocks": 536747,                                                                                                                                          +
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
                           "Startup Cost": 40051.83,                                                                                                                                          +
                           "Total Cost": 40172.37,                                                                                                                                            +
                           "Plan Rows": 1,                                                                                                                                                    +
                           "Plan Width": 40,                                                                                                                                                  +
                           "Actual Startup Time": 29131.611,                                                                                                                                  +
                           "Actual Total Time": 29199.635,                                                                                                                                    +
                           "Actual Rows": 199,                                                                                                                                                +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Inner Unique": true,                                                                                                                                              +
                           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                             +
                           "Shared Hit Blocks": 6687,                                                                                                                                         +
                           "Shared Read Blocks": 536747,                                                                                                                                      +
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
                               "Node Type": "Merge Join",                                                                                                                                     +
                               "Parent Relationship": "Outer",                                                                                                                                +
                               "Parallel Aware": false,                                                                                                                                       +
                               "Join Type": "Inner",                                                                                                                                          +
                               "Startup Cost": 37365.15,                                                                                                                                      +
                               "Total Cost": 37485.12,                                                                                                                                        +
                               "Plan Rows": 17,                                                                                                                                               +
                               "Plan Width": 33,                                                                                                                                              +
                               "Actual Startup Time": 26462.028,                                                                                                                              +
                               "Actual Total Time": 26585.431,                                                                                                                                +
                               "Actual Rows": 73881,                                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                                             +
                               "Inner Unique": false,                                                                                                                                         +
                               "Merge Cond": "(ci.person_id = an.person_id)",                                                                                                                 +
                               "Shared Hit Blocks": 6685,                                                                                                                                     +
                               "Shared Read Blocks": 481136,                                                                                                                                  +
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
                                   "Node Type": "Sort",                                                                                                                                       +
                                   "Parent Relationship": "Outer",                                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                                   +
                                   "Startup Cost": 34176.75,                                                                                                                                  +
                                   "Total Cost": 34176.75,                                                                                                                                    +
                                   "Plan Rows": 19,                                                                                                                                           +
                                   "Plan Width": 29,                                                                                                                                          +
                                   "Actual Startup Time": 25681.101,                                                                                                                          +
                                   "Actual Total Time": 25686.488,                                                                                                                            +
                                   "Actual Rows": 42652,                                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Sort Key": ["ci.person_id"],                                                                                                                              +
                                   "Sort Method": "quicksort",                                                                                                                                +
                                   "Sort Space Used": 5104,                                                                                                                                   +
                                   "Sort Space Type": "Memory",                                                                                                                               +
                                   "Shared Hit Blocks": 6683,                                                                                                                                 +
                                   "Shared Read Blocks": 469743,                                                                                                                              +
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
                                       "Startup Cost": 34176.70,                                                                                                                              +
                                       "Total Cost": 34176.74,                                                                                                                                +
                                       "Plan Rows": 19,                                                                                                                                       +
                                       "Plan Width": 29,                                                                                                                                      +
                                       "Actual Startup Time": 25654.589,                                                                                                                      +
                                       "Actual Total Time": 25667.064,                                                                                                                        +
                                       "Actual Rows": 42723,                                                                                                                                  +
                                       "Actual Loops": 1,                                                                                                                                     +
                                       "Inner Unique": true,                                                                                                                                  +
                                       "Merge Cond": "(ci.role_id = rt.id)",                                                                                                                  +
                                       "Shared Hit Blocks": 6683,                                                                                                                             +
                                       "Shared Read Blocks": 469743,                                                                                                                          +
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
                                           "Startup Cost": 34176.67,                                                                                                                          +
                                           "Total Cost": 34176.69,                                                                                                                            +
                                           "Plan Rows": 231,                                                                                                                                  +
                                           "Plan Width": 33,                                                                                                                                  +
                                           "Actual Startup Time": 25640.065,                                                                                                                  +
                                           "Actual Total Time": 25647.076,                                                                                                                    +
                                           "Actual Rows": 137852,                                                                                                                             +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Sort Key": ["ci.role_id"],                                                                                                                        +
                                           "Sort Method": "quicksort",                                                                                                                        +
                                           "Sort Space Used": 18119,                                                                                                                          +
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
                                               "Startup Cost": 33906.96,                                                                                                                      +
                                               "Total Cost": 34176.39,                                                                                                                        +
                                               "Plan Rows": 231,                                                                                                                              +
                                               "Plan Width": 33,                                                                                                                              +
                                               "Actual Startup Time": 24929.904,                                                                                                              +
                                               "Actual Total Time": 25605.916,                                                                                                                +
                                               "Actual Rows": 138095,                                                                                                                         +
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
                                                   "Startup Cost": 31905.87,                                                                                                                  +
                                                   "Total Cost": 32130.11,                                                                                                                    +
                                                   "Plan Rows": 632,                                                                                                                          +
                                                   "Plan Width": 41,                                                                                                                          +
                                                   "Actual Startup Time": 23897.197,                                                                                                          +
                                                   "Actual Total Time": 24430.222,                                                                                                            +
                                                   "Actual Rows": 224743,                                                                                                                     +
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
                                                       "Startup Cost": 13195.74,                                                                                                              +
                                                       "Total Cost": 13285.57,                                                                                                                +
                                                       "Plan Rows": 902,                                                                                                                      +
                                                       "Plan Width": 25,                                                                                                                      +
                                                       "Actual Startup Time": 11927.635,                                                                                                      +
                                                       "Actual Total Time": 12227.713,                                                                                                        +
                                                       "Actual Rows": 298255,                                                                                                                 +
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
                                                           "Actual Startup Time": 10063.018,                                                                                                  +
                                                           "Actual Total Time": 10096.398,                                                                                                    +
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
                                                               "Actual Startup Time": 9833.473,                                                                                               +
                                                               "Actual Total Time": 9928.561,                                                                                                 +
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
                                                                   "Actual Startup Time": 0.079,                                                                                              +
                                                                   "Actual Total Time": 0.080,                                                                                                +
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
                                                                       "Actual Startup Time": 0.027,                                                                                          +
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
                                                                   "Actual Startup Time": 9833.373,                                                                                           +
                                                                   "Actual Total Time": 9854.561,                                                                                             +
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
                                                                       "Actual Startup Time": 689.717,                                                                                        +
                                                                       "Actual Total Time": 9722.674,                                                                                         +
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
                                                           "Startup Cost": 3403.46,                                                                                                           +
                                                           "Total Cost": 3448.07,                                                                                                             +
                                                           "Plan Rows": 574556,                                                                                                               +
                                                           "Plan Width": 21,                                                                                                                  +
                                                           "Actual Startup Time": 1864.607,                                                                                                   +
                                                           "Actual Total Time": 1938.884,                                                                                                     +
                                                           "Actual Rows": 574490,                                                                                                             +
                                                           "Actual Loops": 1,                                                                                                                 +
                                                           "Sort Key": ["t.id"],                                                                                                              +
                                                           "Sort Method": "quicksort",                                                                                                        +
                                                           "Sort Space Used": 64135,                                                                                                          +
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
                                                               "Total Cost": 1696.56,                                                                                                         +
                                                               "Plan Rows": 574556,                                                                                                           +
                                                               "Plan Width": 21,                                                                                                              +
                                                               "Actual Startup Time": 23.947,                                                                                                 +
                                                               "Actual Total Time": 1484.623,                                                                                                 +
                                                               "Actual Rows": 574556,                                                                                                         +
                                                               "Actual Loops": 1,                                                                                                             +
                                                               "Filter": "((production_year >= 2005) AND (production_year <= 2009))",                                                         +
                                                               "Rows Removed by Filter": 1953756,                                                                                             +
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
                                                       "Actual Startup Time": 11969.418,                                                                                                      +
                                                       "Actual Total Time": 12047.351,                                                                                                        +
                                                       "Actual Rows": 910203,                                                                                                                 +
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
                                                           "Actual Startup Time": 0.019,                                                                                                      +
                                                           "Actual Total Time": 11545.751,                                                                                                    +
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
                                                   "Startup Cost": 2001.09,                                                                                                                   +
                                                   "Total Cost": 2023.83,                                                                                                                     +
                                                   "Plan Rows": 292980,                                                                                                                       +
                                                   "Plan Width": 8,                                                                                                                           +
                                                   "Actual Startup Time": 1032.667,                                                                                                           +
                                                   "Actual Total Time": 1069.201,                                                                                                             +
                                                   "Actual Rows": 720997,                                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                                         +
                                                   "Sort Key": ["mc.movie_id"],                                                                                                               +
                                                   "Sort Method": "quicksort",                                                                                                                +
                                                   "Sort Space Used": 52279,                                                                                                                  +
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
                                                       "Total Cost": 1174.90,                                                                                                                 +
                                                       "Plan Rows": 292980,                                                                                                                   +
                                                       "Plan Width": 8,                                                                                                                       +
                                                       "Actual Startup Time": 0.019,                                                                                                          +
                                                       "Actual Total Time": 832.171,                                                                                                          +
                                                       "Actual Rows": 590994,                                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                                     +
                                                       "Filter": "((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))",                                   +
                                                       "Rows Removed by Filter": 2018135,                                                                                                     +
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
                                           "Startup Cost": 0.03,                                                                                                                              +
                                           "Total Cost": 0.03,                                                                                                                                +
                                           "Plan Rows": 1,                                                                                                                                    +
                                           "Plan Width": 4,                                                                                                                                   +
                                           "Actual Startup Time": 0.032,                                                                                                                      +
                                           "Actual Total Time": 0.032,                                                                                                                        +
                                           "Actual Rows": 1,                                                                                                                                  +
                                           "Actual Loops": 1,                                                                                                                                 +
                                           "Sort Key": ["rt.id"],                                                                                                                             +
                                           "Sort Method": "quicksort",                                                                                                                        +
                                           "Sort Space Used": 25,                                                                                                                             +
                                           "Sort Space Type": "Memory",                                                                                                                       +
                                           "Shared Hit Blocks": 1,                                                                                                                            +
                                           "Shared Read Blocks": 0,                                                                                                                           +
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
                                               "Relation Name": "role_type",                                                                                                                  +
                                               "Alias": "rt",                                                                                                                                 +
                                               "Startup Cost": 0.00,                                                                                                                          +
                                               "Total Cost": 0.03,                                                                                                                            +
                                               "Plan Rows": 1,                                                                                                                                +
                                               "Plan Width": 4,                                                                                                                               +
                                               "Actual Startup Time": 0.020,                                                                                                                  +
                                               "Actual Total Time": 0.022,                                                                                                                    +
                                               "Actual Rows": 1,                                                                                                                              +
                                               "Actual Loops": 1,                                                                                                                             +
                                               "Filter": "((role)::text = 'actress'::text)",                                                                                                  +
                                               "Rows Removed by Filter": 11,                                                                                                                  +
                                               "Shared Hit Blocks": 1,                                                                                                                        +
                                               "Shared Read Blocks": 0,                                                                                                                       +
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
                                     }                                                                                                                                                        +
                                   ]                                                                                                                                                          +
                                 },                                                                                                                                                           +
                                 {                                                                                                                                                            +
                                   "Node Type": "Sort",                                                                                                                                       +
                                   "Parent Relationship": "Inner",                                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                                   +
                                   "Startup Cost": 3188.40,                                                                                                                                   +
                                   "Total Cost": 3258.38,                                                                                                                                     +
                                   "Plan Rows": 901343,                                                                                                                                       +
                                   "Plan Width": 4,                                                                                                                                           +
                                   "Actual Startup Time": 771.630,                                                                                                                            +
                                   "Actual Total Time": 814.864,                                                                                                                              +
                                   "Actual Rows": 649071,                                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Sort Key": ["an.person_id"],                                                                                                                              +
                                   "Sort Method": "quicksort",                                                                                                                                +
                                   "Sort Space Used": 66827,                                                                                                                                  +
                                   "Sort Space Type": "Memory",                                                                                                                               +
                                   "Shared Hit Blocks": 2,                                                                                                                                    +
                                   "Shared Read Blocks": 11393,                                                                                                                               +
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
                                       "Node Type": "Seq Scan",                                                                                                                               +
                                       "Parent Relationship": "Outer",                                                                                                                        +
                                       "Parallel Aware": false,                                                                                                                               +
                                       "Relation Name": "aka_name",                                                                                                                           +
                                       "Alias": "an",                                                                                                                                         +
                                       "Startup Cost": 0.00,                                                                                                                                  +
                                       "Total Cost": 419.75,                                                                                                                                  +
                                       "Plan Rows": 901343,                                                                                                                                   +
                                       "Plan Width": 4,                                                                                                                                       +
                                       "Actual Startup Time": 0.016,                                                                                                                          +
                                       "Actual Total Time": 354.824,                                                                                                                          +
                                       "Actual Rows": 901343,                                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                                     +
                                       "Shared Hit Blocks": 2,                                                                                                                                +
                                       "Shared Read Blocks": 11393,                                                                                                                           +
                                       "Shared Dirtied Blocks": 0,                                                                                                                            +
                                       "Shared Written Blocks": 0,                                                                                                                            +
                                       "Local Hit Blocks": 0,                                                                                                                                 +
                                       "Local Read Blocks": 0,                                                                                                                                +
                                       "Local Dirtied Blocks": 0,                                                                                                                             +
                                       "Local Written Blocks": 0,                                                                                                                             +
                                       "Temp Read Blocks": 0,                                                                                                                                 +
                                       "Temp Written Blocks": 0                                                                                                                               +
                                     }                                                                                                                                                        +
                                   ]                                                                                                                                                          +
                                 }                                                                                                                                                            +
                               ]                                                                                                                                                              +
                             },                                                                                                                                                               +
                             {                                                                                                                                                                +
                               "Node Type": "Sort",                                                                                                                                           +
                               "Parent Relationship": "Inner",                                                                                                                                +
                               "Parallel Aware": false,                                                                                                                                       +
                               "Startup Cost": 2686.68,                                                                                                                                       +
                               "Total Cost": 2686.97,                                                                                                                                         +
                               "Plan Rows": 3787,                                                                                                                                             +
                               "Plan Width": 19,                                                                                                                                              +
                               "Actual Startup Time": 2607.000,                                                                                                                               +
                               "Actual Total Time": 2607.548,                                                                                                                                 +
                               "Actual Rows": 6768,                                                                                                                                           +
                               "Actual Loops": 1,                                                                                                                                             +
                               "Sort Key": ["n.id"],                                                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                                                    +
                               "Sort Space Used": 704,                                                                                                                                        +
                               "Sort Space Type": "Memory",                                                                                                                                   +
                               "Shared Hit Blocks": 2,                                                                                                                                        +
                               "Shared Read Blocks": 55611,                                                                                                                                   +
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
                                   "Relation Name": "name",                                                                                                                                   +
                                   "Alias": "n",                                                                                                                                              +
                                   "Startup Cost": 0.00,                                                                                                                                      +
                                   "Total Cost": 2679.69,                                                                                                                                     +
                                   "Plan Rows": 3787,                                                                                                                                         +
                                   "Plan Width": 19,                                                                                                                                          +
                                   "Actual Startup Time": 1097.684,                                                                                                                           +
                                   "Actual Total Time": 2602.788,                                                                                                                             +
                                   "Actual Rows": 6768,                                                                                                                                       +
                                   "Actual Loops": 1,                                                                                                                                         +
                                   "Filter": "((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))",                                                                                    +
                                   "Rows Removed by Filter": 4160723,                                                                                                                         +
                                   "Shared Hit Blocks": 2,                                                                                                                                    +
                                   "Shared Read Blocks": 55611,                                                                                                                               +
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
                       "Startup Cost": 344.10,                                                                                                                                                +
                       "Total Cost": 350.69,                                                                                                                                                  +
                       "Plan Rows": 84843,                                                                                                                                                    +
                       "Plan Width": 4,                                                                                                                                                       +
                       "Actual Startup Time": 165.114,                                                                                                                                        +
                       "Actual Total Time": 166.699,                                                                                                                                          +
                       "Actual Rows": 13385,                                                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                                                     +
                       "Sort Key": ["cn.id"],                                                                                                                                                 +
                       "Sort Method": "quicksort",                                                                                                                                            +
                       "Sort Space Used": 7050,                                                                                                                                               +
                       "Sort Space Type": "Memory",                                                                                                                                           +
                       "Shared Hit Blocks": 2,                                                                                                                                                +
                       "Shared Read Blocks": 2992,                                                                                                                                            +
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
                           "Relation Name": "company_name",                                                                                                                                   +
                           "Alias": "cn",                                                                                                                                                     +
                           "Startup Cost": 0.00,                                                                                                                                              +
                           "Total Cost": 128.41,                                                                                                                                              +
                           "Plan Rows": 84843,                                                                                                                                                +
                           "Plan Width": 4,                                                                                                                                                   +
                           "Actual Startup Time": 10.904,                                                                                                                                     +
                           "Actual Total Time": 120.454,                                                                                                                                      +
                           "Actual Rows": 84843,                                                                                                                                              +
                           "Actual Loops": 1,                                                                                                                                                 +
                           "Filter": "((country_code)::text = '[us]'::text)",                                                                                                                 +
                           "Rows Removed by Filter": 150154,                                                                                                                                  +
                           "Shared Hit Blocks": 2,                                                                                                                                            +
                           "Shared Read Blocks": 2992,                                                                                                                                        +
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
               "Actual Startup Time": 2569.424,                                                                                                                                               +
               "Actual Total Time": 2912.042,                                                                                                                                                 +
               "Actual Rows": 2981442,                                                                                                                                                        +
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
                   "Actual Startup Time": 4.732,                                                                                                                                              +
                   "Actual Total Time": 1144.668,                                                                                                                                             +
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
     "Planning Time": 7219.613,                                                                                                                                                               +
     "Triggers": [                                                                                                                                                                            +
     ],                                                                                                                                                                                       +
     "Execution Time": 32662.495                                                                                                                                                              +
   }                                                                                                                                                                                          +
 ]
(1 row)

