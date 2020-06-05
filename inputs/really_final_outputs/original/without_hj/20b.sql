                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                               +
   {                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                  +
       "Startup Cost": 1030.32,                                                                                                                                                  +
       "Total Cost": 1030.32,                                                                                                                                                    +
       "Plan Rows": 1,                                                                                                                                                           +
       "Plan Width": 32,                                                                                                                                                         +
       "Actual Startup Time": 834103.256,                                                                                                                                        +
       "Actual Total Time": 834103.257,                                                                                                                                          +
       "Actual Rows": 1,                                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                                        +
       "Shared Hit Blocks": 1162486,                                                                                                                                             +
       "Shared Read Blocks": 153027,                                                                                                                                             +
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
           "Node Type": "Nested Loop",                                                                                                                                           +
           "Parent Relationship": "Outer",                                                                                                                                       +
           "Parallel Aware": false,                                                                                                                                              +
           "Join Type": "Inner",                                                                                                                                                 +
           "Startup Cost": 0.10,                                                                                                                                                 +
           "Total Cost": 1030.32,                                                                                                                                                +
           "Plan Rows": 1,                                                                                                                                                       +
           "Plan Width": 17,                                                                                                                                                     +
           "Actual Startup Time": 65457.215,                                                                                                                                     +
           "Actual Total Time": 834103.110,                                                                                                                                      +
           "Actual Rows": 17,                                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                 +
           "Shared Hit Blocks": 1162486,                                                                                                                                         +
           "Shared Read Blocks": 153027,                                                                                                                                         +
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
               "Node Type": "Nested Loop",                                                                                                                                       +
               "Parent Relationship": "Outer",                                                                                                                                   +
               "Parallel Aware": false,                                                                                                                                          +
               "Join Type": "Inner",                                                                                                                                             +
               "Startup Cost": 0.08,                                                                                                                                             +
               "Total Cost": 1030.23,                                                                                                                                            +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 21,                                                                                                                                                 +
               "Actual Startup Time": 65438.725,                                                                                                                                 +
               "Actual Total Time": 833986.377,                                                                                                                                  +
               "Actual Rows": 27,                                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                                +
               "Inner Unique": true,                                                                                                                                             +
               "Shared Hit Blocks": 1162398,                                                                                                                                     +
               "Shared Read Blocks": 153011,                                                                                                                                     +
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
                   "Node Type": "Nested Loop",                                                                                                                                   +
                   "Parent Relationship": "Outer",                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                      +
                   "Join Type": "Inner",                                                                                                                                         +
                   "Startup Cost": 0.07,                                                                                                                                         +
                   "Total Cost": 1030.15,                                                                                                                                        +
                   "Plan Rows": 4,                                                                                                                                               +
                   "Plan Width": 25,                                                                                                                                             +
                   "Actual Startup Time": 2137.588,                                                                                                                              +
                   "Actual Total Time": 553168.838,                                                                                                                              +
                   "Actual Rows": 222518,                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Inner Unique": true,                                                                                                                                         +
                   "Join Filter": "(t.kind_id = kt.id)",                                                                                                                         +
                   "Rows Removed by Join Filter": 22353,                                                                                                                         +
                   "Shared Hit Blocks": 324515,                                                                                                                                  +
                   "Shared Read Blocks": 99239,                                                                                                                                  +
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
                       "Node Type": "Nested Loop",                                                                                                                               +
                       "Parent Relationship": "Outer",                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                  +
                       "Join Type": "Inner",                                                                                                                                     +
                       "Startup Cost": 0.07,                                                                                                                                     +
                       "Total Cost": 1030.11,                                                                                                                                    +
                       "Plan Rows": 26,                                                                                                                                          +
                       "Plan Width": 29,                                                                                                                                         +
                       "Actual Startup Time": 864.115,                                                                                                                           +
                       "Actual Total Time": 552607.061,                                                                                                                          +
                       "Actual Rows": 244871,                                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Inner Unique": false,                                                                                                                                    +
                       "Join Filter": "(t.id = ci.movie_id)",                                                                                                                    +
                       "Rows Removed by Join Filter": 0,                                                                                                                         +
                       "Shared Hit Blocks": 324514,                                                                                                                              +
                       "Shared Read Blocks": 99239,                                                                                                                              +
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
                           "Node Type": "Nested Loop",                                                                                                                           +
                           "Parent Relationship": "Outer",                                                                                                                       +
                           "Parallel Aware": false,                                                                                                                              +
                           "Join Type": "Inner",                                                                                                                                 +
                           "Startup Cost": 0.05,                                                                                                                                 +
                           "Total Cost": 1029.32,                                                                                                                                +
                           "Plan Rows": 3,                                                                                                                                       +
                           "Plan Width": 33,                                                                                                                                     +
                           "Actual Startup Time": 825.668,                                                                                                                       +
                           "Actual Total Time": 66052.069,                                                                                                                       +
                           "Actual Rows": 1872,                                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Inner Unique": true,                                                                                                                                 +
                           "Shared Hit Blocks": 154718,                                                                                                                          +
                           "Shared Read Blocks": 23646,                                                                                                                          +
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
                               "Node Type": "Nested Loop",                                                                                                                       +
                               "Parent Relationship": "Outer",                                                                                                                   +
                               "Parallel Aware": false,                                                                                                                          +
                               "Join Type": "Inner",                                                                                                                             +
                               "Startup Cost": 0.04,                                                                                                                             +
                               "Total Cost": 1029.11,                                                                                                                            +
                               "Plan Rows": 5,                                                                                                                                   +
                               "Plan Width": 8,                                                                                                                                  +
                               "Actual Startup Time": 121.813,                                                                                                                   +
                               "Actual Total Time": 21555.379,                                                                                                                   +
                               "Actual Rows": 8765,                                                                                                                              +
                               "Actual Loops": 1,                                                                                                                                +
                               "Inner Unique": true,                                                                                                                             +
                               "Join Filter": "(cc.status_id = cct2.id)",                                                                                                        +
                               "Rows Removed by Join Filter": 4311,                                                                                                              +
                               "Shared Hit Blocks": 127318,                                                                                                                      +
                               "Shared Read Blocks": 15952,                                                                                                                      +
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
                                   "Startup Cost": 0.04,                                                                                                                         +
                                   "Total Cost": 1029.07,                                                                                                                        +
                                   "Plan Rows": 20,                                                                                                                              +
                                   "Plan Width": 12,                                                                                                                             +
                                   "Actual Startup Time": 121.788,                                                                                                               +
                                   "Actual Total Time": 21534.214,                                                                                                               +
                                   "Actual Rows": 8765,                                                                                                                          +
                                   "Actual Loops": 1,                                                                                                                            +
                                   "Inner Unique": true,                                                                                                                         +
                                   "Join Filter": "(cc.subject_id = cct1.id)",                                                                                                   +
                                   "Rows Removed by Join Filter": 4045,                                                                                                          +
                                   "Shared Hit Blocks": 127317,                                                                                                                  +
                                   "Shared Read Blocks": 15952,                                                                                                                  +
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
                                       "Startup Cost": 0.04,                                                                                                                     +
                                       "Total Cost": 1029.02,                                                                                                                    +
                                       "Plan Rows": 82,                                                                                                                          +
                                       "Plan Width": 16,                                                                                                                         +
                                       "Actual Startup Time": 121.755,                                                                                                           +
                                       "Actual Total Time": 21498.080,                                                                                                           +
                                       "Actual Rows": 12810,                                                                                                                     +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Inner Unique": false,                                                                                                                    +
                                       "Shared Hit Blocks": 127316,                                                                                                              +
                                       "Shared Read Blocks": 15952,                                                                                                              +
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
                                           "Startup Cost": 0.03,                                                                                                                 +
                                           "Total Cost": 1025.23,                                                                                                                +
                                           "Plan Rows": 270,                                                                                                                     +
                                           "Plan Width": 4,                                                                                                                      +
                                           "Actual Startup Time": 54.144,                                                                                                        +
                                           "Actual Total Time": 17741.948,                                                                                                       +
                                           "Actual Rows": 35548,                                                                                                                 +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Inner Unique": false,                                                                                                                +
                                           "Shared Hit Blocks": 8737,                                                                                                            +
                                           "Shared Read Blocks": 14908,                                                                                                          +
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
                                               "Node Type": "Index Scan",                                                                                                        +
                                               "Parent Relationship": "Outer",                                                                                                   +
                                               "Parallel Aware": false,                                                                                                          +
                                               "Scan Direction": "Forward",                                                                                                      +
                                               "Index Name": "keyword_idx_keyword",                                                                                              +
                                               "Relation Name": "keyword",                                                                                                       +
                                               "Alias": "k",                                                                                                                     +
                                               "Startup Cost": 0.01,                                                                                                             +
                                               "Total Cost": 49.06,                                                                                                              +
                                               "Plan Rows": 8,                                                                                                                   +
                                               "Plan Width": 4,                                                                                                                  +
                                               "Actual Startup Time": 28.274,                                                                                                    +
                                               "Actual Total Time": 254.208,                                                                                                     +
                                               "Actual Rows": 8,                                                                                                                 +
                                               "Actual Loops": 1,                                                                                                                +
                                               "Index Cond": "(keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))",+
                                               "Rows Removed by Index Recheck": 0,                                                                                               +
                                               "Shared Hit Blocks": 15,                                                                                                          +
                                               "Shared Read Blocks": 20,                                                                                                         +
                                               "Shared Dirtied Blocks": 0,                                                                                                       +
                                               "Shared Written Blocks": 0,                                                                                                       +
                                               "Local Hit Blocks": 0,                                                                                                            +
                                               "Local Read Blocks": 0,                                                                                                           +
                                               "Local Dirtied Blocks": 0,                                                                                                        +
                                               "Local Written Blocks": 0,                                                                                                        +
                                               "Temp Read Blocks": 0,                                                                                                            +
                                               "Temp Written Blocks": 0                                                                                                          +
                                             },                                                                                                                                  +
                                             {                                                                                                                                   +
                                               "Node Type": "Index Scan",                                                                                                        +
                                               "Parent Relationship": "Inner",                                                                                                   +
                                               "Parallel Aware": false,                                                                                                          +
                                               "Scan Direction": "Forward",                                                                                                      +
                                               "Index Name": "keyword_id_movie_keyword",                                                                                         +
                                               "Relation Name": "movie_keyword",                                                                                                 +
                                               "Alias": "mk",                                                                                                                    +
                                               "Startup Cost": 0.01,                                                                                                             +
                                               "Total Cost": 122.02,                                                                                                             +
                                               "Plan Rows": 39,                                                                                                                  +
                                               "Plan Width": 8,                                                                                                                  +
                                               "Actual Startup Time": 29.586,                                                                                                    +
                                               "Actual Total Time": 2182.067,                                                                                                    +
                                               "Actual Rows": 4444,                                                                                                              +
                                               "Actual Loops": 8,                                                                                                                +
                                               "Index Cond": "(keyword_id = k.id)",                                                                                              +
                                               "Rows Removed by Index Recheck": 0,                                                                                               +
                                               "Shared Hit Blocks": 8722,                                                                                                        +
                                               "Shared Read Blocks": 14888,                                                                                                      +
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
                                           "Index Name": "movie_id_complete_cast",                                                                                               +
                                           "Relation Name": "complete_cast",                                                                                                     +
                                           "Alias": "cc",                                                                                                                        +
                                           "Startup Cost": 0.01,                                                                                                                 +
                                           "Total Cost": 0.01,                                                                                                                   +
                                           "Plan Rows": 1,                                                                                                                       +
                                           "Plan Width": 12,                                                                                                                     +
                                           "Actual Startup Time": 0.066,                                                                                                         +
                                           "Actual Total Time": 0.103,                                                                                                           +
                                           "Actual Rows": 0,                                                                                                                     +
                                           "Actual Loops": 35548,                                                                                                                +
                                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                             +
                                           "Rows Removed by Index Recheck": 0,                                                                                                   +
                                           "Shared Hit Blocks": 118579,                                                                                                          +
                                           "Shared Read Blocks": 1044,                                                                                                           +
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
                                       "Total Cost": 0.03,                                                                                                                       +
                                       "Plan Rows": 1,                                                                                                                           +
                                       "Plan Width": 4,                                                                                                                          +
                                       "Actual Startup Time": 0.001,                                                                                                             +
                                       "Actual Total Time": 0.001,                                                                                                               +
                                       "Actual Rows": 1,                                                                                                                         +
                                       "Actual Loops": 12810,                                                                                                                    +
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
                                           "Relation Name": "comp_cast_type",                                                                                                    +
                                           "Alias": "cct1",                                                                                                                      +
                                           "Startup Cost": 0.00,                                                                                                                 +
                                           "Total Cost": 0.03,                                                                                                                   +
                                           "Plan Rows": 1,                                                                                                                       +
                                           "Plan Width": 4,                                                                                                                      +
                                           "Actual Startup Time": 0.017,                                                                                                         +
                                           "Actual Total Time": 0.025,                                                                                                           +
                                           "Actual Rows": 1,                                                                                                                     +
                                           "Actual Loops": 1,                                                                                                                    +
                                           "Filter": "((kind)::text = 'cast'::text)",                                                                                            +
                                           "Rows Removed by Filter": 3,                                                                                                          +
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
                                 },                                                                                                                                              +
                                 {                                                                                                                                               +
                                   "Node Type": "Materialize",                                                                                                                   +
                                   "Parent Relationship": "Inner",                                                                                                               +
                                   "Parallel Aware": false,                                                                                                                      +
                                   "Startup Cost": 0.00,                                                                                                                         +
                                   "Total Cost": 0.03,                                                                                                                           +
                                   "Plan Rows": 1,                                                                                                                               +
                                   "Plan Width": 4,                                                                                                                              +
                                   "Actual Startup Time": 0.000,                                                                                                                 +
                                   "Actual Total Time": 0.000,                                                                                                                   +
                                   "Actual Rows": 1,                                                                                                                             +
                                   "Actual Loops": 8765,                                                                                                                         +
                                   "Shared Hit Blocks": 1,                                                                                                                       +
                                   "Shared Read Blocks": 0,                                                                                                                      +
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
                                       "Relation Name": "comp_cast_type",                                                                                                        +
                                       "Alias": "cct2",                                                                                                                          +
                                       "Startup Cost": 0.00,                                                                                                                     +
                                       "Total Cost": 0.03,                                                                                                                       +
                                       "Plan Rows": 1,                                                                                                                           +
                                       "Plan Width": 4,                                                                                                                          +
                                       "Actual Startup Time": 0.010,                                                                                                             +
                                       "Actual Total Time": 0.011,                                                                                                               +
                                       "Actual Rows": 2,                                                                                                                         +
                                       "Actual Loops": 1,                                                                                                                        +
                                       "Filter": "((kind)::text ~~ '%complete%'::text)",                                                                                         +
                                       "Rows Removed by Filter": 2,                                                                                                              +
                                       "Shared Hit Blocks": 1,                                                                                                                   +
                                       "Shared Read Blocks": 0,                                                                                                                  +
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
                             },                                                                                                                                                  +
                             {                                                                                                                                                   +
                               "Node Type": "Index Scan",                                                                                                                        +
                               "Parent Relationship": "Inner",                                                                                                                   +
                               "Parallel Aware": false,                                                                                                                          +
                               "Scan Direction": "Forward",                                                                                                                      +
                               "Index Name": "title_idx_id",                                                                                                                     +
                               "Relation Name": "title",                                                                                                                         +
                               "Alias": "t",                                                                                                                                     +
                               "Startup Cost": 0.01,                                                                                                                             +
                               "Total Cost": 0.04,                                                                                                                               +
                               "Plan Rows": 1,                                                                                                                                   +
                               "Plan Width": 25,                                                                                                                                 +
                               "Actual Startup Time": 5.074,                                                                                                                     +
                               "Actual Total Time": 5.074,                                                                                                                       +
                               "Actual Rows": 0,                                                                                                                                 +
                               "Actual Loops": 8765,                                                                                                                             +
                               "Index Cond": "(id = mk.movie_id)",                                                                                                               +
                               "Rows Removed by Index Recheck": 0,                                                                                                               +
                               "Filter": "(production_year > 2000)",                                                                                                             +
                               "Rows Removed by Filter": 1,                                                                                                                      +
                               "Shared Hit Blocks": 27400,                                                                                                                       +
                               "Shared Read Blocks": 7694,                                                                                                                       +
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
                         },                                                                                                                                                      +
                         {                                                                                                                                                       +
                           "Node Type": "Index Scan",                                                                                                                            +
                           "Parent Relationship": "Inner",                                                                                                                       +
                           "Parallel Aware": false,                                                                                                                              +
                           "Scan Direction": "Forward",                                                                                                                          +
                           "Index Name": "movie_id_cast_info",                                                                                                                   +
                           "Relation Name": "cast_info",                                                                                                                         +
                           "Alias": "ci",                                                                                                                                        +
                           "Startup Cost": 0.02,                                                                                                                                 +
                           "Total Cost": 0.26,                                                                                                                                   +
                           "Plan Rows": 23,                                                                                                                                      +
                           "Plan Width": 12,                                                                                                                                     +
                           "Actual Startup Time": 14.894,                                                                                                                        +
                           "Actual Total Time": 259.629,                                                                                                                         +
                           "Actual Rows": 131,                                                                                                                                   +
                           "Actual Loops": 1872,                                                                                                                                 +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                                             +
                           "Rows Removed by Index Recheck": 0,                                                                                                                   +
                           "Shared Hit Blocks": 169796,                                                                                                                          +
                           "Shared Read Blocks": 75593,                                                                                                                          +
                           "Shared Dirtied Blocks": 0,                                                                                                                           +
                           "Shared Written Blocks": 0,                                                                                                                           +
                           "Local Hit Blocks": 0,                                                                                                                                +
                           "Local Read Blocks": 0,                                                                                                                               +
                           "Local Dirtied Blocks": 0,                                                                                                                            +
                           "Local Written Blocks": 0,                                                                                                                            +
                           "Temp Read Blocks": 0,                                                                                                                                +
                           "Temp Written Blocks": 0                                                                                                                              +
                         }                                                                                                                                                       +
                       ]                                                                                                                                                         +
                     },                                                                                                                                                          +
                     {                                                                                                                                                           +
                       "Node Type": "Materialize",                                                                                                                               +
                       "Parent Relationship": "Inner",                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                  +
                       "Startup Cost": 0.00,                                                                                                                                     +
                       "Total Cost": 0.03,                                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                                           +
                       "Plan Width": 4,                                                                                                                                          +
                       "Actual Startup Time": 0.000,                                                                                                                             +
                       "Actual Total Time": 0.000,                                                                                                                               +
                       "Actual Rows": 1,                                                                                                                                         +
                       "Actual Loops": 244871,                                                                                                                                   +
                       "Shared Hit Blocks": 1,                                                                                                                                   +
                       "Shared Read Blocks": 0,                                                                                                                                  +
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
                           "Node Type": "Seq Scan",                                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                                       +
                           "Parallel Aware": false,                                                                                                                              +
                           "Relation Name": "kind_type",                                                                                                                         +
                           "Alias": "kt",                                                                                                                                        +
                           "Startup Cost": 0.00,                                                                                                                                 +
                           "Total Cost": 0.03,                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 4,                                                                                                                                      +
                           "Actual Startup Time": 0.034,                                                                                                                         +
                           "Actual Total Time": 0.039,                                                                                                                           +
                           "Actual Rows": 1,                                                                                                                                     +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Filter": "((kind)::text = 'movie'::text)",                                                                                                           +
                           "Rows Removed by Filter": 6,                                                                                                                          +
                           "Shared Hit Blocks": 1,                                                                                                                               +
                           "Shared Read Blocks": 0,                                                                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                                                                           +
                           "Shared Written Blocks": 0,                                                                                                                           +
                           "Local Hit Blocks": 0,                                                                                                                                +
                           "Local Read Blocks": 0,                                                                                                                               +
                           "Local Dirtied Blocks": 0,                                                                                                                            +
                           "Local Written Blocks": 0,                                                                                                                            +
                           "Temp Read Blocks": 0,                                                                                                                                +
                           "Temp Written Blocks": 0                                                                                                                              +
                         }                                                                                                                                                       +
                       ]                                                                                                                                                         +
                     }                                                                                                                                                           +
                   ]                                                                                                                                                             +
                 },                                                                                                                                                              +
                 {                                                                                                                                                               +
                   "Node Type": "Index Scan",                                                                                                                                    +
                   "Parent Relationship": "Inner",                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                      +
                   "Scan Direction": "Forward",                                                                                                                                  +
                   "Index Name": "name_pkey",                                                                                                                                    +
                   "Relation Name": "name",                                                                                                                                      +
                   "Alias": "n",                                                                                                                                                 +
                   "Startup Cost": 0.01,                                                                                                                                         +
                   "Total Cost": 0.02,                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                               +
                   "Plan Width": 4,                                                                                                                                              +
                   "Actual Startup Time": 1.259,                                                                                                                                 +
                   "Actual Total Time": 1.259,                                                                                                                                   +
                   "Actual Rows": 0,                                                                                                                                             +
                   "Actual Loops": 222518,                                                                                                                                       +
                   "Index Cond": "(id = ci.person_id)",                                                                                                                          +
                   "Rows Removed by Index Recheck": 0,                                                                                                                           +
                   "Filter": "(name ~~ '%Downey%Robert%'::text)",                                                                                                                +
                   "Rows Removed by Filter": 1,                                                                                                                                  +
                   "Shared Hit Blocks": 837883,                                                                                                                                  +
                   "Shared Read Blocks": 53772,                                                                                                                                  +
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
               "Node Type": "Index Scan",                                                                                                                                        +
               "Parent Relationship": "Inner",                                                                                                                                   +
               "Parallel Aware": false,                                                                                                                                          +
               "Scan Direction": "Forward",                                                                                                                                      +
               "Index Name": "char_name_pkey",                                                                                                                                   +
               "Relation Name": "char_name",                                                                                                                                     +
               "Alias": "chn",                                                                                                                                                   +
               "Startup Cost": 0.01,                                                                                                                                             +
               "Total Cost": 0.02,                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 4,                                                                                                                                                  +
               "Actual Startup Time": 4.319,                                                                                                                                     +
               "Actual Total Time": 4.319,                                                                                                                                       +
               "Actual Rows": 1,                                                                                                                                                 +
               "Actual Loops": 27,                                                                                                                                               +
               "Index Cond": "(id = ci.person_role_id)",                                                                                                                         +
               "Rows Removed by Index Recheck": 0,                                                                                                                               +
               "Filter": "((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))",                                                 +
               "Rows Removed by Filter": 0,                                                                                                                                      +
               "Shared Hit Blocks": 88,                                                                                                                                          +
               "Shared Read Blocks": 16,                                                                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                                                                       +
               "Shared Written Blocks": 0,                                                                                                                                       +
               "Local Hit Blocks": 0,                                                                                                                                            +
               "Local Read Blocks": 0,                                                                                                                                           +
               "Local Dirtied Blocks": 0,                                                                                                                                        +
               "Local Written Blocks": 0,                                                                                                                                        +
               "Temp Read Blocks": 0,                                                                                                                                            +
               "Temp Written Blocks": 0                                                                                                                                          +
             }                                                                                                                                                                   +
           ]                                                                                                                                                                     +
         }                                                                                                                                                                       +
       ]                                                                                                                                                                         +
     },                                                                                                                                                                          +
     "Planning Time": 6350.602,                                                                                                                                                  +
     "Triggers": [                                                                                                                                                               +
     ],                                                                                                                                                                          +
     "Execution Time": 834131.088                                                                                                                                                +
   }                                                                                                                                                                             +
 ]
(1 row)

