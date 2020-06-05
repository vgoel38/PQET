                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                           +
   {                                                                                                                                                         +
     "Plan": {                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                             +
       "Parallel Aware": false,                                                                                                                              +
       "Startup Cost": 903.64,                                                                                                                               +
       "Total Cost": 903.64,                                                                                                                                 +
       "Plan Rows": 1,                                                                                                                                       +
       "Plan Width": 128,                                                                                                                                    +
       "Actual Startup Time": 449218.381,                                                                                                                    +
       "Actual Total Time": 449218.381,                                                                                                                      +
       "Actual Rows": 1,                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                    +
       "Shared Hit Blocks": 676403,                                                                                                                          +
       "Shared Read Blocks": 97859,                                                                                                                          +
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
           "Startup Cost": 0.11,                                                                                                                             +
           "Total Cost": 903.64,                                                                                                                             +
           "Plan Rows": 1,                                                                                                                                   +
           "Plan Width": 80,                                                                                                                                 +
           "Actual Startup Time": 7047.069,                                                                                                                  +
           "Actual Total Time": 449214.304,                                                                                                                  +
           "Actual Rows": 757,                                                                                                                               +
           "Actual Loops": 1,                                                                                                                                +
           "Inner Unique": true,                                                                                                                             +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                      +
           "Rows Removed by Join Filter": 0,                                                                                                                 +
           "Shared Hit Blocks": 676403,                                                                                                                      +
           "Shared Read Blocks": 97859,                                                                                                                      +
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
               "Startup Cost": 0.11,                                                                                                                         +
               "Total Cost": 903.59,                                                                                                                         +
               "Plan Rows": 1,                                                                                                                               +
               "Plan Width": 84,                                                                                                                             +
               "Actual Startup Time": 7047.022,                                                                                                              +
               "Actual Total Time": 449212.303,                                                                                                              +
               "Actual Rows": 757,                                                                                                                           +
               "Actual Loops": 1,                                                                                                                            +
               "Inner Unique": false,                                                                                                                        +
               "Join Filter": "(t.id = mi.movie_id)",                                                                                                        +
               "Rows Removed by Join Filter": 0,                                                                                                             +
               "Shared Hit Blocks": 676402,                                                                                                                  +
               "Shared Read Blocks": 97859,                                                                                                                  +
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
                   "Startup Cost": 0.10,                                                                                                                     +
                   "Total Cost": 902.82,                                                                                                                     +
                   "Plan Rows": 1,                                                                                                                           +
                   "Plan Width": 58,                                                                                                                         +
                   "Actual Startup Time": 2235.865,                                                                                                          +
                   "Actual Total Time": 403121.419,                                                                                                          +
                   "Actual Rows": 1235,                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                        +
                   "Inner Unique": true,                                                                                                                     +
                   "Shared Hit Blocks": 649726,                                                                                                              +
                   "Shared Read Blocks": 89838,                                                                                                              +
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
                       "Startup Cost": 0.08,                                                                                                                 +
                       "Total Cost": 901.89,                                                                                                                 +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 47,                                                                                                                     +
                       "Actual Startup Time": 2216.199,                                                                                                      +
                       "Actual Total Time": 395883.030,                                                                                                      +
                       "Actual Rows": 1736,                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                    +
                       "Inner Unique": false,                                                                                                                +
                       "Join Filter": "(t.id = ci.movie_id)",                                                                                                +
                       "Rows Removed by Join Filter": 0,                                                                                                     +
                       "Shared Hit Blocks": 643908,                                                                                                          +
                       "Shared Read Blocks": 88711,                                                                                                          +
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
                           "Startup Cost": 0.07,                                                                                                             +
                           "Total Cost": 900.56,                                                                                                             +
                           "Plan Rows": 1,                                                                                                                   +
                           "Plan Width": 39,                                                                                                                 +
                           "Actual Startup Time": 206.404,                                                                                                   +
                           "Actual Total Time": 78866.408,                                                                                                   +
                           "Actual Rows": 2023,                                                                                                              +
                           "Actual Loops": 1,                                                                                                                +
                           "Inner Unique": true,                                                                                                             +
                           "Join Filter": "(mi_idx.movie_id = t.id)",                                                                                        +
                           "Rows Removed by Join Filter": 0,                                                                                                 +
                           "Shared Hit Blocks": 416551,                                                                                                      +
                           "Shared Read Blocks": 35072,                                                                                                      +
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
                               "Startup Cost": 0.05,                                                                                                         +
                               "Total Cost": 900.35,                                                                                                         +
                               "Plan Rows": 1,                                                                                                               +
                               "Plan Width": 18,                                                                                                             +
                               "Actual Startup Time": 173.286,                                                                                               +
                               "Actual Total Time": 34858.484,                                                                                               +
                               "Actual Rows": 16283,                                                                                                         +
                               "Actual Loops": 1,                                                                                                            +
                               "Inner Unique": true,                                                                                                         +
                               "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                                              +
                               "Rows Removed by Join Filter": 33372,                                                                                         +
                               "Shared Hit Blocks": 358805,                                                                                                  +
                               "Shared Read Blocks": 27613,                                                                                                  +
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
                                   "Startup Cost": 0.05,                                                                                                     +
                                   "Total Cost": 900.30,                                                                                                     +
                                   "Plan Rows": 27,                                                                                                          +
                                   "Plan Width": 22,                                                                                                         +
                                   "Actual Startup Time": 173.198,                                                                                           +
                                   "Actual Total Time": 34779.800,                                                                                           +
                                   "Actual Rows": 49655,                                                                                                     +
                                   "Actual Loops": 1,                                                                                                        +
                                   "Inner Unique": false,                                                                                                    +
                                   "Shared Hit Blocks": 358804,                                                                                              +
                                   "Shared Read Blocks": 27613,                                                                                              +
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
                                       "Startup Cost": 0.04,                                                                                                 +
                                       "Total Cost": 900.09,                                                                                                 +
                                       "Plan Rows": 9,                                                                                                       +
                                       "Plan Width": 8,                                                                                                      +
                                       "Actual Startup Time": 138.480,                                                                                       +
                                       "Actual Total Time": 14567.773,                                                                                       +
                                       "Actual Rows": 16336,                                                                                                 +
                                       "Actual Loops": 1,                                                                                                    +
                                       "Inner Unique": true,                                                                                                 +
                                       "Join Filter": "(cc.subject_id = cct1.id)",                                                                           +
                                       "Rows Removed by Join Filter": 3815,                                                                                  +
                                       "Shared Hit Blocks": 297790,                                                                                          +
                                       "Shared Read Blocks": 22153,                                                                                          +
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
                                           "Total Cost": 900.05,                                                                                             +
                                           "Plan Rows": 18,                                                                                                  +
                                           "Plan Width": 12,                                                                                                 +
                                           "Actual Startup Time": 138.444,                                                                                   +
                                           "Actual Total Time": 14542.160,                                                                                   +
                                           "Actual Rows": 16336,                                                                                             +
                                           "Actual Loops": 1,                                                                                                +
                                           "Inner Unique": true,                                                                                             +
                                           "Join Filter": "(cc.status_id = cct2.id)",                                                                        +
                                           "Rows Removed by Join Filter": 19674,                                                                             +
                                           "Shared Hit Blocks": 297789,                                                                                      +
                                           "Shared Read Blocks": 22153,                                                                                      +
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
                                               "Total Cost": 900.01,                                                                                         +
                                               "Plan Rows": 71,                                                                                              +
                                               "Plan Width": 16,                                                                                             +
                                               "Actual Startup Time": 109.970,                                                                               +
                                               "Actual Total Time": 14486.448,                                                                               +
                                               "Actual Rows": 36010,                                                                                         +
                                               "Actual Loops": 1,                                                                                            +
                                               "Inner Unique": false,                                                                                        +
                                               "Shared Hit Blocks": 297788,                                                                                  +
                                               "Shared Read Blocks": 22153,                                                                                  +
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
                                                   "Actual Startup Time": 54.799,                                                                            +
                                                   "Actual Total Time": 12610.166,                                                                           +
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
                                                       "Actual Startup Time": 31.552,                                                                        +
                                                       "Actual Total Time": 210.265,                                                                         +
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
                                                       "Actual Startup Time": 15.663,                                                                        +
                                                       "Actual Total Time": 1765.077,                                                                        +
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
                                                   "Index Name": "movie_id_complete_cast",                                                                   +
                                                   "Relation Name": "complete_cast",                                                                         +
                                                   "Alias": "cc",                                                                                            +
                                                   "Startup Cost": 0.01,                                                                                     +
                                                   "Total Cost": 0.01,                                                                                       +
                                                   "Plan Rows": 1,                                                                                           +
                                                   "Plan Width": 12,                                                                                         +
                                                   "Actual Startup Time": 0.018,                                                                             +
                                                   "Actual Total Time": 0.023,                                                                               +
                                                   "Actual Rows": 0,                                                                                         +
                                                   "Actual Loops": 76714,                                                                                    +
                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                                                   "Rows Removed by Index Recheck": 0,                                                                       +
                                                   "Shared Hit Blocks": 265388,                                                                              +
                                                   "Shared Read Blocks": 1055,                                                                               +
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
                                               "Total Cost": 0.03,                                                                                           +
                                               "Plan Rows": 1,                                                                                               +
                                               "Plan Width": 4,                                                                                              +
                                               "Actual Startup Time": 0.000,                                                                                 +
                                               "Actual Total Time": 0.000,                                                                                   +
                                               "Actual Rows": 1,                                                                                             +
                                               "Actual Loops": 36010,                                                                                        +
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
                                                   "Relation Name": "comp_cast_type",                                                                        +
                                                   "Alias": "cct2",                                                                                          +
                                                   "Startup Cost": 0.00,                                                                                     +
                                                   "Total Cost": 0.03,                                                                                       +
                                                   "Plan Rows": 1,                                                                                           +
                                                   "Plan Width": 4,                                                                                          +
                                                   "Actual Startup Time": 0.016,                                                                             +
                                                   "Actual Total Time": 0.017,                                                                               +
                                                   "Actual Rows": 1,                                                                                         +
                                                   "Actual Loops": 1,                                                                                        +
                                                   "Filter": "((kind)::text = 'complete+verified'::text)",                                                   +
                                                   "Rows Removed by Filter": 3,                                                                              +
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
                                           "Node Type": "Materialize",                                                                                       +
                                           "Parent Relationship": "Inner",                                                                                   +
                                           "Parallel Aware": false,                                                                                          +
                                           "Startup Cost": 0.00,                                                                                             +
                                           "Total Cost": 0.03,                                                                                               +
                                           "Plan Rows": 2,                                                                                                   +
                                           "Plan Width": 4,                                                                                                  +
                                           "Actual Startup Time": 0.000,                                                                                     +
                                           "Actual Total Time": 0.000,                                                                                       +
                                           "Actual Rows": 1,                                                                                                 +
                                           "Actual Loops": 16336,                                                                                            +
                                           "Shared Hit Blocks": 1,                                                                                           +
                                           "Shared Read Blocks": 0,                                                                                          +
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
                                               "Node Type": "Seq Scan",                                                                                      +
                                               "Parent Relationship": "Outer",                                                                               +
                                               "Parallel Aware": false,                                                                                      +
                                               "Relation Name": "comp_cast_type",                                                                            +
                                               "Alias": "cct1",                                                                                              +
                                               "Startup Cost": 0.00,                                                                                         +
                                               "Total Cost": 0.03,                                                                                           +
                                               "Plan Rows": 2,                                                                                               +
                                               "Plan Width": 4,                                                                                              +
                                               "Actual Startup Time": 0.019,                                                                                 +
                                               "Actual Total Time": 0.026,                                                                                   +
                                               "Actual Rows": 2,                                                                                             +
                                               "Actual Loops": 1,                                                                                            +
                                               "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                                                     +
                                               "Rows Removed by Filter": 0,                                                                                  +
                                               "Shared Hit Blocks": 1,                                                                                       +
                                               "Shared Read Blocks": 0,                                                                                      +
                                               "Shared Dirtied Blocks": 0,                                                                                   +
                                               "Shared Written Blocks": 0,                                                                                   +
                                               "Local Hit Blocks": 0,                                                                                        +
                                               "Local Read Blocks": 0,                                                                                       +
                                               "Local Dirtied Blocks": 0,                                                                                    +
                                               "Local Written Blocks": 0,                                                                                    +
                                               "Temp Read Blocks": 0,                                                                                        +
                                               "Temp Written Blocks": 0                                                                                      +
                                             }                                                                                                               +
                                           ]                                                                                                                 +
                                         }                                                                                                                   +
                                       ]                                                                                                                     +
                                     },                                                                                                                      +
                                     {                                                                                                                       +
                                       "Node Type": "Index Scan",                                                                                            +
                                       "Parent Relationship": "Inner",                                                                                       +
                                       "Parallel Aware": false,                                                                                              +
                                       "Scan Direction": "Forward",                                                                                          +
                                       "Index Name": "movie_id_movie_info_idx",                                                                              +
                                       "Relation Name": "movie_info_idx",                                                                                    +
                                       "Alias": "mi_idx",                                                                                                    +
                                       "Startup Cost": 0.01,                                                                                                 +
                                       "Total Cost": 0.02,                                                                                                   +
                                       "Plan Rows": 3,                                                                                                       +
                                       "Plan Width": 14,                                                                                                     +
                                       "Actual Startup Time": 1.223,                                                                                         +
                                       "Actual Total Time": 1.233,                                                                                           +
                                       "Actual Rows": 3,                                                                                                     +
                                       "Actual Loops": 16336,                                                                                                +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                             +
                                       "Rows Removed by Index Recheck": 0,                                                                                   +
                                       "Shared Hit Blocks": 61014,                                                                                           +
                                       "Shared Read Blocks": 5460,                                                                                           +
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
                                   "Node Type": "Materialize",                                                                                               +
                                   "Parent Relationship": "Inner",                                                                                           +
                                   "Parallel Aware": false,                                                                                                  +
                                   "Startup Cost": 0.00,                                                                                                     +
                                   "Total Cost": 0.05,                                                                                                       +
                                   "Plan Rows": 1,                                                                                                           +
                                   "Plan Width": 4,                                                                                                          +
                                   "Actual Startup Time": 0.000,                                                                                             +
                                   "Actual Total Time": 0.000,                                                                                               +
                                   "Actual Rows": 1,                                                                                                         +
                                   "Actual Loops": 49655,                                                                                                    +
                                   "Shared Hit Blocks": 1,                                                                                                   +
                                   "Shared Read Blocks": 0,                                                                                                  +
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
                                       "Relation Name": "info_type",                                                                                         +
                                       "Alias": "it2",                                                                                                       +
                                       "Startup Cost": 0.00,                                                                                                 +
                                       "Total Cost": 0.05,                                                                                                   +
                                       "Plan Rows": 1,                                                                                                       +
                                       "Plan Width": 4,                                                                                                      +
                                       "Actual Startup Time": 0.056,                                                                                         +
                                       "Actual Total Time": 0.063,                                                                                           +
                                       "Actual Rows": 1,                                                                                                     +
                                       "Actual Loops": 1,                                                                                                    +
                                       "Filter": "((info)::text = 'votes'::text)",                                                                           +
                                       "Rows Removed by Filter": 112,                                                                                        +
                                       "Shared Hit Blocks": 1,                                                                                               +
                                       "Shared Read Blocks": 0,                                                                                              +
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
                                 }                                                                                                                           +
                               ]                                                                                                                             +
                             },                                                                                                                              +
                             {                                                                                                                               +
                               "Node Type": "Index Scan",                                                                                                    +
                               "Parent Relationship": "Inner",                                                                                               +
                               "Parallel Aware": false,                                                                                                      +
                               "Scan Direction": "Forward",                                                                                                  +
                               "Index Name": "title_idx_id",                                                                                                 +
                               "Relation Name": "title",                                                                                                     +
                               "Alias": "t",                                                                                                                 +
                               "Startup Cost": 0.01,                                                                                                         +
                               "Total Cost": 0.04,                                                                                                           +
                               "Plan Rows": 1,                                                                                                               +
                               "Plan Width": 21,                                                                                                             +
                               "Actual Startup Time": 2.701,                                                                                                 +
                               "Actual Total Time": 2.701,                                                                                                   +
                               "Actual Rows": 0,                                                                                                             +
                               "Actual Loops": 16283,                                                                                                        +
                               "Index Cond": "(id = mk.movie_id)",                                                                                           +
                               "Rows Removed by Index Recheck": 0,                                                                                           +
                               "Filter": "(production_year > 2000)",                                                                                         +
                               "Rows Removed by Filter": 1,                                                                                                  +
                               "Shared Hit Blocks": 57746,                                                                                                   +
                               "Shared Read Blocks": 7459,                                                                                                   +
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
                           "Index Name": "movie_id_cast_info",                                                                                               +
                           "Relation Name": "cast_info",                                                                                                     +
                           "Alias": "ci",                                                                                                                    +
                           "Startup Cost": 0.02,                                                                                                             +
                           "Total Cost": 0.26,                                                                                                               +
                           "Plan Rows": 1,                                                                                                                   +
                           "Plan Width": 8,                                                                                                                  +
                           "Actual Startup Time": 120.302,                                                                                                   +
                           "Actual Total Time": 156.701,                                                                                                     +
                           "Actual Rows": 1,                                                                                                                 +
                           "Actual Loops": 2023,                                                                                                             +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                         +
                           "Rows Removed by Index Recheck": 0,                                                                                               +
                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",                    +
                           "Rows Removed by Filter": 137,                                                                                                    +
                           "Shared Hit Blocks": 227357,                                                                                                      +
                           "Shared Read Blocks": 53639,                                                                                                      +
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
                       "Index Name": "name_pkey",                                                                                                            +
                       "Relation Name": "name",                                                                                                              +
                       "Alias": "n",                                                                                                                         +
                       "Startup Cost": 0.01,                                                                                                                 +
                       "Total Cost": 0.19,                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 19,                                                                                                                     +
                       "Actual Startup Time": 4.165,                                                                                                         +
                       "Actual Total Time": 4.165,                                                                                                           +
                       "Actual Rows": 1,                                                                                                                     +
                       "Actual Loops": 1736,                                                                                                                 +
                       "Index Cond": "(id = ci.person_id)",                                                                                                  +
                       "Rows Removed by Index Recheck": 0,                                                                                                   +
                       "Filter": "((gender)::text = 'm'::text)",                                                                                             +
                       "Rows Removed by Filter": 0,                                                                                                          +
                       "Shared Hit Blocks": 5818,                                                                                                            +
                       "Shared Read Blocks": 1127,                                                                                                           +
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
                   "Node Type": "Index Scan",                                                                                                                +
                   "Parent Relationship": "Inner",                                                                                                           +
                   "Parallel Aware": false,                                                                                                                  +
                   "Scan Direction": "Forward",                                                                                                              +
                   "Index Name": "movie_id_movie_info",                                                                                                      +
                   "Relation Name": "movie_info",                                                                                                            +
                   "Alias": "mi",                                                                                                                            +
                   "Startup Cost": 0.01,                                                                                                                     +
                   "Total Cost": 0.15,                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                           +
                   "Plan Width": 50,                                                                                                                         +
                   "Actual Startup Time": 37.313,                                                                                                            +
                   "Actual Total Time": 37.316,                                                                                                              +
                   "Actual Rows": 1,                                                                                                                         +
                   "Actual Loops": 1235,                                                                                                                     +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                                       +
                   "Filter": "(info = ANY ('{Horror,Thriller}'::text[]))",                                                                                   +
                   "Rows Removed by Filter": 238,                                                                                                            +
                   "Shared Hit Blocks": 26676,                                                                                                               +
                   "Shared Read Blocks": 8021,                                                                                                               +
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
             },                                                                                                                                              +
             {                                                                                                                                               +
               "Node Type": "Materialize",                                                                                                                   +
               "Parent Relationship": "Inner",                                                                                                               +
               "Parallel Aware": false,                                                                                                                      +
               "Startup Cost": 0.00,                                                                                                                         +
               "Total Cost": 0.05,                                                                                                                           +
               "Plan Rows": 1,                                                                                                                               +
               "Plan Width": 4,                                                                                                                              +
               "Actual Startup Time": 0.000,                                                                                                                 +
               "Actual Total Time": 0.000,                                                                                                                   +
               "Actual Rows": 1,                                                                                                                             +
               "Actual Loops": 757,                                                                                                                          +
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
                   "Relation Name": "info_type",                                                                                                             +
                   "Alias": "it1",                                                                                                                           +
                   "Startup Cost": 0.00,                                                                                                                     +
                   "Total Cost": 0.05,                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                           +
                   "Plan Width": 4,                                                                                                                          +
                   "Actual Startup Time": 0.024,                                                                                                             +
                   "Actual Total Time": 0.024,                                                                                                               +
                   "Actual Rows": 1,                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                        +
                   "Filter": "((info)::text = 'genres'::text)",                                                                                              +
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
         }                                                                                                                                                   +
       ]                                                                                                                                                     +
     },                                                                                                                                                      +
     "Planning Time": 15701.216,                                                                                                                             +
     "Triggers": [                                                                                                                                           +
     ],                                                                                                                                                      +
     "Execution Time": 449244.545                                                                                                                            +
   }                                                                                                                                                         +
 ]
(1 row)

