                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                               +
   {                                                                                                                                                                             +
     "Plan": {                                                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                                                 +
       "Strategy": "Plain",                                                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                                                 +
       "Parallel Aware": false,                                                                                                                                                  +
       "Startup Cost": 1030.88,                                                                                                                                                  +
       "Total Cost": 1030.88,                                                                                                                                                    +
       "Plan Rows": 1,                                                                                                                                                           +
       "Plan Width": 32,                                                                                                                                                         +
       "Actual Startup Time": 1065007.000,                                                                                                                                       +
       "Actual Total Time": 1065007.000,                                                                                                                                         +
       "Actual Rows": 1,                                                                                                                                                         +
       "Actual Loops": 1,                                                                                                                                                        +
       "Shared Hit Blocks": 1549104,                                                                                                                                             +
       "Shared Read Blocks": 195388,                                                                                                                                             +
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
           "Total Cost": 1030.88,                                                                                                                                                +
           "Plan Rows": 1,                                                                                                                                                       +
           "Plan Width": 17,                                                                                                                                                     +
           "Actual Startup Time": 64238.768,                                                                                                                                     +
           "Actual Total Time": 1065006.806,                                                                                                                                     +
           "Actual Rows": 33,                                                                                                                                                    +
           "Actual Loops": 1,                                                                                                                                                    +
           "Inner Unique": true,                                                                                                                                                 +
           "Shared Hit Blocks": 1549104,                                                                                                                                         +
           "Shared Read Blocks": 195388,                                                                                                                                         +
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
               "Total Cost": 1030.78,                                                                                                                                            +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 21,                                                                                                                                                 +
               "Actual Startup Time": 64215.603,                                                                                                                                 +
               "Actual Total Time": 1064936.967,                                                                                                                                 +
               "Actual Rows": 33,                                                                                                                                                +
               "Actual Loops": 1,                                                                                                                                                +
               "Inner Unique": true,                                                                                                                                             +
               "Shared Hit Blocks": 1548986,                                                                                                                                     +
               "Shared Read Blocks": 195374,                                                                                                                                     +
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
                   "Total Cost": 1030.67,                                                                                                                                        +
                   "Plan Rows": 6,                                                                                                                                               +
                   "Plan Width": 25,                                                                                                                                             +
                   "Actual Startup Time": 1854.291,                                                                                                                              +
                   "Actual Total Time": 842742.635,                                                                                                                              +
                   "Actual Rows": 532809,                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                            +
                   "Inner Unique": false,                                                                                                                                        +
                   "Join Filter": "(t.id = ci.movie_id)",                                                                                                                        +
                   "Rows Removed by Join Filter": 0,                                                                                                                             +
                   "Shared Hit Blocks": 570762,                                                                                                                                  +
                   "Shared Read Blocks": 151414,                                                                                                                                 +
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
                       "Startup Cost": 0.05,                                                                                                                                     +
                       "Total Cost": 1029.35,                                                                                                                                    +
                       "Plan Rows": 1,                                                                                                                                           +
                       "Plan Width": 29,                                                                                                                                         +
                       "Actual Startup Time": 1826.293,                                                                                                                          +
                       "Actual Total Time": 75675.103,                                                                                                                           +
                       "Actual Rows": 6016,                                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                                        +
                       "Inner Unique": true,                                                                                                                                     +
                       "Join Filter": "(t.kind_id = kt.id)",                                                                                                                     +
                       "Rows Removed by Join Filter": 1347,                                                                                                                      +
                       "Shared Hit Blocks": 154706,                                                                                                                              +
                       "Shared Read Blocks": 23645,                                                                                                                              +
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
                           "Plan Rows": 5,                                                                                                                                       +
                           "Plan Width": 33,                                                                                                                                     +
                           "Actual Startup Time": 167.643,                                                                                                                       +
                           "Actual Total Time": 75649.102,                                                                                                                       +
                           "Actual Rows": 7363,                                                                                                                                  +
                           "Actual Loops": 1,                                                                                                                                    +
                           "Inner Unique": true,                                                                                                                                 +
                           "Shared Hit Blocks": 154705,                                                                                                                          +
                           "Shared Read Blocks": 23645,                                                                                                                          +
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
                               "Actual Startup Time": 138.669,                                                                                                                   +
                               "Actual Total Time": 24978.882,                                                                                                                   +
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
                                   "Actual Startup Time": 138.654,                                                                                                               +
                                   "Actual Total Time": 24957.837,                                                                                                               +
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
                                       "Actual Startup Time": 138.635,                                                                                                           +
                                       "Actual Total Time": 24921.090,                                                                                                           +
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
                                           "Actual Startup Time": 54.160,                                                                                                        +
                                           "Actual Total Time": 20707.171,                                                                                                       +
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
                                               "Actual Startup Time": 28.282,                                                                                                    +
                                               "Actual Total Time": 266.454,                                                                                                     +
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
                                               "Actual Startup Time": 28.550,                                                                                                    +
                                               "Actual Total Time": 2550.918,                                                                                                    +
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
                                           "Actual Startup Time": 0.077,                                                                                                         +
                                           "Actual Total Time": 0.116,                                                                                                           +
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
                                           "Actual Startup Time": 0.010,                                                                                                         +
                                           "Actual Total Time": 0.018,                                                                                                           +
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
                                       "Actual Startup Time": 0.006,                                                                                                             +
                                       "Actual Total Time": 0.007,                                                                                                               +
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
                               "Actual Startup Time": 5.777,                                                                                                                     +
                               "Actual Total Time": 5.777,                                                                                                                       +
                               "Actual Rows": 1,                                                                                                                                 +
                               "Actual Loops": 8765,                                                                                                                             +
                               "Index Cond": "(id = mk.movie_id)",                                                                                                               +
                               "Rows Removed by Index Recheck": 0,                                                                                                               +
                               "Filter": "(production_year > 1950)",                                                                                                             +
                               "Rows Removed by Filter": 0,                                                                                                                      +
                               "Shared Hit Blocks": 27387,                                                                                                                       +
                               "Shared Read Blocks": 7693,                                                                                                                       +
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
                           "Node Type": "Materialize",                                                                                                                           +
                           "Parent Relationship": "Inner",                                                                                                                       +
                           "Parallel Aware": false,                                                                                                                              +
                           "Startup Cost": 0.00,                                                                                                                                 +
                           "Total Cost": 0.03,                                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                                       +
                           "Plan Width": 4,                                                                                                                                      +
                           "Actual Startup Time": 0.001,                                                                                                                         +
                           "Actual Total Time": 0.001,                                                                                                                           +
                           "Actual Rows": 1,                                                                                                                                     +
                           "Actual Loops": 7363,                                                                                                                                 +
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
                               "Relation Name": "kind_type",                                                                                                                     +
                               "Alias": "kt",                                                                                                                                    +
                               "Startup Cost": 0.00,                                                                                                                             +
                               "Total Cost": 0.03,                                                                                                                               +
                               "Plan Rows": 1,                                                                                                                                   +
                               "Plan Width": 4,                                                                                                                                  +
                               "Actual Startup Time": 0.015,                                                                                                                     +
                               "Actual Total Time": 0.020,                                                                                                                       +
                               "Actual Rows": 1,                                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                                +
                               "Filter": "((kind)::text = 'movie'::text)",                                                                                                       +
                               "Rows Removed by Filter": 6,                                                                                                                      +
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
                     },                                                                                                                                                          +
                     {                                                                                                                                                           +
                       "Node Type": "Index Scan",                                                                                                                                +
                       "Parent Relationship": "Inner",                                                                                                                           +
                       "Parallel Aware": false,                                                                                                                                  +
                       "Scan Direction": "Forward",                                                                                                                              +
                       "Index Name": "movie_id_cast_info",                                                                                                                       +
                       "Relation Name": "cast_info",                                                                                                                             +
                       "Alias": "ci",                                                                                                                                            +
                       "Startup Cost": 0.02,                                                                                                                                     +
                       "Total Cost": 0.26,                                                                                                                                       +
                       "Plan Rows": 23,                                                                                                                                          +
                       "Plan Width": 12,                                                                                                                                         +
                       "Actual Startup Time": 9.203,                                                                                                                             +
                       "Actual Total Time": 127.350,                                                                                                                             +
                       "Actual Rows": 89,                                                                                                                                        +
                       "Actual Loops": 6016,                                                                                                                                     +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                                                 +
                       "Rows Removed by Index Recheck": 0,                                                                                                                       +
                       "Shared Hit Blocks": 416056,                                                                                                                              +
                       "Shared Read Blocks": 127769,                                                                                                                             +
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
                 },                                                                                                                                                              +
                 {                                                                                                                                                               +
                   "Node Type": "Index Scan",                                                                                                                                    +
                   "Parent Relationship": "Inner",                                                                                                                               +
                   "Parallel Aware": false,                                                                                                                                      +
                   "Scan Direction": "Forward",                                                                                                                                  +
                   "Index Name": "char_name_pkey",                                                                                                                               +
                   "Relation Name": "char_name",                                                                                                                                 +
                   "Alias": "chn",                                                                                                                                               +
                   "Startup Cost": 0.01,                                                                                                                                         +
                   "Total Cost": 0.02,                                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                               +
                   "Plan Width": 4,                                                                                                                                              +
                   "Actual Startup Time": 0.415,                                                                                                                                 +
                   "Actual Total Time": 0.415,                                                                                                                                   +
                   "Actual Rows": 0,                                                                                                                                             +
                   "Actual Loops": 532809,                                                                                                                                       +
                   "Index Cond": "(id = ci.person_role_id)",                                                                                                                     +
                   "Rows Removed by Index Recheck": 0,                                                                                                                           +
                   "Filter": "((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))",                                             +
                   "Rows Removed by Filter": 0,                                                                                                                                  +
                   "Shared Hit Blocks": 978224,                                                                                                                                  +
                   "Shared Read Blocks": 43960,                                                                                                                                  +
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
               "Index Name": "name_pkey",                                                                                                                                        +
               "Relation Name": "name",                                                                                                                                          +
               "Alias": "n",                                                                                                                                                     +
               "Startup Cost": 0.01,                                                                                                                                             +
               "Total Cost": 0.02,                                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                                   +
               "Plan Width": 4,                                                                                                                                                  +
               "Actual Startup Time": 2.112,                                                                                                                                     +
               "Actual Total Time": 2.112,                                                                                                                                       +
               "Actual Rows": 1,                                                                                                                                                 +
               "Actual Loops": 33,                                                                                                                                               +
               "Index Cond": "(id = ci.person_id)",                                                                                                                              +
               "Rows Removed by Index Recheck": 0,                                                                                                                               +
               "Shared Hit Blocks": 118,                                                                                                                                         +
               "Shared Read Blocks": 14,                                                                                                                                         +
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
     "Planning Time": 6198.899,                                                                                                                                                  +
     "Triggers": [                                                                                                                                                               +
     ],                                                                                                                                                                          +
     "Execution Time": 1065036.023                                                                                                                                               +
   }                                                                                                                                                                             +
 ]
(1 row)

