                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                    +
   {                                                                                                                                                                                  +
     "Plan": {                                                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                                                      +
       "Strategy": "Plain",                                                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                                                      +
       "Parallel Aware": false,                                                                                                                                                       +
       "Startup Cost": 143.29,                                                                                                                                                        +
       "Total Cost": 143.29,                                                                                                                                                          +
       "Plan Rows": 1,                                                                                                                                                                +
       "Plan Width": 96,                                                                                                                                                              +
       "Actual Startup Time": 17566.284,                                                                                                                                              +
       "Actual Total Time": 17566.284,                                                                                                                                                +
       "Actual Rows": 1,                                                                                                                                                              +
       "Actual Loops": 1,                                                                                                                                                             +
       "Shared Hit Blocks": 18245,                                                                                                                                                    +
       "Shared Read Blocks": 2664,                                                                                                                                                    +
       "Shared Dirtied Blocks": 0,                                                                                                                                                    +
       "Shared Written Blocks": 0,                                                                                                                                                    +
       "Local Hit Blocks": 0,                                                                                                                                                         +
       "Local Read Blocks": 0,                                                                                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                                                                                     +
       "Local Written Blocks": 0,                                                                                                                                                     +
       "Temp Read Blocks": 0,                                                                                                                                                         +
       "Temp Written Blocks": 0,                                                                                                                                                      +
       "Plans": [                                                                                                                                                                     +
         {                                                                                                                                                                            +
           "Node Type": "Nested Loop",                                                                                                                                                +
           "Parent Relationship": "Outer",                                                                                                                                            +
           "Parallel Aware": false,                                                                                                                                                   +
           "Join Type": "Inner",                                                                                                                                                      +
           "Startup Cost": 0.14,                                                                                                                                                      +
           "Total Cost": 143.29,                                                                                                                                                      +
           "Plan Rows": 1,                                                                                                                                                            +
           "Plan Width": 48,                                                                                                                                                          +
           "Actual Startup Time": 5368.783,                                                                                                                                           +
           "Actual Total Time": 17566.104,                                                                                                                                            +
           "Actual Rows": 45,                                                                                                                                                         +
           "Actual Loops": 1,                                                                                                                                                         +
           "Inner Unique": false,                                                                                                                                                     +
           "Join Filter": "(it.id = mi.info_type_id)",                                                                                                                                +
           "Rows Removed by Join Filter": 0,                                                                                                                                          +
           "Shared Hit Blocks": 18245,                                                                                                                                                +
           "Shared Read Blocks": 2664,                                                                                                                                                +
           "Shared Dirtied Blocks": 0,                                                                                                                                                +
           "Shared Written Blocks": 0,                                                                                                                                                +
           "Local Hit Blocks": 0,                                                                                                                                                     +
           "Local Read Blocks": 0,                                                                                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                                                                                 +
           "Local Written Blocks": 0,                                                                                                                                                 +
           "Temp Read Blocks": 0,                                                                                                                                                     +
           "Temp Written Blocks": 0,                                                                                                                                                  +
           "Plans": [                                                                                                                                                                 +
             {                                                                                                                                                                        +
               "Node Type": "Seq Scan",                                                                                                                                               +
               "Parent Relationship": "Outer",                                                                                                                                        +
               "Parallel Aware": false,                                                                                                                                               +
               "Relation Name": "info_type",                                                                                                                                          +
               "Alias": "it",                                                                                                                                                         +
               "Startup Cost": 0.00,                                                                                                                                                  +
               "Total Cost": 0.05,                                                                                                                                                    +
               "Plan Rows": 1,                                                                                                                                                        +
               "Plan Width": 4,                                                                                                                                                       +
               "Actual Startup Time": 0.027,                                                                                                                                          +
               "Actual Total Time": 0.067,                                                                                                                                            +
               "Actual Rows": 1,                                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                                     +
               "Filter": "((info)::text = 'release dates'::text)",                                                                                                                    +
               "Rows Removed by Filter": 112,                                                                                                                                         +
               "Shared Hit Blocks": 1,                                                                                                                                                +
               "Shared Read Blocks": 0,                                                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                                 +
               "Temp Written Blocks": 0                                                                                                                                               +
             },                                                                                                                                                                       +
             {                                                                                                                                                                        +
               "Node Type": "Materialize",                                                                                                                                            +
               "Parent Relationship": "Inner",                                                                                                                                        +
               "Parallel Aware": false,                                                                                                                                               +
               "Startup Cost": 0.14,                                                                                                                                                  +
               "Total Cost": 143.24,                                                                                                                                                  +
               "Plan Rows": 1,                                                                                                                                                        +
               "Plan Width": 52,                                                                                                                                                      +
               "Actual Startup Time": 5368.749,                                                                                                                                       +
               "Actual Total Time": 17565.991,                                                                                                                                        +
               "Actual Rows": 45,                                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                                     +
               "Shared Hit Blocks": 18244,                                                                                                                                            +
               "Shared Read Blocks": 2664,                                                                                                                                            +
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
                   "Total Cost": 143.24,                                                                                                                                              +
                   "Plan Rows": 1,                                                                                                                                                    +
                   "Plan Width": 52,                                                                                                                                                  +
                   "Actual Startup Time": 5368.738,                                                                                                                                   +
                   "Actual Total Time": 17565.922,                                                                                                                                    +
                   "Actual Rows": 45,                                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                                 +
                   "Inner Unique": false,                                                                                                                                             +
                   "Join Filter": "(t.id = mi.movie_id)",                                                                                                                             +
                   "Rows Removed by Join Filter": 0,                                                                                                                                  +
                   "Shared Hit Blocks": 18244,                                                                                                                                        +
                   "Shared Read Blocks": 2664,                                                                                                                                        +
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
                       "Total Cost": 142.47,                                                                                                                                          +
                       "Plan Rows": 1,                                                                                                                                                +
                       "Plan Width": 64,                                                                                                                                              +
                       "Actual Startup Time": 5311.743,                                                                                                                               +
                       "Actual Total Time": 17396.702,                                                                                                                                +
                       "Actual Rows": 25,                                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                             +
                       "Inner Unique": true,                                                                                                                                          +
                       "Join Filter": "(ci.person_id = n.id)",                                                                                                                        +
                       "Rows Removed by Join Filter": 0,                                                                                                                              +
                       "Shared Hit Blocks": 17847,                                                                                                                                    +
                       "Shared Read Blocks": 2636,                                                                                                                                    +
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
                           "Total Cost": 141.20,                                                                                                                                      +
                           "Plan Rows": 1,                                                                                                                                            +
                           "Plan Width": 57,                                                                                                                                          +
                           "Actual Startup Time": 5295.705,                                                                                                                           +
                           "Actual Total Time": 17290.371,                                                                                                                            +
                           "Actual Rows": 57,                                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                                         +
                           "Inner Unique": true,                                                                                                                                      +
                           "Join Filter": "(mc.movie_id = t.id)",                                                                                                                     +
                           "Rows Removed by Join Filter": 0,                                                                                                                          +
                           "Shared Hit Blocks": 17636,                                                                                                                                +
                           "Shared Read Blocks": 2619,                                                                                                                                +
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
                               "Startup Cost": 0.10,                                                                                                                                  +
                               "Total Cost": 140.99,                                                                                                                                  +
                               "Plan Rows": 1,                                                                                                                                        +
                               "Plan Width": 36,                                                                                                                                      +
                               "Actual Startup Time": 1580.070,                                                                                                                       +
                               "Actual Total Time": 16982.739,                                                                                                                        +
                               "Actual Rows": 316,                                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                                     +
                               "Inner Unique": true,                                                                                                                                  +
                               "Shared Hit Blocks": 16394,                                                                                                                            +
                               "Shared Read Blocks": 2597,                                                                                                                            +
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
                                   "Startup Cost": 0.08,                                                                                                                              +
                                   "Total Cost": 140.08,                                                                                                                              +
                                   "Plan Rows": 1,                                                                                                                                    +
                                   "Plan Width": 24,                                                                                                                                  +
                                   "Actual Startup Time": 1561.066,                                                                                                                   +
                                   "Actual Total Time": 16083.663,                                                                                                                    +
                                   "Actual Rows": 317,                                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                                 +
                                   "Inner Unique": false,                                                                                                                             +
                                   "Join Filter": "(rt.id = ci.role_id)",                                                                                                             +
                                   "Rows Removed by Join Filter": 1134,                                                                                                               +
                                   "Shared Hit Blocks": 15252,                                                                                                                        +
                                   "Shared Read Blocks": 2475,                                                                                                                        +
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
                                       "Node Type": "Seq Scan",                                                                                                                       +
                                       "Parent Relationship": "Outer",                                                                                                                +
                                       "Parallel Aware": false,                                                                                                                       +
                                       "Relation Name": "role_type",                                                                                                                  +
                                       "Alias": "rt",                                                                                                                                 +
                                       "Startup Cost": 0.00,                                                                                                                          +
                                       "Total Cost": 0.03,                                                                                                                            +
                                       "Plan Rows": 1,                                                                                                                                +
                                       "Plan Width": 4,                                                                                                                               +
                                       "Actual Startup Time": 0.008,                                                                                                                  +
                                       "Actual Total Time": 0.018,                                                                                                                    +
                                       "Actual Rows": 1,                                                                                                                              +
                                       "Actual Loops": 1,                                                                                                                             +
                                       "Filter": "((role)::text = 'actress'::text)",                                                                                                  +
                                       "Rows Removed by Filter": 11,                                                                                                                  +
                                       "Shared Hit Blocks": 1,                                                                                                                        +
                                       "Shared Read Blocks": 0,                                                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                                         +
                                       "Temp Written Blocks": 0                                                                                                                       +
                                     },                                                                                                                                               +
                                     {                                                                                                                                                +
                                       "Node Type": "Materialize",                                                                                                                    +
                                       "Parent Relationship": "Inner",                                                                                                                +
                                       "Parallel Aware": false,                                                                                                                       +
                                       "Startup Cost": 0.08,                                                                                                                          +
                                       "Total Cost": 140.04,                                                                                                                          +
                                       "Plan Rows": 1,                                                                                                                                +
                                       "Plan Width": 28,                                                                                                                              +
                                       "Actual Startup Time": 1221.956,                                                                                                               +
                                       "Actual Total Time": 16082.549,                                                                                                                +
                                       "Actual Rows": 1451,                                                                                                                           +
                                       "Actual Loops": 1,                                                                                                                             +
                                       "Shared Hit Blocks": 15251,                                                                                                                    +
                                       "Shared Read Blocks": 2475,                                                                                                                    +
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
                                           "Total Cost": 140.04,                                                                                                                      +
                                           "Plan Rows": 1,                                                                                                                            +
                                           "Plan Width": 28,                                                                                                                          +
                                           "Actual Startup Time": 1221.940,                                                                                                           +
                                           "Actual Total Time": 16079.961,                                                                                                            +
                                           "Actual Rows": 1451,                                                                                                                       +
                                           "Actual Loops": 1,                                                                                                                         +
                                           "Inner Unique": false,                                                                                                                     +
                                           "Shared Hit Blocks": 15251,                                                                                                                +
                                           "Shared Read Blocks": 2475,                                                                                                                +
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
                                               "Total Cost": 139.73,                                                                                                                  +
                                               "Plan Rows": 1,                                                                                                                        +
                                               "Plan Width": 24,                                                                                                                      +
                                               "Actual Startup Time": 1188.509,                                                                                                       +
                                               "Actual Total Time": 11800.197,                                                                                                        +
                                               "Actual Rows": 707,                                                                                                                    +
                                               "Actual Loops": 1,                                                                                                                     +
                                               "Inner Unique": false,                                                                                                                 +
                                               "Join Filter": "(mc.movie_id = ci.movie_id)",                                                                                          +
                                               "Rows Removed by Join Filter": 0,                                                                                                      +
                                               "Shared Hit Blocks": 12819,                                                                                                            +
                                               "Shared Read Blocks": 2065,                                                                                                            +
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
                                                   "Total Cost": 138.41,                                                                                                              +
                                                   "Plan Rows": 1,                                                                                                                    +
                                                   "Plan Width": 8,                                                                                                                   +
                                                   "Actual Startup Time": 801.282,                                                                                                    +
                                                   "Actual Total Time": 5012.416,                                                                                                     +
                                                   "Actual Rows": 26,                                                                                                                 +
                                                   "Actual Loops": 1,                                                                                                                 +
                                                   "Inner Unique": true,                                                                                                              +
                                                   "Shared Hit Blocks": 10563,                                                                                                        +
                                                   "Shared Read Blocks": 957,                                                                                                         +
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
                                                       "Total Cost": 136.89,                                                                                                          +
                                                       "Plan Rows": 106,                                                                                                              +
                                                       "Plan Width": 12,                                                                                                              +
                                                       "Actual Startup Time": 112.579,                                                                                                +
                                                       "Actual Total Time": 2848.107,                                                                                                 +
                                                       "Actual Rows": 2756,                                                                                                           +
                                                       "Actual Loops": 1,                                                                                                             +
                                                       "Inner Unique": false,                                                                                                         +
                                                       "Shared Hit Blocks": 225,                                                                                                      +
                                                       "Shared Read Blocks": 253,                                                                                                     +
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
                                                           "Total Cost": 136.23,                                                                                                      +
                                                           "Plan Rows": 11,                                                                                                           +
                                                           "Plan Width": 4,                                                                                                           +
                                                           "Actual Startup Time": 76.695,                                                                                             +
                                                           "Actual Total Time": 962.681,                                                                                              +
                                                           "Actual Rows": 99,                                                                                                         +
                                                           "Actual Loops": 1,                                                                                                         +
                                                           "Inner Unique": false,                                                                                                     +
                                                           "Shared Hit Blocks": 1,                                                                                                    +
                                                           "Shared Read Blocks": 78,                                                                                                  +
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
                                                               "Index Name": "company_name_idx_name",                                                                                 +
                                                               "Relation Name": "company_name",                                                                                       +
                                                               "Alias": "cn",                                                                                                         +
                                                               "Startup Cost": 0.01,                                                                                                  +
                                                               "Total Cost": 6.13,                                                                                                    +
                                                               "Plan Rows": 1,                                                                                                        +
                                                               "Plan Width": 4,                                                                                                       +
                                                               "Actual Startup Time": 41.050,                                                                                         +
                                                               "Actual Total Time": 41.053,                                                                                           +
                                                               "Actual Rows": 1,                                                                                                      +
                                                               "Actual Loops": 1,                                                                                                     +
                                                               "Index Cond": "(name = 'DreamWorks Animation'::text)",                                                                 +
                                                               "Rows Removed by Index Recheck": 0,                                                                                    +
                                                               "Filter": "((country_code)::text = '[us]'::text)",                                                                     +
                                                               "Rows Removed by Filter": 0,                                                                                           +
                                                               "Shared Hit Blocks": 0,                                                                                                +
                                                               "Shared Read Blocks": 4,                                                                                               +
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
                                                               "Index Name": "company_id_movie_companies",                                                                            +
                                                               "Relation Name": "movie_companies",                                                                                    +
                                                               "Alias": "mc",                                                                                                         +
                                                               "Startup Cost": 0.01,                                                                                                  +
                                                               "Total Cost": 26.02,                                                                                                   +
                                                               "Plan Rows": 11,                                                                                                       +
                                                               "Plan Width": 8,                                                                                                       +
                                                               "Actual Startup Time": 35.637,                                                                                         +
                                                               "Actual Total Time": 921.395,                                                                                          +
                                                               "Actual Rows": 99,                                                                                                     +
                                                               "Actual Loops": 1,                                                                                                     +
                                                               "Index Cond": "(company_id = cn.id)",                                                                                  +
                                                               "Rows Removed by Index Recheck": 0,                                                                                    +
                                                               "Shared Hit Blocks": 1,                                                                                                +
                                                               "Shared Read Blocks": 74,                                                                                              +
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
                                                           "Index Name": "movie_id_movie_keyword",                                                                                    +
                                                           "Relation Name": "movie_keyword",                                                                                          +
                                                           "Alias": "mk",                                                                                                             +
                                                           "Startup Cost": 0.01,                                                                                                      +
                                                           "Total Cost": 0.06,                                                                                                        +
                                                           "Plan Rows": 11,                                                                                                           +
                                                           "Plan Width": 8,                                                                                                           +
                                                           "Actual Startup Time": 17.876,                                                                                             +
                                                           "Actual Total Time": 19.017,                                                                                               +
                                                           "Actual Rows": 28,                                                                                                         +
                                                           "Actual Loops": 99,                                                                                                        +
                                                           "Index Cond": "(movie_id = mc.movie_id)",                                                                                  +
                                                           "Rows Removed by Index Recheck": 0,                                                                                        +
                                                           "Shared Hit Blocks": 224,                                                                                                  +
                                                           "Shared Read Blocks": 175,                                                                                                 +
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
                                                       "Index Name": "keyword_pkey",                                                                                                  +
                                                       "Relation Name": "keyword",                                                                                                    +
                                                       "Alias": "k",                                                                                                                  +
                                                       "Startup Cost": 0.01,                                                                                                          +
                                                       "Total Cost": 0.01,                                                                                                            +
                                                       "Plan Rows": 1,                                                                                                                +
                                                       "Plan Width": 4,                                                                                                               +
                                                       "Actual Startup Time": 0.784,                                                                                                  +
                                                       "Actual Total Time": 0.784,                                                                                                    +
                                                       "Actual Rows": 0,                                                                                                              +
                                                       "Actual Loops": 2756,                                                                                                          +
                                                       "Index Cond": "(id = mk.keyword_id)",                                                                                          +
                                                       "Rows Removed by Index Recheck": 0,                                                                                            +
                                                       "Filter": "(keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))",                       +
                                                       "Rows Removed by Filter": 1,                                                                                                   +
                                                       "Shared Hit Blocks": 10338,                                                                                                    +
                                                       "Shared Read Blocks": 704,                                                                                                     +
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
                                                   "Actual Startup Time": 16.313,                                                                                                     +
                                                   "Actual Total Time": 261.008,                                                                                                      +
                                                   "Actual Rows": 27,                                                                                                                 +
                                                   "Actual Loops": 26,                                                                                                                +
                                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                          +
                                                   "Rows Removed by Index Recheck": 0,                                                                                                +
                                                   "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                                   "Rows Removed by Filter": 105,                                                                                                     +
                                                   "Shared Hit Blocks": 2256,                                                                                                         +
                                                   "Shared Read Blocks": 1108,                                                                                                        +
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
                                               "Actual Startup Time": 5.523,                                                                                                          +
                                               "Actual Total Time": 6.048,                                                                                                            +
                                               "Actual Rows": 2,                                                                                                                      +
                                               "Actual Loops": 707,                                                                                                                   +
                                               "Index Cond": "(person_id = ci.person_id)",                                                                                            +
                                               "Rows Removed by Index Recheck": 0,                                                                                                    +
                                               "Shared Hit Blocks": 2432,                                                                                                             +
                                               "Shared Read Blocks": 410,                                                                                                             +
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
                                   "Index Name": "char_name_pkey",                                                                                                                    +
                                   "Relation Name": "char_name",                                                                                                                      +
                                   "Alias": "chn",                                                                                                                                    +
                                   "Startup Cost": 0.01,                                                                                                                              +
                                   "Total Cost": 0.18,                                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                                    +
                                   "Plan Width": 20,                                                                                                                                  +
                                   "Actual Startup Time": 2.832,                                                                                                                      +
                                   "Actual Total Time": 2.832,                                                                                                                        +
                                   "Actual Rows": 1,                                                                                                                                  +
                                   "Actual Loops": 317,                                                                                                                               +
                                   "Index Cond": "(id = ci.person_role_id)",                                                                                                          +
                                   "Rows Removed by Index Recheck": 0,                                                                                                                +
                                   "Shared Hit Blocks": 1142,                                                                                                                         +
                                   "Shared Read Blocks": 122,                                                                                                                         +
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
                               "Node Type": "Index Scan",                                                                                                                             +
                               "Parent Relationship": "Inner",                                                                                                                        +
                               "Parallel Aware": false,                                                                                                                               +
                               "Scan Direction": "Forward",                                                                                                                           +
                               "Index Name": "title_idx_id",                                                                                                                          +
                               "Relation Name": "title",                                                                                                                              +
                               "Alias": "t",                                                                                                                                          +
                               "Startup Cost": 0.01,                                                                                                                                  +
                               "Total Cost": 0.04,                                                                                                                                    +
                               "Plan Rows": 1,                                                                                                                                        +
                               "Plan Width": 21,                                                                                                                                      +
                               "Actual Startup Time": 0.971,                                                                                                                          +
                               "Actual Total Time": 0.971,                                                                                                                            +
                               "Actual Rows": 0,                                                                                                                                      +
                               "Actual Loops": 316,                                                                                                                                   +
                               "Index Cond": "(id = mk.movie_id)",                                                                                                                    +
                               "Rows Removed by Index Recheck": 0,                                                                                                                    +
                               "Filter": "((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))",                                                                          +
                               "Rows Removed by Filter": 1,                                                                                                                           +
                               "Shared Hit Blocks": 1242,                                                                                                                             +
                               "Shared Read Blocks": 22,                                                                                                                              +
                               "Shared Dirtied Blocks": 0,                                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                                 +
                               "Temp Written Blocks": 0                                                                                                                               +
                             }                                                                                                                                                        +
                           ]                                                                                                                                                          +
                         },                                                                                                                                                           +
                         {                                                                                                                                                            +
                           "Node Type": "Index Scan",                                                                                                                                 +
                           "Parent Relationship": "Inner",                                                                                                                            +
                           "Parallel Aware": false,                                                                                                                                   +
                           "Scan Direction": "Forward",                                                                                                                               +
                           "Index Name": "name_pkey",                                                                                                                                 +
                           "Relation Name": "name",                                                                                                                                   +
                           "Alias": "n",                                                                                                                                              +
                           "Startup Cost": 0.01,                                                                                                                                      +
                           "Total Cost": 0.25,                                                                                                                                        +
                           "Plan Rows": 1,                                                                                                                                            +
                           "Plan Width": 19,                                                                                                                                          +
                           "Actual Startup Time": 1.863,                                                                                                                              +
                           "Actual Total Time": 1.863,                                                                                                                                +
                           "Actual Rows": 0,                                                                                                                                          +
                           "Actual Loops": 57,                                                                                                                                        +
                           "Index Cond": "(id = an.person_id)",                                                                                                                       +
                           "Rows Removed by Index Recheck": 0,                                                                                                                        +
                           "Filter": "((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))",                                                                                     +
                           "Rows Removed by Filter": 1,                                                                                                                               +
                           "Shared Hit Blocks": 211,                                                                                                                                  +
                           "Shared Read Blocks": 17,                                                                                                                                  +
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
                       "Index Name": "movie_id_movie_info",                                                                                                                           +
                       "Relation Name": "movie_info",                                                                                                                                 +
                       "Alias": "mi",                                                                                                                                                 +
                       "Startup Cost": 0.01,                                                                                                                                          +
                       "Total Cost": 0.15,                                                                                                                                            +
                       "Plan Rows": 1,                                                                                                                                                +
                       "Plan Width": 8,                                                                                                                                               +
                       "Actual Startup Time": 2.306,                                                                                                                                  +
                       "Actual Total Time": 6.765,                                                                                                                                    +
                       "Actual Rows": 2,                                                                                                                                              +
                       "Actual Loops": 25,                                                                                                                                            +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                                                      +
                       "Rows Removed by Index Recheck": 0,                                                                                                                            +
                       "Filter": "((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))",                                                           +
                       "Rows Removed by Filter": 104,                                                                                                                                 +
                       "Shared Hit Blocks": 397,                                                                                                                                      +
                       "Shared Read Blocks": 28,                                                                                                                                      +
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
             }                                                                                                                                                                        +
           ]                                                                                                                                                                          +
         }                                                                                                                                                                            +
       ]                                                                                                                                                                              +
     },                                                                                                                                                                               +
     "Planning Time": 11377.570,                                                                                                                                                      +
     "Triggers": [                                                                                                                                                                    +
     ],                                                                                                                                                                               +
     "Execution Time": 17608.998                                                                                                                                                      +
   }                                                                                                                                                                                  +
 ]
(1 row)

