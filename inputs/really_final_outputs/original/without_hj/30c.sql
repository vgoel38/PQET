                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                           +
   {                                                                                                                                                         +
     "Plan": {                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                             +
       "Parallel Aware": false,                                                                                                                              +
       "Startup Cost": 903.02,                                                                                                                               +
       "Total Cost": 903.02,                                                                                                                                 +
       "Plan Rows": 1,                                                                                                                                       +
       "Plan Width": 128,                                                                                                                                    +
       "Actual Startup Time": 1013451.977,                                                                                                                   +
       "Actual Total Time": 1013451.977,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                    +
       "Shared Hit Blocks": 6223926,                                                                                                                         +
       "Shared Read Blocks": 215684,                                                                                                                         +
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
           "Total Cost": 903.02,                                                                                                                             +
           "Plan Rows": 1,                                                                                                                                   +
           "Plan Width": 80,                                                                                                                                 +
           "Actual Startup Time": 4563.949,                                                                                                                  +
           "Actual Total Time": 1013405.541,                                                                                                                 +
           "Actual Rows": 8024,                                                                                                                              +
           "Actual Loops": 1,                                                                                                                                +
           "Inner Unique": true,                                                                                                                             +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                      +
           "Rows Removed by Join Filter": 2461,                                                                                                              +
           "Shared Hit Blocks": 6223926,                                                                                                                     +
           "Shared Read Blocks": 215684,                                                                                                                     +
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
               "Total Cost": 902.97,                                                                                                                         +
               "Plan Rows": 1,                                                                                                                               +
               "Plan Width": 84,                                                                                                                             +
               "Actual Startup Time": 4563.914,                                                                                                              +
               "Actual Total Time": 1013389.618,                                                                                                             +
               "Actual Rows": 10485,                                                                                                                         +
               "Actual Loops": 1,                                                                                                                            +
               "Inner Unique": true,                                                                                                                         +
               "Join Filter": "(mi_idx.info_type_id = it2.id)",                                                                                              +
               "Rows Removed by Join Filter": 21649,                                                                                                         +
               "Shared Hit Blocks": 6223925,                                                                                                                 +
               "Shared Read Blocks": 215684,                                                                                                                 +
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
                   "Startup Cost": 0.11,                                                                                                                     +
                   "Total Cost": 902.92,                                                                                                                     +
                   "Plan Rows": 1,                                                                                                                           +
                   "Plan Width": 88,                                                                                                                         +
                   "Actual Startup Time": 4522.885,                                                                                                          +
                   "Actual Total Time": 1013336.135,                                                                                                         +
                   "Actual Rows": 32134,                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                        +
                   "Inner Unique": true,                                                                                                                     +
                   "Shared Hit Blocks": 6223924,                                                                                                             +
                   "Shared Read Blocks": 215684,                                                                                                             +
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
                       "Startup Cost": 0.10,                                                                                                                 +
                       "Total Cost": 901.98,                                                                                                                 +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 77,                                                                                                                     +
                       "Actual Startup Time": 715.845,                                                                                                       +
                       "Actual Total Time": 988448.656,                                                                                                      +
                       "Actual Rows": 45984,                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                    +
                       "Inner Unique": false,                                                                                                                +
                       "Join Filter": "(t.id = ci.movie_id)",                                                                                                +
                       "Rows Removed by Join Filter": 0,                                                                                                     +
                       "Shared Hit Blocks": 6043593,                                                                                                         +
                       "Shared Read Blocks": 211884,                                                                                                         +
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
                           "Startup Cost": 0.08,                                                                                                             +
                           "Total Cost": 900.66,                                                                                                             +
                           "Plan Rows": 1,                                                                                                                   +
                           "Plan Width": 93,                                                                                                                 +
                           "Actual Startup Time": 643.490,                                                                                                   +
                           "Actual Total Time": 332688.429,                                                                                                  +
                           "Actual Rows": 56003,                                                                                                             +
                           "Actual Loops": 1,                                                                                                                +
                           "Inner Unique": false,                                                                                                            +
                           "Join Filter": "(t.id = mi.movie_id)",                                                                                            +
                           "Rows Removed by Join Filter": 0,                                                                                                 +
                           "Shared Hit Blocks": 1203535,                                                                                                     +
                           "Shared Read Blocks": 103938,                                                                                                     +
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
                               "Startup Cost": 0.07,                                                                                                         +
                               "Total Cost": 900.35,                                                                                                         +
                               "Plan Rows": 2,                                                                                                               +
                               "Plan Width": 43,                                                                                                             +
                               "Actual Startup Time": 231.447,                                                                                               +
                               "Actual Total Time": 100781.008,                                                                                              +
                               "Actual Rows": 37903,                                                                                                         +
                               "Actual Loops": 1,                                                                                                            +
                               "Inner Unique": false,                                                                                                        +
                               "Join Filter": "(t.id = mi_idx.movie_id)",                                                                                    +
                               "Rows Removed by Join Filter": 0,                                                                                             +
                               "Shared Hit Blocks": 385946,                                                                                                  +
                               "Shared Read Blocks": 34900,                                                                                                  +
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
                                   "Total Cost": 900.26,                                                                                                     +
                                   "Plan Rows": 4,                                                                                                           +
                                   "Plan Width": 29,                                                                                                         +
                                   "Actual Startup Time": 189.643,                                                                                           +
                                   "Actual Total Time": 75998.141,                                                                                           +
                                   "Actual Rows": 12521,                                                                                                     +
                                   "Actual Loops": 1,                                                                                                        +
                                   "Inner Unique": true,                                                                                                     +
                                   "Shared Hit Blocks": 340537,                                                                                              +
                                   "Shared Read Blocks": 29513,                                                                                              +
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
                                       "Plan Rows": 4,                                                                                                       +
                                       "Plan Width": 8,                                                                                                      +
                                       "Actual Startup Time": 146.697,                                                                                       +
                                       "Actual Total Time": 17871.116,                                                                                       +
                                       "Actual Rows": 12521,                                                                                                 +
                                       "Actual Loops": 1,                                                                                                    +
                                       "Inner Unique": true,                                                                                                 +
                                       "Join Filter": "(cc.status_id = cct2.id)",                                                                            +
                                       "Rows Removed by Join Filter": 12810,                                                                                 +
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
                                           "Actual Startup Time": 118.254,                                                                                   +
                                           "Actual Total Time": 17831.888,                                                                                   +
                                           "Actual Rows": 25331,                                                                                             +
                                           "Actual Loops": 1,                                                                                                +
                                           "Inner Unique": true,                                                                                             +
                                           "Join Filter": "(cct1.id = cc.subject_id)",                                                                       +
                                           "Rows Removed by Join Filter": 10679,                                                                             +
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
                                               "Actual Startup Time": 118.208,                                                                               +
                                               "Actual Total Time": 17768.824,                                                                               +
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
                                                   "Actual Startup Time": 63.068,                                                                            +
                                                   "Actual Total Time": 16195.371,                                                                           +
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
                                                       "Actual Startup Time": 39.784,                                                                        +
                                                       "Actual Total Time": 200.465,                                                                         +
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
                                                       "Actual Startup Time": 16.870,                                                                        +
                                                       "Actual Total Time": 2278.256,                                                                        +
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
                                                   "Actual Startup Time": 0.015,                                                                             +
                                                   "Actual Total Time": 0.019,                                                                               +
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
                                                   "Alias": "cct1",                                                                                          +
                                                   "Startup Cost": 0.00,                                                                                     +
                                                   "Total Cost": 0.03,                                                                                       +
                                                   "Plan Rows": 1,                                                                                           +
                                                   "Plan Width": 4,                                                                                          +
                                                   "Actual Startup Time": 0.030,                                                                             +
                                                   "Actual Total Time": 0.037,                                                                               +
                                                   "Actual Rows": 1,                                                                                         +
                                                   "Actual Loops": 1,                                                                                        +
                                                   "Filter": "((kind)::text = 'cast'::text)",                                                                +
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
                                           "Plan Rows": 1,                                                                                                   +
                                           "Plan Width": 4,                                                                                                  +
                                           "Actual Startup Time": 0.000,                                                                                     +
                                           "Actual Total Time": 0.000,                                                                                       +
                                           "Actual Rows": 1,                                                                                                 +
                                           "Actual Loops": 25331,                                                                                            +
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
                                               "Alias": "cct2",                                                                                              +
                                               "Startup Cost": 0.00,                                                                                         +
                                               "Total Cost": 0.03,                                                                                           +
                                               "Plan Rows": 1,                                                                                               +
                                               "Plan Width": 4,                                                                                              +
                                               "Actual Startup Time": 0.008,                                                                                 +
                                               "Actual Total Time": 0.009,                                                                                   +
                                               "Actual Rows": 1,                                                                                             +
                                               "Actual Loops": 1,                                                                                            +
                                               "Filter": "((kind)::text = 'complete+verified'::text)",                                                       +
                                               "Rows Removed by Filter": 3,                                                                                  +
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
                                       "Index Name": "title_idx_id",                                                                                         +
                                       "Relation Name": "title",                                                                                             +
                                       "Alias": "t",                                                                                                         +
                                       "Startup Cost": 0.01,                                                                                                 +
                                       "Total Cost": 0.04,                                                                                                   +
                                       "Plan Rows": 1,                                                                                                       +
                                       "Plan Width": 21,                                                                                                     +
                                       "Actual Startup Time": 4.639,                                                                                         +
                                       "Actual Total Time": 4.639,                                                                                           +
                                       "Actual Rows": 1,                                                                                                     +
                                       "Actual Loops": 12521,                                                                                                +
                                       "Index Cond": "(id = mk.movie_id)",                                                                                   +
                                       "Rows Removed by Index Recheck": 0,                                                                                   +
                                       "Shared Hit Blocks": 42747,                                                                                           +
                                       "Shared Read Blocks": 7360,                                                                                           +
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
                                   "Index Name": "movie_id_movie_info_idx",                                                                                  +
                                   "Relation Name": "movie_info_idx",                                                                                        +
                                   "Alias": "mi_idx",                                                                                                        +
                                   "Startup Cost": 0.01,                                                                                                     +
                                   "Total Cost": 0.02,                                                                                                       +
                                   "Plan Rows": 3,                                                                                                           +
                                   "Plan Width": 14,                                                                                                         +
                                   "Actual Startup Time": 1.952,                                                                                             +
                                   "Actual Total Time": 1.971,                                                                                               +
                                   "Actual Rows": 3,                                                                                                         +
                                   "Actual Loops": 12521,                                                                                                    +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                 +
                                   "Rows Removed by Index Recheck": 0,                                                                                       +
                                   "Shared Hit Blocks": 45409,                                                                                               +
                                   "Shared Read Blocks": 5387,                                                                                               +
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
                               "Index Name": "movie_id_movie_info",                                                                                          +
                               "Relation Name": "movie_info",                                                                                                +
                               "Alias": "mi",                                                                                                                +
                               "Startup Cost": 0.01,                                                                                                         +
                               "Total Cost": 0.15,                                                                                                           +
                               "Plan Rows": 1,                                                                                                               +
                               "Plan Width": 50,                                                                                                             +
                               "Actual Startup Time": 5.748,                                                                                                 +
                               "Actual Total Time": 6.115,                                                                                                   +
                               "Actual Rows": 1,                                                                                                             +
                               "Actual Loops": 37903,                                                                                                        +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                                     +
                               "Rows Removed by Index Recheck": 0,                                                                                           +
                               "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                                               +
                               "Rows Removed by Filter": 134,                                                                                                +
                               "Shared Hit Blocks": 817589,                                                                                                  +
                               "Shared Read Blocks": 69038,                                                                                                  +
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
                           "Actual Startup Time": 9.738,                                                                                                     +
                           "Actual Total Time": 11.707,                                                                                                      +
                           "Actual Rows": 1,                                                                                                                 +
                           "Actual Loops": 56003,                                                                                                            +
                           "Index Cond": "(movie_id = mk.movie_id)",                                                                                         +
                           "Rows Removed by Index Recheck": 0,                                                                                               +
                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",                    +
                           "Rows Removed by Filter": 85,                                                                                                     +
                           "Shared Hit Blocks": 4840058,                                                                                                     +
                           "Shared Read Blocks": 107946,                                                                                                     +
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
                       "Actual Startup Time": 0.539,                                                                                                         +
                       "Actual Total Time": 0.539,                                                                                                           +
                       "Actual Rows": 1,                                                                                                                     +
                       "Actual Loops": 45984,                                                                                                                +
                       "Index Cond": "(id = ci.person_id)",                                                                                                  +
                       "Rows Removed by Index Recheck": 0,                                                                                                   +
                       "Filter": "((gender)::text = 'm'::text)",                                                                                             +
                       "Rows Removed by Filter": 0,                                                                                                          +
                       "Shared Hit Blocks": 180331,                                                                                                          +
                       "Shared Read Blocks": 3800,                                                                                                           +
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
                   "Actual Loops": 32134,                                                                                                                    +
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
                       "Alias": "it2",                                                                                                                       +
                       "Startup Cost": 0.00,                                                                                                                 +
                       "Total Cost": 0.05,                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 4,                                                                                                                      +
                       "Actual Startup Time": 0.065,                                                                                                         +
                       "Actual Total Time": 0.072,                                                                                                           +
                       "Actual Rows": 1,                                                                                                                     +
                       "Actual Loops": 1,                                                                                                                    +
                       "Filter": "((info)::text = 'votes'::text)",                                                                                           +
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
               "Actual Loops": 10485,                                                                                                                        +
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
                   "Actual Startup Time": 0.017,                                                                                                             +
                   "Actual Total Time": 0.063,                                                                                                               +
                   "Actual Rows": 1,                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                        +
                   "Filter": "((info)::text = 'genres'::text)",                                                                                              +
                   "Rows Removed by Filter": 112,                                                                                                            +
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
     "Planning Time": 15503.360,                                                                                                                             +
     "Triggers": [                                                                                                                                           +
     ],                                                                                                                                                      +
     "Execution Time": 1013470.660                                                                                                                           +
   }                                                                                                                                                         +
 ]
(1 row)

