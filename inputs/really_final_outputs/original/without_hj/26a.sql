                                                                         QUERY PLAN                                                                          
-------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                          +
   {                                                                                                                                                        +
     "Plan": {                                                                                                                                              +
       "Node Type": "Aggregate",                                                                                                                            +
       "Strategy": "Plain",                                                                                                                                 +
       "Partial Mode": "Simple",                                                                                                                            +
       "Parallel Aware": false,                                                                                                                             +
       "Startup Cost": 588.10,                                                                                                                              +
       "Total Cost": 588.10,                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                      +
       "Plan Width": 128,                                                                                                                                   +
       "Actual Startup Time": 296033.131,                                                                                                                   +
       "Actual Total Time": 296033.131,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                    +
       "Actual Loops": 1,                                                                                                                                   +
       "Shared Hit Blocks": 881038,                                                                                                                         +
       "Shared Read Blocks": 71604,                                                                                                                         +
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
           "Total Cost": 588.10,                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                  +
           "Plan Width": 54,                                                                                                                                +
           "Actual Startup Time": 12069.524,                                                                                                                +
           "Actual Total Time": 296007.596,                                                                                                                 +
           "Actual Rows": 1728,                                                                                                                             +
           "Actual Loops": 1,                                                                                                                               +
           "Inner Unique": true,                                                                                                                            +
           "Shared Hit Blocks": 881038,                                                                                                                     +
           "Shared Read Blocks": 71604,                                                                                                                     +
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
               "Total Cost": 588.00,                                                                                                                        +
               "Plan Rows": 1,                                                                                                                              +
               "Plan Width": 43,                                                                                                                            +
               "Actual Startup Time": 12048.054,                                                                                                            +
               "Actual Total Time": 282810.079,                                                                                                             +
               "Actual Rows": 1728,                                                                                                                         +
               "Actual Loops": 1,                                                                                                                           +
               "Inner Unique": true,                                                                                                                        +
               "Shared Hit Blocks": 876056,                                                                                                                 +
               "Shared Read Blocks": 69671,                                                                                                                 +
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
                   "Total Cost": 587.75,                                                                                                                    +
                   "Plan Rows": 14,                                                                                                                         +
                   "Plan Width": 31,                                                                                                                        +
                   "Actual Startup Time": 9554.276,                                                                                                         +
                   "Actual Total Time": 204926.649,                                                                                                         +
                   "Actual Rows": 58947,                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                       +
                   "Inner Unique": false,                                                                                                                   +
                   "Join Filter": "(t.id = ci.movie_id)",                                                                                                   +
                   "Rows Removed by Join Filter": 0,                                                                                                        +
                   "Shared Hit Blocks": 796871,                                                                                                             +
                   "Shared Read Blocks": 56801,                                                                                                             +
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
                       "Total Cost": 586.43,                                                                                                                +
                       "Plan Rows": 1,                                                                                                                      +
                       "Plan Width": 39,                                                                                                                    +
                       "Actual Startup Time": 9514.253,                                                                                                     +
                       "Actual Total Time": 50925.953,                                                                                                      +
                       "Actual Rows": 326,                                                                                                                  +
                       "Actual Loops": 1,                                                                                                                   +
                       "Inner Unique": true,                                                                                                                +
                       "Shared Hit Blocks": 764894,                                                                                                         +
                       "Shared Read Blocks": 30237,                                                                                                         +
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
                           "Total Cost": 586.37,                                                                                                            +
                           "Plan Rows": 4,                                                                                                                  +
                           "Plan Width": 43,                                                                                                                +
                           "Actual Startup Time": 9333.847,                                                                                                 +
                           "Actual Total Time": 47305.810,                                                                                                  +
                           "Actual Rows": 79039,                                                                                                            +
                           "Actual Loops": 1,                                                                                                               +
                           "Inner Unique": false,                                                                                                           +
                           "Shared Hit Blocks": 449368,                                                                                                     +
                           "Shared Read Blocks": 28808,                                                                                                     +
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
                               "Total Cost": 586.18,                                                                                                        +
                               "Plan Rows": 2,                                                                                                              +
                               "Plan Width": 35,                                                                                                            +
                               "Actual Startup Time": 9308.201,                                                                                             +
                               "Actual Total Time": 37243.263,                                                                                              +
                               "Actual Rows": 647,                                                                                                          +
                               "Actual Loops": 1,                                                                                                           +
                               "Inner Unique": true,                                                                                                        +
                               "Join Filter": "(t.kind_id = kt.id)",                                                                                        +
                               "Rows Removed by Join Filter": 5355,                                                                                         +
                               "Shared Hit Blocks": 448038,                                                                                                 +
                               "Shared Read Blocks": 26982,                                                                                                 +
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
                                   "Total Cost": 586.14,                                                                                                    +
                                   "Plan Rows": 17,                                                                                                         +
                                   "Plan Width": 39,                                                                                                        +
                                   "Actual Startup Time": 298.956,                                                                                          +
                                   "Actual Total Time": 37234.732,                                                                                          +
                                   "Actual Rows": 6002,                                                                                                     +
                                   "Actual Loops": 1,                                                                                                       +
                                   "Inner Unique": true,                                                                                                    +
                                   "Join Filter": "(cc.movie_id = t.id)",                                                                                   +
                                   "Rows Removed by Join Filter": 0,                                                                                        +
                                   "Shared Hit Blocks": 448037,                                                                                             +
                                   "Shared Read Blocks": 26982,                                                                                             +
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
                                       "Total Cost": 563.91,                                                                                                +
                                       "Plan Rows": 32,                                                                                                     +
                                       "Plan Width": 14,                                                                                                    +
                                       "Actual Startup Time": 0.228,                                                                                        +
                                       "Actual Total Time": 1842.550,                                                                                       +
                                       "Actual Rows": 17898,                                                                                                +
                                       "Actual Loops": 1,                                                                                                   +
                                       "Inner Unique": true,                                                                                                +
                                       "Join Filter": "(cct2.id = cc.status_id)",                                                                           +
                                       "Rows Removed by Join Filter": 4272,                                                                                 +
                                       "Shared Hit Blocks": 393847,                                                                                         +
                                       "Shared Read Blocks": 9501,                                                                                          +
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
                                           "Total Cost": 563.85,                                                                                            +
                                           "Plan Rows": 126,                                                                                                +
                                           "Plan Width": 18,                                                                                                +
                                           "Actual Startup Time": 0.205,                                                                                    +
                                           "Actual Total Time": 1820.934,                                                                                   +
                                           "Actual Rows": 17898,                                                                                            +
                                           "Actual Loops": 1,                                                                                               +
                                           "Inner Unique": true,                                                                                            +
                                           "Join Filter": "(cct1.id = cc.subject_id)",                                                                      +
                                           "Rows Removed by Join Filter": 12016,                                                                            +
                                           "Shared Hit Blocks": 393846,                                                                                     +
                                           "Shared Read Blocks": 9501,                                                                                      +
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
                                               "Total Cost": 563.71,                                                                                        +
                                               "Plan Rows": 502,                                                                                            +
                                               "Plan Width": 22,                                                                                            +
                                               "Actual Startup Time": 0.189,                                                                                +
                                               "Actual Total Time": 1782.459,                                                                               +
                                               "Actual Rows": 29914,                                                                                        +
                                               "Actual Loops": 1,                                                                                           +
                                               "Inner Unique": false,                                                                                       +
                                               "Shared Hit Blocks": 393845,                                                                                 +
                                               "Shared Read Blocks": 9501,                                                                                  +
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
                                                   "Total Cost": 511.06,                                                                                    +
                                                   "Plan Rows": 1708,                                                                                       +
                                                   "Plan Width": 10,                                                                                        +
                                                   "Actual Startup Time": 0.132,                                                                            +
                                                   "Actual Total Time": 894.885,                                                                            +
                                                   "Actual Rows": 121572,                                                                                   +
                                                   "Actual Loops": 1,                                                                                       +
                                                   "Inner Unique": true,                                                                                    +
                                                   "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                         +
                                                   "Rows Removed by Join Filter": 71395,                                                                    +
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
                                                       "Total Cost": 467.71,                                                                                +
                                                       "Plan Rows": 192955,                                                                                 +
                                                       "Plan Width": 14,                                                                                    +
                                                       "Actual Startup Time": 0.074,                                                                        +
                                                       "Actual Total Time": 734.786,                                                                        +
                                                       "Actual Rows": 192967,                                                                               +
                                                       "Actual Loops": 1,                                                                                   +
                                                       "Filter": "(info > '7.0'::text)",                                                                    +
                                                       "Rows Removed by Filter": 1187068,                                                                   +
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
                                                       "Actual Loops": 192967,                                                                              +
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
                                                           "Actual Startup Time": 0.045,                                                                    +
                                                           "Actual Total Time": 0.052,                                                                      +
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
                                                   "Total Cost": 0.03,                                                                                      +
                                                   "Plan Rows": 1,                                                                                          +
                                                   "Plan Width": 12,                                                                                        +
                                                   "Actual Startup Time": 0.005,                                                                            +
                                                   "Actual Total Time": 0.006,                                                                              +
                                                   "Actual Rows": 0,                                                                                        +
                                                   "Actual Loops": 121572,                                                                                  +
                                                   "Index Cond": "(movie_id = mi_idx.movie_id)",                                                            +
                                                   "Rows Removed by Index Recheck": 0,                                                                      +
                                                   "Shared Hit Blocks": 393842,                                                                             +
                                                   "Shared Read Blocks": 1050,                                                                              +
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
                                               "Actual Loops": 29914,                                                                                       +
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
                                                   "Actual Startup Time": 0.007,                                                                            +
                                                   "Actual Total Time": 0.013,                                                                              +
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
                                           "Actual Loops": 17898,                                                                                           +
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
                                               "Actual Startup Time": 0.008,                                                                                +
                                               "Actual Total Time": 0.014,                                                                                  +
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
                                       "Total Cost": 0.69,                                                                                                  +
                                       "Plan Rows": 1,                                                                                                      +
                                       "Plan Width": 25,                                                                                                    +
                                       "Actual Startup Time": 1.976,                                                                                        +
                                       "Actual Total Time": 1.976,                                                                                          +
                                       "Actual Rows": 0,                                                                                                    +
                                       "Actual Loops": 17898,                                                                                               +
                                       "Index Cond": "(id = mi_idx.movie_id)",                                                                              +
                                       "Rows Removed by Index Recheck": 0,                                                                                  +
                                       "Filter": "(production_year > 2000)",                                                                                +
                                       "Rows Removed by Filter": 1,                                                                                         +
                                       "Shared Hit Blocks": 54190,                                                                                          +
                                       "Shared Read Blocks": 17481,                                                                                         +
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
                                   "Actual Loops": 6002,                                                                                                    +
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
                               "Actual Startup Time": 12.554,                                                                                               +
                               "Actual Total Time": 15.475,                                                                                                 +
                               "Actual Rows": 122,                                                                                                          +
                               "Actual Loops": 647,                                                                                                         +
                               "Index Cond": "(movie_id = t.id)",                                                                                           +
                               "Rows Removed by Index Recheck": 0,                                                                                          +
                               "Shared Hit Blocks": 1330,                                                                                                   +
                               "Shared Read Blocks": 1826,                                                                                                  +
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
                           "Actual Startup Time": 0.045,                                                                                                    +
                           "Actual Total Time": 0.045,                                                                                                      +
                           "Actual Rows": 0,                                                                                                                +
                           "Actual Loops": 79039,                                                                                                           +
                           "Index Cond": "(id = mk.keyword_id)",                                                                                            +
                           "Rows Removed by Index Recheck": 0,                                                                                              +
                           "Filter": "(keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))",+
                           "Rows Removed by Filter": 1,                                                                                                     +
                           "Shared Hit Blocks": 315526,                                                                                                     +
                           "Shared Read Blocks": 1429,                                                                                                      +
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
                       "Actual Startup Time": 20.075,                                                                                                       +
                       "Actual Total Time": 471.934,                                                                                                        +
                       "Actual Rows": 181,                                                                                                                  +
                       "Actual Loops": 326,                                                                                                                 +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                            +
                       "Rows Removed by Index Recheck": 0,                                                                                                  +
                       "Shared Hit Blocks": 31977,                                                                                                          +
                       "Shared Read Blocks": 26564,                                                                                                         +
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
                   "Actual Startup Time": 1.318,                                                                                                            +
                   "Actual Total Time": 1.318,                                                                                                              +
                   "Actual Rows": 0,                                                                                                                        +
                   "Actual Loops": 58947,                                                                                                                   +
                   "Index Cond": "(id = ci.person_role_id)",                                                                                                +
                   "Rows Removed by Index Recheck": 0,                                                                                                      +
                   "Filter": "((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))",                                               +
                   "Rows Removed by Filter": 0,                                                                                                             +
                   "Shared Hit Blocks": 79185,                                                                                                              +
                   "Shared Read Blocks": 12870,                                                                                                             +
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
               "Plan Width": 19,                                                                                                                            +
               "Actual Startup Time": 7.631,                                                                                                                +
               "Actual Total Time": 7.631,                                                                                                                  +
               "Actual Rows": 1,                                                                                                                            +
               "Actual Loops": 1728,                                                                                                                        +
               "Index Cond": "(id = ci.person_id)",                                                                                                         +
               "Rows Removed by Index Recheck": 0,                                                                                                          +
               "Shared Hit Blocks": 4982,                                                                                                                   +
               "Shared Read Blocks": 1933,                                                                                                                  +
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
     "Planning Time": 10510.320,                                                                                                                            +
     "Triggers": [                                                                                                                                          +
     ],                                                                                                                                                     +
     "Execution Time": 296050.930                                                                                                                           +
   }                                                                                                                                                        +
 ]
(1 row)

