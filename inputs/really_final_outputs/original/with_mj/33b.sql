                                                                        QUERY PLAN                                                                         
-----------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                        +
   {                                                                                                                                                      +
     "Plan": {                                                                                                                                            +
       "Node Type": "Aggregate",                                                                                                                          +
       "Strategy": "Plain",                                                                                                                               +
       "Partial Mode": "Simple",                                                                                                                          +
       "Parallel Aware": false,                                                                                                                           +
       "Startup Cost": 20086.50,                                                                                                                          +
       "Total Cost": 20086.50,                                                                                                                            +
       "Plan Rows": 1,                                                                                                                                    +
       "Plan Width": 192,                                                                                                                                 +
       "Actual Startup Time": 4910.232,                                                                                                                   +
       "Actual Total Time": 4910.232,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                  +
       "Actual Loops": 1,                                                                                                                                 +
       "Shared Hit Blocks": 193005,                                                                                                                       +
       "Shared Read Blocks": 67173,                                                                                                                       +
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
           "Startup Cost": 20086.50,                                                                                                                      +
           "Total Cost": 20086.50,                                                                                                                        +
           "Plan Rows": 1,                                                                                                                                +
           "Plan Width": 84,                                                                                                                              +
           "Actual Startup Time": 4910.204,                                                                                                               +
           "Actual Total Time": 4910.205,                                                                                                                 +
           "Actual Rows": 4,                                                                                                                              +
           "Actual Loops": 1,                                                                                                                             +
           "Inner Unique": true,                                                                                                                          +
           "Merge Cond": "(mi_idx1.info_type_id = it1.id)",                                                                                               +
           "Shared Hit Blocks": 193005,                                                                                                                   +
           "Shared Read Blocks": 67173,                                                                                                                   +
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
               "Node Type": "Sort",                                                                                                                       +
               "Parent Relationship": "Outer",                                                                                                            +
               "Parallel Aware": false,                                                                                                                   +
               "Startup Cost": 20086.46,                                                                                                                  +
               "Total Cost": 20086.46,                                                                                                                    +
               "Plan Rows": 1,                                                                                                                            +
               "Plan Width": 88,                                                                                                                          +
               "Actual Startup Time": 4910.171,                                                                                                           +
               "Actual Total Time": 4910.171,                                                                                                             +
               "Actual Rows": 12,                                                                                                                         +
               "Actual Loops": 1,                                                                                                                         +
               "Sort Key": ["mi_idx1.info_type_id"],                                                                                                      +
               "Sort Method": "quicksort",                                                                                                                +
               "Sort Space Used": 27,                                                                                                                     +
               "Sort Space Type": "Memory",                                                                                                               +
               "Shared Hit Blocks": 193004,                                                                                                               +
               "Shared Read Blocks": 67173,                                                                                                               +
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
                   "Startup Cost": 20086.45,                                                                                                              +
                   "Total Cost": 20086.46,                                                                                                                +
                   "Plan Rows": 1,                                                                                                                        +
                   "Plan Width": 88,                                                                                                                      +
                   "Actual Startup Time": 4888.007,                                                                                                       +
                   "Actual Total Time": 4888.012,                                                                                                         +
                   "Actual Rows": 12,                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                     +
                   "Inner Unique": true,                                                                                                                  +
                   "Merge Cond": "(t2.kind_id = kt2.id)",                                                                                                 +
                   "Shared Hit Blocks": 193000,                                                                                                           +
                   "Shared Read Blocks": 67173,                                                                                                           +
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
                       "Startup Cost": 20086.42,                                                                                                          +
                       "Total Cost": 20086.42,                                                                                                            +
                       "Plan Rows": 1,                                                                                                                    +
                       "Plan Width": 92,                                                                                                                  +
                       "Actual Startup Time": 4887.975,                                                                                                   +
                       "Actual Total Time": 4887.977,                                                                                                     +
                       "Actual Rows": 12,                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                 +
                       "Sort Key": ["t2.kind_id"],                                                                                                        +
                       "Sort Method": "quicksort",                                                                                                        +
                       "Sort Space Used": 27,                                                                                                             +
                       "Sort Space Type": "Memory",                                                                                                       +
                       "Shared Hit Blocks": 192999,                                                                                                       +
                       "Shared Read Blocks": 67173,                                                                                                       +
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
                           "Startup Cost": 20049.93,                                                                                                      +
                           "Total Cost": 20086.42,                                                                                                        +
                           "Plan Rows": 1,                                                                                                                +
                           "Plan Width": 92,                                                                                                              +
                           "Actual Startup Time": 4868.882,                                                                                               +
                           "Actual Total Time": 4887.951,                                                                                                 +
                           "Actual Rows": 12,                                                                                                             +
                           "Actual Loops": 1,                                                                                                             +
                           "Inner Unique": false,                                                                                                         +
                           "Merge Cond": "(cn2.id = mc2.company_id)",                                                                                     +
                           "Shared Hit Blocks": 192999,                                                                                                   +
                           "Shared Read Blocks": 67173,                                                                                                   +
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
                               "Startup Cost": 761.23,                                                                                                    +
                               "Total Cost": 779.47,                                                                                                      +
                               "Plan Rows": 234997,                                                                                                       +
                               "Plan Width": 23,                                                                                                          +
                               "Actual Startup Time": 212.488,                                                                                            +
                               "Actual Total Time": 221.460,                                                                                              +
                               "Actual Rows": 71404,                                                                                                      +
                               "Actual Loops": 1,                                                                                                         +
                               "Sort Key": ["cn2.id"],                                                                                                    +
                               "Sort Method": "quicksort",                                                                                                +
                               "Sort Space Used": 23201,                                                                                                  +
                               "Sort Space Type": "Memory",                                                                                               +
                               "Shared Hit Blocks": 2,                                                                                                    +
                               "Shared Read Blocks": 2992,                                                                                                +
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
                                   "Relation Name": "company_name",                                                                                       +
                                   "Alias": "cn2",                                                                                                        +
                                   "Startup Cost": 0.00,                                                                                                  +
                                   "Total Cost": 110.16,                                                                                                  +
                                   "Plan Rows": 234997,                                                                                                   +
                                   "Plan Width": 23,                                                                                                      +
                                   "Actual Startup Time": 28.905,                                                                                         +
                                   "Actual Total Time": 102.474,                                                                                          +
                                   "Actual Rows": 234997,                                                                                                 +
                                   "Actual Loops": 1,                                                                                                     +
                                   "Shared Hit Blocks": 2,                                                                                                +
                                   "Shared Read Blocks": 2992,                                                                                            +
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
                               "Startup Cost": 19288.70,                                                                                                  +
                               "Total Cost": 19288.70,                                                                                                    +
                               "Plan Rows": 1,                                                                                                            +
                               "Plan Width": 77,                                                                                                          +
                               "Actual Startup Time": 4656.381,                                                                                           +
                               "Actual Total Time": 4656.383,                                                                                             +
                               "Actual Rows": 12,                                                                                                         +
                               "Actual Loops": 1,                                                                                                         +
                               "Sort Key": ["mc2.company_id"],                                                                                            +
                               "Sort Method": "quicksort",                                                                                                +
                               "Sort Space Used": 26,                                                                                                     +
                               "Sort Space Type": "Memory",                                                                                               +
                               "Shared Hit Blocks": 192997,                                                                                               +
                               "Shared Read Blocks": 64181,                                                                                               +
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
                                   "Node Type": "Merge Join",                                                                                             +
                                   "Parent Relationship": "Outer",                                                                                        +
                                   "Parallel Aware": false,                                                                                               +
                                   "Join Type": "Inner",                                                                                                  +
                                   "Startup Cost": 18883.56,                                                                                              +
                                   "Total Cost": 19288.70,                                                                                                +
                                   "Plan Rows": 1,                                                                                                        +
                                   "Plan Width": 77,                                                                                                      +
                                   "Actual Startup Time": 4656.359,                                                                                       +
                                   "Actual Total Time": 4656.365,                                                                                         +
                                   "Actual Rows": 12,                                                                                                     +
                                   "Actual Loops": 1,                                                                                                     +
                                   "Inner Unique": false,                                                                                                 +
                                   "Merge Cond": "(t2.id = mc2.movie_id)",                                                                                +
                                   "Shared Hit Blocks": 192997,                                                                                           +
                                   "Shared Read Blocks": 64181,                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                            +
                                   "Shared Written Blocks": 0,                                                                                            +
                                   "Local Hit Blocks": 0,                                                                                                 +
                                   "Local Read Blocks": 0,                                                                                                +
                                   "Local Dirtied Blocks": 0,                                                                                             +
                                   "Local Written Blocks": 0,                                                                                             +
                                   "Temp Read Blocks": 0,                                                                                                 +
                                   "Temp Written Blocks": 0,                                                                                              +
                                   "Plans": [                                                                                                             +
                                     {                                                                                                                    +
                                       "Node Type": "Sort",                                                                                               +
                                       "Parent Relationship": "Outer",                                                                                    +
                                       "Parallel Aware": false,                                                                                           +
                                       "Startup Cost": 9478.10,                                                                                           +
                                       "Total Cost": 9478.10,                                                                                             +
                                       "Plan Rows": 1,                                                                                                    +
                                       "Plan Width": 85,                                                                                                  +
                                       "Actual Startup Time": 3187.734,                                                                                   +
                                       "Actual Total Time": 3187.735,                                                                                     +
                                       "Actual Rows": 3,                                                                                                  +
                                       "Actual Loops": 1,                                                                                                 +
                                       "Sort Key": ["ml.linked_movie_id"],                                                                                +
                                       "Sort Method": "quicksort",                                                                                        +
                                       "Sort Space Used": 25,                                                                                             +
                                       "Sort Space Type": "Memory",                                                                                       +
                                       "Shared Hit Blocks": 192283,                                                                                       +
                                       "Shared Read Blocks": 46106,                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                        +
                                       "Shared Written Blocks": 0,                                                                                        +
                                       "Local Hit Blocks": 0,                                                                                             +
                                       "Local Read Blocks": 0,                                                                                            +
                                       "Local Dirtied Blocks": 0,                                                                                         +
                                       "Local Written Blocks": 0,                                                                                         +
                                       "Temp Read Blocks": 0,                                                                                             +
                                       "Temp Written Blocks": 0,                                                                                          +
                                       "Plans": [                                                                                                         +
                                         {                                                                                                                +
                                           "Node Type": "Merge Join",                                                                                     +
                                           "Parent Relationship": "Outer",                                                                                +
                                           "Parallel Aware": false,                                                                                       +
                                           "Join Type": "Inner",                                                                                          +
                                           "Startup Cost": 9478.10,                                                                                       +
                                           "Total Cost": 9478.10,                                                                                         +
                                           "Plan Rows": 1,                                                                                                +
                                           "Plan Width": 85,                                                                                              +
                                           "Actual Startup Time": 3187.729,                                                                               +
                                           "Actual Total Time": 3187.730,                                                                                 +
                                           "Actual Rows": 3,                                                                                              +
                                           "Actual Loops": 1,                                                                                             +
                                           "Inner Unique": true,                                                                                          +
                                           "Merge Cond": "(mi_idx2.info_type_id = it2.id)",                                                               +
                                           "Shared Hit Blocks": 192283,                                                                                   +
                                           "Shared Read Blocks": 46106,                                                                                   +
                                           "Shared Dirtied Blocks": 0,                                                                                    +
                                           "Shared Written Blocks": 0,                                                                                    +
                                           "Local Hit Blocks": 0,                                                                                         +
                                           "Local Read Blocks": 0,                                                                                        +
                                           "Local Dirtied Blocks": 0,                                                                                     +
                                           "Local Written Blocks": 0,                                                                                     +
                                           "Temp Read Blocks": 0,                                                                                         +
                                           "Temp Written Blocks": 0,                                                                                      +
                                           "Plans": [                                                                                                     +
                                             {                                                                                                            +
                                               "Node Type": "Sort",                                                                                       +
                                               "Parent Relationship": "Outer",                                                                            +
                                               "Parallel Aware": false,                                                                                   +
                                               "Startup Cost": 9478.05,                                                                                   +
                                               "Total Cost": 9478.05,                                                                                     +
                                               "Plan Rows": 2,                                                                                            +
                                               "Plan Width": 89,                                                                                          +
                                               "Actual Startup Time": 3187.690,                                                                           +
                                               "Actual Total Time": 3187.691,                                                                             +
                                               "Actual Rows": 36,                                                                                         +
                                               "Actual Loops": 1,                                                                                         +
                                               "Sort Key": ["mi_idx2.info_type_id"],                                                                      +
                                               "Sort Method": "quicksort",                                                                                +
                                               "Sort Space Used": 31,                                                                                     +
                                               "Sort Space Type": "Memory",                                                                               +
                                               "Shared Hit Blocks": 192282,                                                                               +
                                               "Shared Read Blocks": 46106,                                                                               +
                                               "Shared Dirtied Blocks": 0,                                                                                +
                                               "Shared Written Blocks": 0,                                                                                +
                                               "Local Hit Blocks": 0,                                                                                     +
                                               "Local Read Blocks": 0,                                                                                    +
                                               "Local Dirtied Blocks": 0,                                                                                 +
                                               "Local Written Blocks": 0,                                                                                 +
                                               "Temp Read Blocks": 0,                                                                                     +
                                               "Temp Written Blocks": 0,                                                                                  +
                                               "Plans": [                                                                                                 +
                                                 {                                                                                                        +
                                                   "Node Type": "Merge Join",                                                                             +
                                                   "Parent Relationship": "Outer",                                                                        +
                                                   "Parallel Aware": false,                                                                               +
                                                   "Join Type": "Inner",                                                                                  +
                                                   "Startup Cost": 9478.05,                                                                               +
                                                   "Total Cost": 9478.05,                                                                                 +
                                                   "Plan Rows": 2,                                                                                        +
                                                   "Plan Width": 89,                                                                                      +
                                                   "Actual Startup Time": 3187.661,                                                                       +
                                                   "Actual Total Time": 3187.674,                                                                         +
                                                   "Actual Rows": 36,                                                                                     +
                                                   "Actual Loops": 1,                                                                                     +
                                                   "Inner Unique": false,                                                                                 +
                                                   "Merge Cond": "(kt1.id = t1.kind_id)",                                                                 +
                                                   "Shared Hit Blocks": 192282,                                                                           +
                                                   "Shared Read Blocks": 46106,                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                            +
                                                   "Shared Written Blocks": 0,                                                                            +
                                                   "Local Hit Blocks": 0,                                                                                 +
                                                   "Local Read Blocks": 0,                                                                                +
                                                   "Local Dirtied Blocks": 0,                                                                             +
                                                   "Local Written Blocks": 0,                                                                             +
                                                   "Temp Read Blocks": 0,                                                                                 +
                                                   "Temp Written Blocks": 0,                                                                              +
                                                   "Plans": [                                                                                             +
                                                     {                                                                                                    +
                                                       "Node Type": "Sort",                                                                               +
                                                       "Parent Relationship": "Outer",                                                                    +
                                                       "Parallel Aware": false,                                                                           +
                                                       "Startup Cost": 0.03,                                                                              +
                                                       "Total Cost": 0.03,                                                                                +
                                                       "Plan Rows": 1,                                                                                    +
                                                       "Plan Width": 4,                                                                                   +
                                                       "Actual Startup Time": 0.039,                                                                      +
                                                       "Actual Total Time": 0.039,                                                                        +
                                                       "Actual Rows": 1,                                                                                  +
                                                       "Actual Loops": 1,                                                                                 +
                                                       "Sort Key": ["kt1.id"],                                                                            +
                                                       "Sort Method": "quicksort",                                                                        +
                                                       "Sort Space Used": 25,                                                                             +
                                                       "Sort Space Type": "Memory",                                                                       +
                                                       "Shared Hit Blocks": 1,                                                                            +
                                                       "Shared Read Blocks": 0,                                                                           +
                                                       "Shared Dirtied Blocks": 0,                                                                        +
                                                       "Shared Written Blocks": 0,                                                                        +
                                                       "Local Hit Blocks": 0,                                                                             +
                                                       "Local Read Blocks": 0,                                                                            +
                                                       "Local Dirtied Blocks": 0,                                                                         +
                                                       "Local Written Blocks": 0,                                                                         +
                                                       "Temp Read Blocks": 0,                                                                             +
                                                       "Temp Written Blocks": 0,                                                                          +
                                                       "Plans": [                                                                                         +
                                                         {                                                                                                +
                                                           "Node Type": "Seq Scan",                                                                       +
                                                           "Parent Relationship": "Outer",                                                                +
                                                           "Parallel Aware": false,                                                                       +
                                                           "Relation Name": "kind_type",                                                                  +
                                                           "Alias": "kt1",                                                                                +
                                                           "Startup Cost": 0.00,                                                                          +
                                                           "Total Cost": 0.03,                                                                            +
                                                           "Plan Rows": 1,                                                                                +
                                                           "Plan Width": 4,                                                                               +
                                                           "Actual Startup Time": 0.034,                                                                  +
                                                           "Actual Total Time": 0.035,                                                                    +
                                                           "Actual Rows": 1,                                                                              +
                                                           "Actual Loops": 1,                                                                             +
                                                           "Filter": "((kind)::text = 'tv series'::text)",                                                +
                                                           "Rows Removed by Filter": 6,                                                                   +
                                                           "Shared Hit Blocks": 1,                                                                        +
                                                           "Shared Read Blocks": 0,                                                                       +
                                                           "Shared Dirtied Blocks": 0,                                                                    +
                                                           "Shared Written Blocks": 0,                                                                    +
                                                           "Local Hit Blocks": 0,                                                                         +
                                                           "Local Read Blocks": 0,                                                                        +
                                                           "Local Dirtied Blocks": 0,                                                                     +
                                                           "Local Written Blocks": 0,                                                                     +
                                                           "Temp Read Blocks": 0,                                                                         +
                                                           "Temp Written Blocks": 0                                                                       +
                                                         }                                                                                                +
                                                       ]                                                                                                  +
                                                     },                                                                                                   +
                                                     {                                                                                                    +
                                                       "Node Type": "Sort",                                                                               +
                                                       "Parent Relationship": "Inner",                                                                    +
                                                       "Parallel Aware": false,                                                                           +
                                                       "Startup Cost": 9478.02,                                                                           +
                                                       "Total Cost": 9478.02,                                                                             +
                                                       "Plan Rows": 15,                                                                                   +
                                                       "Plan Width": 93,                                                                                  +
                                                       "Actual Startup Time": 3187.617,                                                                   +
                                                       "Actual Total Time": 3187.619,                                                                     +
                                                       "Actual Rows": 36,                                                                                 +
                                                       "Actual Loops": 1,                                                                                 +
                                                       "Sort Key": ["t1.kind_id"],                                                                        +
                                                       "Sort Method": "quicksort",                                                                        +
                                                       "Sort Space Used": 31,                                                                             +
                                                       "Sort Space Type": "Memory",                                                                       +
                                                       "Shared Hit Blocks": 192281,                                                                       +
                                                       "Shared Read Blocks": 46106,                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                        +
                                                       "Shared Written Blocks": 0,                                                                        +
                                                       "Local Hit Blocks": 0,                                                                             +
                                                       "Local Read Blocks": 0,                                                                            +
                                                       "Local Dirtied Blocks": 0,                                                                         +
                                                       "Local Written Blocks": 0,                                                                         +
                                                       "Temp Read Blocks": 0,                                                                             +
                                                       "Temp Written Blocks": 0,                                                                          +
                                                       "Plans": [                                                                                         +
                                                         {                                                                                                +
                                                           "Node Type": "Merge Join",                                                                     +
                                                           "Parent Relationship": "Outer",                                                                +
                                                           "Parallel Aware": false,                                                                       +
                                                           "Join Type": "Inner",                                                                          +
                                                           "Startup Cost": 7204.86,                                                                       +
                                                           "Total Cost": 9478.01,                                                                         +
                                                           "Plan Rows": 15,                                                                               +
                                                           "Plan Width": 93,                                                                              +
                                                           "Actual Startup Time": 3011.921,                                                               +
                                                           "Actual Total Time": 3187.557,                                                                 +
                                                           "Actual Rows": 36,                                                                             +
                                                           "Actual Loops": 1,                                                                             +
                                                           "Inner Unique": true,                                                                          +
                                                           "Merge Cond": "(ml.movie_id = t1.id)",                                                         +
                                                           "Shared Hit Blocks": 192281,                                                                   +
                                                           "Shared Read Blocks": 46106,                                                                   +
                                                           "Shared Dirtied Blocks": 0,                                                                    +
                                                           "Shared Written Blocks": 0,                                                                    +
                                                           "Local Hit Blocks": 0,                                                                         +
                                                           "Local Read Blocks": 0,                                                                        +
                                                           "Local Dirtied Blocks": 0,                                                                     +
                                                           "Local Written Blocks": 0,                                                                     +
                                                           "Temp Read Blocks": 0,                                                                         +
                                                           "Temp Written Blocks": 0,                                                                      +
                                                           "Plans": [                                                                                     +
                                                             {                                                                                            +
                                                               "Node Type": "Merge Join",                                                                 +
                                                               "Parent Relationship": "Outer",                                                            +
                                                               "Parallel Aware": false,                                                                   +
                                                               "Join Type": "Inner",                                                                      +
                                                               "Startup Cost": 7204.84,                                                                   +
                                                               "Total Cost": 7766.81,                                                                     +
                                                               "Plan Rows": 15,                                                                           +
                                                               "Plan Width": 84,                                                                          +
                                                               "Actual Startup Time": 3010.992,                                                           +
                                                               "Actual Total Time": 3039.536,                                                             +
                                                               "Actual Rows": 36,                                                                         +
                                                               "Actual Loops": 1,                                                                         +
                                                               "Inner Unique": false,                                                                     +
                                                               "Merge Cond": "(mi_idx1.movie_id = ml.movie_id)",                                          +
                                                               "Shared Hit Blocks": 49337,                                                                +
                                                               "Shared Read Blocks": 45716,                                                               +
                                                               "Shared Dirtied Blocks": 0,                                                                +
                                                               "Shared Written Blocks": 0,                                                                +
                                                               "Local Hit Blocks": 0,                                                                     +
                                                               "Local Read Blocks": 0,                                                                    +
                                                               "Local Dirtied Blocks": 0,                                                                 +
                                                               "Local Written Blocks": 0,                                                                 +
                                                               "Temp Read Blocks": 0,                                                                     +
                                                               "Temp Written Blocks": 0,                                                                  +
                                                               "Plans": [                                                                                 +
                                                                 {                                                                                        +
                                                                   "Node Type": "Index Scan",                                                             +
                                                                   "Parent Relationship": "Outer",                                                        +
                                                                   "Parallel Aware": false,                                                               +
                                                                   "Scan Direction": "Forward",                                                           +
                                                                   "Index Name": "movie_id_movie_info_idx",                                               +
                                                                   "Relation Name": "movie_info_idx",                                                     +
                                                                   "Alias": "mi_idx1",                                                                    +
                                                                   "Startup Cost": 0.01,                                                                  +
                                                                   "Total Cost": 12031.00,                                                                +
                                                                   "Plan Rows": 1380035,                                                                  +
                                                                   "Plan Width": 14,                                                                      +
                                                                   "Actual Startup Time": 0.016,                                                          +
                                                                   "Actual Total Time": 21.074,                                                           +
                                                                   "Actual Rows": 46138,                                                                  +
                                                                   "Actual Loops": 1,                                                                     +
                                                                   "Shared Hit Blocks": 498,                                                              +
                                                                   "Shared Read Blocks": 126,                                                             +
                                                                   "Shared Dirtied Blocks": 0,                                                            +
                                                                   "Shared Written Blocks": 0,                                                            +
                                                                   "Local Hit Blocks": 0,                                                                 +
                                                                   "Local Read Blocks": 0,                                                                +
                                                                   "Local Dirtied Blocks": 0,                                                             +
                                                                   "Local Written Blocks": 0,                                                             +
                                                                   "Temp Read Blocks": 0,                                                                 +
                                                                   "Temp Written Blocks": 0                                                               +
                                                                 },                                                                                       +
                                                                 {                                                                                        +
                                                                   "Node Type": "Sort",                                                                   +
                                                                   "Parent Relationship": "Inner",                                                        +
                                                                   "Parallel Aware": false,                                                               +
                                                                   "Startup Cost": 7204.82,                                                               +
                                                                   "Total Cost": 7204.83,                                                                 +
                                                                   "Plan Rows": 5,                                                                        +
                                                                   "Plan Width": 70,                                                                      +
                                                                   "Actual Startup Time": 3010.869,                                                       +
                                                                   "Actual Total Time": 3010.876,                                                         +
                                                                   "Actual Rows": 34,                                                                     +
                                                                   "Actual Loops": 1,                                                                     +
                                                                   "Sort Key": ["ml.movie_id"],                                                           +
                                                                   "Sort Method": "quicksort",                                                            +
                                                                   "Sort Space Used": 26,                                                                 +
                                                                   "Sort Space Type": "Memory",                                                           +
                                                                   "Shared Hit Blocks": 48839,                                                            +
                                                                   "Shared Read Blocks": 45590,                                                           +
                                                                   "Shared Dirtied Blocks": 0,                                                            +
                                                                   "Shared Written Blocks": 0,                                                            +
                                                                   "Local Hit Blocks": 0,                                                                 +
                                                                   "Local Read Blocks": 0,                                                                +
                                                                   "Local Dirtied Blocks": 0,                                                             +
                                                                   "Local Written Blocks": 0,                                                             +
                                                                   "Temp Read Blocks": 0,                                                                 +
                                                                   "Temp Written Blocks": 0,                                                              +
                                                                   "Plans": [                                                                             +
                                                                     {                                                                                    +
                                                                       "Node Type": "Merge Join",                                                         +
                                                                       "Parent Relationship": "Outer",                                                    +
                                                                       "Parallel Aware": false,                                                           +
                                                                       "Join Type": "Inner",                                                              +
                                                                       "Startup Cost": 7204.38,                                                           +
                                                                       "Total Cost": 7204.82,                                                             +
                                                                       "Plan Rows": 5,                                                                    +
                                                                       "Plan Width": 70,                                                                  +
                                                                       "Actual Startup Time": 3009.889,                                                   +
                                                                       "Actual Total Time": 3010.848,                                                     +
                                                                       "Actual Rows": 12,                                                                 +
                                                                       "Actual Loops": 1,                                                                 +
                                                                       "Inner Unique": false,                                                             +
                                                                       "Merge Cond": "(cn1.id = mc1.company_id)",                                         +
                                                                       "Shared Hit Blocks": 48839,                                                        +
                                                                       "Shared Read Blocks": 45590,                                                       +
                                                                       "Shared Dirtied Blocks": 0,                                                        +
                                                                       "Shared Written Blocks": 0,                                                        +
                                                                       "Local Hit Blocks": 0,                                                             +
                                                                       "Local Read Blocks": 0,                                                            +
                                                                       "Local Dirtied Blocks": 0,                                                         +
                                                                       "Local Written Blocks": 0,                                                         +
                                                                       "Temp Read Blocks": 0,                                                             +
                                                                       "Temp Written Blocks": 0,                                                          +
                                                                       "Plans": [                                                                         +
                                                                         {                                                                                +
                                                                           "Node Type": "Sort",                                                           +
                                                                           "Parent Relationship": "Outer",                                                +
                                                                           "Parallel Aware": false,                                                       +
                                                                           "Startup Cost": 132.47,                                                        +
                                                                           "Total Cost": 132.65,                                                          +
                                                                           "Plan Rows": 2340,                                                             +
                                                                           "Plan Width": 23,                                                              +
                                                                           "Actual Startup Time": 30.166,                                                 +
                                                                           "Actual Total Time": 30.423,                                                   +
                                                                           "Actual Rows": 1213,                                                           +
                                                                           "Actual Loops": 1,                                                             +
                                                                           "Sort Key": ["cn1.id"],                                                        +
                                                                           "Sort Method": "quicksort",                                                    +
                                                                           "Sort Space Used": 261,                                                        +
                                                                           "Sort Space Type": "Memory",                                                   +
                                                                           "Shared Hit Blocks": 2994,                                                     +
                                                                           "Shared Read Blocks": 0,                                                       +
                                                                           "Shared Dirtied Blocks": 0,                                                    +
                                                                           "Shared Written Blocks": 0,                                                    +
                                                                           "Local Hit Blocks": 0,                                                         +
                                                                           "Local Read Blocks": 0,                                                        +
                                                                           "Local Dirtied Blocks": 0,                                                     +
                                                                           "Local Written Blocks": 0,                                                     +
                                                                           "Temp Read Blocks": 0,                                                         +
                                                                           "Temp Written Blocks": 0,                                                      +
                                                                           "Plans": [                                                                     +
                                                                             {                                                                            +
                                                                               "Node Type": "Seq Scan",                                                   +
                                                                               "Parent Relationship": "Outer",                                            +
                                                                               "Parallel Aware": false,                                                   +
                                                                               "Relation Name": "company_name",                                           +
                                                                               "Alias": "cn1",                                                            +
                                                                               "Startup Cost": 0.00,                                                      +
                                                                               "Total Cost": 128.41,                                                      +
                                                                               "Plan Rows": 2340,                                                         +
                                                                               "Plan Width": 23,                                                          +
                                                                               "Actual Startup Time": 0.014,                                              +
                                                                               "Actual Total Time": 29.284,                                               +
                                                                               "Actual Rows": 2340,                                                       +
                                                                               "Actual Loops": 1,                                                         +
                                                                               "Filter": "((country_code)::text = '[nl]'::text)",                         +
                                                                               "Rows Removed by Filter": 232657,                                          +
                                                                               "Shared Hit Blocks": 2994,                                                 +
                                                                               "Shared Read Blocks": 0,                                                   +
                                                                               "Shared Dirtied Blocks": 0,                                                +
                                                                               "Shared Written Blocks": 0,                                                +
                                                                               "Local Hit Blocks": 0,                                                     +
                                                                               "Local Read Blocks": 0,                                                    +
                                                                               "Local Dirtied Blocks": 0,                                                 +
                                                                               "Local Written Blocks": 0,                                                 +
                                                                               "Temp Read Blocks": 0,                                                     +
                                                                               "Temp Written Blocks": 0                                                   +
                                                                             }                                                                            +
                                                                           ]                                                                              +
                                                                         },                                                                               +
                                                                         {                                                                                +
                                                                           "Node Type": "Sort",                                                           +
                                                                           "Parent Relationship": "Inner",                                                +
                                                                           "Parallel Aware": false,                                                       +
                                                                           "Startup Cost": 7071.91,                                                       +
                                                                           "Total Cost": 7071.95,                                                         +
                                                                           "Plan Rows": 519,                                                              +
                                                                           "Plan Width": 55,                                                              +
                                                                           "Actual Startup Time": 2979.694,                                               +
                                                                           "Actual Total Time": 2979.751,                                                 +
                                                                           "Actual Rows": 284,                                                            +
                                                                           "Actual Loops": 1,                                                             +
                                                                           "Sort Key": ["mc1.company_id"],                                                +
                                                                           "Sort Method": "quicksort",                                                    +
                                                                           "Sort Space Used": 64,                                                         +
                                                                           "Sort Space Type": "Memory",                                                   +
                                                                           "Shared Hit Blocks": 45845,                                                    +
                                                                           "Shared Read Blocks": 45590,                                                   +
                                                                           "Shared Dirtied Blocks": 0,                                                    +
                                                                           "Shared Written Blocks": 0,                                                    +
                                                                           "Local Hit Blocks": 0,                                                         +
                                                                           "Local Read Blocks": 0,                                                        +
                                                                           "Local Dirtied Blocks": 0,                                                     +
                                                                           "Local Written Blocks": 0,                                                     +
                                                                           "Temp Read Blocks": 0,                                                         +
                                                                           "Temp Written Blocks": 0,                                                      +
                                                                           "Plans": [                                                                     +
                                                                             {                                                                            +
                                                                               "Node Type": "Merge Join",                                                 +
                                                                               "Parent Relationship": "Outer",                                            +
                                                                               "Parallel Aware": false,                                                   +
                                                                               "Join Type": "Inner",                                                      +
                                                                               "Startup Cost": 4462.44,                                                   +
                                                                               "Total Cost": 7071.18,                                                     +
                                                                               "Plan Rows": 519,                                                          +
                                                                               "Plan Width": 55,                                                          +
                                                                               "Actual Startup Time": 2655.687,                                           +
                                                                               "Actual Total Time": 2979.227,                                             +
                                                                               "Actual Rows": 284,                                                        +
                                                                               "Actual Loops": 1,                                                         +
                                                                               "Inner Unique": false,                                                     +
                                                                               "Merge Cond": "(mc1.movie_id = ml.movie_id)",                              +
                                                                               "Shared Hit Blocks": 45845,                                                +
                                                                               "Shared Read Blocks": 45590,                                               +
                                                                               "Shared Dirtied Blocks": 0,                                                +
                                                                               "Shared Written Blocks": 0,                                                +
                                                                               "Local Hit Blocks": 0,                                                     +
                                                                               "Local Read Blocks": 0,                                                    +
                                                                               "Local Dirtied Blocks": 0,                                                 +
                                                                               "Local Written Blocks": 0,                                                 +
                                                                               "Temp Read Blocks": 0,                                                     +
                                                                               "Temp Written Blocks": 0,                                                  +
                                                                               "Plans": [                                                                 +
                                                                                 {                                                                        +
                                                                                   "Node Type": "Index Scan",                                             +
                                                                                   "Parent Relationship": "Outer",                                        +
                                                                                   "Parallel Aware": false,                                               +
                                                                                   "Scan Direction": "Forward",                                           +
                                                                                   "Index Name": "movie_id_movie_companies",                              +
                                                                                   "Relation Name": "movie_companies",                                    +
                                                                                   "Alias": "mc1",                                                        +
                                                                                   "Startup Cost": 0.01,                                                  +
                                                                                   "Total Cost": 67925.24,                                                +
                                                                                   "Plan Rows": 2609129,                                                  +
                                                                                   "Plan Width": 8,                                                       +
                                                                                   "Actual Startup Time": 0.011,                                          +
                                                                                   "Actual Total Time": 299.097,                                          +
                                                                                   "Actual Rows": 99877,                                                  +
                                                                                   "Actual Loops": 1,                                                     +
                                                                                   "Shared Hit Blocks": 45837,                                            +
                                                                                   "Shared Read Blocks": 983,                                             +
                                                                                   "Shared Dirtied Blocks": 0,                                            +
                                                                                   "Shared Written Blocks": 0,                                            +
                                                                                   "Local Hit Blocks": 0,                                                 +
                                                                                   "Local Read Blocks": 0,                                                +
                                                                                   "Local Dirtied Blocks": 0,                                             +
                                                                                   "Local Written Blocks": 0,                                             +
                                                                                   "Temp Read Blocks": 0,                                                 +
                                                                                   "Temp Written Blocks": 0                                               +
                                                                                 },                                                                       +
                                                                                 {                                                                        +
                                                                                   "Node Type": "Sort",                                                   +
                                                                                   "Parent Relationship": "Inner",                                        +
                                                                                   "Parallel Aware": false,                                               +
                                                                                   "Startup Cost": 4462.42,                                               +
                                                                                   "Total Cost": 4462.43,                                                 +
                                                                                   "Plan Rows": 115,                                                      +
                                                                                   "Plan Width": 47,                                                      +
                                                                                   "Actual Startup Time": 2645.337,                                       +
                                                                                   "Actual Total Time": 2645.388,                                         +
                                                                                   "Actual Rows": 285,                                                    +
                                                                                   "Actual Loops": 1,                                                     +
                                                                                   "Sort Key": ["ml.movie_id"],                                           +
                                                                                   "Sort Method": "quicksort",                                            +
                                                                                   "Sort Space Used": 31,                                                 +
                                                                                   "Sort Space Type": "Memory",                                           +
                                                                                   "Shared Hit Blocks": 8,                                                +
                                                                                   "Shared Read Blocks": 44607,                                           +
                                                                                   "Shared Dirtied Blocks": 0,                                            +
                                                                                   "Shared Written Blocks": 0,                                            +
                                                                                   "Local Hit Blocks": 0,                                                 +
                                                                                   "Local Read Blocks": 0,                                                +
                                                                                   "Local Dirtied Blocks": 0,                                             +
                                                                                   "Local Written Blocks": 0,                                             +
                                                                                   "Temp Read Blocks": 0,                                                 +
                                                                                   "Temp Written Blocks": 0,                                              +
                                                                                   "Plans": [                                                             +
                                                                                     {                                                                    +
                                                                                       "Node Type": "Merge Join",                                         +
                                                                                       "Parent Relationship": "Outer",                                    +
                                                                                       "Parallel Aware": false,                                           +
                                                                                       "Join Type": "Inner",                                              +
                                                                                       "Startup Cost": 4340.97,                                           +
                                                                                       "Total Cost": 4462.30,                                             +
                                                                                       "Plan Rows": 115,                                                  +
                                                                                       "Plan Width": 47,                                                  +
                                                                                       "Actual Startup Time": 2508.999,                                   +
                                                                                       "Actual Total Time": 2645.305,                                     +
                                                                                       "Actual Rows": 50,                                                 +
                                                                                       "Actual Loops": 1,                                                 +
                                                                                       "Inner Unique": true,                                              +
                                                                                       "Merge Cond": "(ml.linked_movie_id = t2.id)",                      +
                                                                                       "Shared Hit Blocks": 8,                                            +
                                                                                       "Shared Read Blocks": 44607,                                       +
                                                                                       "Shared Dirtied Blocks": 0,                                        +
                                                                                       "Shared Written Blocks": 0,                                        +
                                                                                       "Local Hit Blocks": 0,                                             +
                                                                                       "Local Read Blocks": 0,                                            +
                                                                                       "Local Dirtied Blocks": 0,                                         +
                                                                                       "Local Written Blocks": 0,                                         +
                                                                                       "Temp Read Blocks": 0,                                             +
                                                                                       "Temp Written Blocks": 0,                                          +
                                                                                       "Plans": [                                                         +
                                                                                         {                                                                +
                                                                                           "Node Type": "Merge Join",                                     +
                                                                                           "Parent Relationship": "Outer",                                +
                                                                                           "Parallel Aware": false,                                       +
                                                                                           "Join Type": "Inner",                                          +
                                                                                           "Startup Cost": 2527.55,                                       +
                                                                                           "Total Cost": 2630.14,                                         +
                                                                                           "Plan Rows": 2430,                                             +
                                                                                           "Plan Width": 22,                                              +
                                                                                           "Actual Startup Time": 758.339,                                +
                                                                                           "Actual Total Time": 863.994,                                  +
                                                                                           "Actual Rows": 2944,                                           +
                                                                                           "Actual Loops": 1,                                             +
                                                                                           "Inner Unique": false,                                         +
                                                                                           "Merge Cond": "(ml.linked_movie_id = mi_idx2.movie_id)",       +
                                                                                           "Shared Hit Blocks": 7,                                        +
                                                                                           "Shared Read Blocks": 8610,                                    +
                                                                                           "Shared Dirtied Blocks": 0,                                    +
                                                                                           "Shared Written Blocks": 0,                                    +
                                                                                           "Local Hit Blocks": 0,                                         +
                                                                                           "Local Read Blocks": 0,                                        +
                                                                                           "Local Dirtied Blocks": 0,                                     +
                                                                                           "Local Written Blocks": 0,                                     +
                                                                                           "Temp Read Blocks": 0,                                         +
                                                                                           "Temp Written Blocks": 0,                                      +
                                                                                           "Plans": [                                                     +
                                                                                             {                                                            +
                                                                                               "Node Type": "Sort",                                       +
                                                                                               "Parent Relationship": "Outer",                            +
                                                                                               "Parallel Aware": false,                                   +
                                                                                               "Startup Cost": 84.04,                                     +
                                                                                               "Total Cost": 84.17,                                       +
                                                                                               "Plan Rows": 1666,                                         +
                                                                                               "Plan Width": 8,                                           +
                                                                                               "Actual Startup Time": 42.086,                             +
                                                                                               "Actual Total Time": 42.378,                               +
                                                                                               "Actual Rows": 2315,                                       +
                                                                                               "Actual Loops": 1,                                         +
                                                                                               "Sort Key": ["ml.linked_movie_id"],                        +
                                                                                               "Sort Method": "quicksort",                                +
                                                                                               "Sort Space Used": 205,                                    +
                                                                                               "Sort Space Type": "Memory",                               +
                                                                                               "Shared Hit Blocks": 5,                                    +
                                                                                               "Shared Read Blocks": 159,                                 +
                                                                                               "Shared Dirtied Blocks": 0,                                +
                                                                                               "Shared Written Blocks": 0,                                +
                                                                                               "Local Hit Blocks": 0,                                     +
                                                                                               "Local Read Blocks": 0,                                    +
                                                                                               "Local Dirtied Blocks": 0,                                 +
                                                                                               "Local Written Blocks": 0,                                 +
                                                                                               "Temp Read Blocks": 0,                                     +
                                                                                               "Temp Written Blocks": 0,                                  +
                                                                                               "Plans": [                                                 +
                                                                                                 {                                                        +
                                                                                                   "Node Type": "Merge Join",                             +
                                                                                                   "Parent Relationship": "Outer",                        +
                                                                                                   "Parallel Aware": false,                               +
                                                                                                   "Join Type": "Inner",                                  +
                                                                                                   "Startup Cost": 76.50,                                 +
                                                                                                   "Total Cost": 81.27,                                   +
                                                                                                   "Plan Rows": 1666,                                     +
                                                                                                   "Plan Width": 8,                                       +
                                                                                                   "Actual Startup Time": 40.490,                         +
                                                                                                   "Actual Total Time": 41.291,                           +
                                                                                                   "Actual Rows": 2315,                                   +
                                                                                                   "Actual Loops": 1,                                     +
                                                                                                   "Inner Unique": true,                                  +
                                                                                                   "Merge Cond": "(ml.link_type_id = lt.id)",             +
                                                                                                   "Shared Hit Blocks": 5,                                +
                                                                                                   "Shared Read Blocks": 159,                             +
                                                                                                   "Shared Dirtied Blocks": 0,                            +
                                                                                                   "Shared Written Blocks": 0,                            +
                                                                                                   "Local Hit Blocks": 0,                                 +
                                                                                                   "Local Read Blocks": 0,                                +
                                                                                                   "Local Dirtied Blocks": 0,                             +
                                                                                                   "Local Written Blocks": 0,                             +
                                                                                                   "Temp Read Blocks": 0,                                 +
                                                                                                   "Temp Written Blocks": 0,                              +
                                                                                                   "Plans": [                                             +
                                                                                                     {                                                    +
                                                                                                       "Node Type": "Sort",                               +
                                                                                                       "Parent Relationship": "Outer",                    +
                                                                                                       "Parallel Aware": false,                           +
                                                                                                       "Startup Cost": 76.46,                             +
                                                                                                       "Total Cost": 78.79,                               +
                                                                                                       "Plan Rows": 29997,                                +
                                                                                                       "Plan Width": 12,                                  +
                                                                                                       "Actual Startup Time": 40.464,                     +
                                                                                                       "Actual Total Time": 40.632,                       +
                                                                                                       "Actual Rows": 2316,                               +
                                                                                                       "Actual Loops": 1,                                 +
                                                                                                       "Sort Key": ["ml.link_type_id"],                   +
                                                                                                       "Sort Method": "quicksort",                        +
                                                                                                       "Sort Space Used": 2175,                           +
                                                                                                       "Sort Space Type": "Memory",                       +
                                                                                                       "Shared Hit Blocks": 4,                            +
                                                                                                       "Shared Read Blocks": 159,                         +
                                                                                                       "Shared Dirtied Blocks": 0,                        +
                                                                                                       "Shared Written Blocks": 0,                        +
                                                                                                       "Local Hit Blocks": 0,                             +
                                                                                                       "Local Read Blocks": 0,                            +
                                                                                                       "Local Dirtied Blocks": 0,                         +
                                                                                                       "Local Written Blocks": 0,                         +
                                                                                                       "Temp Read Blocks": 0,                             +
                                                                                                       "Temp Written Blocks": 0,                          +
                                                                                                       "Plans": [                                         +
                                                                                                         {                                                +
                                                                                                           "Node Type": "Seq Scan",                       +
                                                                                                           "Parent Relationship": "Outer",                +
                                                                                                           "Parallel Aware": false,                       +
                                                                                                           "Relation Name": "movie_link",                 +
                                                                                                           "Alias": "ml",                                 +
                                                                                                           "Startup Cost": 0.00,                          +
                                                                                                           "Total Cost": 7.19,                            +
                                                                                                           "Plan Rows": 29997,                            +
                                                                                                           "Plan Width": 12,                              +
                                                                                                           "Actual Startup Time": 0.006,                  +
                                                                                                           "Actual Total Time": 27.255,                   +
                                                                                                           "Actual Rows": 29997,                          +
                                                                                                           "Actual Loops": 1,                             +
                                                                                                           "Shared Hit Blocks": 4,                        +
                                                                                                           "Shared Read Blocks": 159,                     +
                                                                                                           "Shared Dirtied Blocks": 0,                    +
                                                                                                           "Shared Written Blocks": 0,                    +
                                                                                                           "Local Hit Blocks": 0,                         +
                                                                                                           "Local Read Blocks": 0,                        +
                                                                                                           "Local Dirtied Blocks": 0,                     +
                                                                                                           "Local Written Blocks": 0,                     +
                                                                                                           "Temp Read Blocks": 0,                         +
                                                                                                           "Temp Written Blocks": 0                       +
                                                                                                         }                                                +
                                                                                                       ]                                                  +
                                                                                                     },                                                   +
                                                                                                     {                                                    +
                                                                                                       "Node Type": "Sort",                               +
                                                                                                       "Parent Relationship": "Inner",                    +
                                                                                                       "Parallel Aware": false,                           +
                                                                                                       "Startup Cost": 0.03,                              +
                                                                                                       "Total Cost": 0.03,                                +
                                                                                                       "Plan Rows": 1,                                    +
                                                                                                       "Plan Width": 4,                                   +
                                                                                                       "Actual Startup Time": 0.019,                      +
                                                                                                       "Actual Total Time": 0.020,                        +
                                                                                                       "Actual Rows": 2,                                  +
                                                                                                       "Actual Loops": 1,                                 +
                                                                                                       "Sort Key": ["lt.id"],                             +
                                                                                                       "Sort Method": "quicksort",                        +
                                                                                                       "Sort Space Used": 25,                             +
                                                                                                       "Sort Space Type": "Memory",                       +
                                                                                                       "Shared Hit Blocks": 1,                            +
                                                                                                       "Shared Read Blocks": 0,                           +
                                                                                                       "Shared Dirtied Blocks": 0,                        +
                                                                                                       "Shared Written Blocks": 0,                        +
                                                                                                       "Local Hit Blocks": 0,                             +
                                                                                                       "Local Read Blocks": 0,                            +
                                                                                                       "Local Dirtied Blocks": 0,                         +
                                                                                                       "Local Written Blocks": 0,                         +
                                                                                                       "Temp Read Blocks": 0,                             +
                                                                                                       "Temp Written Blocks": 0,                          +
                                                                                                       "Plans": [                                         +
                                                                                                         {                                                +
                                                                                                           "Node Type": "Seq Scan",                       +
                                                                                                           "Parent Relationship": "Outer",                +
                                                                                                           "Parallel Aware": false,                       +
                                                                                                           "Relation Name": "link_type",                  +
                                                                                                           "Alias": "lt",                                 +
                                                                                                           "Startup Cost": 0.00,                          +
                                                                                                           "Total Cost": 0.03,                            +
                                                                                                           "Plan Rows": 1,                                +
                                                                                                           "Plan Width": 4,                               +
                                                                                                           "Actual Startup Time": 0.008,                  +
                                                                                                           "Actual Total Time": 0.013,                    +
                                                                                                           "Actual Rows": 2,                              +
                                                                                                           "Actual Loops": 1,                             +
                                                                                                           "Filter": "((link)::text ~~ '%follow%'::text)",+
                                                                                                           "Rows Removed by Filter": 16,                  +
                                                                                                           "Shared Hit Blocks": 1,                        +
                                                                                                           "Shared Read Blocks": 0,                       +
                                                                                                           "Shared Dirtied Blocks": 0,                    +
                                                                                                           "Shared Written Blocks": 0,                    +
                                                                                                           "Local Hit Blocks": 0,                         +
                                                                                                           "Local Read Blocks": 0,                        +
                                                                                                           "Local Dirtied Blocks": 0,                     +
                                                                                                           "Local Written Blocks": 0,                     +
                                                                                                           "Temp Read Blocks": 0,                         +
                                                                                                           "Temp Written Blocks": 0                       +
                                                                                                         }                                                +
                                                                                                       ]                                                  +
                                                                                                     }                                                    +
                                                                                                   ]                                                      +
                                                                                                 }                                                        +
                                                                                               ]                                                          +
                                                                                             },                                                           +
                                                                                             {                                                            +
                                                                                               "Node Type": "Sort",                                       +
                                                                                               "Parent Relationship": "Inner",                            +
                                                                                               "Parallel Aware": false,                                   +
                                                                                               "Startup Cost": 2443.51,                                   +
                                                                                               "Total Cost": 2494.62,                                     +
                                                                                               "Plan Rows": 658313,                                       +
                                                                                               "Plan Width": 14,                                          +
                                                                                               "Actual Startup Time": 716.185,                            +
                                                                                               "Actual Total Time": 749.049,                              +
                                                                                               "Actual Rows": 650201,                                     +
                                                                                               "Actual Loops": 1,                                         +
                                                                                               "Sort Key": ["mi_idx2.movie_id"],                          +
                                                                                               "Sort Method": "quicksort",                                +
                                                                                               "Sort Space Used": 68481,                                  +
                                                                                               "Sort Space Type": "Memory",                               +
                                                                                               "Shared Hit Blocks": 2,                                    +
                                                                                               "Shared Read Blocks": 8451,                                +
                                                                                               "Shared Dirtied Blocks": 0,                                +
                                                                                               "Shared Written Blocks": 0,                                +
                                                                                               "Local Hit Blocks": 0,                                     +
                                                                                               "Local Read Blocks": 0,                                    +
                                                                                               "Local Dirtied Blocks": 0,                                 +
                                                                                               "Local Written Blocks": 0,                                 +
                                                                                               "Temp Read Blocks": 0,                                     +
                                                                                               "Temp Written Blocks": 0,                                  +
                                                                                               "Plans": [                                                 +
                                                                                                 {                                                        +
                                                                                                   "Node Type": "Seq Scan",                               +
                                                                                                   "Parent Relationship": "Outer",                        +
                                                                                                   "Parallel Aware": false,                               +
                                                                                                   "Relation Name": "movie_info_idx",                     +
                                                                                                   "Alias": "mi_idx2",                                    +
                                                                                                   "Startup Cost": 0.00,                                  +
                                                                                                   "Total Cost": 467.71,                                  +
                                                                                                   "Plan Rows": 658313,                                   +
                                                                                                   "Plan Width": 14,                                      +
                                                                                                   "Actual Startup Time": 0.009,                          +
                                                                                                   "Actual Total Time": 441.943,                          +
                                                                                                   "Actual Rows": 658295,                                 +
                                                                                                   "Actual Loops": 1,                                     +
                                                                                                   "Filter": "(info < '3.0'::text)",                      +
                                                                                                   "Rows Removed by Filter": 721740,                      +
                                                                                                   "Shared Hit Blocks": 2,                                +
                                                                                                   "Shared Read Blocks": 8451,                            +
                                                                                                   "Shared Dirtied Blocks": 0,                            +
                                                                                                   "Shared Written Blocks": 0,                            +
                                                                                                   "Local Hit Blocks": 0,                                 +
                                                                                                   "Local Read Blocks": 0,                                +
                                                                                                   "Local Dirtied Blocks": 0,                             +
                                                                                                   "Local Written Blocks": 0,                             +
                                                                                                   "Temp Read Blocks": 0,                                 +
                                                                                                   "Temp Written Blocks": 0                               +
                                                                                                 }                                                        +
                                                                                               ]                                                          +
                                                                                             }                                                            +
                                                                                           ]                                                              +
                                                                                         },                                                               +
                                                                                         {                                                                +
                                                                                           "Node Type": "Sort",                                           +
                                                                                           "Parent Relationship": "Inner",                                +
                                                                                           "Parallel Aware": false,                                       +
                                                                                           "Startup Cost": 1813.42,                                       +
                                                                                           "Total Cost": 1822.70,                                         +
                                                                                           "Plan Rows": 119565,                                           +
                                                                                           "Plan Width": 25,                                              +
                                                                                           "Actual Startup Time": 1750.086,                               +
                                                                                           "Actual Total Time": 1764.491,                                 +
                                                                                           "Actual Rows": 118939,                                         +
                                                                                           "Actual Loops": 1,                                             +
                                                                                           "Sort Key": ["t2.id"],                                         +
                                                                                           "Sort Method": "quicksort",                                    +
                                                                                           "Sort Space Used": 12024,                                      +
                                                                                           "Sort Space Type": "Memory",                                   +
                                                                                           "Shared Hit Blocks": 1,                                        +
                                                                                           "Shared Read Blocks": 35997,                                   +
                                                                                           "Shared Dirtied Blocks": 0,                                    +
                                                                                           "Shared Written Blocks": 0,                                    +
                                                                                           "Local Hit Blocks": 0,                                         +
                                                                                           "Local Read Blocks": 0,                                        +
                                                                                           "Local Dirtied Blocks": 0,                                     +
                                                                                           "Local Written Blocks": 0,                                     +
                                                                                           "Temp Read Blocks": 0,                                         +
                                                                                           "Temp Written Blocks": 0,                                      +
                                                                                           "Plans": [                                                     +
                                                                                             {                                                            +
                                                                                               "Node Type": "Seq Scan",                                   +
                                                                                               "Parent Relationship": "Outer",                            +
                                                                                               "Parallel Aware": false,                                   +
                                                                                               "Relation Name": "title",                                  +
                                                                                               "Alias": "t2",                                             +
                                                                                               "Startup Cost": 0.00,                                      +
                                                                                               "Total Cost": 1500.26,                                     +
                                                                                               "Plan Rows": 119565,                                       +
                                                                                               "Plan Width": 25,                                          +
                                                                                               "Actual Startup Time": 19.833,                             +
                                                                                               "Actual Total Time": 1658.022,                             +
                                                                                               "Actual Rows": 119565,                                     +
                                                                                               "Actual Loops": 1,                                         +
                                                                                               "Filter": "(production_year = 2007)",                      +
                                                                                               "Rows Removed by Filter": 2408747,                         +
                                                                                               "Shared Hit Blocks": 1,                                    +
                                                                                               "Shared Read Blocks": 35997,                               +
                                                                                               "Shared Dirtied Blocks": 0,                                +
                                                                                               "Shared Written Blocks": 0,                                +
                                                                                               "Local Hit Blocks": 0,                                     +
                                                                                               "Local Read Blocks": 0,                                    +
                                                                                               "Local Dirtied Blocks": 0,                                 +
                                                                                               "Local Written Blocks": 0,                                 +
                                                                                               "Temp Read Blocks": 0,                                     +
                                                                                               "Temp Written Blocks": 0                                   +
                                                                                             }                                                            +
                                                                                           ]                                                              +
                                                                                         }                                                                +
                                                                                       ]                                                                  +
                                                                                     }                                                                    +
                                                                                   ]                                                                      +
                                                                                 }                                                                        +
                                                                               ]                                                                          +
                                                                             }                                                                            +
                                                                           ]                                                                              +
                                                                         }                                                                                +
                                                                       ]                                                                                  +
                                                                     }                                                                                    +
                                                                   ]                                                                                      +
                                                                 }                                                                                        +
                                                               ]                                                                                          +
                                                             },                                                                                           +
                                                             {                                                                                            +
                                                               "Node Type": "Index Scan",                                                                 +
                                                               "Parent Relationship": "Inner",                                                            +
                                                               "Parallel Aware": false,                                                                   +
                                                               "Scan Direction": "Forward",                                                               +
                                                               "Index Name": "title_idx_id",                                                              +
                                                               "Relation Name": "title",                                                                  +
                                                               "Alias": "t1",                                                                             +
                                                               "Startup Cost": 0.01,                                                                      +
                                                               "Total Cost": 23042.05,                                                                    +
                                                               "Plan Rows": 2528312,                                                                      +
                                                               "Plan Width": 25,                                                                          +
                                                               "Actual Startup Time": 0.032,                                                              +
                                                               "Actual Total Time": 128.524,                                                              +
                                                               "Actual Rows": 142987,                                                                     +
                                                               "Actual Loops": 1,                                                                         +
                                                               "Shared Hit Blocks": 142944,                                                               +
                                                               "Shared Read Blocks": 390,                                                                 +
                                                               "Shared Dirtied Blocks": 0,                                                                +
                                                               "Shared Written Blocks": 0,                                                                +
                                                               "Local Hit Blocks": 0,                                                                     +
                                                               "Local Read Blocks": 0,                                                                    +
                                                               "Local Dirtied Blocks": 0,                                                                 +
                                                               "Local Written Blocks": 0,                                                                 +
                                                               "Temp Read Blocks": 0,                                                                     +
                                                               "Temp Written Blocks": 0                                                                   +
                                                             }                                                                                            +
                                                           ]                                                                                              +
                                                         }                                                                                                +
                                                       ]                                                                                                  +
                                                     }                                                                                                    +
                                                   ]                                                                                                      +
                                                 }                                                                                                        +
                                               ]                                                                                                          +
                                             },                                                                                                           +
                                             {                                                                                                            +
                                               "Node Type": "Sort",                                                                                       +
                                               "Parent Relationship": "Inner",                                                                            +
                                               "Parallel Aware": false,                                                                                   +
                                               "Startup Cost": 0.05,                                                                                      +
                                               "Total Cost": 0.05,                                                                                        +
                                               "Plan Rows": 1,                                                                                            +
                                               "Plan Width": 4,                                                                                           +
                                               "Actual Startup Time": 0.030,                                                                              +
                                               "Actual Total Time": 0.030,                                                                                +
                                               "Actual Rows": 1,                                                                                          +
                                               "Actual Loops": 1,                                                                                         +
                                               "Sort Key": ["it2.id"],                                                                                    +
                                               "Sort Method": "quicksort",                                                                                +
                                               "Sort Space Used": 25,                                                                                     +
                                               "Sort Space Type": "Memory",                                                                               +
                                               "Shared Hit Blocks": 1,                                                                                    +
                                               "Shared Read Blocks": 0,                                                                                   +
                                               "Shared Dirtied Blocks": 0,                                                                                +
                                               "Shared Written Blocks": 0,                                                                                +
                                               "Local Hit Blocks": 0,                                                                                     +
                                               "Local Read Blocks": 0,                                                                                    +
                                               "Local Dirtied Blocks": 0,                                                                                 +
                                               "Local Written Blocks": 0,                                                                                 +
                                               "Temp Read Blocks": 0,                                                                                     +
                                               "Temp Written Blocks": 0,                                                                                  +
                                               "Plans": [                                                                                                 +
                                                 {                                                                                                        +
                                                   "Node Type": "Seq Scan",                                                                               +
                                                   "Parent Relationship": "Outer",                                                                        +
                                                   "Parallel Aware": false,                                                                               +
                                                   "Relation Name": "info_type",                                                                          +
                                                   "Alias": "it2",                                                                                        +
                                                   "Startup Cost": 0.00,                                                                                  +
                                                   "Total Cost": 0.05,                                                                                    +
                                                   "Plan Rows": 1,                                                                                        +
                                                   "Plan Width": 4,                                                                                       +
                                                   "Actual Startup Time": 0.020,                                                                          +
                                                   "Actual Total Time": 0.021,                                                                            +
                                                   "Actual Rows": 1,                                                                                      +
                                                   "Actual Loops": 1,                                                                                     +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                           +
                                                   "Rows Removed by Filter": 112,                                                                         +
                                                   "Shared Hit Blocks": 1,                                                                                +
                                                   "Shared Read Blocks": 0,                                                                               +
                                                   "Shared Dirtied Blocks": 0,                                                                            +
                                                   "Shared Written Blocks": 0,                                                                            +
                                                   "Local Hit Blocks": 0,                                                                                 +
                                                   "Local Read Blocks": 0,                                                                                +
                                                   "Local Dirtied Blocks": 0,                                                                             +
                                                   "Local Written Blocks": 0,                                                                             +
                                                   "Temp Read Blocks": 0,                                                                                 +
                                                   "Temp Written Blocks": 0                                                                               +
                                                 }                                                                                                        +
                                               ]                                                                                                          +
                                             }                                                                                                            +
                                           ]                                                                                                              +
                                         }                                                                                                                +
                                       ]                                                                                                                  +
                                     },                                                                                                                   +
                                     {                                                                                                                    +
                                       "Node Type": "Sort",                                                                                               +
                                       "Parent Relationship": "Inner",                                                                                    +
                                       "Parallel Aware": false,                                                                                           +
                                       "Startup Cost": 9405.45,                                                                                           +
                                       "Total Cost": 9608.03,                                                                                             +
                                       "Plan Rows": 2609129,                                                                                              +
                                       "Plan Width": 8,                                                                                                   +
                                       "Actual Startup Time": 1466.418,                                                                                   +
                                       "Actual Total Time": 1467.112,                                                                                     +
                                       "Actual Rows": 15071,                                                                                              +
                                       "Actual Loops": 1,                                                                                                 +
                                       "Sort Key": ["mc2.movie_id"],                                                                                      +
                                       "Sort Method": "quicksort",                                                                                        +
                                       "Sort Space Used": 220607,                                                                                         +
                                       "Sort Space Type": "Memory",                                                                                       +
                                       "Shared Hit Blocks": 714,                                                                                          +
                                       "Shared Read Blocks": 18075,                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                        +
                                       "Shared Written Blocks": 0,                                                                                        +
                                       "Local Hit Blocks": 0,                                                                                             +
                                       "Local Read Blocks": 0,                                                                                            +
                                       "Local Dirtied Blocks": 0,                                                                                         +
                                       "Local Written Blocks": 0,                                                                                         +
                                       "Temp Read Blocks": 0,                                                                                             +
                                       "Temp Written Blocks": 0,                                                                                          +
                                       "Plans": [                                                                                                         +
                                         {                                                                                                                +
                                           "Node Type": "Seq Scan",                                                                                       +
                                           "Parent Relationship": "Outer",                                                                                +
                                           "Parallel Aware": false,                                                                                       +
                                           "Relation Name": "movie_companies",                                                                            +
                                           "Alias": "mc2",                                                                                                +
                                           "Startup Cost": 0.00,                                                                                          +
                                           "Total Cost": 769.75,                                                                                          +
                                           "Plan Rows": 2609129,                                                                                          +
                                           "Plan Width": 8,                                                                                               +
                                           "Actual Startup Time": 0.005,                                                                                  +
                                           "Actual Total Time": 543.134,                                                                                  +
                                           "Actual Rows": 2609129,                                                                                        +
                                           "Actual Loops": 1,                                                                                             +
                                           "Shared Hit Blocks": 714,                                                                                      +
                                           "Shared Read Blocks": 18075,                                                                                   +
                                           "Shared Dirtied Blocks": 0,                                                                                    +
                                           "Shared Written Blocks": 0,                                                                                    +
                                           "Local Hit Blocks": 0,                                                                                         +
                                           "Local Read Blocks": 0,                                                                                        +
                                           "Local Dirtied Blocks": 0,                                                                                     +
                                           "Local Written Blocks": 0,                                                                                     +
                                           "Temp Read Blocks": 0,                                                                                         +
                                           "Temp Written Blocks": 0                                                                                       +
                                         }                                                                                                                +
                                       ]                                                                                                                  +
                                     }                                                                                                                    +
                                   ]                                                                                                                      +
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
                       "Startup Cost": 0.03,                                                                                                              +
                       "Total Cost": 0.03,                                                                                                                +
                       "Plan Rows": 1,                                                                                                                    +
                       "Plan Width": 4,                                                                                                                   +
                       "Actual Startup Time": 0.027,                                                                                                      +
                       "Actual Total Time": 0.027,                                                                                                        +
                       "Actual Rows": 1,                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                 +
                       "Sort Key": ["kt2.id"],                                                                                                            +
                       "Sort Method": "quicksort",                                                                                                        +
                       "Sort Space Used": 25,                                                                                                             +
                       "Sort Space Type": "Memory",                                                                                                       +
                       "Shared Hit Blocks": 1,                                                                                                            +
                       "Shared Read Blocks": 0,                                                                                                           +
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
                           "Relation Name": "kind_type",                                                                                                  +
                           "Alias": "kt2",                                                                                                                +
                           "Startup Cost": 0.00,                                                                                                          +
                           "Total Cost": 0.03,                                                                                                            +
                           "Plan Rows": 1,                                                                                                                +
                           "Plan Width": 4,                                                                                                               +
                           "Actual Startup Time": 0.017,                                                                                                  +
                           "Actual Total Time": 0.018,                                                                                                    +
                           "Actual Rows": 1,                                                                                                              +
                           "Actual Loops": 1,                                                                                                             +
                           "Filter": "((kind)::text = 'tv series'::text)",                                                                                +
                           "Rows Removed by Filter": 6,                                                                                                   +
                           "Shared Hit Blocks": 1,                                                                                                        +
                           "Shared Read Blocks": 0,                                                                                                       +
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
                 }                                                                                                                                        +
               ]                                                                                                                                          +
             },                                                                                                                                           +
             {                                                                                                                                            +
               "Node Type": "Sort",                                                                                                                       +
               "Parent Relationship": "Inner",                                                                                                            +
               "Parallel Aware": false,                                                                                                                   +
               "Startup Cost": 0.05,                                                                                                                      +
               "Total Cost": 0.05,                                                                                                                        +
               "Plan Rows": 1,                                                                                                                            +
               "Plan Width": 4,                                                                                                                           +
               "Actual Startup Time": 0.029,                                                                                                              +
               "Actual Total Time": 0.029,                                                                                                                +
               "Actual Rows": 1,                                                                                                                          +
               "Actual Loops": 1,                                                                                                                         +
               "Sort Key": ["it1.id"],                                                                                                                    +
               "Sort Method": "quicksort",                                                                                                                +
               "Sort Space Used": 25,                                                                                                                     +
               "Sort Space Type": "Memory",                                                                                                               +
               "Shared Hit Blocks": 1,                                                                                                                    +
               "Shared Read Blocks": 0,                                                                                                                   +
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
                   "Relation Name": "info_type",                                                                                                          +
                   "Alias": "it1",                                                                                                                        +
                   "Startup Cost": 0.00,                                                                                                                  +
                   "Total Cost": 0.05,                                                                                                                    +
                   "Plan Rows": 1,                                                                                                                        +
                   "Plan Width": 4,                                                                                                                       +
                   "Actual Startup Time": 0.025,                                                                                                          +
                   "Actual Total Time": 0.026,                                                                                                            +
                   "Actual Rows": 1,                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                     +
                   "Filter": "((info)::text = 'rating'::text)",                                                                                           +
                   "Rows Removed by Filter": 112,                                                                                                         +
                   "Shared Hit Blocks": 1,                                                                                                                +
                   "Shared Read Blocks": 0,                                                                                                               +
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
     "Planning Time": 6447.797,                                                                                                                           +
     "Triggers": [                                                                                                                                        +
     ],                                                                                                                                                   +
     "Execution Time": 4931.582                                                                                                                           +
   }                                                                                                                                                      +
 ]
(1 row)

