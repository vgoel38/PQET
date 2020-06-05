                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                       +
   {                                                                                                                                                     +
     "Plan": {                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                         +
       "Strategy": "Plain",                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                         +
       "Parallel Aware": false,                                                                                                                          +
       "Startup Cost": 904.33,                                                                                                                           +
       "Total Cost": 904.33,                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                   +
       "Plan Width": 128,                                                                                                                                +
       "Actual Startup Time": 1670552.879,                                                                                                               +
       "Actual Total Time": 1670552.879,                                                                                                                 +
       "Actual Rows": 1,                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                +
       "Shared Hit Blocks": 92247697,                                                                                                                    +
       "Shared Read Blocks": 407622,                                                                                                                     +
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
           "Node Type": "Nested Loop",                                                                                                                   +
           "Parent Relationship": "Outer",                                                                                                               +
           "Parallel Aware": false,                                                                                                                      +
           "Join Type": "Inner",                                                                                                                         +
           "Startup Cost": 0.12,                                                                                                                         +
           "Total Cost": 904.33,                                                                                                                         +
           "Plan Rows": 1,                                                                                                                               +
           "Plan Width": 80,                                                                                                                             +
           "Actual Startup Time": 49721.055,                                                                                                             +
           "Actual Total Time": 1670546.685,                                                                                                             +
           "Actual Rows": 2825,                                                                                                                          +
           "Actual Loops": 1,                                                                                                                            +
           "Inner Unique": true,                                                                                                                         +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                  +
           "Rows Removed by Join Filter": 182,                                                                                                           +
           "Shared Hit Blocks": 92247697,                                                                                                                +
           "Shared Read Blocks": 407622,                                                                                                                 +
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
               "Node Type": "Nested Loop",                                                                                                               +
               "Parent Relationship": "Outer",                                                                                                           +
               "Parallel Aware": false,                                                                                                                  +
               "Join Type": "Inner",                                                                                                                     +
               "Startup Cost": 0.12,                                                                                                                     +
               "Total Cost": 904.28,                                                                                                                     +
               "Plan Rows": 1,                                                                                                                           +
               "Plan Width": 84,                                                                                                                         +
               "Actual Startup Time": 49721.006,                                                                                                         +
               "Actual Total Time": 1670542.576,                                                                                                         +
               "Actual Rows": 3007,                                                                                                                      +
               "Actual Loops": 1,                                                                                                                        +
               "Inner Unique": true,                                                                                                                     +
               "Shared Hit Blocks": 92247696,                                                                                                            +
               "Shared Read Blocks": 407622,                                                                                                             +
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
                   "Node Type": "Nested Loop",                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                       +
                   "Parallel Aware": false,                                                                                                              +
                   "Join Type": "Inner",                                                                                                                 +
                   "Startup Cost": 0.11,                                                                                                                 +
                   "Total Cost": 904.24,                                                                                                                 +
                   "Plan Rows": 2,                                                                                                                       +
                   "Plan Width": 88,                                                                                                                     +
                   "Actual Startup Time": 1144.860,                                                                                                      +
                   "Actual Total Time": 1636340.378,                                                                                                     +
                   "Actual Rows": 687361,                                                                                                                +
                   "Actual Loops": 1,                                                                                                                    +
                   "Inner Unique": true,                                                                                                                 +
                   "Join Filter": "(mi.movie_id = t.id)",                                                                                                +
                   "Rows Removed by Join Filter": 0,                                                                                                     +
                   "Shared Hit Blocks": 89497228,                                                                                                        +
                   "Shared Read Blocks": 403871,                                                                                                         +
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
                       "Node Type": "Nested Loop",                                                                                                       +
                       "Parent Relationship": "Outer",                                                                                                   +
                       "Parallel Aware": false,                                                                                                          +
                       "Join Type": "Inner",                                                                                                             +
                       "Startup Cost": 0.10,                                                                                                             +
                       "Total Cost": 904.16,                                                                                                             +
                       "Plan Rows": 2,                                                                                                                   +
                       "Plan Width": 91,                                                                                                                 +
                       "Actual Startup Time": 1098.832,                                                                                                  +
                       "Actual Total Time": 1583754.788,                                                                                                 +
                       "Actual Rows": 687361,                                                                                                            +
                       "Actual Loops": 1,                                                                                                                +
                       "Inner Unique": true,                                                                                                             +
                       "Shared Hit Blocks": 86755269,                                                                                                    +
                       "Shared Read Blocks": 395251,                                                                                                     +
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
                           "Node Type": "Nested Loop",                                                                                                   +
                           "Parent Relationship": "Outer",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Join Type": "Inner",                                                                                                         +
                           "Startup Cost": 0.08,                                                                                                         +
                           "Total Cost": 903.78,                                                                                                         +
                           "Plan Rows": 2,                                                                                                               +
                           "Plan Width": 80,                                                                                                             +
                           "Actual Startup Time": 1083.109,                                                                                              +
                           "Actual Total Time": 1495369.577,                                                                                             +
                           "Actual Rows": 687361,                                                                                                        +
                           "Actual Loops": 1,                                                                                                            +
                           "Inner Unique": false,                                                                                                        +
                           "Join Filter": "(mi.movie_id = ci.movie_id)",                                                                                 +
                           "Rows Removed by Join Filter": 0,                                                                                             +
                           "Shared Hit Blocks": 84016153,                                                                                                +
                           "Shared Read Blocks": 382889,                                                                                                 +
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
                               "Node Type": "Nested Loop",                                                                                               +
                               "Parent Relationship": "Outer",                                                                                           +
                               "Parallel Aware": false,                                                                                                  +
                               "Join Type": "Inner",                                                                                                     +
                               "Startup Cost": 0.07,                                                                                                     +
                               "Total Cost": 903.25,                                                                                                     +
                               "Plan Rows": 2,                                                                                                           +
                               "Plan Width": 72,                                                                                                         +
                               "Actual Startup Time": 125.039,                                                                                           +
                               "Actual Total Time": 304762.808,                                                                                          +
                               "Actual Rows": 866603,                                                                                                    +
                               "Actual Loops": 1,                                                                                                        +
                               "Inner Unique": false,                                                                                                    +
                               "Join Filter": "(mi.movie_id = mc.movie_id)",                                                                             +
                               "Rows Removed by Join Filter": 0,                                                                                         +
                               "Shared Hit Blocks": 1585530,                                                                                             +
                               "Shared Read Blocks": 183920,                                                                                             +
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
                                   "Node Type": "Nested Loop",                                                                                           +
                                   "Parent Relationship": "Outer",                                                                                       +
                                   "Parallel Aware": false,                                                                                              +
                                   "Join Type": "Inner",                                                                                                 +
                                   "Startup Cost": 0.05,                                                                                                 +
                                   "Total Cost": 903.09,                                                                                                 +
                                   "Plan Rows": 1,                                                                                                       +
                                   "Plan Width": 64,                                                                                                     +
                                   "Actual Startup Time": 124.792,                                                                                       +
                                   "Actual Total Time": 274529.968,                                                                                      +
                                   "Actual Rows": 67732,                                                                                                 +
                                   "Actual Loops": 1,                                                                                                    +
                                   "Inner Unique": false,                                                                                                +
                                   "Join Filter": "(mi_idx.movie_id = mi.movie_id)",                                                                     +
                                   "Rows Removed by Join Filter": 0,                                                                                     +
                                   "Shared Hit Blocks": 1261952,                                                                                         +
                                   "Shared Read Blocks": 166811,                                                                                         +
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
                                       "Node Type": "Nested Loop",                                                                                       +
                                       "Parent Relationship": "Outer",                                                                                   +
                                       "Parallel Aware": false,                                                                                          +
                                       "Join Type": "Inner",                                                                                             +
                                       "Startup Cost": 0.04,                                                                                             +
                                       "Total Cost": 902.17,                                                                                             +
                                       "Plan Rows": 6,                                                                                                   +
                                       "Plan Width": 14,                                                                                                 +
                                       "Actual Startup Time": 55.413,                                                                                    +
                                       "Actual Total Time": 35881.800,                                                                                   +
                                       "Actual Rows": 63701,                                                                                             +
                                       "Actual Loops": 1,                                                                                                +
                                       "Inner Unique": true,                                                                                             +
                                       "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                  +
                                       "Rows Removed by Join Filter": 127988,                                                                            +
                                       "Shared Hit Blocks": 318300,                                                                                      +
                                       "Shared Read Blocks": 31124,                                                                                      +
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
                                           "Node Type": "Nested Loop",                                                                                   +
                                           "Parent Relationship": "Outer",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Join Type": "Inner",                                                                                         +
                                           "Startup Cost": 0.04,                                                                                         +
                                           "Total Cost": 901.96,                                                                                         +
                                           "Plan Rows": 710,                                                                                             +
                                           "Plan Width": 18,                                                                                             +
                                           "Actual Startup Time": 55.327,                                                                                +
                                           "Actual Total Time": 35579.330,                                                                               +
                                           "Actual Rows": 191689,                                                                                        +
                                           "Actual Loops": 1,                                                                                            +
                                           "Inner Unique": false,                                                                                        +
                                           "Shared Hit Blocks": 318299,                                                                                  +
                                           "Shared Read Blocks": 31124,                                                                                  +
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
                                               "Node Type": "Nested Loop",                                                                               +
                                               "Parent Relationship": "Outer",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Join Type": "Inner",                                                                                     +
                                               "Startup Cost": 0.03,                                                                                     +
                                               "Total Cost": 896.69,                                                                                     +
                                               "Plan Rows": 236,                                                                                         +
                                               "Plan Width": 4,                                                                                          +
                                               "Actual Startup Time": 54.669,                                                                            +
                                               "Actual Total Time": 19138.364,                                                                           +
                                               "Actual Rows": 76714,                                                                                     +
                                               "Actual Loops": 1,                                                                                        +
                                               "Inner Unique": false,                                                                                    +
                                               "Shared Hit Blocks": 32400,                                                                               +
                                               "Shared Read Blocks": 21098,                                                                              +
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
                                                   "Node Type": "Index Scan",                                                                            +
                                                   "Parent Relationship": "Outer",                                                                       +
                                                   "Parallel Aware": false,                                                                              +
                                                   "Scan Direction": "Forward",                                                                          +
                                                   "Index Name": "keyword_idx_keyword",                                                                  +
                                                   "Relation Name": "keyword",                                                                           +
                                                   "Alias": "k",                                                                                         +
                                                   "Startup Cost": 0.01,                                                                                 +
                                                   "Total Cost": 42.93,                                                                                  +
                                                   "Plan Rows": 7,                                                                                       +
                                                   "Plan Width": 4,                                                                                      +
                                                   "Actual Startup Time": 31.412,                                                                        +
                                                   "Actual Total Time": 251.319,                                                                         +
                                                   "Actual Rows": 7,                                                                                     +
                                                   "Actual Loops": 1,                                                                                    +
                                                   "Index Cond": "(keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))",+
                                                   "Rows Removed by Index Recheck": 0,                                                                   +
                                                   "Shared Hit Blocks": 14,                                                                              +
                                                   "Shared Read Blocks": 17,                                                                             +
                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                   "Shared Written Blocks": 0,                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                +
                                                   "Local Read Blocks": 0,                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                   "Local Written Blocks": 0,                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                +
                                                   "Temp Written Blocks": 0                                                                              +
                                                 },                                                                                                      +
                                                 {                                                                                                       +
                                                   "Node Type": "Index Scan",                                                                            +
                                                   "Parent Relationship": "Inner",                                                                       +
                                                   "Parallel Aware": false,                                                                              +
                                                   "Scan Direction": "Forward",                                                                          +
                                                   "Index Name": "keyword_id_movie_keyword",                                                             +
                                                   "Relation Name": "movie_keyword",                                                                     +
                                                   "Alias": "mk",                                                                                        +
                                                   "Startup Cost": 0.01,                                                                                 +
                                                   "Total Cost": 121.96,                                                                                 +
                                                   "Plan Rows": 39,                                                                                      +
                                                   "Plan Width": 8,                                                                                      +
                                                   "Actual Startup Time": 15.667,                                                                        +
                                                   "Actual Total Time": 2689.967,                                                                        +
                                                   "Actual Rows": 10959,                                                                                 +
                                                   "Actual Loops": 7,                                                                                    +
                                                   "Index Cond": "(keyword_id = k.id)",                                                                  +
                                                   "Rows Removed by Index Recheck": 0,                                                                   +
                                                   "Shared Hit Blocks": 32386,                                                                           +
                                                   "Shared Read Blocks": 21081,                                                                          +
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
                                             },                                                                                                          +
                                             {                                                                                                           +
                                               "Node Type": "Index Scan",                                                                                +
                                               "Parent Relationship": "Inner",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Scan Direction": "Forward",                                                                              +
                                               "Index Name": "movie_id_movie_info_idx",                                                                  +
                                               "Relation Name": "movie_info_idx",                                                                        +
                                               "Alias": "mi_idx",                                                                                        +
                                               "Startup Cost": 0.01,                                                                                     +
                                               "Total Cost": 0.02,                                                                                       +
                                               "Plan Rows": 3,                                                                                           +
                                               "Plan Width": 14,                                                                                         +
                                               "Actual Startup Time": 0.207,                                                                             +
                                               "Actual Total Time": 0.211,                                                                               +
                                               "Actual Rows": 2,                                                                                         +
                                               "Actual Loops": 76714,                                                                                    +
                                               "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                                               "Rows Removed by Index Recheck": 0,                                                                       +
                                               "Shared Hit Blocks": 285899,                                                                              +
                                               "Shared Read Blocks": 10026,                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                               +
                                               "Shared Written Blocks": 0,                                                                               +
                                               "Local Hit Blocks": 0,                                                                                    +
                                               "Local Read Blocks": 0,                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                +
                                               "Local Written Blocks": 0,                                                                                +
                                               "Temp Read Blocks": 0,                                                                                    +
                                               "Temp Written Blocks": 0                                                                                  +
                                             }                                                                                                           +
                                           ]                                                                                                             +
                                         },                                                                                                              +
                                         {                                                                                                               +
                                           "Node Type": "Materialize",                                                                                   +
                                           "Parent Relationship": "Inner",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Startup Cost": 0.00,                                                                                         +
                                           "Total Cost": 0.05,                                                                                           +
                                           "Plan Rows": 1,                                                                                               +
                                           "Plan Width": 4,                                                                                              +
                                           "Actual Startup Time": 0.000,                                                                                 +
                                           "Actual Total Time": 0.000,                                                                                   +
                                           "Actual Rows": 1,                                                                                             +
                                           "Actual Loops": 191689,                                                                                       +
                                           "Shared Hit Blocks": 1,                                                                                       +
                                           "Shared Read Blocks": 0,                                                                                      +
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
                                               "Node Type": "Seq Scan",                                                                                  +
                                               "Parent Relationship": "Outer",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Relation Name": "info_type",                                                                             +
                                               "Alias": "it2",                                                                                           +
                                               "Startup Cost": 0.00,                                                                                     +
                                               "Total Cost": 0.05,                                                                                       +
                                               "Plan Rows": 1,                                                                                           +
                                               "Plan Width": 4,                                                                                          +
                                               "Actual Startup Time": 0.052,                                                                             +
                                               "Actual Total Time": 0.058,                                                                               +
                                               "Actual Rows": 1,                                                                                         +
                                               "Actual Loops": 1,                                                                                        +
                                               "Filter": "((info)::text = 'votes'::text)",                                                               +
                                               "Rows Removed by Filter": 112,                                                                            +
                                               "Shared Hit Blocks": 1,                                                                                   +
                                               "Shared Read Blocks": 0,                                                                                  +
                                               "Shared Dirtied Blocks": 0,                                                                               +
                                               "Shared Written Blocks": 0,                                                                               +
                                               "Local Hit Blocks": 0,                                                                                    +
                                               "Local Read Blocks": 0,                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                +
                                               "Local Written Blocks": 0,                                                                                +
                                               "Temp Read Blocks": 0,                                                                                    +
                                               "Temp Written Blocks": 0                                                                                  +
                                             }                                                                                                           +
                                           ]                                                                                                             +
                                         }                                                                                                               +
                                       ]                                                                                                                 +
                                     },                                                                                                                  +
                                     {                                                                                                                   +
                                       "Node Type": "Index Scan",                                                                                        +
                                       "Parent Relationship": "Inner",                                                                                   +
                                       "Parallel Aware": false,                                                                                          +
                                       "Scan Direction": "Forward",                                                                                      +
                                       "Index Name": "movie_id_movie_info",                                                                              +
                                       "Relation Name": "movie_info",                                                                                    +
                                       "Alias": "mi",                                                                                                    +
                                       "Startup Cost": 0.01,                                                                                             +
                                       "Total Cost": 0.15,                                                                                               +
                                       "Plan Rows": 1,                                                                                                   +
                                       "Plan Width": 50,                                                                                                 +
                                       "Actual Startup Time": 3.660,                                                                                     +
                                       "Actual Total Time": 3.744,                                                                                       +
                                       "Actual Rows": 1,                                                                                                 +
                                       "Actual Loops": 63701,                                                                                            +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                         +
                                       "Rows Removed by Index Recheck": 0,                                                                               +
                                       "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                                   +
                                       "Rows Removed by Filter": 58,                                                                                     +
                                       "Shared Hit Blocks": 943652,                                                                                      +
                                       "Shared Read Blocks": 135687,                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                            +
                                       "Local Read Blocks": 0,                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                        +
                                       "Local Written Blocks": 0,                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                            +
                                       "Temp Written Blocks": 0                                                                                          +
                                     }                                                                                                                   +
                                   ]                                                                                                                     +
                                 },                                                                                                                      +
                                 {                                                                                                                       +
                                   "Node Type": "Index Scan",                                                                                            +
                                   "Parent Relationship": "Inner",                                                                                       +
                                   "Parallel Aware": false,                                                                                              +
                                   "Scan Direction": "Forward",                                                                                          +
                                   "Index Name": "movie_id_movie_companies",                                                                             +
                                   "Relation Name": "movie_companies",                                                                                   +
                                   "Alias": "mc",                                                                                                        +
                                   "Startup Cost": 0.01,                                                                                                 +
                                   "Total Cost": 0.03,                                                                                                   +
                                   "Plan Rows": 2,                                                                                                       +
                                   "Plan Width": 8,                                                                                                      +
                                   "Actual Startup Time": 0.347,                                                                                         +
                                   "Actual Total Time": 0.434,                                                                                           +
                                   "Actual Rows": 13,                                                                                                    +
                                   "Actual Loops": 67732,                                                                                                +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                             +
                                   "Rows Removed by Index Recheck": 0,                                                                                   +
                                   "Shared Hit Blocks": 323578,                                                                                          +
                                   "Shared Read Blocks": 17109,                                                                                          +
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
                               "Node Type": "Index Scan",                                                                                                +
                               "Parent Relationship": "Inner",                                                                                           +
                               "Parallel Aware": false,                                                                                                  +
                               "Scan Direction": "Forward",                                                                                              +
                               "Index Name": "movie_id_cast_info",                                                                                       +
                               "Relation Name": "cast_info",                                                                                             +
                               "Alias": "ci",                                                                                                            +
                               "Startup Cost": 0.02,                                                                                                     +
                               "Total Cost": 0.26,                                                                                                       +
                               "Plan Rows": 1,                                                                                                           +
                               "Plan Width": 8,                                                                                                          +
                               "Actual Startup Time": 1.177,                                                                                             +
                               "Actual Total Time": 1.372,                                                                                               +
                               "Actual Rows": 1,                                                                                                         +
                               "Actual Loops": 866603,                                                                                                   +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                                 +
                               "Rows Removed by Index Recheck": 0,                                                                                       +
                               "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",            +
                               "Rows Removed by Filter": 93,                                                                                             +
                               "Shared Hit Blocks": 82430623,                                                                                            +
                               "Shared Read Blocks": 198969,                                                                                             +
                               "Shared Dirtied Blocks": 0,                                                                                               +
                               "Shared Written Blocks": 0,                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                +
                               "Local Written Blocks": 0,                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                    +
                               "Temp Written Blocks": 0                                                                                                  +
                             }                                                                                                                           +
                           ]                                                                                                                             +
                         },                                                                                                                              +
                         {                                                                                                                               +
                           "Node Type": "Index Scan",                                                                                                    +
                           "Parent Relationship": "Inner",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Scan Direction": "Forward",                                                                                                  +
                           "Index Name": "name_pkey",                                                                                                    +
                           "Relation Name": "name",                                                                                                      +
                           "Alias": "n",                                                                                                                 +
                           "Startup Cost": 0.01,                                                                                                         +
                           "Total Cost": 0.19,                                                                                                           +
                           "Plan Rows": 1,                                                                                                               +
                           "Plan Width": 19,                                                                                                             +
                           "Actual Startup Time": 0.127,                                                                                                 +
                           "Actual Total Time": 0.127,                                                                                                   +
                           "Actual Rows": 1,                                                                                                             +
                           "Actual Loops": 687361,                                                                                                       +
                           "Index Cond": "(id = ci.person_id)",                                                                                          +
                           "Rows Removed by Index Recheck": 0,                                                                                           +
                           "Shared Hit Blocks": 2739116,                                                                                                 +
                           "Shared Read Blocks": 12362,                                                                                                  +
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
                     },                                                                                                                                  +
                     {                                                                                                                                   +
                       "Node Type": "Index Scan",                                                                                                        +
                       "Parent Relationship": "Inner",                                                                                                   +
                       "Parallel Aware": false,                                                                                                          +
                       "Scan Direction": "Forward",                                                                                                      +
                       "Index Name": "title_idx_id",                                                                                                     +
                       "Relation Name": "title",                                                                                                         +
                       "Alias": "t",                                                                                                                     +
                       "Startup Cost": 0.01,                                                                                                             +
                       "Total Cost": 0.04,                                                                                                               +
                       "Plan Rows": 1,                                                                                                                   +
                       "Plan Width": 21,                                                                                                                 +
                       "Actual Startup Time": 0.075,                                                                                                     +
                       "Actual Total Time": 0.075,                                                                                                       +
                       "Actual Rows": 1,                                                                                                                 +
                       "Actual Loops": 687361,                                                                                                           +
                       "Index Cond": "(id = mk.movie_id)",                                                                                               +
                       "Rows Removed by Index Recheck": 0,                                                                                               +
                       "Shared Hit Blocks": 2741959,                                                                                                     +
                       "Shared Read Blocks": 8620,                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                            +
                       "Temp Written Blocks": 0                                                                                                          +
                     }                                                                                                                                   +
                   ]                                                                                                                                     +
                 },                                                                                                                                      +
                 {                                                                                                                                       +
                   "Node Type": "Index Scan",                                                                                                            +
                   "Parent Relationship": "Inner",                                                                                                       +
                   "Parallel Aware": false,                                                                                                              +
                   "Scan Direction": "Forward",                                                                                                          +
                   "Index Name": "company_name_pkey",                                                                                                    +
                   "Relation Name": "company_name",                                                                                                      +
                   "Alias": "cn",                                                                                                                        +
                   "Startup Cost": 0.01,                                                                                                                 +
                   "Total Cost": 0.02,                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                       +
                   "Plan Width": 4,                                                                                                                      +
                   "Actual Startup Time": 0.049,                                                                                                         +
                   "Actual Total Time": 0.049,                                                                                                           +
                   "Actual Rows": 0,                                                                                                                     +
                   "Actual Loops": 687361,                                                                                                               +
                   "Index Cond": "(id = mc.company_id)",                                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                                   +
                   "Filter": "(name ~~ 'Lionsgate%'::text)",                                                                                             +
                   "Rows Removed by Filter": 1,                                                                                                          +
                   "Shared Hit Blocks": 2750468,                                                                                                         +
                   "Shared Read Blocks": 3751,                                                                                                           +
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
             },                                                                                                                                          +
             {                                                                                                                                           +
               "Node Type": "Materialize",                                                                                                               +
               "Parent Relationship": "Inner",                                                                                                           +
               "Parallel Aware": false,                                                                                                                  +
               "Startup Cost": 0.00,                                                                                                                     +
               "Total Cost": 0.05,                                                                                                                       +
               "Plan Rows": 1,                                                                                                                           +
               "Plan Width": 4,                                                                                                                          +
               "Actual Startup Time": 0.000,                                                                                                             +
               "Actual Total Time": 0.000,                                                                                                               +
               "Actual Rows": 1,                                                                                                                         +
               "Actual Loops": 3007,                                                                                                                     +
               "Shared Hit Blocks": 1,                                                                                                                   +
               "Shared Read Blocks": 0,                                                                                                                  +
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
                   "Relation Name": "info_type",                                                                                                         +
                   "Alias": "it1",                                                                                                                       +
                   "Startup Cost": 0.00,                                                                                                                 +
                   "Total Cost": 0.05,                                                                                                                   +
                   "Plan Rows": 1,                                                                                                                       +
                   "Plan Width": 4,                                                                                                                      +
                   "Actual Startup Time": 0.027,                                                                                                         +
                   "Actual Total Time": 0.056,                                                                                                           +
                   "Actual Rows": 1,                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                    +
                   "Filter": "((info)::text = 'genres'::text)",                                                                                          +
                   "Rows Removed by Filter": 112,                                                                                                        +
                   "Shared Hit Blocks": 1,                                                                                                               +
                   "Shared Read Blocks": 0,                                                                                                              +
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
         }                                                                                                                                               +
       ]                                                                                                                                                 +
     },                                                                                                                                                  +
     "Planning Time": 15452.643,                                                                                                                         +
     "Triggers": [                                                                                                                                       +
     ],                                                                                                                                                  +
     "Execution Time": 1670578.755                                                                                                                       +
   }                                                                                                                                                     +
 ]
(1 row)

