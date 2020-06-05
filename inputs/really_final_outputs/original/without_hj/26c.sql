                                                                         QUERY PLAN                                                                          
-------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                          +
   {                                                                                                                                                        +
     "Plan": {                                                                                                                                              +
       "Node Type": "Aggregate",                                                                                                                            +
       "Strategy": "Plain",                                                                                                                                 +
       "Partial Mode": "Simple",                                                                                                                            +
       "Parallel Aware": false,                                                                                                                             +
       "Startup Cost": 891.97,                                                                                                                              +
       "Total Cost": 891.97,                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                      +
       "Plan Width": 96,                                                                                                                                    +
       "Actual Startup Time": 662583.681,                                                                                                                   +
       "Actual Total Time": 662583.682,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                    +
       "Actual Loops": 1,                                                                                                                                   +
       "Shared Hit Blocks": 3285264,                                                                                                                        +
       "Shared Read Blocks": 148104,                                                                                                                        +
       "Shared Dirtied Blocks": 0,                                                                                                                          +
       "Shared Written Blocks": 0,                                                                                                                          +
       "Local Hit Blocks": 0,                                                                                                                               +
       "Local Read Blocks": 0,                                                                                                                              +
       "Local Dirtied Blocks": 0,                                                                                                                           +
       "Local Written Blocks": 0,                                                                                                                           +
       "Temp Read Blocks": 0,                                                                                                                               +
       "Temp Written Blocks": 0,                                                                                                                            +
       "Plans": [                                                                                                                                           +
         {                                                                                                                                                  +
           "Node Type": "Nested Loop",                                                                                                                      +
           "Parent Relationship": "Outer",                                                                                                                  +
           "Parallel Aware": false,                                                                                                                         +
           "Join Type": "Inner",                                                                                                                            +
           "Startup Cost": 0.10,                                                                                                                            +
           "Total Cost": 891.97,                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                  +
           "Plan Width": 39,                                                                                                                                +
           "Actual Startup Time": 13117.149,                                                                                                                +
           "Actual Total Time": 662539.295,                                                                                                                 +
           "Actual Rows": 5400,                                                                                                                             +
           "Actual Loops": 1,                                                                                                                               +
           "Inner Unique": true,                                                                                                                            +
           "Shared Hit Blocks": 3285264,                                                                                                                    +
           "Shared Read Blocks": 148104,                                                                                                                    +
           "Shared Dirtied Blocks": 0,                                                                                                                      +
           "Shared Written Blocks": 0,                                                                                                                      +
           "Local Hit Blocks": 0,                                                                                                                           +
           "Local Read Blocks": 0,                                                                                                                          +
           "Local Dirtied Blocks": 0,                                                                                                                       +
           "Local Written Blocks": 0,                                                                                                                       +
           "Temp Read Blocks": 0,                                                                                                                           +
           "Temp Written Blocks": 0,                                                                                                                        +
           "Plans": [                                                                                                                                       +
             {                                                                                                                                              +
               "Node Type": "Nested Loop",                                                                                                                  +
               "Parent Relationship": "Outer",                                                                                                              +
               "Parallel Aware": false,                                                                                                                     +
               "Join Type": "Inner",                                                                                                                        +
               "Startup Cost": 0.08,                                                                                                                        +
               "Total Cost": 891.87,                                                                                                                        +
               "Plan Rows": 1,                                                                                                                              +
               "Plan Width": 43,                                                                                                                            +
               "Actual Startup Time": 13105.900,                                                                                                            +
               "Actual Total Time": 620773.761,                                                                                                             +
               "Actual Rows": 5400,                                                                                                                         +
               "Actual Loops": 1,                                                                                                                           +
               "Inner Unique": true,                                                                                                                        +
               "Shared Hit Blocks": 3269779,                                                                                                                +
               "Shared Read Blocks": 141965,                                                                                                                +
               "Shared Dirtied Blocks": 0,                                                                                                                  +
               "Shared Written Blocks": 0,                                                                                                                  +
               "Local Hit Blocks": 0,                                                                                                                       +
               "Local Read Blocks": 0,                                                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                                                   +
               "Local Written Blocks": 0,                                                                                                                   +
               "Temp Read Blocks": 0,                                                                                                                       +
               "Temp Written Blocks": 0,                                                                                                                    +
               "Plans": [                                                                                                                                   +
                 {                                                                                                                                          +
                   "Node Type": "Nested Loop",                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                          +
                   "Parallel Aware": false,                                                                                                                 +
                   "Join Type": "Inner",                                                                                                                    +
                   "Startup Cost": 0.07,                                                                                                                    +
                   "Total Cost": 891.62,                                                                                                                    +
                   "Plan Rows": 14,                                                                                                                         +
                   "Plan Width": 31,                                                                                                                        +
                   "Actual Startup Time": 10417.992,                                                                                                        +
                   "Actual Total Time": 457171.874,                                                                                                         +
                   "Actual Rows": 189738,                                                                                                                   +
                   "Actual Loops": 1,                                                                                                                       +
                   "Inner Unique": false,                                                                                                                   +
                   "Join Filter": "(t.id = ci.movie_id)",                                                                                                   +
                   "Rows Removed by Join Filter": 0,                                                                                                        +
                   "Shared Hit Blocks": 3001348,                                                                                                            +
                   "Shared Read Blocks": 113448,                                                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                   +
                   "Temp Written Blocks": 0,                                                                                                                +
                   "Plans": [                                                                                                                               +
                     {                                                                                                                                      +
                       "Node Type": "Nested Loop",                                                                                                          +
                       "Parent Relationship": "Outer",                                                                                                      +
                       "Parallel Aware": false,                                                                                                             +
                       "Join Type": "Inner",                                                                                                                +
                       "Startup Cost": 0.05,                                                                                                                +
                       "Total Cost": 890.30,                                                                                                                +
                       "Plan Rows": 1,                                                                                                                      +
                       "Plan Width": 39,                                                                                                                    +
                       "Actual Startup Time": 10377.990,                                                                                                    +
                       "Actual Total Time": 74080.820,                                                                                                      +
                       "Actual Rows": 1261,                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                   +
                       "Inner Unique": true,                                                                                                                +
                       "Shared Hit Blocks": 2876003,                                                                                                        +
                       "Shared Read Blocks": 49100,                                                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                                                          +
                       "Shared Written Blocks": 0,                                                                                                          +
                       "Local Hit Blocks": 0,                                                                                                               +
                       "Local Read Blocks": 0,                                                                                                              +
                       "Local Dirtied Blocks": 0,                                                                                                           +
                       "Local Written Blocks": 0,                                                                                                           +
                       "Temp Read Blocks": 0,                                                                                                               +
                       "Temp Written Blocks": 0,                                                                                                            +
                       "Plans": [                                                                                                                           +
                         {                                                                                                                                  +
                           "Node Type": "Nested Loop",                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                  +
                           "Parallel Aware": false,                                                                                                         +
                           "Join Type": "Inner",                                                                                                            +
                           "Startup Cost": 0.04,                                                                                                            +
                           "Total Cost": 889.87,                                                                                                            +
                           "Plan Rows": 30,                                                                                                                 +
                           "Plan Width": 43,                                                                                                                +
                           "Actual Startup Time": 10082.084,                                                                                                +
                           "Actual Total Time": 67304.523,                                                                                                  +
                           "Actual Rows": 293146,                                                                                                           +
                           "Actual Loops": 1,                                                                                                               +
                           "Inner Unique": false,                                                                                                           +
                           "Shared Hit Blocks": 1701828,                                                                                                    +
                           "Shared Read Blocks": 47668,                                                                                                     +
                           "Shared Dirtied Blocks": 0,                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                           +
                           "Temp Written Blocks": 0,                                                                                                        +
                           "Plans": [                                                                                                                       +
                             {                                                                                                                              +
                               "Node Type": "Nested Loop",                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                              +
                               "Parallel Aware": false,                                                                                                     +
                               "Join Type": "Inner",                                                                                                        +
                               "Startup Cost": 0.03,                                                                                                        +
                               "Total Cost": 888.20,                                                                                                        +
                               "Plan Rows": 17,                                                                                                             +
                               "Plan Width": 35,                                                                                                            +
                               "Actual Startup Time": 10051.299,                                                                                            +
                               "Actual Total Time": 47442.528,                                                                                              +
                               "Actual Rows": 4028,                                                                                                         +
                               "Actual Loops": 1,                                                                                                           +
                               "Inner Unique": true,                                                                                                        +
                               "Join Filter": "(t.kind_id = kt.id)",                                                                                        +
                               "Rows Removed by Join Filter": 8908,                                                                                         +
                               "Shared Hit Blocks": 1692297,                                                                                                +
                               "Shared Read Blocks": 39239,                                                                                                 +
                               "Shared Dirtied Blocks": 0,                                                                                                  +
                               "Shared Written Blocks": 0,                                                                                                  +
                               "Local Hit Blocks": 0,                                                                                                       +
                               "Local Read Blocks": 0,                                                                                                      +
                               "Local Dirtied Blocks": 0,                                                                                                   +
                               "Local Written Blocks": 0,                                                                                                   +
                               "Temp Read Blocks": 0,                                                                                                       +
                               "Temp Written Blocks": 0,                                                                                                    +
                               "Plans": [                                                                                                                   +
                                 {                                                                                                                          +
                                   "Node Type": "Nested Loop",                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                          +
                                   "Parallel Aware": false,                                                                                                 +
                                   "Join Type": "Inner",                                                                                                    +
                                   "Startup Cost": 0.03,                                                                                                    +
                                   "Total Cost": 888.14,                                                                                                    +
                                   "Plan Rows": 122,                                                                                                        +
                                   "Plan Width": 39,                                                                                                        +
                                   "Actual Startup Time": 298.975,                                                                                          +
                                   "Actual Total Time": 47424.105,                                                                                          +
                                   "Actual Rows": 12936,                                                                                                    +
                                   "Actual Loops": 1,                                                                                                       +
                                   "Inner Unique": true,                                                                                                    +
                                   "Join Filter": "(cc.movie_id = t.id)",                                                                                   +
                                   "Rows Removed by Join Filter": 0,                                                                                        +
                                   "Shared Hit Blocks": 1692296,                                                                                            +
                                   "Shared Read Blocks": 39239,                                                                                             +
                                   "Shared Dirtied Blocks": 0,                                                                                              +
                                   "Shared Written Blocks": 0,                                                                                              +
                                   "Local Hit Blocks": 0,                                                                                                   +
                                   "Local Read Blocks": 0,                                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                                               +
                                   "Local Written Blocks": 0,                                                                                               +
                                   "Temp Read Blocks": 0,                                                                                                   +
                                   "Temp Written Blocks": 0,                                                                                                +
                                   "Plans": [                                                                                                               +
                                     {                                                                                                                      +
                                       "Node Type": "Nested Loop",                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                      +
                                       "Parallel Aware": false,                                                                                             +
                                       "Join Type": "Inner",                                                                                                +
                                       "Startup Cost": 0.01,                                                                                                +
                                       "Total Cost": 863.73,                                                                                                +
                                       "Plan Rows": 224,                                                                                                    +
                                       "Plan Width": 14,                                                                                                    +
                                       "Actual Startup Time": 0.551,                                                                                        +
                                       "Actual Total Time": 4347.362,                                                                                       +
                                       "Actual Rows": 61559,                                                                                                +
                                       "Actual Loops": 1,                                                                                                   +
                                       "Inner Unique": true,                                                                                                +
                                       "Join Filter": "(cct2.id = cc.status_id)",                                                                           +
                                       "Rows Removed by Join Filter": 17018,                                                                                +
                                       "Shared Hit Blocks": 1475489,                                                                                        +
                                       "Shared Read Blocks": 9516,                                                                                          +
                                       "Shared Dirtied Blocks": 0,                                                                                          +
                                       "Shared Written Blocks": 0,                                                                                          +
                                       "Local Hit Blocks": 0,                                                                                               +
                                       "Local Read Blocks": 0,                                                                                              +
                                       "Local Dirtied Blocks": 0,                                                                                           +
                                       "Local Written Blocks": 0,                                                                                           +
                                       "Temp Read Blocks": 0,                                                                                               +
                                       "Temp Written Blocks": 0,                                                                                            +
                                       "Plans": [                                                                                                           +
                                         {                                                                                                                  +
                                           "Node Type": "Nested Loop",                                                                                      +
                                           "Parent Relationship": "Outer",                                                                                  +
                                           "Parallel Aware": false,                                                                                         +
                                           "Join Type": "Inner",                                                                                            +
                                           "Startup Cost": 0.01,                                                                                            +
                                           "Total Cost": 863.50,                                                                                            +
                                           "Plan Rows": 897,                                                                                                +
                                           "Plan Width": 18,                                                                                                +
                                           "Actual Startup Time": 0.542,                                                                                    +
                                           "Actual Total Time": 4277.598,                                                                                   +
                                           "Actual Rows": 61559,                                                                                            +
                                           "Actual Loops": 1,                                                                                               +
                                           "Inner Unique": true,                                                                                            +
                                           "Join Filter": "(cct1.id = cc.subject_id)",                                                                      +
                                           "Rows Removed by Join Filter": 33840,                                                                            +
                                           "Shared Hit Blocks": 1475488,                                                                                    +
                                           "Shared Read Blocks": 9516,                                                                                      +
                                           "Shared Dirtied Blocks": 0,                                                                                      +
                                           "Shared Written Blocks": 0,                                                                                      +
                                           "Local Hit Blocks": 0,                                                                                           +
                                           "Local Read Blocks": 0,                                                                                          +
                                           "Local Dirtied Blocks": 0,                                                                                       +
                                           "Local Written Blocks": 0,                                                                                       +
                                           "Temp Read Blocks": 0,                                                                                           +
                                           "Temp Written Blocks": 0,                                                                                        +
                                           "Plans": [                                                                                                       +
                                             {                                                                                                              +
                                               "Node Type": "Nested Loop",                                                                                  +
                                               "Parent Relationship": "Outer",                                                                              +
                                               "Parallel Aware": false,                                                                                     +
                                               "Join Type": "Inner",                                                                                        +
                                               "Startup Cost": 0.01,                                                                                        +
                                               "Total Cost": 862.66,                                                                                        +
                                               "Plan Rows": 3587,                                                                                           +
                                               "Plan Width": 22,                                                                                            +
                                               "Actual Startup Time": 0.532,                                                                                +
                                               "Actual Total Time": 4172.997,                                                                               +
                                               "Actual Rows": 95399,                                                                                        +
                                               "Actual Loops": 1,                                                                                           +
                                               "Inner Unique": false,                                                                                       +
                                               "Shared Hit Blocks": 1475487,                                                                                +
                                               "Shared Read Blocks": 9516,                                                                                  +
                                               "Shared Dirtied Blocks": 0,                                                                                  +
                                               "Shared Written Blocks": 0,                                                                                  +
                                               "Local Hit Blocks": 0,                                                                                       +
                                               "Local Read Blocks": 0,                                                                                      +
                                               "Local Dirtied Blocks": 0,                                                                                   +
                                               "Local Written Blocks": 0,                                                                                   +
                                               "Temp Read Blocks": 0,                                                                                       +
                                               "Temp Written Blocks": 0,                                                                                    +
                                               "Plans": [                                                                                                   +
                                                 {                                                                                                          +
                                                   "Node Type": "Nested Loop",                                                                              +
                                                   "Parent Relationship": "Outer",                                                                          +
                                                   "Parallel Aware": false,                                                                                 +
                                                   "Join Type": "Inner",                                                                                    +
                                                   "Startup Cost": 0.00,                                                                                    +
                                                   "Total Cost": 670.32,                                                                                    +
                                                   "Plan Rows": 12213,                                                                                      +
                                                   "Plan Width": 10,                                                                                        +
                                                   "Actual Startup Time": 0.091,                                                                            +
                                                   "Actual Total Time": 1609.742,                                                                           +
                                                   "Actual Rows": 459925,                                                                                   +
                                                   "Actual Loops": 1,                                                                                       +
                                                   "Inner Unique": true,                                                                                    +
                                                   "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                         +
                                                   "Rows Removed by Join Filter": 920110,                                                                   +
                                                   "Shared Hit Blocks": 3,                                                                                  +
                                                   "Shared Read Blocks": 8451,                                                                              +
                                                   "Shared Dirtied Blocks": 0,                                                                              +
                                                   "Shared Written Blocks": 0,                                                                              +
                                                   "Local Hit Blocks": 0,                                                                                   +
                                                   "Local Read Blocks": 0,                                                                                  +
                                                   "Local Dirtied Blocks": 0,                                                                               +
                                                   "Local Written Blocks": 0,                                                                               +
                                                   "Temp Read Blocks": 0,                                                                                   +
                                                   "Temp Written Blocks": 0,                                                                                +
                                                   "Plans": [                                                                                               +
                                                     {                                                                                                      +
                                                       "Node Type": "Seq Scan",                                                                             +
                                                       "Parent Relationship": "Outer",                                                                      +
                                                       "Parallel Aware": false,                                                                             +
                                                       "Relation Name": "movie_info_idx",                                                                   +
                                                       "Alias": "mi_idx",                                                                                   +
                                                       "Startup Cost": 0.00,                                                                                +
                                                       "Total Cost": 360.56,                                                                                +
                                                       "Plan Rows": 1380035,                                                                                +
                                                       "Plan Width": 14,                                                                                    +
                                                       "Actual Startup Time": 0.013,                                                                        +
                                                       "Actual Total Time": 380.293,                                                                        +
                                                       "Actual Rows": 1380035,                                                                              +
                                                       "Actual Loops": 1,                                                                                   +
                                                       "Shared Hit Blocks": 2,                                                                              +
                                                       "Shared Read Blocks": 8451,                                                                          +
                                                       "Shared Dirtied Blocks": 0,                                                                          +
                                                       "Shared Written Blocks": 0,                                                                          +
                                                       "Local Hit Blocks": 0,                                                                               +
                                                       "Local Read Blocks": 0,                                                                              +
                                                       "Local Dirtied Blocks": 0,                                                                           +
                                                       "Local Written Blocks": 0,                                                                           +
                                                       "Temp Read Blocks": 0,                                                                               +
                                                       "Temp Written Blocks": 0                                                                             +
                                                     },                                                                                                     +
                                                     {                                                                                                      +
                                                       "Node Type": "Materialize",                                                                          +
                                                       "Parent Relationship": "Inner",                                                                      +
                                                       "Parallel Aware": false,                                                                             +
                                                       "Startup Cost": 0.00,                                                                                +
                                                       "Total Cost": 0.05,                                                                                  +
                                                       "Plan Rows": 1,                                                                                      +
                                                       "Plan Width": 4,                                                                                     +
                                                       "Actual Startup Time": 0.000,                                                                        +
                                                       "Actual Total Time": 0.000,                                                                          +
                                                       "Actual Rows": 1,                                                                                    +
                                                       "Actual Loops": 1380035,                                                                             +
                                                       "Shared Hit Blocks": 1,                                                                              +
                                                       "Shared Read Blocks": 0,                                                                             +
                                                       "Shared Dirtied Blocks": 0,                                                                          +
                                                       "Shared Written Blocks": 0,                                                                          +
                                                       "Local Hit Blocks": 0,                                                                               +
                                                       "Local Read Blocks": 0,                                                                              +
                                                       "Local Dirtied Blocks": 0,                                                                           +
                                                       "Local Written Blocks": 0,                                                                           +
                                                       "Temp Read Blocks": 0,                                                                               +
                                                       "Temp Written Blocks": 0,                                                                            +
                                                       "Plans": [                                                                                           +
                                                         {                                                                                                  +
                                                           "Node Type": "Seq Scan",                                                                         +
                                                           "Parent Relationship": "Outer",                                                                  +
                                                           "Parallel Aware": false,                                                                         +
                                                           "Relation Name": "info_type",                                                                    +
                                                           "Alias": "it2",                                                                                  +
                                                           "Startup Cost": 0.00,                                                                            +
                                                           "Total Cost": 0.05,                                                                              +
                                                           "Plan Rows": 1,                                                                                  +
                                                           "Plan Width": 4,                                                                                 +
                                                           "Actual Startup Time": 0.052,                                                                    +
                                                           "Actual Total Time": 0.058,                                                                      +
                                                           "Actual Rows": 1,                                                                                +
                                                           "Actual Loops": 1,                                                                               +
                                                           "Filter": "((info)::text = 'rating'::text)",                                                     +
                                                           "Rows Removed by Filter": 112,                                                                   +
                                                           "Shared Hit Blocks": 1,                                                                          +
                                                           "Shared Read Blocks": 0,                                                                         +
                                                           "Shared Dirtied Blocks": 0,                                                                      +
                                                           "Shared Written Blocks": 0,                                                                      +
                                                           "Local Hit Blocks": 0,                                                                           +
                                                           "Local Read Blocks": 0,                                                                          +
                                                           "Local Dirtied Blocks": 0,                                                                       +
                                                           "Local Written Blocks": 0,                                                                       +
                                                           "Temp Read Blocks": 0,                                                                           +
                                                           "Temp Written Blocks": 0                                                                         +
                                                         }                                                                                                  +
                                                       ]                                                                                                    +
                                                     }                                                                                                      +
                                                   ]                                                                                                        +
                                                 },                                                                                                         +
                                                 {                                                                                                          +
                                                   "Node Type": "Index Scan",                                                                               +
                                                   "Parent Relationship": "Inner",                                                                          +
                                                   "Parallel Aware": false,                                                                                 +
                                                   "Scan Direction": "Forward",                                                                             +
                                                   "Index Name": "movie_id_complete_cast",                                                                  +
                                                   "Relation Name": "complete_cast",                                                                        +
                                                   "Alias": "cc",                                                                                           +
                                                   "Startup Cost": 0.01,                                                                                    +
                                                   "Total Cost": 0.02,                                                                                      +
                                                   "Plan Rows": 1,                                                                                          +
                                                   "Plan Width": 12,                                                                                        +
                                                   "Actual Startup Time": 0.004,                                                                            +
                                                   "Actual Total Time": 0.005,                                                                              +
                                                   "Actual Rows": 0,                                                                                        +
                                                   "Actual Loops": 459925,                                                                                  +
                                                   "Index Cond": "(movie_id = mi_idx.movie_id)",                                                            +
                                                   "Rows Removed by Index Recheck": 0,                                                                      +
                                                   "Shared Hit Blocks": 1475484,                                                                            +
                                                   "Shared Read Blocks": 1065,                                                                              +
                                                   "Shared Dirtied Blocks": 0,                                                                              +
                                                   "Shared Written Blocks": 0,                                                                              +
                                                   "Local Hit Blocks": 0,                                                                                   +
                                                   "Local Read Blocks": 0,                                                                                  +
                                                   "Local Dirtied Blocks": 0,                                                                               +
                                                   "Local Written Blocks": 0,                                                                               +
                                                   "Temp Read Blocks": 0,                                                                                   +
                                                   "Temp Written Blocks": 0                                                                                 +
                                                 }                                                                                                          +
                                               ]                                                                                                            +
                                             },                                                                                                             +
                                             {                                                                                                              +
                                               "Node Type": "Materialize",                                                                                  +
                                               "Parent Relationship": "Inner",                                                                              +
                                               "Parallel Aware": false,                                                                                     +
                                               "Startup Cost": 0.00,                                                                                        +
                                               "Total Cost": 0.03,                                                                                          +
                                               "Plan Rows": 1,                                                                                              +
                                               "Plan Width": 4,                                                                                             +
                                               "Actual Startup Time": 0.000,                                                                                +
                                               "Actual Total Time": 0.000,                                                                                  +
                                               "Actual Rows": 1,                                                                                            +
                                               "Actual Loops": 95399,                                                                                       +
                                               "Shared Hit Blocks": 1,                                                                                      +
                                               "Shared Read Blocks": 0,                                                                                     +
                                               "Shared Dirtied Blocks": 0,                                                                                  +
                                               "Shared Written Blocks": 0,                                                                                  +
                                               "Local Hit Blocks": 0,                                                                                       +
                                               "Local Read Blocks": 0,                                                                                      +
                                               "Local Dirtied Blocks": 0,                                                                                   +
                                               "Local Written Blocks": 0,                                                                                   +
                                               "Temp Read Blocks": 0,                                                                                       +
                                               "Temp Written Blocks": 0,                                                                                    +
                                               "Plans": [                                                                                                   +
                                                 {                                                                                                          +
                                                   "Node Type": "Seq Scan",                                                                                 +
                                                   "Parent Relationship": "Outer",                                                                          +
                                                   "Parallel Aware": false,                                                                                 +
                                                   "Relation Name": "comp_cast_type",                                                                       +
                                                   "Alias": "cct1",                                                                                         +
                                                   "Startup Cost": 0.00,                                                                                    +
                                                   "Total Cost": 0.03,                                                                                      +
                                                   "Plan Rows": 1,                                                                                          +
                                                   "Plan Width": 4,                                                                                         +
                                                   "Actual Startup Time": 0.005,                                                                            +
                                                   "Actual Total Time": 0.011,                                                                              +
                                                   "Actual Rows": 1,                                                                                        +
                                                   "Actual Loops": 1,                                                                                       +
                                                   "Filter": "((kind)::text = 'cast'::text)",                                                               +
                                                   "Rows Removed by Filter": 3,                                                                             +
                                                   "Shared Hit Blocks": 1,                                                                                  +
                                                   "Shared Read Blocks": 0,                                                                                 +
                                                   "Shared Dirtied Blocks": 0,                                                                              +
                                                   "Shared Written Blocks": 0,                                                                              +
                                                   "Local Hit Blocks": 0,                                                                                   +
                                                   "Local Read Blocks": 0,                                                                                  +
                                                   "Local Dirtied Blocks": 0,                                                                               +
                                                   "Local Written Blocks": 0,                                                                               +
                                                   "Temp Read Blocks": 0,                                                                                   +
                                                   "Temp Written Blocks": 0                                                                                 +
                                                 }                                                                                                          +
                                               ]                                                                                                            +
                                             }                                                                                                              +
                                           ]                                                                                                                +
                                         },                                                                                                                 +
                                         {                                                                                                                  +
                                           "Node Type": "Materialize",                                                                                      +
                                           "Parent Relationship": "Inner",                                                                                  +
                                           "Parallel Aware": false,                                                                                         +
                                           "Startup Cost": 0.00,                                                                                            +
                                           "Total Cost": 0.03,                                                                                              +
                                           "Plan Rows": 1,                                                                                                  +
                                           "Plan Width": 4,                                                                                                 +
                                           "Actual Startup Time": 0.000,                                                                                    +
                                           "Actual Total Time": 0.000,                                                                                      +
                                           "Actual Rows": 1,                                                                                                +
                                           "Actual Loops": 61559,                                                                                           +
                                           "Shared Hit Blocks": 1,                                                                                          +
                                           "Shared Read Blocks": 0,                                                                                         +
                                           "Shared Dirtied Blocks": 0,                                                                                      +
                                           "Shared Written Blocks": 0,                                                                                      +
                                           "Local Hit Blocks": 0,                                                                                           +
                                           "Local Read Blocks": 0,                                                                                          +
                                           "Local Dirtied Blocks": 0,                                                                                       +
                                           "Local Written Blocks": 0,                                                                                       +
                                           "Temp Read Blocks": 0,                                                                                           +
                                           "Temp Written Blocks": 0,                                                                                        +
                                           "Plans": [                                                                                                       +
                                             {                                                                                                              +
                                               "Node Type": "Seq Scan",                                                                                     +
                                               "Parent Relationship": "Outer",                                                                              +
                                               "Parallel Aware": false,                                                                                     +
                                               "Relation Name": "comp_cast_type",                                                                           +
                                               "Alias": "cct2",                                                                                             +
                                               "Startup Cost": 0.00,                                                                                        +
                                               "Total Cost": 0.03,                                                                                          +
                                               "Plan Rows": 1,                                                                                              +
                                               "Plan Width": 4,                                                                                             +
                                               "Actual Startup Time": 0.005,                                                                                +
                                               "Actual Total Time": 0.010,                                                                                  +
                                               "Actual Rows": 2,                                                                                            +
                                               "Actual Loops": 1,                                                                                           +
                                               "Filter": "((kind)::text ~~ '%complete%'::text)",                                                            +
                                               "Rows Removed by Filter": 2,                                                                                 +
                                               "Shared Hit Blocks": 1,                                                                                      +
                                               "Shared Read Blocks": 0,                                                                                     +
                                               "Shared Dirtied Blocks": 0,                                                                                  +
                                               "Shared Written Blocks": 0,                                                                                  +
                                               "Local Hit Blocks": 0,                                                                                       +
                                               "Local Read Blocks": 0,                                                                                      +
                                               "Local Dirtied Blocks": 0,                                                                                   +
                                               "Local Written Blocks": 0,                                                                                   +
                                               "Temp Read Blocks": 0,                                                                                       +
                                               "Temp Written Blocks": 0                                                                                     +
                                             }                                                                                                              +
                                           ]                                                                                                                +
                                         }                                                                                                                  +
                                       ]                                                                                                                    +
                                     },                                                                                                                     +
                                     {                                                                                                                      +
                                       "Node Type": "Index Scan",                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                      +
                                       "Parallel Aware": false,                                                                                             +
                                       "Scan Direction": "Forward",                                                                                         +
                                       "Index Name": "title_idx_id",                                                                                        +
                                       "Relation Name": "title",                                                                                            +
                                       "Alias": "t",                                                                                                        +
                                       "Startup Cost": 0.01,                                                                                                +
                                       "Total Cost": 0.11,                                                                                                  +
                                       "Plan Rows": 1,                                                                                                      +
                                       "Plan Width": 25,                                                                                                    +
                                       "Actual Startup Time": 0.699,                                                                                        +
                                       "Actual Total Time": 0.699,                                                                                          +
                                       "Actual Rows": 0,                                                                                                    +
                                       "Actual Loops": 61559,                                                                                               +
                                       "Index Cond": "(id = mi_idx.movie_id)",                                                                              +
                                       "Rows Removed by Index Recheck": 0,                                                                                  +
                                       "Filter": "(production_year > 2000)",                                                                                +
                                       "Rows Removed by Filter": 1,                                                                                         +
                                       "Shared Hit Blocks": 216807,                                                                                         +
                                       "Shared Read Blocks": 29723,                                                                                         +
                                       "Shared Dirtied Blocks": 0,                                                                                          +
                                       "Shared Written Blocks": 0,                                                                                          +
                                       "Local Hit Blocks": 0,                                                                                               +
                                       "Local Read Blocks": 0,                                                                                              +
                                       "Local Dirtied Blocks": 0,                                                                                           +
                                       "Local Written Blocks": 0,                                                                                           +
                                       "Temp Read Blocks": 0,                                                                                               +
                                       "Temp Written Blocks": 0                                                                                             +
                                     }                                                                                                                      +
                                   ]                                                                                                                        +
                                 },                                                                                                                         +
                                 {                                                                                                                          +
                                   "Node Type": "Materialize",                                                                                              +
                                   "Parent Relationship": "Inner",                                                                                          +
                                   "Parallel Aware": false,                                                                                                 +
                                   "Startup Cost": 0.00,                                                                                                    +
                                   "Total Cost": 0.03,                                                                                                      +
                                   "Plan Rows": 1,                                                                                                          +
                                   "Plan Width": 4,                                                                                                         +
                                   "Actual Startup Time": 0.000,                                                                                            +
                                   "Actual Total Time": 0.000,                                                                                              +
                                   "Actual Rows": 1,                                                                                                        +
                                   "Actual Loops": 12936,                                                                                                   +
                                   "Shared Hit Blocks": 1,                                                                                                  +
                                   "Shared Read Blocks": 0,                                                                                                 +
                                   "Shared Dirtied Blocks": 0,                                                                                              +
                                   "Shared Written Blocks": 0,                                                                                              +
                                   "Local Hit Blocks": 0,                                                                                                   +
                                   "Local Read Blocks": 0,                                                                                                  +
                                   "Local Dirtied Blocks": 0,                                                                                               +
                                   "Local Written Blocks": 0,                                                                                               +
                                   "Temp Read Blocks": 0,                                                                                                   +
                                   "Temp Written Blocks": 0,                                                                                                +
                                   "Plans": [                                                                                                               +
                                     {                                                                                                                      +
                                       "Node Type": "Seq Scan",                                                                                             +
                                       "Parent Relationship": "Outer",                                                                                      +
                                       "Parallel Aware": false,                                                                                             +
                                       "Relation Name": "kind_type",                                                                                        +
                                       "Alias": "kt",                                                                                                       +
                                       "Startup Cost": 0.00,                                                                                                +
                                       "Total Cost": 0.03,                                                                                                  +
                                       "Plan Rows": 1,                                                                                                      +
                                       "Plan Width": 4,                                                                                                     +
                                       "Actual Startup Time": 0.013,                                                                                        +
                                       "Actual Total Time": 0.018,                                                                                          +
                                       "Actual Rows": 1,                                                                                                    +
                                       "Actual Loops": 1,                                                                                                   +
                                       "Filter": "((kind)::text = 'movie'::text)",                                                                          +
                                       "Rows Removed by Filter": 6,                                                                                         +
                                       "Shared Hit Blocks": 1,                                                                                              +
                                       "Shared Read Blocks": 0,                                                                                             +
                                       "Shared Dirtied Blocks": 0,                                                                                          +
                                       "Shared Written Blocks": 0,                                                                                          +
                                       "Local Hit Blocks": 0,                                                                                               +
                                       "Local Read Blocks": 0,                                                                                              +
                                       "Local Dirtied Blocks": 0,                                                                                           +
                                       "Local Written Blocks": 0,                                                                                           +
                                       "Temp Read Blocks": 0,                                                                                               +
                                       "Temp Written Blocks": 0                                                                                             +
                                     }                                                                                                                      +
                                   ]                                                                                                                        +
                                 }                                                                                                                          +
                               ]                                                                                                                            +
                             },                                                                                                                             +
                             {                                                                                                                              +
                               "Node Type": "Index Scan",                                                                                                   +
                               "Parent Relationship": "Inner",                                                                                              +
                               "Parallel Aware": false,                                                                                                     +
                               "Scan Direction": "Forward",                                                                                                 +
                               "Index Name": "movie_id_movie_keyword",                                                                                      +
                               "Relation Name": "movie_keyword",                                                                                            +
                               "Alias": "mk",                                                                                                               +
                               "Startup Cost": 0.01,                                                                                                        +
                               "Total Cost": 0.10,                                                                                                          +
                               "Plan Rows": 11,                                                                                                             +
                               "Plan Width": 8,                                                                                                             +
                               "Actual Startup Time": 4.173,                                                                                                +
                               "Actual Total Time": 4.886,                                                                                                  +
                               "Actual Rows": 73,                                                                                                           +
                               "Actual Loops": 4028,                                                                                                        +
                               "Index Cond": "(movie_id = t.id)",                                                                                           +
                               "Rows Removed by Index Recheck": 0,                                                                                          +
                               "Shared Hit Blocks": 9531,                                                                                                   +
                               "Shared Read Blocks": 8429,                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                                  +
                               "Shared Written Blocks": 0,                                                                                                  +
                               "Local Hit Blocks": 0,                                                                                                       +
                               "Local Read Blocks": 0,                                                                                                      +
                               "Local Dirtied Blocks": 0,                                                                                                   +
                               "Local Written Blocks": 0,                                                                                                   +
                               "Temp Read Blocks": 0,                                                                                                       +
                               "Temp Written Blocks": 0                                                                                                     +
                             }                                                                                                                              +
                           ]                                                                                                                                +
                         },                                                                                                                                 +
                         {                                                                                                                                  +
                           "Node Type": "Index Scan",                                                                                                       +
                           "Parent Relationship": "Inner",                                                                                                  +
                           "Parallel Aware": false,                                                                                                         +
                           "Scan Direction": "Forward",                                                                                                     +
                           "Index Name": "keyword_pkey",                                                                                                    +
                           "Relation Name": "keyword",                                                                                                      +
                           "Alias": "k",                                                                                                                    +
                           "Startup Cost": 0.01,                                                                                                            +
                           "Total Cost": 0.01,                                                                                                              +
                           "Plan Rows": 1,                                                                                                                  +
                           "Plan Width": 4,                                                                                                                 +
                           "Actual Startup Time": 0.022,                                                                                                    +
                           "Actual Total Time": 0.022,                                                                                                      +
                           "Actual Rows": 0,                                                                                                                +
                           "Actual Loops": 293146,                                                                                                          +
                           "Index Cond": "(id = mk.keyword_id)",                                                                                            +
                           "Rows Removed by Index Recheck": 0,                                                                                              +
                           "Filter": "(keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))",+
                           "Rows Removed by Filter": 1,                                                                                                     +
                           "Shared Hit Blocks": 1174175,                                                                                                    +
                           "Shared Read Blocks": 1432,                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                      +
                           "Shared Written Blocks": 0,                                                                                                      +
                           "Local Hit Blocks": 0,                                                                                                           +
                           "Local Read Blocks": 0,                                                                                                          +
                           "Local Dirtied Blocks": 0,                                                                                                       +
                           "Local Written Blocks": 0,                                                                                                       +
                           "Temp Read Blocks": 0,                                                                                                           +
                           "Temp Written Blocks": 0                                                                                                         +
                         }                                                                                                                                  +
                       ]                                                                                                                                    +
                     },                                                                                                                                     +
                     {                                                                                                                                      +
                       "Node Type": "Index Scan",                                                                                                           +
                       "Parent Relationship": "Inner",                                                                                                      +
                       "Parallel Aware": false,                                                                                                             +
                       "Scan Direction": "Forward",                                                                                                         +
                       "Index Name": "movie_id_cast_info",                                                                                                  +
                       "Relation Name": "cast_info",                                                                                                        +
                       "Alias": "ci",                                                                                                                       +
                       "Startup Cost": 0.02,                                                                                                                +
                       "Total Cost": 0.26,                                                                                                                  +
                       "Plan Rows": 23,                                                                                                                     +
                       "Plan Width": 12,                                                                                                                    +
                       "Actual Startup Time": 15.177,                                                                                                       +
                       "Actual Total Time": 303.465,                                                                                                        +
                       "Actual Rows": 150,                                                                                                                  +
                       "Actual Loops": 1261,                                                                                                                +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                            +
                       "Rows Removed by Index Recheck": 0,                                                                                                  +
                       "Shared Hit Blocks": 125345,                                                                                                         +
                       "Shared Read Blocks": 64348,                                                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                                                          +
                       "Shared Written Blocks": 0,                                                                                                          +
                       "Local Hit Blocks": 0,                                                                                                               +
                       "Local Read Blocks": 0,                                                                                                              +
                       "Local Dirtied Blocks": 0,                                                                                                           +
                       "Local Written Blocks": 0,                                                                                                           +
                       "Temp Read Blocks": 0,                                                                                                               +
                       "Temp Written Blocks": 0                                                                                                             +
                     }                                                                                                                                      +
                   ]                                                                                                                                        +
                 },                                                                                                                                         +
                 {                                                                                                                                          +
                   "Node Type": "Index Scan",                                                                                                               +
                   "Parent Relationship": "Inner",                                                                                                          +
                   "Parallel Aware": false,                                                                                                                 +
                   "Scan Direction": "Forward",                                                                                                             +
                   "Index Name": "char_name_pkey",                                                                                                          +
                   "Relation Name": "char_name",                                                                                                            +
                   "Alias": "chn",                                                                                                                          +
                   "Startup Cost": 0.01,                                                                                                                    +
                   "Total Cost": 0.02,                                                                                                                      +
                   "Plan Rows": 1,                                                                                                                          +
                   "Plan Width": 20,                                                                                                                        +
                   "Actual Startup Time": 0.859,                                                                                                            +
                   "Actual Total Time": 0.859,                                                                                                              +
                   "Actual Rows": 0,                                                                                                                        +
                   "Actual Loops": 189738,                                                                                                                  +
                   "Index Cond": "(id = ci.person_role_id)",                                                                                                +
                   "Rows Removed by Index Recheck": 0,                                                                                                      +
                   "Filter": "((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))",                                               +
                   "Rows Removed by Filter": 0,                                                                                                             +
                   "Shared Hit Blocks": 268431,                                                                                                             +
                   "Shared Read Blocks": 28517,                                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                                              +
                   "Shared Written Blocks": 0,                                                                                                              +
                   "Local Hit Blocks": 0,                                                                                                                   +
                   "Local Read Blocks": 0,                                                                                                                  +
                   "Local Dirtied Blocks": 0,                                                                                                               +
                   "Local Written Blocks": 0,                                                                                                               +
                   "Temp Read Blocks": 0,                                                                                                                   +
                   "Temp Written Blocks": 0                                                                                                                 +
                 }                                                                                                                                          +
               ]                                                                                                                                            +
             },                                                                                                                                             +
             {                                                                                                                                              +
               "Node Type": "Index Scan",                                                                                                                   +
               "Parent Relationship": "Inner",                                                                                                              +
               "Parallel Aware": false,                                                                                                                     +
               "Scan Direction": "Forward",                                                                                                                 +
               "Index Name": "name_pkey",                                                                                                                   +
               "Relation Name": "name",                                                                                                                     +
               "Alias": "n",                                                                                                                                +
               "Startup Cost": 0.01,                                                                                                                        +
               "Total Cost": 0.02,                                                                                                                          +
               "Plan Rows": 1,                                                                                                                              +
               "Plan Width": 4,                                                                                                                             +
               "Actual Startup Time": 7.729,                                                                                                                +
               "Actual Total Time": 7.729,                                                                                                                  +
               "Actual Rows": 1,                                                                                                                            +
               "Actual Loops": 5400,                                                                                                                        +
               "Index Cond": "(id = ci.person_id)",                                                                                                         +
               "Rows Removed by Index Recheck": 0,                                                                                                          +
               "Shared Hit Blocks": 15485,                                                                                                                  +
               "Shared Read Blocks": 6139,                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                  +
               "Shared Written Blocks": 0,                                                                                                                  +
               "Local Hit Blocks": 0,                                                                                                                       +
               "Local Read Blocks": 0,                                                                                                                      +
               "Local Dirtied Blocks": 0,                                                                                                                   +
               "Local Written Blocks": 0,                                                                                                                   +
               "Temp Read Blocks": 0,                                                                                                                       +
               "Temp Written Blocks": 0                                                                                                                     +
             }                                                                                                                                              +
           ]                                                                                                                                                +
         }                                                                                                                                                  +
       ]                                                                                                                                                    +
     },                                                                                                                                                     +
     "Planning Time": 10242.925,                                                                                                                            +
     "Triggers": [                                                                                                                                          +
     ],                                                                                                                                                     +
     "Execution Time": 662601.741                                                                                                                           +
   }                                                                                                                                                        +
 ]
(1 row)

