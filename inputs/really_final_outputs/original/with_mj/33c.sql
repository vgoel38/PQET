                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                               +
   {                                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                                  +
       "Startup Cost": 23877.24,                                                                                                                                                                 +
       "Total Cost": 23877.24,                                                                                                                                                                   +
       "Plan Rows": 1,                                                                                                                                                                           +
       "Plan Width": 192,                                                                                                                                                                        +
       "Actual Startup Time": 5760.749,                                                                                                                                                          +
       "Actual Total Time": 5760.749,                                                                                                                                                            +
       "Actual Rows": 1,                                                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                                                        +
       "Shared Hit Blocks": 214914,                                                                                                                                                              +
       "Shared Read Blocks": 67281,                                                                                                                                                              +
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
           "Startup Cost": 23877.24,                                                                                                                                                             +
           "Total Cost": 23877.24,                                                                                                                                                               +
           "Plan Rows": 1,                                                                                                                                                                       +
           "Plan Width": 84,                                                                                                                                                                     +
           "Actual Startup Time": 5760.611,                                                                                                                                                      +
           "Actual Total Time": 5760.651,                                                                                                                                                        +
           "Actual Rows": 114,                                                                                                                                                                   +
           "Actual Loops": 1,                                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                                 +
           "Merge Cond": "(mi_idx2.info_type_id = it2.id)",                                                                                                                                      +
           "Shared Hit Blocks": 214914,                                                                                                                                                          +
           "Shared Read Blocks": 67281,                                                                                                                                                          +
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
               "Startup Cost": 23877.19,                                                                                                                                                         +
               "Total Cost": 23877.19,                                                                                                                                                           +
               "Plan Rows": 3,                                                                                                                                                                   +
               "Plan Width": 88,                                                                                                                                                                 +
               "Actual Startup Time": 5757.119,                                                                                                                                                  +
               "Actual Total Time": 5758.183,                                                                                                                                                    +
               "Actual Rows": 20134,                                                                                                                                                             +
               "Actual Loops": 1,                                                                                                                                                                +
               "Sort Key": ["mi_idx2.info_type_id"],                                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                                                       +
               "Sort Space Used": 3949,                                                                                                                                                          +
               "Sort Space Type": "Memory",                                                                                                                                                      +
               "Shared Hit Blocks": 214913,                                                                                                                                                      +
               "Shared Read Blocks": 67281,                                                                                                                                                      +
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
                   "Startup Cost": 23840.70,                                                                                                                                                     +
                   "Total Cost": 23877.19,                                                                                                                                                       +
                   "Plan Rows": 3,                                                                                                                                                               +
                   "Plan Width": 88,                                                                                                                                                             +
                   "Actual Startup Time": 5710.959,                                                                                                                                              +
                   "Actual Total Time": 5741.136,                                                                                                                                                +
                   "Actual Rows": 20134,                                                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                                                            +
                   "Inner Unique": true,                                                                                                                                                         +
                   "Merge Cond": "(mc2.company_id = cn2.id)",                                                                                                                                    +
                   "Shared Hit Blocks": 214909,                                                                                                                                                  +
                   "Shared Read Blocks": 67281,                                                                                                                                                  +
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
                       "Startup Cost": 23079.47,                                                                                                                                                 +
                       "Total Cost": 23079.47,                                                                                                                                                   +
                       "Plan Rows": 3,                                                                                                                                                           +
                       "Plan Width": 73,                                                                                                                                                         +
                       "Actual Startup Time": 5581.664,                                                                                                                                          +
                       "Actual Total Time": 5583.863,                                                                                                                                            +
                       "Actual Rows": 20134,                                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                                        +
                       "Sort Key": ["mc2.company_id"],                                                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                                                               +
                       "Sort Space Used": 3708,                                                                                                                                                  +
                       "Sort Space Type": "Memory",                                                                                                                                              +
                       "Shared Hit Blocks": 211915,                                                                                                                                              +
                       "Shared Read Blocks": 67281,                                                                                                                                              +
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
                           "Startup Cost": 23079.47,                                                                                                                                             +
                           "Total Cost": 23079.47,                                                                                                                                               +
                           "Plan Rows": 3,                                                                                                                                                       +
                           "Plan Width": 73,                                                                                                                                                     +
                           "Actual Startup Time": 5567.982,                                                                                                                                      +
                           "Actual Total Time": 5573.838,                                                                                                                                        +
                           "Actual Rows": 20134,                                                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                                                    +
                           "Inner Unique": false,                                                                                                                                                +
                           "Merge Cond": "(kt1.id = t1.kind_id)",                                                                                                                                +
                           "Shared Hit Blocks": 211915,                                                                                                                                          +
                           "Shared Read Blocks": 67281,                                                                                                                                          +
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
                               "Startup Cost": 0.03,                                                                                                                                             +
                               "Total Cost": 0.03,                                                                                                                                               +
                               "Plan Rows": 2,                                                                                                                                                   +
                               "Plan Width": 4,                                                                                                                                                  +
                               "Actual Startup Time": 0.049,                                                                                                                                     +
                               "Actual Total Time": 0.050,                                                                                                                                       +
                               "Actual Rows": 2,                                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                                +
                               "Sort Key": ["kt1.id"],                                                                                                                                           +
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
                                   "Relation Name": "kind_type",                                                                                                                                 +
                                   "Alias": "kt1",                                                                                                                                               +
                                   "Startup Cost": 0.00,                                                                                                                                         +
                                   "Total Cost": 0.03,                                                                                                                                           +
                                   "Plan Rows": 2,                                                                                                                                               +
                                   "Plan Width": 4,                                                                                                                                              +
                                   "Actual Startup Time": 0.020,                                                                                                                                 +
                                   "Actual Total Time": 0.024,                                                                                                                                   +
                                   "Actual Rows": 2,                                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                                            +
                                   "Filter": "((kind)::text = ANY ('{\"tv series\",episode}'::text[]))",                                                                                         +
                                   "Rows Removed by Filter": 5,                                                                                                                                  +
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
                             },                                                                                                                                                                  +
                             {                                                                                                                                                                   +
                               "Node Type": "Sort",                                                                                                                                              +
                               "Parent Relationship": "Inner",                                                                                                                                   +
                               "Parallel Aware": false,                                                                                                                                          +
                               "Startup Cost": 23079.44,                                                                                                                                         +
                               "Total Cost": 23079.44,                                                                                                                                           +
                               "Plan Rows": 11,                                                                                                                                                  +
                               "Plan Width": 77,                                                                                                                                                 +
                               "Actual Startup Time": 5567.927,                                                                                                                                  +
                               "Actual Total Time": 5568.910,                                                                                                                                    +
                               "Actual Rows": 20134,                                                                                                                                             +
                               "Actual Loops": 1,                                                                                                                                                +
                               "Sort Key": ["t1.kind_id"],                                                                                                                                       +
                               "Sort Method": "quicksort",                                                                                                                                       +
                               "Sort Space Used": 3728,                                                                                                                                          +
                               "Sort Space Type": "Memory",                                                                                                                                      +
                               "Shared Hit Blocks": 211914,                                                                                                                                      +
                               "Shared Read Blocks": 67281,                                                                                                                                      +
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
                                   "Startup Cost": 21368.26,                                                                                                                                     +
                                   "Total Cost": 23079.43,                                                                                                                                       +
                                   "Plan Rows": 11,                                                                                                                                              +
                                   "Plan Width": 77,                                                                                                                                             +
                                   "Actual Startup Time": 5395.795,                                                                                                                              +
                                   "Actual Total Time": 5559.039,                                                                                                                                +
                                   "Actual Rows": 20134,                                                                                                                                         +
                                   "Actual Loops": 1,                                                                                                                                            +
                                   "Inner Unique": false,                                                                                                                                        +
                                   "Merge Cond": "(t1.id = ml.movie_id)",                                                                                                                        +
                                   "Shared Hit Blocks": 211914,                                                                                                                                  +
                                   "Shared Read Blocks": 67281,                                                                                                                                  +
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
                                       "Node Type": "Index Scan",                                                                                                                                +
                                       "Parent Relationship": "Outer",                                                                                                                           +
                                       "Parallel Aware": false,                                                                                                                                  +
                                       "Scan Direction": "Forward",                                                                                                                              +
                                       "Index Name": "title_idx_id",                                                                                                                             +
                                       "Relation Name": "title",                                                                                                                                 +
                                       "Alias": "t1",                                                                                                                                            +
                                       "Startup Cost": 0.01,                                                                                                                                     +
                                       "Total Cost": 23042.05,                                                                                                                                   +
                                       "Plan Rows": 2528312,                                                                                                                                     +
                                       "Plan Width": 25,                                                                                                                                         +
                                       "Actual Startup Time": 0.030,                                                                                                                             +
                                       "Actual Total Time": 134.751,                                                                                                                             +
                                       "Actual Rows": 164757,                                                                                                                                    +
                                       "Actual Loops": 1,                                                                                                                                        +
                                       "Shared Hit Blocks": 164699,                                                                                                                              +
                                       "Shared Read Blocks": 450,                                                                                                                                +
                                       "Shared Dirtied Blocks": 0,                                                                                                                               +
                                       "Shared Written Blocks": 0,                                                                                                                               +
                                       "Local Hit Blocks": 0,                                                                                                                                    +
                                       "Local Read Blocks": 0,                                                                                                                                   +
                                       "Local Dirtied Blocks": 0,                                                                                                                                +
                                       "Local Written Blocks": 0,                                                                                                                                +
                                       "Temp Read Blocks": 0,                                                                                                                                    +
                                       "Temp Written Blocks": 0                                                                                                                                  +
                                     },                                                                                                                                                          +
                                     {                                                                                                                                                           +
                                       "Node Type": "Sort",                                                                                                                                      +
                                       "Parent Relationship": "Inner",                                                                                                                           +
                                       "Parallel Aware": false,                                                                                                                                  +
                                       "Startup Cost": 21368.23,                                                                                                                                 +
                                       "Total Cost": 21368.24,                                                                                                                                   +
                                       "Plan Rows": 11,                                                                                                                                          +
                                       "Plan Width": 68,                                                                                                                                         +
                                       "Actual Startup Time": 5394.705,                                                                                                                          +
                                       "Actual Total Time": 5396.102,                                                                                                                            +
                                       "Actual Rows": 20134,                                                                                                                                     +
                                       "Actual Loops": 1,                                                                                                                                        +
                                       "Sort Key": ["ml.movie_id"],                                                                                                                              +
                                       "Sort Method": "quicksort",                                                                                                                               +
                                       "Sort Space Used": 3646,                                                                                                                                  +
                                       "Sort Space Type": "Memory",                                                                                                                              +
                                       "Shared Hit Blocks": 47215,                                                                                                                               +
                                       "Shared Read Blocks": 66831,                                                                                                                              +
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
                                           "Startup Cost": 21368.04,                                                                                                                             +
                                           "Total Cost": 21368.23,                                                                                                                               +
                                           "Plan Rows": 11,                                                                                                                                      +
                                           "Plan Width": 68,                                                                                                                                     +
                                           "Actual Startup Time": 5380.573,                                                                                                                      +
                                           "Actual Total Time": 5386.946,                                                                                                                        +
                                           "Actual Rows": 20134,                                                                                                                                 +
                                           "Actual Loops": 1,                                                                                                                                    +
                                           "Inner Unique": false,                                                                                                                                +
                                           "Merge Cond": "(it1.id = mi_idx1.info_type_id)",                                                                                                      +
                                           "Shared Hit Blocks": 47215,                                                                                                                           +
                                           "Shared Read Blocks": 66831,                                                                                                                          +
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
                                               "Startup Cost": 0.05,                                                                                                                             +
                                               "Total Cost": 0.05,                                                                                                                               +
                                               "Plan Rows": 1,                                                                                                                                   +
                                               "Plan Width": 4,                                                                                                                                  +
                                               "Actual Startup Time": 0.063,                                                                                                                     +
                                               "Actual Total Time": 0.063,                                                                                                                       +
                                               "Actual Rows": 1,                                                                                                                                 +
                                               "Actual Loops": 1,                                                                                                                                +
                                               "Sort Key": ["it1.id"],                                                                                                                           +
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
                                                   "Relation Name": "info_type",                                                                                                                 +
                                                   "Alias": "it1",                                                                                                                               +
                                                   "Startup Cost": 0.00,                                                                                                                         +
                                                   "Total Cost": 0.05,                                                                                                                           +
                                                   "Plan Rows": 1,                                                                                                                               +
                                                   "Plan Width": 4,                                                                                                                              +
                                                   "Actual Startup Time": 0.045,                                                                                                                 +
                                                   "Actual Total Time": 0.050,                                                                                                                   +
                                                   "Actual Rows": 1,                                                                                                                             +
                                                   "Actual Loops": 1,                                                                                                                            +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                                                                  +
                                                   "Rows Removed by Filter": 112,                                                                                                                +
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
                                             },                                                                                                                                                  +
                                             {                                                                                                                                                   +
                                               "Node Type": "Sort",                                                                                                                              +
                                               "Parent Relationship": "Inner",                                                                                                                   +
                                               "Parallel Aware": false,                                                                                                                          +
                                               "Startup Cost": 21367.99,                                                                                                                         +
                                               "Total Cost": 21368.08,                                                                                                                           +
                                               "Plan Rows": 1239,                                                                                                                                +
                                               "Plan Width": 72,                                                                                                                                 +
                                               "Actual Startup Time": 5372.532,                                                                                                                  +
                                               "Actual Total Time": 5375.480,                                                                                                                    +
                                               "Actual Rows": 60402,                                                                                                                             +
                                               "Actual Loops": 1,                                                                                                                                +
                                               "Sort Key": ["mi_idx1.info_type_id"],                                                                                                             +
                                               "Sort Method": "quicksort",                                                                                                                       +
                                               "Sort Space Used": 10277,                                                                                                                         +
                                               "Sort Space Type": "Memory",                                                                                                                      +
                                               "Shared Hit Blocks": 47214,                                                                                                                       +
                                               "Shared Read Blocks": 66831,                                                                                                                      +
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
                                                   "Startup Cost": 20803.76,                                                                                                                     +
                                                   "Total Cost": 21366.01,                                                                                                                       +
                                                   "Plan Rows": 1239,                                                                                                                            +
                                                   "Plan Width": 72,                                                                                                                             +
                                                   "Actual Startup Time": 5274.645,                                                                                                              +
                                                   "Actual Total Time": 5342.981,                                                                                                                +
                                                   "Actual Rows": 60402,                                                                                                                         +
                                                   "Actual Loops": 1,                                                                                                                            +
                                                   "Inner Unique": false,                                                                                                                        +
                                                   "Merge Cond": "(mi_idx1.movie_id = ml.movie_id)",                                                                                             +
                                                   "Shared Hit Blocks": 47214,                                                                                                                   +
                                                   "Shared Read Blocks": 66831,                                                                                                                  +
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
                                                       "Node Type": "Index Scan",                                                                                                                +
                                                       "Parent Relationship": "Outer",                                                                                                           +
                                                       "Parallel Aware": false,                                                                                                                  +
                                                       "Scan Direction": "Forward",                                                                                                              +
                                                       "Index Name": "movie_id_movie_info_idx",                                                                                                  +
                                                       "Relation Name": "movie_info_idx",                                                                                                        +
                                                       "Alias": "mi_idx1",                                                                                                                       +
                                                       "Startup Cost": 0.01,                                                                                                                     +
                                                       "Total Cost": 12031.00,                                                                                                                   +
                                                       "Plan Rows": 1380035,                                                                                                                     +
                                                       "Plan Width": 14,                                                                                                                         +
                                                       "Actual Startup Time": 0.028,                                                                                                             +
                                                       "Actual Total Time": 34.060,                                                                                                              +
                                                       "Actual Rows": 63901,                                                                                                                     +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Shared Hit Blocks": 652,                                                                                                                 +
                                                       "Shared Read Blocks": 174,                                                                                                                +
                                                       "Shared Dirtied Blocks": 0,                                                                                                               +
                                                       "Shared Written Blocks": 0,                                                                                                               +
                                                       "Local Hit Blocks": 0,                                                                                                                    +
                                                       "Local Read Blocks": 0,                                                                                                                   +
                                                       "Local Dirtied Blocks": 0,                                                                                                                +
                                                       "Local Written Blocks": 0,                                                                                                                +
                                                       "Temp Read Blocks": 0,                                                                                                                    +
                                                       "Temp Written Blocks": 0                                                                                                                  +
                                                     },                                                                                                                                          +
                                                     {                                                                                                                                           +
                                                       "Node Type": "Sort",                                                                                                                      +
                                                       "Parent Relationship": "Inner",                                                                                                           +
                                                       "Parallel Aware": false,                                                                                                                  +
                                                       "Startup Cost": 20803.75,                                                                                                                 +
                                                       "Total Cost": 20803.78,                                                                                                                   +
                                                       "Plan Rows": 413,                                                                                                                         +
                                                       "Plan Width": 58,                                                                                                                         +
                                                       "Actual Startup Time": 5274.338,                                                                                                          +
                                                       "Actual Total Time": 5278.525,                                                                                                            +
                                                       "Actual Rows": 60603,                                                                                                                     +
                                                       "Actual Loops": 1,                                                                                                                        +
                                                       "Sort Key": ["ml.movie_id"],                                                                                                              +
                                                       "Sort Method": "quicksort",                                                                                                               +
                                                       "Sort Space Used": 3571,                                                                                                                  +
                                                       "Sort Space Type": "Memory",                                                                                                              +
                                                       "Shared Hit Blocks": 46562,                                                                                                               +
                                                       "Shared Read Blocks": 66657,                                                                                                              +
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
                                                           "Startup Cost": 20397.95,                                                                                                             +
                                                           "Total Cost": 20803.19,                                                                                                               +
                                                           "Plan Rows": 413,                                                                                                                     +
                                                           "Plan Width": 58,                                                                                                                     +
                                                           "Actual Startup Time": 5131.269,                                                                                                      +
                                                           "Actual Total Time": 5267.276,                                                                                                        +
                                                           "Actual Rows": 20335,                                                                                                                 +
                                                           "Actual Loops": 1,                                                                                                                    +
                                                           "Inner Unique": false,                                                                                                                +
                                                           "Merge Cond": "(t2.id = mc2.movie_id)",                                                                                               +
                                                           "Shared Hit Blocks": 46562,                                                                                                           +
                                                           "Shared Read Blocks": 66657,                                                                                                          +
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
                                                               "Startup Cost": 10992.50,                                                                                                         +
                                                               "Total Cost": 10992.53,                                                                                                           +
                                                               "Plan Rows": 400,                                                                                                                 +
                                                               "Plan Width": 66,                                                                                                                 +
                                                               "Actual Startup Time": 3660.297,                                                                                                  +
                                                               "Actual Total Time": 3660.734,                                                                                                    +
                                                               "Actual Rows": 4173,                                                                                                              +
                                                               "Actual Loops": 1,                                                                                                                +
                                                               "Sort Key": ["ml.linked_movie_id"],                                                                                               +
                                                               "Sort Method": "quicksort",                                                                                                       +
                                                               "Sort Space Used": 789,                                                                                                           +
                                                               "Sort Space Type": "Memory",                                                                                                      +
                                                               "Shared Hit Blocks": 45848,                                                                                                       +
                                                               "Shared Read Blocks": 48582,                                                                                                      +
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
                                                                   "Startup Cost": 10972.22,                                                                                                     +
                                                                   "Total Cost": 10991.96,                                                                                                       +
                                                                   "Plan Rows": 400,                                                                                                             +
                                                                   "Plan Width": 66,                                                                                                             +
                                                                   "Actual Startup Time": 3639.071,                                                                                              +
                                                                   "Actual Total Time": 3657.337,                                                                                                +
                                                                   "Actual Rows": 4173,                                                                                                          +
                                                                   "Actual Loops": 1,                                                                                                            +
                                                                   "Inner Unique": false,                                                                                                        +
                                                                   "Merge Cond": "(cn1.id = mc1.company_id)",                                                                                    +
                                                                   "Shared Hit Blocks": 45848,                                                                                                   +
                                                                   "Shared Read Blocks": 48582,                                                                                                  +
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
                                                                       "Startup Cost": 460.56,                                                                                                   +
                                                                       "Total Cost": 470.36,                                                                                                     +
                                                                       "Plan Rows": 126230,                                                                                                      +
                                                                       "Plan Width": 23,                                                                                                         +
                                                                       "Actual Startup Time": 188.694,                                                                                           +
                                                                       "Actual Total Time": 195.840,                                                                                             +
                                                                       "Actual Rows": 40708,                                                                                                     +
                                                                       "Actual Loops": 1,                                                                                                        +
                                                                       "Sort Key": ["cn1.id"],                                                                                                   +
                                                                       "Sort Method": "quicksort",                                                                                               +
                                                                       "Sort Space Used": 12077,                                                                                                 +
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
                                                                           "Alias": "cn1",                                                                                                       +
                                                                           "Startup Cost": 0.00,                                                                                                 +
                                                                           "Total Cost": 128.41,                                                                                                 +
                                                                           "Plan Rows": 126230,                                                                                                  +
                                                                           "Plan Width": 23,                                                                                                     +
                                                                           "Actual Startup Time": 28.633,                                                                                        +
                                                                           "Actual Total Time": 124.571,                                                                                         +
                                                                           "Actual Rows": 126230,                                                                                                +
                                                                           "Actual Loops": 1,                                                                                                    +
                                                                           "Filter": "((country_code)::text <> '[us]'::text)",                                                                   +
                                                                           "Rows Removed by Filter": 108767,                                                                                     +
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
                                                                     },                                                                                                                          +
                                                                     {                                                                                                                           +
                                                                       "Node Type": "Sort",                                                                                                      +
                                                                       "Parent Relationship": "Inner",                                                                                           +
                                                                       "Parallel Aware": false,                                                                                                  +
                                                                       "Startup Cost": 10511.66,                                                                                                 +
                                                                       "Total Cost": 10511.72,                                                                                                   +
                                                                       "Plan Rows": 745,                                                                                                         +
                                                                       "Plan Width": 51,                                                                                                         +
                                                                       "Actual Startup Time": 3450.365,                                                                                          +
                                                                       "Actual Total Time": 3450.985,                                                                                            +
                                                                       "Actual Rows": 4644,                                                                                                      +
                                                                       "Actual Loops": 1,                                                                                                        +
                                                                       "Sort Key": ["mc1.company_id"],                                                                                           +
                                                                       "Sort Method": "quicksort",                                                                                               +
                                                                       "Sort Space Used": 817,                                                                                                   +
                                                                       "Sort Space Type": "Memory",                                                                                              +
                                                                       "Shared Hit Blocks": 45846,                                                                                               +
                                                                       "Shared Read Blocks": 45590,                                                                                              +
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
                                                                           "Startup Cost": 7901.77,                                                                                              +
                                                                           "Total Cost": 10510.56,                                                                                               +
                                                                           "Plan Rows": 745,                                                                                                     +
                                                                           "Plan Width": 51,                                                                                                     +
                                                                           "Actual Startup Time": 3129.123,                                                                                      +
                                                                           "Actual Total Time": 3444.744,                                                                                        +
                                                                           "Actual Rows": 4644,                                                                                                  +
                                                                           "Actual Loops": 1,                                                                                                    +
                                                                           "Inner Unique": false,                                                                                                +
                                                                           "Merge Cond": "(mc1.movie_id = ml.movie_id)",                                                                         +
                                                                           "Shared Hit Blocks": 45846,                                                                                           +
                                                                           "Shared Read Blocks": 45590,                                                                                          +
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
                                                                               "Node Type": "Index Scan",                                                                                        +
                                                                               "Parent Relationship": "Outer",                                                                                   +
                                                                               "Parallel Aware": false,                                                                                          +
                                                                               "Scan Direction": "Forward",                                                                                      +
                                                                               "Index Name": "movie_id_movie_companies",                                                                         +
                                                                               "Relation Name": "movie_companies",                                                                               +
                                                                               "Alias": "mc1",                                                                                                   +
                                                                               "Startup Cost": 0.01,                                                                                             +
                                                                               "Total Cost": 67925.24,                                                                                           +
                                                                               "Plan Rows": 2609129,                                                                                             +
                                                                               "Plan Width": 8,                                                                                                  +
                                                                               "Actual Startup Time": 0.017,                                                                                     +
                                                                               "Actual Total Time": 305.888,                                                                                     +
                                                                               "Actual Rows": 99877,                                                                                             +
                                                                               "Actual Loops": 1,                                                                                                +
                                                                               "Shared Hit Blocks": 45837,                                                                                       +
                                                                               "Shared Read Blocks": 983,                                                                                        +
                                                                               "Shared Dirtied Blocks": 0,                                                                                       +
                                                                               "Shared Written Blocks": 0,                                                                                       +
                                                                               "Local Hit Blocks": 0,                                                                                            +
                                                                               "Local Read Blocks": 0,                                                                                           +
                                                                               "Local Dirtied Blocks": 0,                                                                                        +
                                                                               "Local Written Blocks": 0,                                                                                        +
                                                                               "Temp Read Blocks": 0,                                                                                            +
                                                                               "Temp Written Blocks": 0                                                                                          +
                                                                             },                                                                                                                  +
                                                                             {                                                                                                                   +
                                                                               "Node Type": "Sort",                                                                                              +
                                                                               "Parent Relationship": "Inner",                                                                                   +
                                                                               "Parallel Aware": false,                                                                                          +
                                                                               "Startup Cost": 7901.75,                                                                                          +
                                                                               "Total Cost": 7901.77,                                                                                            +
                                                                               "Plan Rows": 165,                                                                                                 +
                                                                               "Plan Width": 43,                                                                                                 +
                                                                               "Actual Startup Time": 3100.764,                                                                                  +
                                                                               "Actual Total Time": 3101.519,                                                                                    +
                                                                               "Actual Rows": 4660,                                                                                              +
                                                                               "Actual Loops": 1,                                                                                                +
                                                                               "Sort Key": ["ml.movie_id"],                                                                                      +
                                                                               "Sort Method": "quicksort",                                                                                       +
                                                                               "Sort Space Used": 172,                                                                                           +
                                                                               "Sort Space Type": "Memory",                                                                                      +
                                                                               "Shared Hit Blocks": 9,                                                                                           +
                                                                               "Shared Read Blocks": 44607,                                                                                      +
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
                                                                                   "Node Type": "Merge Join",                                                                                    +
                                                                                   "Parent Relationship": "Outer",                                                                               +
                                                                                   "Parallel Aware": false,                                                                                      +
                                                                                   "Join Type": "Inner",                                                                                         +
                                                                                   "Startup Cost": 7791.75,                                                                                      +
                                                                                   "Total Cost": 7901.56,                                                                                        +
                                                                                   "Plan Rows": 165,                                                                                             +
                                                                                   "Plan Width": 43,                                                                                             +
                                                                                   "Actual Startup Time": 3059.974,                                                                              +
                                                                                   "Actual Total Time": 3100.370,                                                                                +
                                                                                   "Actual Rows": 1130,                                                                                          +
                                                                                   "Actual Loops": 1,                                                                                            +
                                                                                   "Inner Unique": false,                                                                                        +
                                                                                   "Merge Cond": "(t2.id = mi_idx2.movie_id)",                                                                   +
                                                                                   "Shared Hit Blocks": 9,                                                                                       +
                                                                                   "Shared Read Blocks": 44607,                                                                                  +
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
                                                                                       "Node Type": "Sort",                                                                                      +
                                                                                       "Parent Relationship": "Outer",                                                                           +
                                                                                       "Parallel Aware": false,                                                                                  +
                                                                                       "Startup Cost": 5192.21,                                                                                  +
                                                                                       "Total Cost": 5192.25,                                                                                    +
                                                                                       "Plan Rows": 589,                                                                                         +
                                                                                       "Plan Width": 29,                                                                                         +
                                                                                       "Actual Startup Time": 2324.959,                                                                          +
                                                                                       "Actual Total Time": 2325.020,                                                                            +
                                                                                       "Actual Rows": 815,                                                                                       +
                                                                                       "Actual Loops": 1,                                                                                        +
                                                                                       "Sort Key": ["ml.linked_movie_id"],                                                                       +
                                                                                       "Sort Method": "quicksort",                                                                               +
                                                                                       "Sort Space Used": 92,                                                                                    +
                                                                                       "Sort Space Type": "Memory",                                                                              +
                                                                                       "Shared Hit Blocks": 7,                                                                                   +
                                                                                       "Shared Read Blocks": 36156,                                                                              +
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
                                                                                           "Node Type": "Merge Join",                                                                            +
                                                                                           "Parent Relationship": "Outer",                                                                       +
                                                                                           "Parallel Aware": false,                                                                              +
                                                                                           "Join Type": "Inner",                                                                                 +
                                                                                           "Startup Cost": 5191.00,                                                                              +
                                                                                           "Total Cost": 5191.37,                                                                                +
                                                                                           "Plan Rows": 589,                                                                                     +
                                                                                           "Plan Width": 29,                                                                                     +
                                                                                           "Actual Startup Time": 2324.495,                                                                      +
                                                                                           "Actual Total Time": 2324.745,                                                                        +
                                                                                           "Actual Rows": 815,                                                                                   +
                                                                                           "Actual Loops": 1,                                                                                    +
                                                                                           "Inner Unique": true,                                                                                 +
                                                                                           "Merge Cond": "(t2.kind_id = kt2.id)",                                                                +
                                                                                           "Shared Hit Blocks": 7,                                                                               +
                                                                                           "Shared Read Blocks": 36156,                                                                          +
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
                                                                                               "Node Type": "Sort",                                                                              +
                                                                                               "Parent Relationship": "Outer",                                                                   +
                                                                                               "Parallel Aware": false,                                                                          +
                                                                                               "Startup Cost": 5190.97,                                                                          +
                                                                                               "Total Cost": 5191.13,                                                                            +
                                                                                               "Plan Rows": 2062,                                                                                +
                                                                                               "Plan Width": 33,                                                                                 +
                                                                                               "Actual Startup Time": 2324.455,                                                                  +
                                                                                               "Actual Total Time": 2324.510,                                                                    +
                                                                                               "Actual Rows": 946,                                                                               +
                                                                                               "Actual Loops": 1,                                                                                +
                                                                                               "Sort Key": ["t2.kind_id"],                                                                       +
                                                                                               "Sort Method": "quicksort",                                                                       +
                                                                                               "Sort Space Used": 105,                                                                           +
                                                                                               "Sort Space Type": "Memory",                                                                      +
                                                                                               "Shared Hit Blocks": 6,                                                                           +
                                                                                               "Shared Read Blocks": 36156,                                                                      +
                                                                                               "Shared Dirtied Blocks": 0,                                                                       +
                                                                                               "Shared Written Blocks": 0,                                                                       +
                                                                                               "Local Hit Blocks": 0,                                                                            +
                                                                                               "Local Read Blocks": 0,                                                                           +
                                                                                               "Local Dirtied Blocks": 0,                                                                        +
                                                                                               "Local Written Blocks": 0,                                                                        +
                                                                                               "Temp Read Blocks": 0,                                                                            +
                                                                                               "Temp Written Blocks": 0,                                                                         +
                                                                                               "Plans": [                                                                                        +
                                                                                                 {                                                                                               +
                                                                                                   "Node Type": "Merge Join",                                                                    +
                                                                                                   "Parent Relationship": "Outer",                                                               +
                                                                                                   "Parallel Aware": false,                                                                      +
                                                                                                   "Join Type": "Inner",                                                                         +
                                                                                                   "Startup Cost": 5024.83,                                                                      +
                                                                                                   "Total Cost": 5187.45,                                                                        +
                                                                                                   "Plan Rows": 2062,                                                                            +
                                                                                                   "Plan Width": 33,                                                                             +
                                                                                                   "Actual Startup Time": 2052.861,                                                              +
                                                                                                   "Actual Total Time": 2324.160,                                                                +
                                                                                                   "Actual Rows": 946,                                                                           +
                                                                                                   "Actual Loops": 1,                                                                            +
                                                                                                   "Inner Unique": true,                                                                         +
                                                                                                   "Merge Cond": "(ml.linked_movie_id = t2.id)",                                                 +
                                                                                                   "Shared Hit Blocks": 6,                                                                       +
                                                                                                   "Shared Read Blocks": 36156,                                                                  +
                                                                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                                                                   "Shared Written Blocks": 0,                                                                   +
                                                                                                   "Local Hit Blocks": 0,                                                                        +
                                                                                                   "Local Read Blocks": 0,                                                                       +
                                                                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                                                                   "Local Written Blocks": 0,                                                                    +
                                                                                                   "Temp Read Blocks": 0,                                                                        +
                                                                                                   "Temp Written Blocks": 0,                                                                     +
                                                                                                   "Plans": [                                                                                    +
                                                                                                     {                                                                                           +
                                                                                                       "Node Type": "Sort",                                                                      +
                                                                                                       "Parent Relationship": "Outer",                                                           +
                                                                                                       "Parallel Aware": false,                                                                  +
                                                                                                       "Startup Cost": 91.04,                                                                    +
                                                                                                       "Total Cost": 91.43,                                                                      +
                                                                                                       "Plan Rows": 5000,                                                                        +
                                                                                                       "Plan Width": 8,                                                                          +
                                                                                                       "Actual Startup Time": 72.595,                                                            +
                                                                                                       "Actual Total Time": 72.902,                                                              +
                                                                                                       "Actual Rows": 2315,                                                                      +
                                                                                                       "Actual Loops": 1,                                                                        +
                                                                                                       "Sort Key": ["ml.linked_movie_id"],                                                       +
                                                                                                       "Sort Method": "quicksort",                                                               +
                                                                                                       "Sort Space Used": 205,                                                                   +
                                                                                                       "Sort Space Type": "Memory",                                                              +
                                                                                                       "Shared Hit Blocks": 5,                                                                   +
                                                                                                       "Shared Read Blocks": 159,                                                                +
                                                                                                       "Shared Dirtied Blocks": 0,                                                               +
                                                                                                       "Shared Written Blocks": 0,                                                               +
                                                                                                       "Local Hit Blocks": 0,                                                                    +
                                                                                                       "Local Read Blocks": 0,                                                                   +
                                                                                                       "Local Dirtied Blocks": 0,                                                                +
                                                                                                       "Local Written Blocks": 0,                                                                +
                                                                                                       "Temp Read Blocks": 0,                                                                    +
                                                                                                       "Temp Written Blocks": 0,                                                                 +
                                                                                                       "Plans": [                                                                                +
                                                                                                         {                                                                                       +
                                                                                                           "Node Type": "Merge Join",                                                            +
                                                                                                           "Parent Relationship": "Outer",                                                       +
                                                                                                           "Parallel Aware": false,                                                              +
                                                                                                           "Join Type": "Inner",                                                                 +
                                                                                                           "Startup Cost": 76.50,                                                                +
                                                                                                           "Total Cost": 81.50,                                                                  +
                                                                                                           "Plan Rows": 5000,                                                                    +
                                                                                                           "Plan Width": 8,                                                                      +
                                                                                                           "Actual Startup Time": 68.086,                                                        +
                                                                                                           "Actual Total Time": 70.333,                                                          +
                                                                                                           "Actual Rows": 2315,                                                                  +
                                                                                                           "Actual Loops": 1,                                                                    +
                                                                                                           "Inner Unique": true,                                                                 +
                                                                                                           "Merge Cond": "(ml.link_type_id = lt.id)",                                            +
                                                                                                           "Shared Hit Blocks": 5,                                                               +
                                                                                                           "Shared Read Blocks": 159,                                                            +
                                                                                                           "Shared Dirtied Blocks": 0,                                                           +
                                                                                                           "Shared Written Blocks": 0,                                                           +
                                                                                                           "Local Hit Blocks": 0,                                                                +
                                                                                                           "Local Read Blocks": 0,                                                               +
                                                                                                           "Local Dirtied Blocks": 0,                                                            +
                                                                                                           "Local Written Blocks": 0,                                                            +
                                                                                                           "Temp Read Blocks": 0,                                                                +
                                                                                                           "Temp Written Blocks": 0,                                                             +
                                                                                                           "Plans": [                                                                            +
                                                                                                             {                                                                                   +
                                                                                                               "Node Type": "Sort",                                                              +
                                                                                                               "Parent Relationship": "Outer",                                                   +
                                                                                                               "Parallel Aware": false,                                                          +
                                                                                                               "Startup Cost": 76.46,                                                            +
                                                                                                               "Total Cost": 78.79,                                                              +
                                                                                                               "Plan Rows": 29997,                                                               +
                                                                                                               "Plan Width": 12,                                                                 +
                                                                                                               "Actual Startup Time": 68.024,                                                    +
                                                                                                               "Actual Total Time": 68.455,                                                      +
                                                                                                               "Actual Rows": 2316,                                                              +
                                                                                                               "Actual Loops": 1,                                                                +
                                                                                                               "Sort Key": ["ml.link_type_id"],                                                  +
                                                                                                               "Sort Method": "quicksort",                                                       +
                                                                                                               "Sort Space Used": 2175,                                                          +
                                                                                                               "Sort Space Type": "Memory",                                                      +
                                                                                                               "Shared Hit Blocks": 4,                                                           +
                                                                                                               "Shared Read Blocks": 159,                                                        +
                                                                                                               "Shared Dirtied Blocks": 0,                                                       +
                                                                                                               "Shared Written Blocks": 0,                                                       +
                                                                                                               "Local Hit Blocks": 0,                                                            +
                                                                                                               "Local Read Blocks": 0,                                                           +
                                                                                                               "Local Dirtied Blocks": 0,                                                        +
                                                                                                               "Local Written Blocks": 0,                                                        +
                                                                                                               "Temp Read Blocks": 0,                                                            +
                                                                                                               "Temp Written Blocks": 0,                                                         +
                                                                                                               "Plans": [                                                                        +
                                                                                                                 {                                                                               +
                                                                                                                   "Node Type": "Seq Scan",                                                      +
                                                                                                                   "Parent Relationship": "Outer",                                               +
                                                                                                                   "Parallel Aware": false,                                                      +
                                                                                                                   "Relation Name": "movie_link",                                                +
                                                                                                                   "Alias": "ml",                                                                +
                                                                                                                   "Startup Cost": 0.00,                                                         +
                                                                                                                   "Total Cost": 7.19,                                                           +
                                                                                                                   "Plan Rows": 29997,                                                           +
                                                                                                                   "Plan Width": 12,                                                             +
                                                                                                                   "Actual Startup Time": 0.014,                                                 +
                                                                                                                   "Actual Total Time": 54.528,                                                  +
                                                                                                                   "Actual Rows": 29997,                                                         +
                                                                                                                   "Actual Loops": 1,                                                            +
                                                                                                                   "Shared Hit Blocks": 4,                                                       +
                                                                                                                   "Shared Read Blocks": 159,                                                    +
                                                                                                                   "Shared Dirtied Blocks": 0,                                                   +
                                                                                                                   "Shared Written Blocks": 0,                                                   +
                                                                                                                   "Local Hit Blocks": 0,                                                        +
                                                                                                                   "Local Read Blocks": 0,                                                       +
                                                                                                                   "Local Dirtied Blocks": 0,                                                    +
                                                                                                                   "Local Written Blocks": 0,                                                    +
                                                                                                                   "Temp Read Blocks": 0,                                                        +
                                                                                                                   "Temp Written Blocks": 0                                                      +
                                                                                                                 }                                                                               +
                                                                                                               ]                                                                                 +
                                                                                                             },                                                                                  +
                                                                                                             {                                                                                   +
                                                                                                               "Node Type": "Sort",                                                              +
                                                                                                               "Parent Relationship": "Inner",                                                   +
                                                                                                               "Parallel Aware": false,                                                          +
                                                                                                               "Startup Cost": 0.04,                                                             +
                                                                                                               "Total Cost": 0.04,                                                               +
                                                                                                               "Plan Rows": 3,                                                                   +
                                                                                                               "Plan Width": 4,                                                                  +
                                                                                                               "Actual Startup Time": 0.053,                                                     +
                                                                                                               "Actual Total Time": 0.053,                                                       +
                                                                                                               "Actual Rows": 2,                                                                 +
                                                                                                               "Actual Loops": 1,                                                                +
                                                                                                               "Sort Key": ["lt.id"],                                                            +
                                                                                                               "Sort Method": "quicksort",                                                       +
                                                                                                               "Sort Space Used": 25,                                                            +
                                                                                                               "Sort Space Type": "Memory",                                                      +
                                                                                                               "Shared Hit Blocks": 1,                                                           +
                                                                                                               "Shared Read Blocks": 0,                                                          +
                                                                                                               "Shared Dirtied Blocks": 0,                                                       +
                                                                                                               "Shared Written Blocks": 0,                                                       +
                                                                                                               "Local Hit Blocks": 0,                                                            +
                                                                                                               "Local Read Blocks": 0,                                                           +
                                                                                                               "Local Dirtied Blocks": 0,                                                        +
                                                                                                               "Local Written Blocks": 0,                                                        +
                                                                                                               "Temp Read Blocks": 0,                                                            +
                                                                                                               "Temp Written Blocks": 0,                                                         +
                                                                                                               "Plans": [                                                                        +
                                                                                                                 {                                                                               +
                                                                                                                   "Node Type": "Seq Scan",                                                      +
                                                                                                                   "Parent Relationship": "Outer",                                               +
                                                                                                                   "Parallel Aware": false,                                                      +
                                                                                                                   "Relation Name": "link_type",                                                 +
                                                                                                                   "Alias": "lt",                                                                +
                                                                                                                   "Startup Cost": 0.00,                                                         +
                                                                                                                   "Total Cost": 0.03,                                                           +
                                                                                                                   "Plan Rows": 3,                                                               +
                                                                                                                   "Plan Width": 4,                                                              +
                                                                                                                   "Actual Startup Time": 0.023,                                                 +
                                                                                                                   "Actual Total Time": 0.038,                                                   +
                                                                                                                   "Actual Rows": 2,                                                             +
                                                                                                                   "Actual Loops": 1,                                                            +
                                                                                                                   "Filter": "((link)::text = ANY ('{sequel,follows,\"followed by\"}'::text[]))",+
                                                                                                                   "Rows Removed by Filter": 16,                                                 +
                                                                                                                   "Shared Hit Blocks": 1,                                                       +
                                                                                                                   "Shared Read Blocks": 0,                                                      +
                                                                                                                   "Shared Dirtied Blocks": 0,                                                   +
                                                                                                                   "Shared Written Blocks": 0,                                                   +
                                                                                                                   "Local Hit Blocks": 0,                                                        +
                                                                                                                   "Local Read Blocks": 0,                                                       +
                                                                                                                   "Local Dirtied Blocks": 0,                                                    +
                                                                                                                   "Local Written Blocks": 0,                                                    +
                                                                                                                   "Temp Read Blocks": 0,                                                        +
                                                                                                                   "Temp Written Blocks": 0                                                      +
                                                                                                                 }                                                                               +
                                                                                                               ]                                                                                 +
                                                                                                             }                                                                                   +
                                                                                                           ]                                                                                     +
                                                                                                         }                                                                                       +
                                                                                                       ]                                                                                         +
                                                                                                     },                                                                                          +
                                                                                                     {                                                                                           +
                                                                                                       "Node Type": "Sort",                                                                      +
                                                                                                       "Parent Relationship": "Inner",                                                           +
                                                                                                       "Parallel Aware": false,                                                                  +
                                                                                                       "Startup Cost": 4933.77,                                                                  +
                                                                                                       "Total Cost": 5014.74,                                                                    +
                                                                                                       "Plan Rows": 1042800,                                                                     +
                                                                                                       "Plan Width": 25,                                                                         +
                                                                                                       "Actual Startup Time": 1980.088,                                                          +
                                                                                                       "Actual Total Time": 2106.363,                                                            +
                                                                                                       "Actual Rows": 1036588,                                                                   +
                                                                                                       "Actual Loops": 1,                                                                        +
                                                                                                       "Sort Key": ["t2.id"],                                                                    +
                                                                                                       "Sort Method": "quicksort",                                                               +
                                                                                                       "Sort Space Used": 103253,                                                                +
                                                                                                       "Sort Space Type": "Memory",                                                              +
                                                                                                       "Shared Hit Blocks": 1,                                                                   +
                                                                                                       "Shared Read Blocks": 35997,                                                              +
                                                                                                       "Shared Dirtied Blocks": 0,                                                               +
                                                                                                       "Shared Written Blocks": 0,                                                               +
                                                                                                       "Local Hit Blocks": 0,                                                                    +
                                                                                                       "Local Read Blocks": 0,                                                                   +
                                                                                                       "Local Dirtied Blocks": 0,                                                                +
                                                                                                       "Local Written Blocks": 0,                                                                +
                                                                                                       "Temp Read Blocks": 0,                                                                    +
                                                                                                       "Temp Written Blocks": 0,                                                                 +
                                                                                                       "Plans": [                                                                                +
                                                                                                         {                                                                                       +
                                                                                                           "Node Type": "Seq Scan",                                                              +
                                                                                                           "Parent Relationship": "Outer",                                                       +
                                                                                                           "Parallel Aware": false,                                                              +
                                                                                                           "Relation Name": "title",                                                             +
                                                                                                           "Alias": "t2",                                                                        +
                                                                                                           "Startup Cost": 0.00,                                                                 +
                                                                                                           "Total Cost": 1696.56,                                                                +
                                                                                                           "Plan Rows": 1042800,                                                                 +
                                                                                                           "Plan Width": 25,                                                                     +
                                                                                                           "Actual Startup Time": 9.299,                                                         +
                                                                                                           "Actual Total Time": 1331.691,                                                        +
                                                                                                           "Actual Rows": 1042800,                                                               +
                                                                                                           "Actual Loops": 1,                                                                    +
                                                                                                           "Filter": "((production_year >= 2000) AND (production_year <= 2010))",                +
                                                                                                           "Rows Removed by Filter": 1485512,                                                    +
                                                                                                           "Shared Hit Blocks": 1,                                                               +
                                                                                                           "Shared Read Blocks": 35997,                                                          +
                                                                                                           "Shared Dirtied Blocks": 0,                                                           +
                                                                                                           "Shared Written Blocks": 0,                                                           +
                                                                                                           "Local Hit Blocks": 0,                                                                +
                                                                                                           "Local Read Blocks": 0,                                                               +
                                                                                                           "Local Dirtied Blocks": 0,                                                            +
                                                                                                           "Local Written Blocks": 0,                                                            +
                                                                                                           "Temp Read Blocks": 0,                                                                +
                                                                                                           "Temp Written Blocks": 0                                                              +
                                                                                                         }                                                                                       +
                                                                                                       ]                                                                                         +
                                                                                                     }                                                                                           +
                                                                                                   ]                                                                                             +
                                                                                                 }                                                                                               +
                                                                                               ]                                                                                                 +
                                                                                             },                                                                                                  +
                                                                                             {                                                                                                   +
                                                                                               "Node Type": "Sort",                                                                              +
                                                                                               "Parent Relationship": "Inner",                                                                   +
                                                                                               "Parallel Aware": false,                                                                          +
                                                                                               "Startup Cost": 0.03,                                                                             +
                                                                                               "Total Cost": 0.03,                                                                               +
                                                                                               "Plan Rows": 2,                                                                                   +
                                                                                               "Plan Width": 4,                                                                                  +
                                                                                               "Actual Startup Time": 0.029,                                                                     +
                                                                                               "Actual Total Time": 0.029,                                                                       +
                                                                                               "Actual Rows": 2,                                                                                 +
                                                                                               "Actual Loops": 1,                                                                                +
                                                                                               "Sort Key": ["kt2.id"],                                                                           +
                                                                                               "Sort Method": "quicksort",                                                                       +
                                                                                               "Sort Space Used": 25,                                                                            +
                                                                                               "Sort Space Type": "Memory",                                                                      +
                                                                                               "Shared Hit Blocks": 1,                                                                           +
                                                                                               "Shared Read Blocks": 0,                                                                          +
                                                                                               "Shared Dirtied Blocks": 0,                                                                       +
                                                                                               "Shared Written Blocks": 0,                                                                       +
                                                                                               "Local Hit Blocks": 0,                                                                            +
                                                                                               "Local Read Blocks": 0,                                                                           +
                                                                                               "Local Dirtied Blocks": 0,                                                                        +
                                                                                               "Local Written Blocks": 0,                                                                        +
                                                                                               "Temp Read Blocks": 0,                                                                            +
                                                                                               "Temp Written Blocks": 0,                                                                         +
                                                                                               "Plans": [                                                                                        +
                                                                                                 {                                                                                               +
                                                                                                   "Node Type": "Seq Scan",                                                                      +
                                                                                                   "Parent Relationship": "Outer",                                                               +
                                                                                                   "Parallel Aware": false,                                                                      +
                                                                                                   "Relation Name": "kind_type",                                                                 +
                                                                                                   "Alias": "kt2",                                                                               +
                                                                                                   "Startup Cost": 0.00,                                                                         +
                                                                                                   "Total Cost": 0.03,                                                                           +
                                                                                                   "Plan Rows": 2,                                                                               +
                                                                                                   "Plan Width": 4,                                                                              +
                                                                                                   "Actual Startup Time": 0.019,                                                                 +
                                                                                                   "Actual Total Time": 0.021,                                                                   +
                                                                                                   "Actual Rows": 2,                                                                             +
                                                                                                   "Actual Loops": 1,                                                                            +
                                                                                                   "Filter": "((kind)::text = ANY ('{\"tv series\",episode}'::text[]))",                         +
                                                                                                   "Rows Removed by Filter": 5,                                                                  +
                                                                                                   "Shared Hit Blocks": 1,                                                                       +
                                                                                                   "Shared Read Blocks": 0,                                                                      +
                                                                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                                                                   "Shared Written Blocks": 0,                                                                   +
                                                                                                   "Local Hit Blocks": 0,                                                                        +
                                                                                                   "Local Read Blocks": 0,                                                                       +
                                                                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                                                                   "Local Written Blocks": 0,                                                                    +
                                                                                                   "Temp Read Blocks": 0,                                                                        +
                                                                                                   "Temp Written Blocks": 0                                                                      +
                                                                                                 }                                                                                               +
                                                                                               ]                                                                                                 +
                                                                                             }                                                                                                   +
                                                                                           ]                                                                                                     +
                                                                                         }                                                                                                       +
                                                                                       ]                                                                                                         +
                                                                                     },                                                                                                          +
                                                                                     {                                                                                                           +
                                                                                       "Node Type": "Sort",                                                                                      +
                                                                                       "Parent Relationship": "Inner",                                                                           +
                                                                                       "Parallel Aware": false,                                                                                  +
                                                                                       "Startup Cost": 2599.54,                                                                                  +
                                                                                       "Total Cost": 2654.40,                                                                                    +
                                                                                       "Plan Rows": 706570,                                                                                      +
                                                                                       "Plan Width": 14,                                                                                         +
                                                                                       "Actual Startup Time": 734.941,                                                                           +
                                                                                       "Actual Total Time": 746.700,                                                                             +
                                                                                       "Actual Rows": 260872,                                                                                    +
                                                                                       "Actual Loops": 1,                                                                                        +
                                                                                       "Sort Key": ["mi_idx2.movie_id"],                                                                         +
                                                                                       "Sort Method": "quicksort",                                                                               +
                                                                                       "Sort Space Used": 71256,                                                                                 +
                                                                                       "Sort Space Type": "Memory",                                                                              +
                                                                                       "Shared Hit Blocks": 2,                                                                                   +
                                                                                       "Shared Read Blocks": 8451,                                                                               +
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
                                                                                           "Node Type": "Seq Scan",                                                                              +
                                                                                           "Parent Relationship": "Outer",                                                                       +
                                                                                           "Parallel Aware": false,                                                                              +
                                                                                           "Relation Name": "movie_info_idx",                                                                    +
                                                                                           "Alias": "mi_idx2",                                                                                   +
                                                                                           "Startup Cost": 0.00,                                                                                 +
                                                                                           "Total Cost": 467.71,                                                                                 +
                                                                                           "Plan Rows": 706570,                                                                                  +
                                                                                           "Plan Width": 14,                                                                                     +
                                                                                           "Actual Startup Time": 0.017,                                                                         +
                                                                                           "Actual Total Time": 440.693,                                                                         +
                                                                                           "Actual Rows": 706560,                                                                                +
                                                                                           "Actual Loops": 1,                                                                                    +
                                                                                           "Filter": "(info < '3.5'::text)",                                                                     +
                                                                                           "Rows Removed by Filter": 673475,                                                                     +
                                                                                           "Shared Hit Blocks": 2,                                                                               +
                                                                                           "Shared Read Blocks": 8451,                                                                           +
                                                                                           "Shared Dirtied Blocks": 0,                                                                           +
                                                                                           "Shared Written Blocks": 0,                                                                           +
                                                                                           "Local Hit Blocks": 0,                                                                                +
                                                                                           "Local Read Blocks": 0,                                                                               +
                                                                                           "Local Dirtied Blocks": 0,                                                                            +
                                                                                           "Local Written Blocks": 0,                                                                            +
                                                                                           "Temp Read Blocks": 0,                                                                                +
                                                                                           "Temp Written Blocks": 0                                                                              +
                                                                                         }                                                                                                       +
                                                                                       ]                                                                                                         +
                                                                                     }                                                                                                           +
                                                                                   ]                                                                                                             +
                                                                                 }                                                                                                               +
                                                                               ]                                                                                                                 +
                                                                             }                                                                                                                   +
                                                                           ]                                                                                                                     +
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
                                                               "Startup Cost": 9405.45,                                                                                                          +
                                                               "Total Cost": 9608.03,                                                                                                            +
                                                               "Plan Rows": 2609129,                                                                                                             +
                                                               "Plan Width": 8,                                                                                                                  +
                                                               "Actual Startup Time": 1470.851,                                                                                                  +
                                                               "Actual Total Time": 1512.270,                                                                                                    +
                                                               "Actual Rows": 905891,                                                                                                            +
                                                               "Actual Loops": 1,                                                                                                                +
                                                               "Sort Key": ["mc2.movie_id"],                                                                                                     +
                                                               "Sort Method": "quicksort",                                                                                                       +
                                                               "Sort Space Used": 220607,                                                                                                        +
                                                               "Sort Space Type": "Memory",                                                                                                      +
                                                               "Shared Hit Blocks": 714,                                                                                                         +
                                                               "Shared Read Blocks": 18075,                                                                                                      +
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
                                                                   "Alias": "mc2",                                                                                                               +
                                                                   "Startup Cost": 0.00,                                                                                                         +
                                                                   "Total Cost": 769.75,                                                                                                         +
                                                                   "Plan Rows": 2609129,                                                                                                         +
                                                                   "Plan Width": 8,                                                                                                              +
                                                                   "Actual Startup Time": 0.010,                                                                                                 +
                                                                   "Actual Total Time": 540.415,                                                                                                 +
                                                                   "Actual Rows": 2609129,                                                                                                       +
                                                                   "Actual Loops": 1,                                                                                                            +
                                                                   "Shared Hit Blocks": 714,                                                                                                     +
                                                                   "Shared Read Blocks": 18075,                                                                                                  +
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
                                                     }                                                                                                                                           +
                                                   ]                                                                                                                                             +
                                                 }                                                                                                                                               +
                                               ]                                                                                                                                                 +
                                             }                                                                                                                                                   +
                                           ]                                                                                                                                                     +
                                         }                                                                                                                                                       +
                                       ]                                                                                                                                                         +
                                     }                                                                                                                                                           +
                                   ]                                                                                                                                                             +
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
                       "Startup Cost": 761.23,                                                                                                                                                   +
                       "Total Cost": 779.47,                                                                                                                                                     +
                       "Plan Rows": 234997,                                                                                                                                                      +
                       "Plan Width": 23,                                                                                                                                                         +
                       "Actual Startup Time": 129.286,                                                                                                                                           +
                       "Actual Total Time": 138.990,                                                                                                                                             +
                       "Actual Rows": 87521,                                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                                        +
                       "Sort Key": ["cn2.id"],                                                                                                                                                   +
                       "Sort Method": "quicksort",                                                                                                                                               +
                       "Sort Space Used": 23201,                                                                                                                                                 +
                       "Sort Space Type": "Memory",                                                                                                                                              +
                       "Shared Hit Blocks": 2994,                                                                                                                                                +
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
                           "Relation Name": "company_name",                                                                                                                                      +
                           "Alias": "cn2",                                                                                                                                                       +
                           "Startup Cost": 0.00,                                                                                                                                                 +
                           "Total Cost": 110.16,                                                                                                                                                 +
                           "Plan Rows": 234997,                                                                                                                                                  +
                           "Plan Width": 23,                                                                                                                                                     +
                           "Actual Startup Time": 0.008,                                                                                                                                         +
                           "Actual Total Time": 35.126,                                                                                                                                          +
                           "Actual Rows": 234997,                                                                                                                                                +
                           "Actual Loops": 1,                                                                                                                                                    +
                           "Shared Hit Blocks": 2994,                                                                                                                                            +
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
               "Startup Cost": 0.05,                                                                                                                                                             +
               "Total Cost": 0.05,                                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                                   +
               "Plan Width": 4,                                                                                                                                                                  +
               "Actual Startup Time": 0.031,                                                                                                                                                     +
               "Actual Total Time": 0.031,                                                                                                                                                       +
               "Actual Rows": 1,                                                                                                                                                                 +
               "Actual Loops": 1,                                                                                                                                                                +
               "Sort Key": ["it2.id"],                                                                                                                                                           +
               "Sort Method": "quicksort",                                                                                                                                                       +
               "Sort Space Used": 25,                                                                                                                                                            +
               "Sort Space Type": "Memory",                                                                                                                                                      +
               "Shared Hit Blocks": 1,                                                                                                                                                           +
               "Shared Read Blocks": 0,                                                                                                                                                          +
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
                   "Relation Name": "info_type",                                                                                                                                                 +
                   "Alias": "it2",                                                                                                                                                               +
                   "Startup Cost": 0.00,                                                                                                                                                         +
                   "Total Cost": 0.05,                                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                                               +
                   "Plan Width": 4,                                                                                                                                                              +
                   "Actual Startup Time": 0.023,                                                                                                                                                 +
                   "Actual Total Time": 0.025,                                                                                                                                                   +
                   "Actual Rows": 1,                                                                                                                                                             +
                   "Actual Loops": 1,                                                                                                                                                            +
                   "Filter": "((info)::text = 'rating'::text)",                                                                                                                                  +
                   "Rows Removed by Filter": 112,                                                                                                                                                +
                   "Shared Hit Blocks": 1,                                                                                                                                                       +
                   "Shared Read Blocks": 0,                                                                                                                                                      +
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
     "Planning Time": 6277.874,                                                                                                                                                                  +
     "Triggers": [                                                                                                                                                                               +
     ],                                                                                                                                                                                          +
     "Execution Time": 5821.381                                                                                                                                                                  +
   }                                                                                                                                                                                             +
 ]
(1 row)

