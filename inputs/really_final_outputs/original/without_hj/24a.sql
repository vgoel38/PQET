                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                            +
   {                                                                                                                                                                          +
     "Plan": {                                                                                                                                                                +
       "Node Type": "Aggregate",                                                                                                                                              +
       "Strategy": "Plain",                                                                                                                                                   +
       "Partial Mode": "Simple",                                                                                                                                              +
       "Parallel Aware": false,                                                                                                                                               +
       "Startup Cost": 395.73,                                                                                                                                                +
       "Total Cost": 395.73,                                                                                                                                                  +
       "Plan Rows": 1,                                                                                                                                                        +
       "Plan Width": 96,                                                                                                                                                      +
       "Actual Startup Time": 204307.577,                                                                                                                                     +
       "Actual Total Time": 204307.578,                                                                                                                                       +
       "Actual Rows": 1,                                                                                                                                                      +
       "Actual Loops": 1,                                                                                                                                                     +
       "Shared Hit Blocks": 237035,                                                                                                                                           +
       "Shared Read Blocks": 38194,                                                                                                                                           +
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
           "Node Type": "Nested Loop",                                                                                                                                        +
           "Parent Relationship": "Outer",                                                                                                                                    +
           "Parallel Aware": false,                                                                                                                                           +
           "Join Type": "Inner",                                                                                                                                              +
           "Startup Cost": 0.14,                                                                                                                                              +
           "Total Cost": 395.73,                                                                                                                                              +
           "Plan Rows": 1,                                                                                                                                                    +
           "Plan Width": 48,                                                                                                                                                  +
           "Actual Startup Time": 14434.931,                                                                                                                                  +
           "Actual Total Time": 204307.150,                                                                                                                                   +
           "Actual Rows": 275,                                                                                                                                                +
           "Actual Loops": 1,                                                                                                                                                 +
           "Inner Unique": true,                                                                                                                                              +
           "Shared Hit Blocks": 237035,                                                                                                                                       +
           "Shared Read Blocks": 38194,                                                                                                                                       +
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
               "Node Type": "Nested Loop",                                                                                                                                    +
               "Parent Relationship": "Outer",                                                                                                                                +
               "Parallel Aware": false,                                                                                                                                       +
               "Join Type": "Inner",                                                                                                                                          +
               "Startup Cost": 0.12,                                                                                                                                          +
               "Total Cost": 395.64,                                                                                                                                          +
               "Plan Rows": 1,                                                                                                                                                +
               "Plan Width": 52,                                                                                                                                              +
               "Actual Startup Time": 14335.801,                                                                                                                              +
               "Actual Total Time": 203540.036,                                                                                                                               +
               "Actual Rows": 892,                                                                                                                                            +
               "Actual Loops": 1,                                                                                                                                             +
               "Inner Unique": false,                                                                                                                                         +
               "Join Filter": "(t.id = mc.movie_id)",                                                                                                                         +
               "Rows Removed by Join Filter": 0,                                                                                                                              +
               "Shared Hit Blocks": 233530,                                                                                                                                   +
               "Shared Read Blocks": 38129,                                                                                                                                   +
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
                   "Node Type": "Nested Loop",                                                                                                                                +
                   "Parent Relationship": "Outer",                                                                                                                            +
                   "Parallel Aware": false,                                                                                                                                   +
                   "Join Type": "Inner",                                                                                                                                      +
                   "Startup Cost": 0.11,                                                                                                                                      +
                   "Total Cost": 395.48,                                                                                                                                      +
                   "Plan Rows": 1,                                                                                                                                            +
                   "Plan Width": 64,                                                                                                                                          +
                   "Actual Startup Time": 14297.375,                                                                                                                          +
                   "Actual Total Time": 203315.559,                                                                                                                           +
                   "Actual Rows": 65,                                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                                         +
                   "Inner Unique": true,                                                                                                                                      +
                   "Join Filter": "(ci.role_id = rt.id)",                                                                                                                     +
                   "Rows Removed by Join Filter": 0,                                                                                                                          +
                   "Shared Hit Blocks": 233234,                                                                                                                               +
                   "Shared Read Blocks": 38110,                                                                                                                               +
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
                       "Node Type": "Nested Loop",                                                                                                                            +
                       "Parent Relationship": "Outer",                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                               +
                       "Join Type": "Inner",                                                                                                                                  +
                       "Startup Cost": 0.11,                                                                                                                                  +
                       "Total Cost": 395.45,                                                                                                                                  +
                       "Plan Rows": 1,                                                                                                                                        +
                       "Plan Width": 68,                                                                                                                                      +
                       "Actual Startup Time": 14297.321,                                                                                                                      +
                       "Actual Total Time": 203315.402,                                                                                                                       +
                       "Actual Rows": 65,                                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                                     +
                       "Inner Unique": true,                                                                                                                                  +
                       "Join Filter": "(ci.person_id = n.id)",                                                                                                                +
                       "Rows Removed by Join Filter": 0,                                                                                                                      +
                       "Shared Hit Blocks": 233233,                                                                                                                           +
                       "Shared Read Blocks": 38110,                                                                                                                           +
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
                           "Node Type": "Nested Loop",                                                                                                                        +
                           "Parent Relationship": "Outer",                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                           +
                           "Join Type": "Inner",                                                                                                                              +
                           "Startup Cost": 0.10,                                                                                                                              +
                           "Total Cost": 394.18,                                                                                                                              +
                           "Plan Rows": 1,                                                                                                                                    +
                           "Plan Width": 61,                                                                                                                                  +
                           "Actual Startup Time": 5110.927,                                                                                                                   +
                           "Actual Total Time": 195516.101,                                                                                                                   +
                           "Actual Rows": 12691,                                                                                                                              +
                           "Actual Loops": 1,                                                                                                                                 +
                           "Inner Unique": true,                                                                                                                              +
                           "Join Filter": "(mi.info_type_id = it.id)",                                                                                                        +
                           "Rows Removed by Join Filter": 0,                                                                                                                  +
                           "Shared Hit Blocks": 183669,                                                                                                                       +
                           "Shared Read Blocks": 36875,                                                                                                                       +
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
                               "Node Type": "Nested Loop",                                                                                                                    +
                               "Parent Relationship": "Outer",                                                                                                                +
                               "Parallel Aware": false,                                                                                                                       +
                               "Join Type": "Inner",                                                                                                                          +
                               "Startup Cost": 0.10,                                                                                                                          +
                               "Total Cost": 394.13,                                                                                                                          +
                               "Plan Rows": 1,                                                                                                                                +
                               "Plan Width": 65,                                                                                                                              +
                               "Actual Startup Time": 5110.872,                                                                                                               +
                               "Actual Total Time": 195496.007,                                                                                                               +
                               "Actual Rows": 12691,                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                             +
                               "Inner Unique": true,                                                                                                                          +
                               "Shared Hit Blocks": 183668,                                                                                                                   +
                               "Shared Read Blocks": 36875,                                                                                                                   +
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
                                   "Node Type": "Nested Loop",                                                                                                                +
                                   "Parent Relationship": "Outer",                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                   +
                                   "Join Type": "Inner",                                                                                                                      +
                                   "Startup Cost": 0.08,                                                                                                                      +
                                   "Total Cost": 393.22,                                                                                                                      +
                                   "Plan Rows": 1,                                                                                                                            +
                                   "Plan Width": 53,                                                                                                                          +
                                   "Actual Startup Time": 5095.315,                                                                                                           +
                                   "Actual Total Time": 186765.482,                                                                                                           +
                                   "Actual Rows": 12761,                                                                                                                      +
                                   "Actual Loops": 1,                                                                                                                         +
                                   "Inner Unique": false,                                                                                                                     +
                                   "Shared Hit Blocks": 134148,                                                                                                               +
                                   "Shared Read Blocks": 35530,                                                                                                               +
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
                                       "Node Type": "Nested Loop",                                                                                                            +
                                       "Parent Relationship": "Outer",                                                                                                        +
                                       "Parallel Aware": false,                                                                                                               +
                                       "Join Type": "Inner",                                                                                                                  +
                                       "Startup Cost": 0.07,                                                                                                                  +
                                       "Total Cost": 392.90,                                                                                                                  +
                                       "Plan Rows": 1,                                                                                                                        +
                                       "Plan Width": 49,                                                                                                                      +
                                       "Actual Startup Time": 5058.244,                                                                                                       +
                                       "Actual Total Time": 174257.636,                                                                                                       +
                                       "Actual Rows": 4439,                                                                                                                   +
                                       "Actual Loops": 1,                                                                                                                     +
                                       "Inner Unique": false,                                                                                                                 +
                                       "Join Filter": "(t.id = ci.movie_id)",                                                                                                 +
                                       "Rows Removed by Join Filter": 0,                                                                                                      +
                                       "Shared Hit Blocks": 117407,                                                                                                           +
                                       "Shared Read Blocks": 33973,                                                                                                           +
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
                                           "Node Type": "Nested Loop",                                                                                                        +
                                           "Parent Relationship": "Outer",                                                                                                    +
                                           "Parallel Aware": false,                                                                                                           +
                                           "Join Type": "Inner",                                                                                                              +
                                           "Startup Cost": 0.05,                                                                                                              +
                                           "Total Cost": 392.38,                                                                                                              +
                                           "Plan Rows": 2,                                                                                                                    +
                                           "Plan Width": 33,                                                                                                                  +
                                           "Actual Startup Time": 148.228,                                                                                                    +
                                           "Actual Total Time": 73234.634,                                                                                                    +
                                           "Actual Rows": 738,                                                                                                                +
                                           "Actual Loops": 1,                                                                                                                 +
                                           "Inner Unique": false,                                                                                                             +
                                           "Join Filter": "(t.id = mi.movie_id)",                                                                                             +
                                           "Rows Removed by Join Filter": 0,                                                                                                  +
                                           "Shared Hit Blocks": 38295,                                                                                                        +
                                           "Shared Read Blocks": 16080,                                                                                                       +
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
                                               "Node Type": "Nested Loop",                                                                                                    +
                                               "Parent Relationship": "Outer",                                                                                                +
                                               "Parallel Aware": false,                                                                                                       +
                                               "Join Type": "Inner",                                                                                                          +
                                               "Startup Cost": 0.04,                                                                                                          +
                                               "Total Cost": 389.92,                                                                                                          +
                                               "Plan Rows": 16,                                                                                                               +
                                               "Plan Width": 25,                                                                                                              +
                                               "Actual Startup Time": 96.195,                                                                                                 +
                                               "Actual Total Time": 41677.432,                                                                                                +
                                               "Actual Rows": 495,                                                                                                            +
                                               "Actual Loops": 1,                                                                                                             +
                                               "Inner Unique": true,                                                                                                          +
                                               "Shared Hit Blocks": 34647,                                                                                                    +
                                               "Shared Read Blocks": 11704,                                                                                                   +
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
                                                   "Node Type": "Nested Loop",                                                                                                +
                                                   "Parent Relationship": "Outer",                                                                                            +
                                                   "Parallel Aware": false,                                                                                                   +
                                                   "Join Type": "Inner",                                                                                                      +
                                                   "Startup Cost": 0.03,                                                                                                      +
                                                   "Total Cost": 385.61,                                                                                                      +
                                                   "Plan Rows": 101,                                                                                                          +
                                                   "Plan Width": 4,                                                                                                           +
                                                   "Actual Startup Time": 56.243,                                                                                             +
                                                   "Actual Total Time": 11365.357,                                                                                            +
                                                   "Actual Rows": 9696,                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                         +
                                                   "Inner Unique": false,                                                                                                     +
                                                   "Shared Hit Blocks": 2985,                                                                                                 +
                                                   "Shared Read Blocks": 4512,                                                                                                +
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
                                                       "Node Type": "Index Scan",                                                                                             +
                                                       "Parent Relationship": "Outer",                                                                                        +
                                                       "Parallel Aware": false,                                                                                               +
                                                       "Scan Direction": "Forward",                                                                                           +
                                                       "Index Name": "keyword_idx_keyword",                                                                                   +
                                                       "Relation Name": "keyword",                                                                                            +
                                                       "Alias": "k",                                                                                                          +
                                                       "Startup Cost": 0.01,                                                                                                  +
                                                       "Total Cost": 18.40,                                                                                                   +
                                                       "Plan Rows": 3,                                                                                                        +
                                                       "Plan Width": 4,                                                                                                       +
                                                       "Actual Startup Time": 14.188,                                                                                         +
                                                       "Actual Total Time": 33.118,                                                                                           +
                                                       "Actual Rows": 3,                                                                                                      +
                                                       "Actual Loops": 1,                                                                                                     +
                                                       "Index Cond": "(keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))",                                   +
                                                       "Rows Removed by Index Recheck": 0,                                                                                    +
                                                       "Shared Hit Blocks": 7,                                                                                                +
                                                       "Shared Read Blocks": 8,                                                                                               +
                                                       "Shared Dirtied Blocks": 0,                                                                                            +
                                                       "Shared Written Blocks": 0,                                                                                            +
                                                       "Local Hit Blocks": 0,                                                                                                 +
                                                       "Local Read Blocks": 0,                                                                                                +
                                                       "Local Dirtied Blocks": 0,                                                                                             +
                                                       "Local Written Blocks": 0,                                                                                             +
                                                       "Temp Read Blocks": 0,                                                                                                 +
                                                       "Temp Written Blocks": 0                                                                                               +
                                                     },                                                                                                                       +
                                                     {                                                                                                                        +
                                                       "Node Type": "Index Scan",                                                                                             +
                                                       "Parent Relationship": "Inner",                                                                                        +
                                                       "Parallel Aware": false,                                                                                               +
                                                       "Scan Direction": "Forward",                                                                                           +
                                                       "Index Name": "keyword_id_movie_keyword",                                                                              +
                                                       "Relation Name": "movie_keyword",                                                                                      +
                                                       "Alias": "mk",                                                                                                         +
                                                       "Startup Cost": 0.01,                                                                                                  +
                                                       "Total Cost": 122.40,                                                                                                  +
                                                       "Plan Rows": 39,                                                                                                       +
                                                       "Plan Width": 8,                                                                                                       +
                                                       "Actual Startup Time": 27.771,                                                                                         +
                                                       "Actual Total Time": 3772.803,                                                                                         +
                                                       "Actual Rows": 3232,                                                                                                   +
                                                       "Actual Loops": 3,                                                                                                     +
                                                       "Index Cond": "(keyword_id = k.id)",                                                                                   +
                                                       "Rows Removed by Index Recheck": 0,                                                                                    +
                                                       "Shared Hit Blocks": 2978,                                                                                             +
                                                       "Shared Read Blocks": 4504,                                                                                            +
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
                                                   "Node Type": "Index Scan",                                                                                                 +
                                                   "Parent Relationship": "Inner",                                                                                            +
                                                   "Parallel Aware": false,                                                                                                   +
                                                   "Scan Direction": "Forward",                                                                                               +
                                                   "Index Name": "title_idx_id",                                                                                              +
                                                   "Relation Name": "title",                                                                                                  +
                                                   "Alias": "t",                                                                                                              +
                                                   "Startup Cost": 0.01,                                                                                                      +
                                                   "Total Cost": 0.04,                                                                                                        +
                                                   "Plan Rows": 1,                                                                                                            +
                                                   "Plan Width": 21,                                                                                                          +
                                                   "Actual Startup Time": 3.123,                                                                                              +
                                                   "Actual Total Time": 3.123,                                                                                                +
                                                   "Actual Rows": 0,                                                                                                          +
                                                   "Actual Loops": 9696,                                                                                                      +
                                                   "Index Cond": "(id = mk.movie_id)",                                                                                        +
                                                   "Rows Removed by Index Recheck": 0,                                                                                        +
                                                   "Filter": "(production_year > 2010)",                                                                                      +
                                                   "Rows Removed by Filter": 1,                                                                                               +
                                                   "Shared Hit Blocks": 31662,                                                                                                +
                                                   "Shared Read Blocks": 7192,                                                                                                +
                                                   "Shared Dirtied Blocks": 0,                                                                                                +
                                                   "Shared Written Blocks": 0,                                                                                                +
                                                   "Local Hit Blocks": 0,                                                                                                     +
                                                   "Local Read Blocks": 0,                                                                                                    +
                                                   "Local Dirtied Blocks": 0,                                                                                                 +
                                                   "Local Written Blocks": 0,                                                                                                 +
                                                   "Temp Read Blocks": 0,                                                                                                     +
                                                   "Temp Written Blocks": 0                                                                                                   +
                                                 }                                                                                                                            +
                                               ]                                                                                                                              +
                                             },                                                                                                                               +
                                             {                                                                                                                                +
                                               "Node Type": "Index Scan",                                                                                                     +
                                               "Parent Relationship": "Inner",                                                                                                +
                                               "Parallel Aware": false,                                                                                                       +
                                               "Scan Direction": "Forward",                                                                                                   +
                                               "Index Name": "movie_id_movie_info",                                                                                           +
                                               "Relation Name": "movie_info",                                                                                                 +
                                               "Alias": "mi",                                                                                                                 +
                                               "Startup Cost": 0.01,                                                                                                          +
                                               "Total Cost": 0.15,                                                                                                            +
                                               "Plan Rows": 1,                                                                                                                +
                                               "Plan Width": 8,                                                                                                               +
                                               "Actual Startup Time": 34.318,                                                                                                 +
                                               "Actual Total Time": 63.744,                                                                                                   +
                                               "Actual Rows": 1,                                                                                                              +
                                               "Actual Loops": 495,                                                                                                           +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                                                      +
                                               "Rows Removed by Index Recheck": 0,                                                                                            +
                                               "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))",                           +
                                               "Rows Removed by Filter": 70,                                                                                                  +
                                               "Shared Hit Blocks": 3648,                                                                                                     +
                                               "Shared Read Blocks": 4376,                                                                                                    +
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
                                         },                                                                                                                                   +
                                         {                                                                                                                                    +
                                           "Node Type": "Index Scan",                                                                                                         +
                                           "Parent Relationship": "Inner",                                                                                                    +
                                           "Parallel Aware": false,                                                                                                           +
                                           "Scan Direction": "Forward",                                                                                                       +
                                           "Index Name": "movie_id_cast_info",                                                                                                +
                                           "Relation Name": "cast_info",                                                                                                      +
                                           "Alias": "ci",                                                                                                                     +
                                           "Startup Cost": 0.02,                                                                                                              +
                                           "Total Cost": 0.26,                                                                                                                +
                                           "Plan Rows": 1,                                                                                                                    +
                                           "Plan Width": 16,                                                                                                                  +
                                           "Actual Startup Time": 94.987,                                                                                                     +
                                           "Actual Total Time": 136.874,                                                                                                      +
                                           "Actual Rows": 6,                                                                                                                  +
                                           "Actual Loops": 738,                                                                                                               +
                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                          +
                                           "Rows Removed by Index Recheck": 0,                                                                                                +
                                           "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                           "Rows Removed by Filter": 128,                                                                                                     +
                                           "Shared Hit Blocks": 79112,                                                                                                        +
                                           "Shared Read Blocks": 17893,                                                                                                       +
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
                                     },                                                                                                                                       +
                                     {                                                                                                                                        +
                                       "Node Type": "Index Scan",                                                                                                             +
                                       "Parent Relationship": "Inner",                                                                                                        +
                                       "Parallel Aware": false,                                                                                                               +
                                       "Scan Direction": "Forward",                                                                                                           +
                                       "Index Name": "person_id_aka_name",                                                                                                    +
                                       "Relation Name": "aka_name",                                                                                                           +
                                       "Alias": "an",                                                                                                                         +
                                       "Startup Cost": 0.01,                                                                                                                  +
                                       "Total Cost": 0.06,                                                                                                                    +
                                       "Plan Rows": 2,                                                                                                                        +
                                       "Plan Width": 4,                                                                                                                       +
                                       "Actual Startup Time": 2.496,                                                                                                          +
                                       "Actual Total Time": 2.813,                                                                                                            +
                                       "Actual Rows": 3,                                                                                                                      +
                                       "Actual Loops": 4439,                                                                                                                  +
                                       "Index Cond": "(person_id = ci.person_id)",                                                                                            +
                                       "Rows Removed by Index Recheck": 0,                                                                                                    +
                                       "Shared Hit Blocks": 16741,                                                                                                            +
                                       "Shared Read Blocks": 1557,                                                                                                            +
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
                                 },                                                                                                                                           +
                                 {                                                                                                                                            +
                                   "Node Type": "Index Scan",                                                                                                                 +
                                   "Parent Relationship": "Inner",                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                   +
                                   "Scan Direction": "Forward",                                                                                                               +
                                   "Index Name": "char_name_pkey",                                                                                                            +
                                   "Relation Name": "char_name",                                                                                                              +
                                   "Alias": "chn",                                                                                                                            +
                                   "Startup Cost": 0.01,                                                                                                                      +
                                   "Total Cost": 0.18,                                                                                                                        +
                                   "Plan Rows": 1,                                                                                                                            +
                                   "Plan Width": 20,                                                                                                                          +
                                   "Actual Startup Time": 0.682,                                                                                                              +
                                   "Actual Total Time": 0.682,                                                                                                                +
                                   "Actual Rows": 1,                                                                                                                          +
                                   "Actual Loops": 12761,                                                                                                                     +
                                   "Index Cond": "(id = ci.person_role_id)",                                                                                                  +
                                   "Rows Removed by Index Recheck": 0,                                                                                                        +
                                   "Shared Hit Blocks": 49520,                                                                                                                +
                                   "Shared Read Blocks": 1345,                                                                                                                +
                                   "Shared Dirtied Blocks": 0,                                                                                                                +
                                   "Shared Written Blocks": 0,                                                                                                                +
                                   "Local Hit Blocks": 0,                                                                                                                     +
                                   "Local Read Blocks": 0,                                                                                                                    +
                                   "Local Dirtied Blocks": 0,                                                                                                                 +
                                   "Local Written Blocks": 0,                                                                                                                 +
                                   "Temp Read Blocks": 0,                                                                                                                     +
                                   "Temp Written Blocks": 0                                                                                                                   +
                                 }                                                                                                                                            +
                               ]                                                                                                                                              +
                             },                                                                                                                                               +
                             {                                                                                                                                                +
                               "Node Type": "Materialize",                                                                                                                    +
                               "Parent Relationship": "Inner",                                                                                                                +
                               "Parallel Aware": false,                                                                                                                       +
                               "Startup Cost": 0.00,                                                                                                                          +
                               "Total Cost": 0.05,                                                                                                                            +
                               "Plan Rows": 1,                                                                                                                                +
                               "Plan Width": 4,                                                                                                                               +
                               "Actual Startup Time": 0.000,                                                                                                                  +
                               "Actual Total Time": 0.000,                                                                                                                    +
                               "Actual Rows": 1,                                                                                                                              +
                               "Actual Loops": 12691,                                                                                                                         +
                               "Shared Hit Blocks": 1,                                                                                                                        +
                               "Shared Read Blocks": 0,                                                                                                                       +
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
                                   "Node Type": "Seq Scan",                                                                                                                   +
                                   "Parent Relationship": "Outer",                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                   +
                                   "Relation Name": "info_type",                                                                                                              +
                                   "Alias": "it",                                                                                                                             +
                                   "Startup Cost": 0.00,                                                                                                                      +
                                   "Total Cost": 0.05,                                                                                                                        +
                                   "Plan Rows": 1,                                                                                                                            +
                                   "Plan Width": 4,                                                                                                                           +
                                   "Actual Startup Time": 0.032,                                                                                                              +
                                   "Actual Total Time": 0.032,                                                                                                                +
                                   "Actual Rows": 1,                                                                                                                          +
                                   "Actual Loops": 1,                                                                                                                         +
                                   "Filter": "((info)::text = 'release dates'::text)",                                                                                        +
                                   "Rows Removed by Filter": 15,                                                                                                              +
                                   "Shared Hit Blocks": 1,                                                                                                                    +
                                   "Shared Read Blocks": 0,                                                                                                                   +
                                   "Shared Dirtied Blocks": 0,                                                                                                                +
                                   "Shared Written Blocks": 0,                                                                                                                +
                                   "Local Hit Blocks": 0,                                                                                                                     +
                                   "Local Read Blocks": 0,                                                                                                                    +
                                   "Local Dirtied Blocks": 0,                                                                                                                 +
                                   "Local Written Blocks": 0,                                                                                                                 +
                                   "Temp Read Blocks": 0,                                                                                                                     +
                                   "Temp Written Blocks": 0                                                                                                                   +
                                 }                                                                                                                                            +
                               ]                                                                                                                                              +
                             }                                                                                                                                                +
                           ]                                                                                                                                                  +
                         },                                                                                                                                                   +
                         {                                                                                                                                                    +
                           "Node Type": "Index Scan",                                                                                                                         +
                           "Parent Relationship": "Inner",                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                           +
                           "Scan Direction": "Forward",                                                                                                                       +
                           "Index Name": "name_pkey",                                                                                                                         +
                           "Relation Name": "name",                                                                                                                           +
                           "Alias": "n",                                                                                                                                      +
                           "Startup Cost": 0.01,                                                                                                                              +
                           "Total Cost": 0.25,                                                                                                                                +
                           "Plan Rows": 1,                                                                                                                                    +
                           "Plan Width": 19,                                                                                                                                  +
                           "Actual Startup Time": 0.613,                                                                                                                      +
                           "Actual Total Time": 0.613,                                                                                                                        +
                           "Actual Rows": 0,                                                                                                                                  +
                           "Actual Loops": 12691,                                                                                                                             +
                           "Index Cond": "(id = an.person_id)",                                                                                                               +
                           "Rows Removed by Index Recheck": 0,                                                                                                                +
                           "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                                             +
                           "Rows Removed by Filter": 1,                                                                                                                       +
                           "Shared Hit Blocks": 49564,                                                                                                                        +
                           "Shared Read Blocks": 1235,                                                                                                                        +
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
                     },                                                                                                                                                       +
                     {                                                                                                                                                        +
                       "Node Type": "Materialize",                                                                                                                            +
                       "Parent Relationship": "Inner",                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                               +
                       "Startup Cost": 0.00,                                                                                                                                  +
                       "Total Cost": 0.03,                                                                                                                                    +
                       "Plan Rows": 1,                                                                                                                                        +
                       "Plan Width": 4,                                                                                                                                       +
                       "Actual Startup Time": 0.001,                                                                                                                          +
                       "Actual Total Time": 0.001,                                                                                                                            +
                       "Actual Rows": 1,                                                                                                                                      +
                       "Actual Loops": 65,                                                                                                                                    +
                       "Shared Hit Blocks": 1,                                                                                                                                +
                       "Shared Read Blocks": 0,                                                                                                                               +
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
                           "Relation Name": "role_type",                                                                                                                      +
                           "Alias": "rt",                                                                                                                                     +
                           "Startup Cost": 0.00,                                                                                                                              +
                           "Total Cost": 0.03,                                                                                                                                +
                           "Plan Rows": 1,                                                                                                                                    +
                           "Plan Width": 4,                                                                                                                                   +
                           "Actual Startup Time": 0.014,                                                                                                                      +
                           "Actual Total Time": 0.014,                                                                                                                        +
                           "Actual Rows": 1,                                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                                 +
                           "Filter": "((role)::text = 'actress'::text)",                                                                                                      +
                           "Rows Removed by Filter": 1,                                                                                                                       +
                           "Shared Hit Blocks": 1,                                                                                                                            +
                           "Shared Read Blocks": 0,                                                                                                                           +
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
                 },                                                                                                                                                           +
                 {                                                                                                                                                            +
                   "Node Type": "Index Scan",                                                                                                                                 +
                   "Parent Relationship": "Inner",                                                                                                                            +
                   "Parallel Aware": false,                                                                                                                                   +
                   "Scan Direction": "Forward",                                                                                                                               +
                   "Index Name": "movie_id_movie_companies",                                                                                                                  +
                   "Relation Name": "movie_companies",                                                                                                                        +
                   "Alias": "mc",                                                                                                                                             +
                   "Startup Cost": 0.01,                                                                                                                                      +
                   "Total Cost": 0.03,                                                                                                                                        +
                   "Plan Rows": 2,                                                                                                                                            +
                   "Plan Width": 8,                                                                                                                                           +
                   "Actual Startup Time": 2.784,                                                                                                                              +
                   "Actual Total Time": 3.444,                                                                                                                                +
                   "Actual Rows": 14,                                                                                                                                         +
                   "Actual Loops": 65,                                                                                                                                        +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                                                  +
                   "Rows Removed by Index Recheck": 0,                                                                                                                        +
                   "Shared Hit Blocks": 296,                                                                                                                                  +
                   "Shared Read Blocks": 19,                                                                                                                                  +
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
             },                                                                                                                                                               +
             {                                                                                                                                                                +
               "Node Type": "Index Scan",                                                                                                                                     +
               "Parent Relationship": "Inner",                                                                                                                                +
               "Parallel Aware": false,                                                                                                                                       +
               "Scan Direction": "Forward",                                                                                                                                   +
               "Index Name": "company_name_pkey",                                                                                                                             +
               "Relation Name": "company_name",                                                                                                                               +
               "Alias": "cn",                                                                                                                                                 +
               "Startup Cost": 0.01,                                                                                                                                          +
               "Total Cost": 0.02,                                                                                                                                            +
               "Plan Rows": 1,                                                                                                                                                +
               "Plan Width": 4,                                                                                                                                               +
               "Actual Startup Time": 0.859,                                                                                                                                  +
               "Actual Total Time": 0.859,                                                                                                                                    +
               "Actual Rows": 0,                                                                                                                                              +
               "Actual Loops": 892,                                                                                                                                           +
               "Index Cond": "(id = mc.company_id)",                                                                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                                                                            +
               "Filter": "((country_code)::text = '[us]'::text)",                                                                                                             +
               "Rows Removed by Filter": 1,                                                                                                                                   +
               "Shared Hit Blocks": 3505,                                                                                                                                     +
               "Shared Read Blocks": 65,                                                                                                                                      +
               "Shared Dirtied Blocks": 0,                                                                                                                                    +
               "Shared Written Blocks": 0,                                                                                                                                    +
               "Local Hit Blocks": 0,                                                                                                                                         +
               "Local Read Blocks": 0,                                                                                                                                        +
               "Local Dirtied Blocks": 0,                                                                                                                                     +
               "Local Written Blocks": 0,                                                                                                                                     +
               "Temp Read Blocks": 0,                                                                                                                                         +
               "Temp Written Blocks": 0                                                                                                                                       +
             }                                                                                                                                                                +
           ]                                                                                                                                                                  +
         }                                                                                                                                                                    +
       ]                                                                                                                                                                      +
     },                                                                                                                                                                       +
     "Planning Time": 11608.853,                                                                                                                                              +
     "Triggers": [                                                                                                                                                            +
     ],                                                                                                                                                                       +
     "Execution Time": 204352.077                                                                                                                                             +
   }                                                                                                                                                                          +
 ]
(1 row)

