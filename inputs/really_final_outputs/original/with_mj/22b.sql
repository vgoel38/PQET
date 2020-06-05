                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                 +
   {                                                                                                                                                               +
     "Plan": {                                                                                                                                                     +
       "Node Type": "Aggregate",                                                                                                                                   +
       "Strategy": "Plain",                                                                                                                                        +
       "Partial Mode": "Simple",                                                                                                                                   +
       "Parallel Aware": false,                                                                                                                                    +
       "Startup Cost": 37394.80,                                                                                                                                   +
       "Total Cost": 37394.80,                                                                                                                                     +
       "Plan Rows": 1,                                                                                                                                             +
       "Plan Width": 96,                                                                                                                                           +
       "Actual Startup Time": 15493.936,                                                                                                                           +
       "Actual Total Time": 15493.936,                                                                                                                             +
       "Actual Rows": 1,                                                                                                                                           +
       "Actual Loops": 1,                                                                                                                                          +
       "Shared Hit Blocks": 29,                                                                                                                                    +
       "Shared Read Blocks": 252577,                                                                                                                               +
       "Shared Dirtied Blocks": 0,                                                                                                                                 +
       "Shared Written Blocks": 0,                                                                                                                                 +
       "Local Hit Blocks": 0,                                                                                                                                      +
       "Local Read Blocks": 0,                                                                                                                                     +
       "Local Dirtied Blocks": 0,                                                                                                                                  +
       "Local Written Blocks": 0,                                                                                                                                  +
       "Temp Read Blocks": 0,                                                                                                                                      +
       "Temp Written Blocks": 0,                                                                                                                                   +
       "Plans": [                                                                                                                                                  +
         {                                                                                                                                                         +
           "Node Type": "Merge Join",                                                                                                                              +
           "Parent Relationship": "Outer",                                                                                                                         +
           "Parallel Aware": false,                                                                                                                                +
           "Join Type": "Inner",                                                                                                                                   +
           "Startup Cost": 37375.20,                                                                                                                               +
           "Total Cost": 37394.80,                                                                                                                                 +
           "Plan Rows": 1,                                                                                                                                         +
           "Plan Width": 42,                                                                                                                                       +
           "Actual Startup Time": 15486.726,                                                                                                                       +
           "Actual Total Time": 15493.887,                                                                                                                         +
           "Actual Rows": 31,                                                                                                                                      +
           "Actual Loops": 1,                                                                                                                                      +
           "Inner Unique": true,                                                                                                                                   +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                +
           "Shared Hit Blocks": 29,                                                                                                                                +
           "Shared Read Blocks": 252577,                                                                                                                           +
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
               "Node Type": "Sort",                                                                                                                                +
               "Parent Relationship": "Outer",                                                                                                                     +
               "Parallel Aware": false,                                                                                                                            +
               "Startup Cost": 36914.64,                                                                                                                           +
               "Total Cost": 36914.64,                                                                                                                             +
               "Plan Rows": 1,                                                                                                                                     +
               "Plan Width": 27,                                                                                                                                   +
               "Actual Startup Time": 15291.801,                                                                                                                   +
               "Actual Total Time": 15291.806,                                                                                                                     +
               "Actual Rows": 39,                                                                                                                                  +
               "Actual Loops": 1,                                                                                                                                  +
               "Sort Key": ["mc.company_id"],                                                                                                                      +
               "Sort Method": "quicksort",                                                                                                                         +
               "Sort Space Used": 27,                                                                                                                              +
               "Sort Space Type": "Memory",                                                                                                                        +
               "Shared Hit Blocks": 27,                                                                                                                            +
               "Shared Read Blocks": 249585,                                                                                                                       +
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
                   "Node Type": "Merge Join",                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                        +
                   "Join Type": "Inner",                                                                                                                           +
                   "Startup Cost": 36914.64,                                                                                                                       +
                   "Total Cost": 36914.64,                                                                                                                         +
                   "Plan Rows": 1,                                                                                                                                 +
                   "Plan Width": 27,                                                                                                                               +
                   "Actual Startup Time": 15282.675,                                                                                                               +
                   "Actual Total Time": 15282.686,                                                                                                                 +
                   "Actual Rows": 39,                                                                                                                              +
                   "Actual Loops": 1,                                                                                                                              +
                   "Inner Unique": true,                                                                                                                           +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                   +
                   "Shared Hit Blocks": 23,                                                                                                                        +
                   "Shared Read Blocks": 249585,                                                                                                                   +
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
                       "Node Type": "Sort",                                                                                                                        +
                       "Parent Relationship": "Outer",                                                                                                             +
                       "Parallel Aware": false,                                                                                                                    +
                       "Startup Cost": 36914.61,                                                                                                                   +
                       "Total Cost": 36914.61,                                                                                                                     +
                       "Plan Rows": 1,                                                                                                                             +
                       "Plan Width": 31,                                                                                                                           +
                       "Actual Startup Time": 15282.664,                                                                                                           +
                       "Actual Total Time": 15282.666,                                                                                                             +
                       "Actual Rows": 39,                                                                                                                          +
                       "Actual Loops": 1,                                                                                                                          +
                       "Sort Key": ["mc.company_type_id"],                                                                                                         +
                       "Sort Method": "quicksort",                                                                                                                 +
                       "Sort Space Used": 28,                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                +
                       "Shared Hit Blocks": 22,                                                                                                                    +
                       "Shared Read Blocks": 249585,                                                                                                               +
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
                           "Node Type": "Merge Join",                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Join Type": "Inner",                                                                                                                   +
                           "Startup Cost": 36914.61,                                                                                                               +
                           "Total Cost": 36914.61,                                                                                                                 +
                           "Plan Rows": 1,                                                                                                                         +
                           "Plan Width": 31,                                                                                                                       +
                           "Actual Startup Time": 15282.631,                                                                                                       +
                           "Actual Total Time": 15282.643,                                                                                                         +
                           "Actual Rows": 39,                                                                                                                      +
                           "Actual Loops": 1,                                                                                                                      +
                           "Inner Unique": true,                                                                                                                   +
                           "Merge Cond": "(t.kind_id = kt.id)",                                                                                                    +
                           "Shared Hit Blocks": 22,                                                                                                                +
                           "Shared Read Blocks": 249585,                                                                                                           +
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
                               "Node Type": "Sort",                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                     +
                               "Parallel Aware": false,                                                                                                            +
                               "Startup Cost": 36914.58,                                                                                                           +
                               "Total Cost": 36914.58,                                                                                                             +
                               "Plan Rows": 1,                                                                                                                     +
                               "Plan Width": 35,                                                                                                                   +
                               "Actual Startup Time": 15282.618,                                                                                                   +
                               "Actual Total Time": 15282.620,                                                                                                     +
                               "Actual Rows": 42,                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                  +
                               "Sort Key": ["t.kind_id"],                                                                                                          +
                               "Sort Method": "quicksort",                                                                                                         +
                               "Sort Space Used": 28,                                                                                                              +
                               "Sort Space Type": "Memory",                                                                                                        +
                               "Shared Hit Blocks": 21,                                                                                                            +
                               "Shared Read Blocks": 249585,                                                                                                       +
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
                                   "Node Type": "Merge Join",                                                                                                      +
                                   "Parent Relationship": "Outer",                                                                                                 +
                                   "Parallel Aware": false,                                                                                                        +
                                   "Join Type": "Inner",                                                                                                           +
                                   "Startup Cost": 36914.58,                                                                                                       +
                                   "Total Cost": 36914.58,                                                                                                         +
                                   "Plan Rows": 1,                                                                                                                 +
                                   "Plan Width": 35,                                                                                                               +
                                   "Actual Startup Time": 15282.574,                                                                                               +
                                   "Actual Total Time": 15282.586,                                                                                                 +
                                   "Actual Rows": 42,                                                                                                              +
                                   "Actual Loops": 1,                                                                                                              +
                                   "Inner Unique": true,                                                                                                           +
                                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                     +
                                   "Shared Hit Blocks": 21,                                                                                                        +
                                   "Shared Read Blocks": 249585,                                                                                                   +
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
                                       "Node Type": "Sort",                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Startup Cost": 36914.53,                                                                                                   +
                                       "Total Cost": 36914.53,                                                                                                     +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 39,                                                                                                           +
                                       "Actual Startup Time": 15282.553,                                                                                           +
                                       "Actual Total Time": 15282.555,                                                                                             +
                                       "Actual Rows": 45,                                                                                                          +
                                       "Actual Loops": 1,                                                                                                          +
                                       "Sort Key": ["mi.info_type_id"],                                                                                            +
                                       "Sort Method": "quicksort",                                                                                                 +
                                       "Sort Space Used": 28,                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                +
                                       "Shared Hit Blocks": 20,                                                                                                    +
                                       "Shared Read Blocks": 249585,                                                                                               +
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
                                           "Node Type": "Merge Join",                                                                                              +
                                           "Parent Relationship": "Outer",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Join Type": "Inner",                                                                                                   +
                                           "Startup Cost": 36914.52,                                                                                               +
                                           "Total Cost": 36914.53,                                                                                                 +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 39,                                                                                                       +
                                           "Actual Startup Time": 15282.512,                                                                                       +
                                           "Actual Total Time": 15282.526,                                                                                         +
                                           "Actual Rows": 45,                                                                                                      +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Inner Unique": true,                                                                                                   +
                                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                         +
                                           "Shared Hit Blocks": 20,                                                                                                +
                                           "Shared Read Blocks": 249585,                                                                                           +
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
                                               "Node Type": "Sort",                                                                                                +
                                               "Parent Relationship": "Outer",                                                                                     +
                                               "Parallel Aware": false,                                                                                            +
                                               "Startup Cost": 36914.48,                                                                                           +
                                               "Total Cost": 36914.48,                                                                                             +
                                               "Plan Rows": 11,                                                                                                    +
                                               "Plan Width": 43,                                                                                                   +
                                               "Actual Startup Time": 15282.444,                                                                                   +
                                               "Actual Total Time": 15282.455,                                                                                     +
                                               "Actual Rows": 147,                                                                                                 +
                                               "Actual Loops": 1,                                                                                                  +
                                               "Sort Key": ["mi_idx.info_type_id"],                                                                                +
                                               "Sort Method": "quicksort",                                                                                         +
                                               "Sort Space Used": 40,                                                                                              +
                                               "Sort Space Type": "Memory",                                                                                        +
                                               "Shared Hit Blocks": 19,                                                                                            +
                                               "Shared Read Blocks": 249585,                                                                                       +
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
                                                   "Startup Cost": 36523.63,                                                                                       +
                                                   "Total Cost": 36914.47,                                                                                         +
                                                   "Plan Rows": 11,                                                                                                +
                                                   "Plan Width": 43,                                                                                               +
                                                   "Actual Startup Time": 15033.747,                                                                               +
                                                   "Actual Total Time": 15282.359,                                                                                 +
                                                   "Actual Rows": 147,                                                                                             +
                                                   "Actual Loops": 1,                                                                                              +
                                                   "Inner Unique": false,                                                                                          +
                                                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                       +
                                                   "Shared Hit Blocks": 19,                                                                                        +
                                                   "Shared Read Blocks": 249585,                                                                                   +
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
                                                       "Startup Cost": 32384.13,                                                                                   +
                                                       "Total Cost": 32592.85,                                                                                     +
                                                       "Plan Rows": 15,                                                                                            +
                                                       "Plan Width": 49,                                                                                           +
                                                       "Actual Startup Time": 13991.447,                                                                           +
                                                       "Actual Total Time": 14282.055,                                                                             +
                                                       "Actual Rows": 57,                                                                                          +
                                                       "Actual Loops": 1,                                                                                          +
                                                       "Inner Unique": false,                                                                                      +
                                                       "Merge Cond": "(t.id = mi.movie_id)",                                                                       +
                                                       "Shared Hit Blocks": 17,                                                                                    +
                                                       "Shared Read Blocks": 241134,                                                                               +
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
                                                           "Node Type": "Merge Join",                                                                              +
                                                           "Parent Relationship": "Outer",                                                                         +
                                                           "Parallel Aware": false,                                                                                +
                                                           "Join Type": "Inner",                                                                                   +
                                                           "Startup Cost": 21969.92,                                                                               +
                                                           "Total Cost": 22074.94,                                                                                 +
                                                           "Plan Rows": 9,                                                                                         +
                                                           "Plan Width": 41,                                                                                       +
                                                           "Actual Startup Time": 5517.754,                                                                        +
                                                           "Actual Total Time": 5719.669,                                                                          +
                                                           "Actual Rows": 123,                                                                                     +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Inner Unique": false,                                                                                  +
                                                           "Merge Cond": "(t.id = mc.movie_id)",                                                                   +
                                                           "Shared Hit Blocks": 15,                                                                                +
                                                           "Shared Read Blocks": 79244,                                                                            +
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
                                                               "Startup Cost": 20414.00,                                                                           +
                                                               "Total Cost": 20496.77,                                                                             +
                                                               "Plan Rows": 28,                                                                                    +
                                                               "Plan Width": 29,                                                                                   +
                                                               "Actual Startup Time": 4406.852,                                                                    +
                                                               "Actual Total Time": 4563.086,                                                                      +
                                                               "Actual Rows": 4040,                                                                                +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Inner Unique": true,                                                                               +
                                                               "Merge Cond": "(mk.movie_id = t.id)",                                                               +
                                                               "Shared Hit Blocks": 12,                                                                            +
                                                               "Shared Read Blocks": 60458,                                                                        +
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
                                                                   "Startup Cost": 17338.09,                                                                       +
                                                                   "Total Cost": 17338.10,                                                                         +
                                                                   "Plan Rows": 135,                                                                               +
                                                                   "Plan Width": 4,                                                                                +
                                                                   "Actual Startup Time": 2579.394,                                                                +
                                                                   "Actual Total Time": 2584.505,                                                                  +
                                                                   "Actual Rows": 37091,                                                                           +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Sort Key": ["mk.movie_id"],                                                                    +
                                                                   "Sort Method": "quicksort",                                                                     +
                                                                   "Sort Space Used": 3275,                                                                        +
                                                                   "Sort Space Type": "Memory",                                                                    +
                                                                   "Shared Hit Blocks": 11,                                                                        +
                                                                   "Shared Read Blocks": 24461,                                                                    +
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
                                                                       "Startup Cost": 16635.45,                                                                   +
                                                                       "Total Cost": 17337.94,                                                                     +
                                                                       "Plan Rows": 135,                                                                           +
                                                                       "Plan Width": 4,                                                                            +
                                                                       "Actual Startup Time": 2360.964,                                                            +
                                                                       "Actual Total Time": 2567.189,                                                              +
                                                                       "Actual Rows": 37091,                                                                       +
                                                                       "Actual Loops": 1,                                                                          +
                                                                       "Inner Unique": false,                                                                      +
                                                                       "Merge Cond": "(k.id = mk.keyword_id)",                                                     +
                                                                       "Shared Hit Blocks": 11,                                                                    +
                                                                       "Shared Read Blocks": 24461,                                                                +
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
                                                                           "Startup Cost": 24.53,                                                                  +
                                                                           "Total Cost": 24.53,                                                                    +
                                                                           "Plan Rows": 4,                                                                         +
                                                                           "Plan Width": 4,                                                                        +
                                                                           "Actual Startup Time": 55.436,                                                          +
                                                                           "Actual Total Time": 55.438,                                                            +
                                                                           "Actual Rows": 3,                                                                       +
                                                                           "Actual Loops": 1,                                                                      +
                                                                           "Sort Key": ["k.id"],                                                                   +
                                                                           "Sort Method": "quicksort",                                                             +
                                                                           "Sort Space Used": 25,                                                                  +
                                                                           "Sort Space Type": "Memory",                                                            +
                                                                           "Shared Hit Blocks": 8,                                                                 +
                                                                           "Shared Read Blocks": 10,                                                               +
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
                                                                               "Node Type": "Index Scan",                                                          +
                                                                               "Parent Relationship": "Outer",                                                     +
                                                                               "Parallel Aware": false,                                                            +
                                                                               "Scan Direction": "Forward",                                                        +
                                                                               "Index Name": "keyword_idx_keyword",                                                +
                                                                               "Relation Name": "keyword",                                                         +
                                                                               "Alias": "k",                                                                       +
                                                                               "Startup Cost": 0.01,                                                               +
                                                                               "Total Cost": 24.53,                                                                +
                                                                               "Plan Rows": 4,                                                                     +
                                                                               "Plan Width": 4,                                                                    +
                                                                               "Actual Startup Time": 30.453,                                                      +
                                                                               "Actual Total Time": 55.404,                                                        +
                                                                               "Actual Rows": 3,                                                                   +
                                                                               "Actual Loops": 1,                                                                  +
                                                                               "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",+
                                                                               "Rows Removed by Index Recheck": 0,                                                 +
                                                                               "Shared Hit Blocks": 8,                                                             +
                                                                               "Shared Read Blocks": 10,                                                           +
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
                                                                         },                                                                                        +
                                                                         {                                                                                         +
                                                                           "Node Type": "Sort",                                                                    +
                                                                           "Parent Relationship": "Inner",                                                         +
                                                                           "Parallel Aware": false,                                                                +
                                                                           "Startup Cost": 16610.92,                                                               +
                                                                           "Total Cost": 16962.16,                                                                 +
                                                                           "Plan Rows": 4523930,                                                                   +
                                                                           "Plan Width": 8,                                                                        +
                                                                           "Actual Startup Time": 2254.225,                                                        +
                                                                           "Actual Total Time": 2396.493,                                                          +
                                                                           "Actual Rows": 943582,                                                                  +
                                                                           "Actual Loops": 1,                                                                      +
                                                                           "Sort Key": ["mk.keyword_id"],                                                          +
                                                                           "Sort Method": "quicksort",                                                             +
                                                                           "Sort Space Used": 408668,                                                              +
                                                                           "Sort Space Type": "Memory",                                                            +
                                                                           "Shared Hit Blocks": 3,                                                                 +
                                                                           "Shared Read Blocks": 24451,                                                            +
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
                                                                               "Relation Name": "movie_keyword",                                                   +
                                                                               "Alias": "mk",                                                                      +
                                                                               "Startup Cost": 0.00,                                                               +
                                                                               "Total Cost": 1079.84,                                                              +
                                                                               "Plan Rows": 4523930,                                                               +
                                                                               "Plan Width": 8,                                                                    +
                                                                               "Actual Startup Time": 0.020,                                                       +
                                                                               "Actual Total Time": 802.619,                                                       +
                                                                               "Actual Rows": 4523930,                                                             +
                                                                               "Actual Loops": 1,                                                                  +
                                                                               "Shared Hit Blocks": 3,                                                             +
                                                                               "Shared Read Blocks": 24451,                                                        +
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
                                                                   "Startup Cost": 3075.92,                                                                        +
                                                                   "Total Cost": 3117.33,                                                                          +
                                                                   "Plan Rows": 533370,                                                                            +
                                                                   "Plan Width": 25,                                                                               +
                                                                   "Actual Startup Time": 1826.661,                                                                +
                                                                   "Actual Total Time": 1893.624,                                                                  +
                                                                   "Actual Rows": 533149,                                                                          +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Sort Key": ["t.id"],                                                                           +
                                                                   "Sort Method": "quicksort",                                                                     +
                                                                   "Sort Space Used": 65282,                                                                       +
                                                                   "Sort Space Type": "Memory",                                                                    +
                                                                   "Shared Hit Blocks": 1,                                                                         +
                                                                   "Shared Read Blocks": 35997,                                                                    +
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
                                                                       "Relation Name": "title",                                                                   +
                                                                       "Alias": "t",                                                                               +
                                                                       "Startup Cost": 0.00,                                                                       +
                                                                       "Total Cost": 1500.26,                                                                      +
                                                                       "Plan Rows": 533370,                                                                        +
                                                                       "Plan Width": 25,                                                                           +
                                                                       "Actual Startup Time": 7.996,                                                               +
                                                                       "Actual Total Time": 1459.983,                                                              +
                                                                       "Actual Rows": 533369,                                                                      +
                                                                       "Actual Loops": 1,                                                                          +
                                                                       "Filter": "(production_year > 2009)",                                                       +
                                                                       "Rows Removed by Filter": 1994943,                                                          +
                                                                       "Shared Hit Blocks": 1,                                                                     +
                                                                       "Shared Read Blocks": 35997,                                                                +
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
                                                             },                                                                                                    +
                                                             {                                                                                                     +
                                                               "Node Type": "Sort",                                                                                +
                                                               "Parent Relationship": "Inner",                                                                     +
                                                               "Parallel Aware": false,                                                                            +
                                                               "Startup Cost": 1555.92,                                                                            +
                                                               "Total Cost": 1567.04,                                                                              +
                                                               "Plan Rows": 143259,                                                                                +
                                                               "Plan Width": 12,                                                                                   +
                                                               "Actual Startup Time": 1108.742,                                                                    +
                                                               "Actual Total Time": 1126.168,                                                                      +
                                                               "Actual Rows": 303299,                                                                              +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Sort Key": ["mc.movie_id"],                                                                        +
                                                               "Sort Method": "quicksort",                                                                         +
                                                               "Sort Space Used": 26504,                                                                           +
                                                               "Sort Space Type": "Memory",                                                                        +
                                                               "Shared Hit Blocks": 3,                                                                             +
                                                               "Shared Read Blocks": 18786,                                                                        +
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
                                                                   "Node Type": "Seq Scan",                                                                        +
                                                                   "Parent Relationship": "Outer",                                                                 +
                                                                   "Parallel Aware": false,                                                                        +
                                                                   "Relation Name": "movie_companies",                                                             +
                                                                   "Alias": "mc",                                                                                  +
                                                                   "Startup Cost": 0.00,                                                                           +
                                                                   "Total Cost": 1174.90,                                                                          +
                                                                   "Plan Rows": 143259,                                                                            +
                                                                   "Plan Width": 12,                                                                               +
                                                                   "Actual Startup Time": 0.015,                                                                   +
                                                                   "Actual Total Time": 985.991,                                                                   +
                                                                   "Actual Rows": 303271,                                                                          +
                                                                   "Actual Loops": 1,                                                                              +
                                                                   "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                        +
                                                                   "Rows Removed by Filter": 2305858,                                                              +
                                                                   "Shared Hit Blocks": 3,                                                                         +
                                                                   "Shared Read Blocks": 18786,                                                                    +
                                                                   "Shared Dirtied Blocks": 0,                                                                     +
                                                                   "Shared Written Blocks": 0,                                                                     +
                                                                   "Local Hit Blocks": 0,                                                                          +
                                                                   "Local Read Blocks": 0,                                                                         +
                                                                   "Local Dirtied Blocks": 0,                                                                      +
                                                                   "Local Written Blocks": 0,                                                                      +
                                                                   "Temp Read Blocks": 0,                                                                          +
                                                                   "Temp Written Blocks": 0                                                                        +
                                                                 }                                                                                                 +
                                                               ]                                                                                                   +
                                                             }                                                                                                     +
                                                           ]                                                                                                       +
                                                         },                                                                                                        +
                                                         {                                                                                                         +
                                                           "Node Type": "Sort",                                                                                    +
                                                           "Parent Relationship": "Inner",                                                                         +
                                                           "Parallel Aware": false,                                                                                +
                                                           "Startup Cost": 10414.20,                                                                               +
                                                           "Total Cost": 10466.06,                                                                                 +
                                                           "Plan Rows": 667885,                                                                                    +
                                                           "Plan Width": 8,                                                                                        +
                                                           "Actual Startup Time": 8473.225,                                                                        +
                                                           "Actual Total Time": 8502.556,                                                                          +
                                                           "Actual Rows": 638196,                                                                                  +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Sort Key": ["mi.movie_id"],                                                                            +
                                                           "Sort Method": "quicksort",                                                                             +
                                                           "Sort Space Used": 55952,                                                                               +
                                                           "Sort Space Type": "Memory",                                                                            +
                                                           "Shared Hit Blocks": 2,                                                                                 +
                                                           "Shared Read Blocks": 161890,                                                                           +
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
                                                               "Relation Name": "movie_info",                                                                      +
                                                               "Alias": "mi",                                                                                      +
                                                               "Startup Cost": 0.00,                                                                               +
                                                               "Total Cost": 8407.52,                                                                              +
                                                               "Plan Rows": 667885,                                                                                +
                                                               "Plan Width": 8,                                                                                    +
                                                               "Actual Startup Time": 9.596,                                                                       +
                                                               "Actual Total Time": 8206.338,                                                                      +
                                                               "Actual Rows": 669336,                                                                              +
                                                               "Actual Loops": 1,                                                                                  +
                                                               "Filter": "(info = ANY ('{Germany,German,USA,American}'::text[]))",                                 +
                                                               "Rows Removed by Filter": 14166384,                                                                 +
                                                               "Shared Hit Blocks": 2,                                                                             +
                                                               "Shared Read Blocks": 161890,                                                                       +
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
                                                       "Startup Cost": 4139.50,                                                                                    +
                                                       "Total Cost": 4230.56,                                                                                      +
                                                       "Plan Rows": 1172842,                                                                                       +
                                                       "Plan Width": 14,                                                                                           +
                                                       "Actual Startup Time": 835.932,                                                                             +
                                                       "Actual Total Time": 886.540,                                                                               +
                                                       "Actual Rows": 1121659,                                                                                     +
                                                       "Actual Loops": 1,                                                                                          +
                                                       "Sort Key": ["mi_idx.movie_id"],                                                                            +
                                                       "Sort Method": "quicksort",                                                                                 +
                                                       "Sort Space Used": 118412,                                                                                  +
                                                       "Sort Space Type": "Memory",                                                                                +
                                                       "Shared Hit Blocks": 2,                                                                                     +
                                                       "Shared Read Blocks": 8451,                                                                                 +
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
                                                           "Relation Name": "movie_info_idx",                                                                      +
                                                           "Alias": "mi_idx",                                                                                      +
                                                           "Startup Cost": 0.00,                                                                                   +
                                                           "Total Cost": 467.71,                                                                                   +
                                                           "Plan Rows": 1172842,                                                                                   +
                                                           "Plan Width": 14,                                                                                       +
                                                           "Actual Startup Time": 0.018,                                                                           +
                                                           "Actual Total Time": 393.133,                                                                           +
                                                           "Actual Rows": 1172832,                                                                                 +
                                                           "Actual Loops": 1,                                                                                      +
                                                           "Filter": "(info < '7.0'::text)",                                                                       +
                                                           "Rows Removed by Filter": 207203,                                                                       +
                                                           "Shared Hit Blocks": 2,                                                                                 +
                                                           "Shared Read Blocks": 8451,                                                                             +
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
                                                 }                                                                                                                 +
                                               ]                                                                                                                   +
                                             },                                                                                                                    +
                                             {                                                                                                                     +
                                               "Node Type": "Sort",                                                                                                +
                                               "Parent Relationship": "Inner",                                                                                     +
                                               "Parallel Aware": false,                                                                                            +
                                               "Startup Cost": 0.05,                                                                                               +
                                               "Total Cost": 0.05,                                                                                                 +
                                               "Plan Rows": 1,                                                                                                     +
                                               "Plan Width": 4,                                                                                                    +
                                               "Actual Startup Time": 0.040,                                                                                       +
                                               "Actual Total Time": 0.040,                                                                                         +
                                               "Actual Rows": 1,                                                                                                   +
                                               "Actual Loops": 1,                                                                                                  +
                                               "Sort Key": ["it2.id"],                                                                                             +
                                               "Sort Method": "quicksort",                                                                                         +
                                               "Sort Space Used": 25,                                                                                              +
                                               "Sort Space Type": "Memory",                                                                                        +
                                               "Shared Hit Blocks": 1,                                                                                             +
                                               "Shared Read Blocks": 0,                                                                                            +
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
                                                   "Node Type": "Seq Scan",                                                                                        +
                                                   "Parent Relationship": "Outer",                                                                                 +
                                                   "Parallel Aware": false,                                                                                        +
                                                   "Relation Name": "info_type",                                                                                   +
                                                   "Alias": "it2",                                                                                                 +
                                                   "Startup Cost": 0.00,                                                                                           +
                                                   "Total Cost": 0.05,                                                                                             +
                                                   "Plan Rows": 1,                                                                                                 +
                                                   "Plan Width": 4,                                                                                                +
                                                   "Actual Startup Time": 0.030,                                                                                   +
                                                   "Actual Total Time": 0.032,                                                                                     +
                                                   "Actual Rows": 1,                                                                                               +
                                                   "Actual Loops": 1,                                                                                              +
                                                   "Filter": "((info)::text = 'rating'::text)",                                                                    +
                                                   "Rows Removed by Filter": 112,                                                                                  +
                                                   "Shared Hit Blocks": 1,                                                                                         +
                                                   "Shared Read Blocks": 0,                                                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                                                     +
                                                   "Shared Written Blocks": 0,                                                                                     +
                                                   "Local Hit Blocks": 0,                                                                                          +
                                                   "Local Read Blocks": 0,                                                                                         +
                                                   "Local Dirtied Blocks": 0,                                                                                      +
                                                   "Local Written Blocks": 0,                                                                                      +
                                                   "Temp Read Blocks": 0,                                                                                          +
                                                   "Temp Written Blocks": 0                                                                                        +
                                                 }                                                                                                                 +
                                               ]                                                                                                                   +
                                             }                                                                                                                     +
                                           ]                                                                                                                       +
                                         }                                                                                                                         +
                                       ]                                                                                                                           +
                                     },                                                                                                                            +
                                     {                                                                                                                             +
                                       "Node Type": "Sort",                                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                             +
                                       "Parallel Aware": false,                                                                                                    +
                                       "Startup Cost": 0.05,                                                                                                       +
                                       "Total Cost": 0.05,                                                                                                         +
                                       "Plan Rows": 1,                                                                                                             +
                                       "Plan Width": 4,                                                                                                            +
                                       "Actual Startup Time": 0.017,                                                                                               +
                                       "Actual Total Time": 0.017,                                                                                                 +
                                       "Actual Rows": 1,                                                                                                           +
                                       "Actual Loops": 1,                                                                                                          +
                                       "Sort Key": ["it1.id"],                                                                                                     +
                                       "Sort Method": "quicksort",                                                                                                 +
                                       "Sort Space Used": 25,                                                                                                      +
                                       "Sort Space Type": "Memory",                                                                                                +
                                       "Shared Hit Blocks": 1,                                                                                                     +
                                       "Shared Read Blocks": 0,                                                                                                    +
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
                                           "Node Type": "Seq Scan",                                                                                                +
                                           "Parent Relationship": "Outer",                                                                                         +
                                           "Parallel Aware": false,                                                                                                +
                                           "Relation Name": "info_type",                                                                                           +
                                           "Alias": "it1",                                                                                                         +
                                           "Startup Cost": 0.00,                                                                                                   +
                                           "Total Cost": 0.05,                                                                                                     +
                                           "Plan Rows": 1,                                                                                                         +
                                           "Plan Width": 4,                                                                                                        +
                                           "Actual Startup Time": 0.004,                                                                                           +
                                           "Actual Total Time": 0.014,                                                                                             +
                                           "Actual Rows": 1,                                                                                                       +
                                           "Actual Loops": 1,                                                                                                      +
                                           "Filter": "((info)::text = 'countries'::text)",                                                                         +
                                           "Rows Removed by Filter": 112,                                                                                          +
                                           "Shared Hit Blocks": 1,                                                                                                 +
                                           "Shared Read Blocks": 0,                                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                             +
                                           "Shared Written Blocks": 0,                                                                                             +
                                           "Local Hit Blocks": 0,                                                                                                  +
                                           "Local Read Blocks": 0,                                                                                                 +
                                           "Local Dirtied Blocks": 0,                                                                                              +
                                           "Local Written Blocks": 0,                                                                                              +
                                           "Temp Read Blocks": 0,                                                                                                  +
                                           "Temp Written Blocks": 0                                                                                                +
                                         }                                                                                                                         +
                                       ]                                                                                                                           +
                                     }                                                                                                                             +
                                   ]                                                                                                                               +
                                 }                                                                                                                                 +
                               ]                                                                                                                                   +
                             },                                                                                                                                    +
                             {                                                                                                                                     +
                               "Node Type": "Sort",                                                                                                                +
                               "Parent Relationship": "Inner",                                                                                                     +
                               "Parallel Aware": false,                                                                                                            +
                               "Startup Cost": 0.03,                                                                                                               +
                               "Total Cost": 0.03,                                                                                                                 +
                               "Plan Rows": 2,                                                                                                                     +
                               "Plan Width": 4,                                                                                                                    +
                               "Actual Startup Time": 0.010,                                                                                                       +
                               "Actual Total Time": 0.010,                                                                                                         +
                               "Actual Rows": 2,                                                                                                                   +
                               "Actual Loops": 1,                                                                                                                  +
                               "Sort Key": ["kt.id"],                                                                                                              +
                               "Sort Method": "quicksort",                                                                                                         +
                               "Sort Space Used": 25,                                                                                                              +
                               "Sort Space Type": "Memory",                                                                                                        +
                               "Shared Hit Blocks": 1,                                                                                                             +
                               "Shared Read Blocks": 0,                                                                                                            +
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
                                   "Node Type": "Seq Scan",                                                                                                        +
                                   "Parent Relationship": "Outer",                                                                                                 +
                                   "Parallel Aware": false,                                                                                                        +
                                   "Relation Name": "kind_type",                                                                                                   +
                                   "Alias": "kt",                                                                                                                  +
                                   "Startup Cost": 0.00,                                                                                                           +
                                   "Total Cost": 0.03,                                                                                                             +
                                   "Plan Rows": 2,                                                                                                                 +
                                   "Plan Width": 4,                                                                                                                +
                                   "Actual Startup Time": 0.006,                                                                                                   +
                                   "Actual Total Time": 0.008,                                                                                                     +
                                   "Actual Rows": 2,                                                                                                               +
                                   "Actual Loops": 1,                                                                                                              +
                                   "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                   +
                                   "Rows Removed by Filter": 5,                                                                                                    +
                                   "Shared Hit Blocks": 1,                                                                                                         +
                                   "Shared Read Blocks": 0,                                                                                                        +
                                   "Shared Dirtied Blocks": 0,                                                                                                     +
                                   "Shared Written Blocks": 0,                                                                                                     +
                                   "Local Hit Blocks": 0,                                                                                                          +
                                   "Local Read Blocks": 0,                                                                                                         +
                                   "Local Dirtied Blocks": 0,                                                                                                      +
                                   "Local Written Blocks": 0,                                                                                                      +
                                   "Temp Read Blocks": 0,                                                                                                          +
                                   "Temp Written Blocks": 0                                                                                                        +
                                 }                                                                                                                                 +
                               ]                                                                                                                                   +
                             }                                                                                                                                     +
                           ]                                                                                                                                       +
                         }                                                                                                                                         +
                       ]                                                                                                                                           +
                     },                                                                                                                                            +
                     {                                                                                                                                             +
                       "Node Type": "Sort",                                                                                                                        +
                       "Parent Relationship": "Inner",                                                                                                             +
                       "Parallel Aware": false,                                                                                                                    +
                       "Startup Cost": 0.03,                                                                                                                       +
                       "Total Cost": 0.03,                                                                                                                         +
                       "Plan Rows": 4,                                                                                                                             +
                       "Plan Width": 4,                                                                                                                            +
                       "Actual Startup Time": 0.007,                                                                                                               +
                       "Actual Total Time": 0.007,                                                                                                                 +
                       "Actual Rows": 1,                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                          +
                       "Sort Key": ["ct.id"],                                                                                                                      +
                       "Sort Method": "quicksort",                                                                                                                 +
                       "Sort Space Used": 25,                                                                                                                      +
                       "Sort Space Type": "Memory",                                                                                                                +
                       "Shared Hit Blocks": 1,                                                                                                                     +
                       "Shared Read Blocks": 0,                                                                                                                    +
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
                           "Node Type": "Seq Scan",                                                                                                                +
                           "Parent Relationship": "Outer",                                                                                                         +
                           "Parallel Aware": false,                                                                                                                +
                           "Relation Name": "company_type",                                                                                                        +
                           "Alias": "ct",                                                                                                                          +
                           "Startup Cost": 0.00,                                                                                                                   +
                           "Total Cost": 0.03,                                                                                                                     +
                           "Plan Rows": 4,                                                                                                                         +
                           "Plan Width": 4,                                                                                                                        +
                           "Actual Startup Time": 0.004,                                                                                                           +
                           "Actual Total Time": 0.004,                                                                                                             +
                           "Actual Rows": 4,                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                      +
                           "Shared Hit Blocks": 1,                                                                                                                 +
                           "Shared Read Blocks": 0,                                                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                                                             +
                           "Shared Written Blocks": 0,                                                                                                             +
                           "Local Hit Blocks": 0,                                                                                                                  +
                           "Local Read Blocks": 0,                                                                                                                 +
                           "Local Dirtied Blocks": 0,                                                                                                              +
                           "Local Written Blocks": 0,                                                                                                              +
                           "Temp Read Blocks": 0,                                                                                                                  +
                           "Temp Written Blocks": 0                                                                                                                +
                         }                                                                                                                                         +
                       ]                                                                                                                                           +
                     }                                                                                                                                             +
                   ]                                                                                                                                               +
                 }                                                                                                                                                 +
               ]                                                                                                                                                   +
             },                                                                                                                                                    +
             {                                                                                                                                                     +
               "Node Type": "Sort",                                                                                                                                +
               "Parent Relationship": "Inner",                                                                                                                     +
               "Parallel Aware": false,                                                                                                                            +
               "Startup Cost": 460.56,                                                                                                                             +
               "Total Cost": 470.36,                                                                                                                               +
               "Plan Rows": 126230,                                                                                                                                +
               "Plan Width": 23,                                                                                                                                   +
               "Actual Startup Time": 194.429,                                                                                                                     +
               "Actual Total Time": 197.916,                                                                                                                       +
               "Actual Rows": 29841,                                                                                                                               +
               "Actual Loops": 1,                                                                                                                                  +
               "Sort Key": ["cn.id"],                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                         +
               "Sort Space Used": 12077,                                                                                                                           +
               "Sort Space Type": "Memory",                                                                                                                        +
               "Shared Hit Blocks": 2,                                                                                                                             +
               "Shared Read Blocks": 2992,                                                                                                                         +
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
                   "Node Type": "Seq Scan",                                                                                                                        +
                   "Parent Relationship": "Outer",                                                                                                                 +
                   "Parallel Aware": false,                                                                                                                        +
                   "Relation Name": "company_name",                                                                                                                +
                   "Alias": "cn",                                                                                                                                  +
                   "Startup Cost": 0.00,                                                                                                                           +
                   "Total Cost": 128.41,                                                                                                                           +
                   "Plan Rows": 126230,                                                                                                                            +
                   "Plan Width": 23,                                                                                                                               +
                   "Actual Startup Time": 20.374,                                                                                                                  +
                   "Actual Total Time": 114.926,                                                                                                                   +
                   "Actual Rows": 126230,                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                              +
                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                                             +
                   "Rows Removed by Filter": 108767,                                                                                                               +
                   "Shared Hit Blocks": 2,                                                                                                                         +
                   "Shared Read Blocks": 2992,                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                     +
                   "Shared Written Blocks": 0,                                                                                                                     +
                   "Local Hit Blocks": 0,                                                                                                                          +
                   "Local Read Blocks": 0,                                                                                                                         +
                   "Local Dirtied Blocks": 0,                                                                                                                      +
                   "Local Written Blocks": 0,                                                                                                                      +
                   "Temp Read Blocks": 0,                                                                                                                          +
                   "Temp Written Blocks": 0                                                                                                                        +
                 }                                                                                                                                                 +
               ]                                                                                                                                                   +
             }                                                                                                                                                     +
           ]                                                                                                                                                       +
         }                                                                                                                                                         +
       ]                                                                                                                                                           +
     },                                                                                                                                                            +
     "Planning Time": 9318.140,                                                                                                                                    +
     "Triggers": [                                                                                                                                                 +
     ],                                                                                                                                                            +
     "Execution Time": 15616.126                                                                                                                                   +
   }                                                                                                                                                               +
 ]
(1 row)

