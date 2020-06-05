                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                        +
   {                                                                                                                                                                      +
     "Plan": {                                                                                                                                                            +
       "Node Type": "Aggregate",                                                                                                                                          +
       "Strategy": "Plain",                                                                                                                                               +
       "Partial Mode": "Simple",                                                                                                                                          +
       "Parallel Aware": false,                                                                                                                                           +
       "Startup Cost": 20777.18,                                                                                                                                          +
       "Total Cost": 20777.18,                                                                                                                                            +
       "Plan Rows": 1,                                                                                                                                                    +
       "Plan Width": 64,                                                                                                                                                  +
       "Actual Startup Time": 1540180.818,                                                                                                                                +
       "Actual Total Time": 1540180.818,                                                                                                                                  +
       "Actual Rows": 1,                                                                                                                                                  +
       "Actual Loops": 1,                                                                                                                                                 +
       "Shared Hit Blocks": 103696419,                                                                                                                                    +
       "Shared Read Blocks": 589399,                                                                                                                                      +
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
           "Startup Cost": 0.10,                                                                                                                                          +
           "Total Cost": 20777.11,                                                                                                                                        +
           "Plan Rows": 480,                                                                                                                                              +
           "Plan Width": 32,                                                                                                                                              +
           "Actual Startup Time": 19989.148,                                                                                                                              +
           "Actual Total Time": 1539381.231,                                                                                                                              +
           "Actual Rows": 1760645,                                                                                                                                        +
           "Actual Loops": 1,                                                                                                                                             +
           "Inner Unique": true,                                                                                                                                          +
           "Shared Hit Blocks": 103696419,                                                                                                                                +
           "Shared Read Blocks": 589399,                                                                                                                                  +
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
               "Startup Cost": 0.08,                                                                                                                                      +
               "Total Cost": 20753.42,                                                                                                                                    +
               "Plan Rows": 1330,                                                                                                                                         +
               "Plan Width": 36,                                                                                                                                          +
               "Actual Startup Time": 13226.217,                                                                                                                          +
               "Actual Total Time": 1490525.383,                                                                                                                          +
               "Actual Rows": 6023690,                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                         +
               "Inner Unique": false,                                                                                                                                     +
               "Join Filter": "(t.id = mc.movie_id)",                                                                                                                     +
               "Rows Removed by Join Filter": 0,                                                                                                                          +
               "Shared Hit Blocks": 79587681,                                                                                                                             +
               "Shared Read Blocks": 586203,                                                                                                                              +
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
                   "Startup Cost": 0.07,                                                                                                                                  +
                   "Total Cost": 20745.51,                                                                                                                                +
                   "Plan Rows": 408,                                                                                                                                      +
                   "Plan Width": 44,                                                                                                                                      +
                   "Actual Startup Time": 13226.041,                                                                                                                      +
                   "Actual Total Time": 1467839.180,                                                                                                                      +
                   "Actual Rows": 702993,                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                     +
                   "Inner Unique": false,                                                                                                                                 +
                   "Shared Hit Blocks": 76433018,                                                                                                                         +
                   "Shared Read Blocks": 576865,                                                                                                                          +
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
                       "Startup Cost": 0.06,                                                                                                                              +
                       "Total Cost": 20718.39,                                                                                                                            +
                       "Plan Rows": 469,                                                                                                                                  +
                       "Plan Width": 52,                                                                                                                                  +
                       "Actual Startup Time": 4310.854,                                                                                                                   +
                       "Actual Total Time": 1425546.431,                                                                                                                  +
                       "Actual Rows": 341836,                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                 +
                       "Inner Unique": true,                                                                                                                              +
                       "Shared Hit Blocks": 75133800,                                                                                                                     +
                       "Shared Read Blocks": 571750,                                                                                                                      +
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
                           "Startup Cost": 0.04,                                                                                                                          +
                           "Total Cost": 20542.21,                                                                                                                        +
                           "Plan Rows": 968,                                                                                                                              +
                           "Plan Width": 56,                                                                                                                              +
                           "Actual Startup Time": 4293.567,                                                                                                               +
                           "Actual Total Time": 1292739.878,                                                                                                              +
                           "Actual Rows": 371543,                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                             +
                           "Inner Unique": true,                                                                                                                          +
                           "Shared Hit Blocks": 73788240,                                                                                                                 +
                           "Shared Read Blocks": 549007,                                                                                                                  +
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
                               "Startup Cost": 0.03,                                                                                                                      +
                               "Total Cost": 19436.78,                                                                                                                    +
                               "Plan Rows": 4192,                                                                                                                         +
                               "Plan Width": 37,                                                                                                                          +
                               "Actual Startup Time": 4272.087,                                                                                                           +
                               "Actual Total Time": 1208512.255,                                                                                                          +
                               "Actual Rows": 371852,                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                         +
                               "Inner Unique": true,                                                                                                                      +
                               "Join Filter": "(ci.role_id = rt.id)",                                                                                                     +
                               "Rows Removed by Join Filter": 799115,                                                                                                     +
                               "Shared Hit Blocks": 72312335,                                                                                                             +
                               "Shared Read Blocks": 535593,                                                                                                              +
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
                                   "Startup Cost": 0.03,                                                                                                                  +
                                   "Total Cost": 19425.45,                                                                                                                +
                                   "Plan Rows": 50303,                                                                                                                    +
                                   "Plan Width": 41,                                                                                                                      +
                                   "Actual Startup Time": 4272.046,                                                                                                       +
                                   "Actual Total Time": 1207369.495,                                                                                                      +
                                   "Actual Rows": 1170967,                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                     +
                                   "Inner Unique": false,                                                                                                                 +
                                   "Join Filter": "(t.id = ci.movie_id)",                                                                                                 +
                                   "Rows Removed by Join Filter": 0,                                                                                                      +
                                   "Shared Hit Blocks": 72312334,                                                                                                         +
                                   "Shared Read Blocks": 535593,                                                                                                          +
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
                                       "Startup Cost": 0.01,                                                                                                              +
                                       "Total Cost": 12383.91,                                                                                                            +
                                       "Plan Rows": 71736,                                                                                                                +
                                       "Plan Width": 25,                                                                                                                  +
                                       "Actual Startup Time": 2118.365,                                                                                                   +
                                       "Actual Total Time": 66374.455,                                                                                                    +
                                       "Actual Rows": 1798330,                                                                                                            +
                                       "Actual Loops": 1,                                                                                                                 +
                                       "Inner Unique": true,                                                                                                              +
                                       "Shared Hit Blocks": 12115450,                                                                                                     +
                                       "Shared Read Blocks": 204779,                                                                                                      +
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
                                           "Startup Cost": 0.00,                                                                                                          +
                                           "Total Cost": 9433.33,                                                                                                         +
                                           "Plan Rows": 131290,                                                                                                           +
                                           "Plan Width": 4,                                                                                                               +
                                           "Actual Startup Time": 2106.755,                                                                                               +
                                           "Actual Total Time": 12565.840,                                                                                                +
                                           "Actual Rows": 3036719,                                                                                                        +
                                           "Actual Loops": 1,                                                                                                             +
                                           "Inner Unique": true,                                                                                                          +
                                           "Join Filter": "(it.id = mi.info_type_id)",                                                                                    +
                                           "Rows Removed by Join Filter": 11799001,                                                                                       +
                                           "Shared Hit Blocks": 3,                                                                                                        +
                                           "Shared Read Blocks": 161890,                                                                                                  +
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
                                               "Node Type": "Seq Scan",                                                                                                   +
                                               "Parent Relationship": "Outer",                                                                                            +
                                               "Parallel Aware": false,                                                                                                   +
                                               "Relation Name": "movie_info",                                                                                             +
                                               "Alias": "mi",                                                                                                             +
                                               "Startup Cost": 0.00,                                                                                                      +
                                               "Total Cost": 6103.84,                                                                                                     +
                                               "Plan Rows": 14835720,                                                                                                     +
                                               "Plan Width": 8,                                                                                                           +
                                               "Actual Startup Time": 24.926,                                                                                             +
                                               "Actual Total Time": 4254.604,                                                                                             +
                                               "Actual Rows": 14835720,                                                                                                   +
                                               "Actual Loops": 1,                                                                                                         +
                                               "Shared Hit Blocks": 2,                                                                                                    +
                                               "Shared Read Blocks": 161890,                                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                                                +
                                               "Shared Written Blocks": 0,                                                                                                +
                                               "Local Hit Blocks": 0,                                                                                                     +
                                               "Local Read Blocks": 0,                                                                                                    +
                                               "Local Dirtied Blocks": 0,                                                                                                 +
                                               "Local Written Blocks": 0,                                                                                                 +
                                               "Temp Read Blocks": 0,                                                                                                     +
                                               "Temp Written Blocks": 0                                                                                                   +
                                             },                                                                                                                           +
                                             {                                                                                                                            +
                                               "Node Type": "Materialize",                                                                                                +
                                               "Parent Relationship": "Inner",                                                                                            +
                                               "Parallel Aware": false,                                                                                                   +
                                               "Startup Cost": 0.00,                                                                                                      +
                                               "Total Cost": 0.05,                                                                                                        +
                                               "Plan Rows": 1,                                                                                                            +
                                               "Plan Width": 4,                                                                                                           +
                                               "Actual Startup Time": 0.000,                                                                                              +
                                               "Actual Total Time": 0.000,                                                                                                +
                                               "Actual Rows": 1,                                                                                                          +
                                               "Actual Loops": 14835720,                                                                                                  +
                                               "Shared Hit Blocks": 1,                                                                                                    +
                                               "Shared Read Blocks": 0,                                                                                                   +
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
                                                   "Node Type": "Seq Scan",                                                                                               +
                                                   "Parent Relationship": "Outer",                                                                                        +
                                                   "Parallel Aware": false,                                                                                               +
                                                   "Relation Name": "info_type",                                                                                          +
                                                   "Alias": "it",                                                                                                         +
                                                   "Startup Cost": 0.00,                                                                                                  +
                                                   "Total Cost": 0.05,                                                                                                    +
                                                   "Plan Rows": 1,                                                                                                        +
                                                   "Plan Width": 4,                                                                                                       +
                                                   "Actual Startup Time": 0.028,                                                                                          +
                                                   "Actual Total Time": 0.062,                                                                                            +
                                                   "Actual Rows": 1,                                                                                                      +
                                                   "Actual Loops": 1,                                                                                                     +
                                                   "Filter": "((info)::text = 'release dates'::text)",                                                                    +
                                                   "Rows Removed by Filter": 112,                                                                                         +
                                                   "Shared Hit Blocks": 1,                                                                                                +
                                                   "Shared Read Blocks": 0,                                                                                               +
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
                                             }                                                                                                                            +
                                           ]                                                                                                                              +
                                         },                                                                                                                               +
                                         {                                                                                                                                +
                                           "Node Type": "Index Scan",                                                                                                     +
                                           "Parent Relationship": "Inner",                                                                                                +
                                           "Parallel Aware": false,                                                                                                       +
                                           "Scan Direction": "Forward",                                                                                                   +
                                           "Index Name": "title_idx_id",                                                                                                  +
                                           "Relation Name": "title",                                                                                                      +
                                           "Alias": "t",                                                                                                                  +
                                           "Startup Cost": 0.01,                                                                                                          +
                                           "Total Cost": 0.02,                                                                                                            +
                                           "Plan Rows": 1,                                                                                                                +
                                           "Plan Width": 21,                                                                                                              +
                                           "Actual Startup Time": 0.017,                                                                                                  +
                                           "Actual Total Time": 0.017,                                                                                                    +
                                           "Actual Rows": 1,                                                                                                              +
                                           "Actual Loops": 3036719,                                                                                                       +
                                           "Index Cond": "(id = mi.movie_id)",                                                                                            +
                                           "Rows Removed by Index Recheck": 0,                                                                                            +
                                           "Filter": "(production_year > 2000)",                                                                                          +
                                           "Rows Removed by Filter": 0,                                                                                                   +
                                           "Shared Hit Blocks": 12115447,                                                                                                 +
                                           "Shared Read Blocks": 42889,                                                                                                   +
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
                                       "Total Cost": 0.10,                                                                                                                +
                                       "Plan Rows": 1,                                                                                                                    +
                                       "Plan Width": 16,                                                                                                                  +
                                       "Actual Startup Time": 0.578,                                                                                                      +
                                       "Actual Total Time": 0.633,                                                                                                        +
                                       "Actual Rows": 1,                                                                                                                  +
                                       "Actual Loops": 1798330,                                                                                                           +
                                       "Index Cond": "(movie_id = mi.movie_id)",                                                                                          +
                                       "Rows Removed by Index Recheck": 0,                                                                                                +
                                       "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                       "Rows Removed by Filter": 30,                                                                                                      +
                                       "Shared Hit Blocks": 60196884,                                                                                                     +
                                       "Shared Read Blocks": 330814,                                                                                                      +
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
                                   "Node Type": "Materialize",                                                                                                            +
                                   "Parent Relationship": "Inner",                                                                                                        +
                                   "Parallel Aware": false,                                                                                                               +
                                   "Startup Cost": 0.00,                                                                                                                  +
                                   "Total Cost": 0.03,                                                                                                                    +
                                   "Plan Rows": 1,                                                                                                                        +
                                   "Plan Width": 4,                                                                                                                       +
                                   "Actual Startup Time": 0.000,                                                                                                          +
                                   "Actual Total Time": 0.000,                                                                                                            +
                                   "Actual Rows": 1,                                                                                                                      +
                                   "Actual Loops": 1170967,                                                                                                               +
                                   "Shared Hit Blocks": 1,                                                                                                                +
                                   "Shared Read Blocks": 0,                                                                                                               +
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
                                       "Node Type": "Seq Scan",                                                                                                           +
                                       "Parent Relationship": "Outer",                                                                                                    +
                                       "Parallel Aware": false,                                                                                                           +
                                       "Relation Name": "role_type",                                                                                                      +
                                       "Alias": "rt",                                                                                                                     +
                                       "Startup Cost": 0.00,                                                                                                              +
                                       "Total Cost": 0.03,                                                                                                                +
                                       "Plan Rows": 1,                                                                                                                    +
                                       "Plan Width": 4,                                                                                                                   +
                                       "Actual Startup Time": 0.020,                                                                                                      +
                                       "Actual Total Time": 0.029,                                                                                                        +
                                       "Actual Rows": 1,                                                                                                                  +
                                       "Actual Loops": 1,                                                                                                                 +
                                       "Filter": "((role)::text = 'actress'::text)",                                                                                      +
                                       "Rows Removed by Filter": 11,                                                                                                      +
                                       "Shared Hit Blocks": 1,                                                                                                            +
                                       "Shared Read Blocks": 0,                                                                                                           +
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
                                 }                                                                                                                                        +
                               ]                                                                                                                                          +
                             },                                                                                                                                           +
                             {                                                                                                                                            +
                               "Node Type": "Index Scan",                                                                                                                 +
                               "Parent Relationship": "Inner",                                                                                                            +
                               "Parallel Aware": false,                                                                                                                   +
                               "Scan Direction": "Forward",                                                                                                               +
                               "Index Name": "name_pkey",                                                                                                                 +
                               "Relation Name": "name",                                                                                                                   +
                               "Alias": "n",                                                                                                                              +
                               "Startup Cost": 0.01,                                                                                                                      +
                               "Total Cost": 0.26,                                                                                                                        +
                               "Plan Rows": 1,                                                                                                                            +
                               "Plan Width": 19,                                                                                                                          +
                               "Actual Startup Time": 0.225,                                                                                                              +
                               "Actual Total Time": 0.225,                                                                                                                +
                               "Actual Rows": 1,                                                                                                                          +
                               "Actual Loops": 371852,                                                                                                                    +
                               "Index Cond": "(id = ci.person_id)",                                                                                                       +
                               "Rows Removed by Index Recheck": 0,                                                                                                        +
                               "Filter": "((gender)::text = 'f'::text)",                                                                                                  +
                               "Rows Removed by Filter": 0,                                                                                                               +
                               "Shared Hit Blocks": 1475905,                                                                                                              +
                               "Shared Read Blocks": 13414,                                                                                                               +
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
                           "Node Type": "Index Scan",                                                                                                                     +
                           "Parent Relationship": "Inner",                                                                                                                +
                           "Parallel Aware": false,                                                                                                                       +
                           "Scan Direction": "Forward",                                                                                                                   +
                           "Index Name": "char_name_pkey",                                                                                                                +
                           "Relation Name": "char_name",                                                                                                                  +
                           "Alias": "chn",                                                                                                                                +
                           "Startup Cost": 0.01,                                                                                                                          +
                           "Total Cost": 0.18,                                                                                                                            +
                           "Plan Rows": 1,                                                                                                                                +
                           "Plan Width": 4,                                                                                                                               +
                           "Actual Startup Time": 0.356,                                                                                                                  +
                           "Actual Total Time": 0.356,                                                                                                                    +
                           "Actual Rows": 1,                                                                                                                              +
                           "Actual Loops": 371543,                                                                                                                        +
                           "Index Cond": "(id = ci.person_role_id)",                                                                                                      +
                           "Rows Removed by Index Recheck": 0,                                                                                                            +
                           "Shared Hit Blocks": 1345560,                                                                                                                  +
                           "Shared Read Blocks": 22743,                                                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                                                    +
                           "Shared Written Blocks": 0,                                                                                                                    +
                           "Local Hit Blocks": 0,                                                                                                                         +
                           "Local Read Blocks": 0,                                                                                                                        +
                           "Local Dirtied Blocks": 0,                                                                                                                     +
                           "Local Written Blocks": 0,                                                                                                                     +
                           "Temp Read Blocks": 0,                                                                                                                         +
                           "Temp Written Blocks": 0                                                                                                                       +
                         }                                                                                                                                                +
                       ]                                                                                                                                                  +
                     },                                                                                                                                                   +
                     {                                                                                                                                                    +
                       "Node Type": "Index Scan",                                                                                                                         +
                       "Parent Relationship": "Inner",                                                                                                                    +
                       "Parallel Aware": false,                                                                                                                           +
                       "Scan Direction": "Forward",                                                                                                                       +
                       "Index Name": "person_id_aka_name",                                                                                                                +
                       "Relation Name": "aka_name",                                                                                                                       +
                       "Alias": "an",                                                                                                                                     +
                       "Startup Cost": 0.01,                                                                                                                              +
                       "Total Cost": 0.06,                                                                                                                                +
                       "Plan Rows": 2,                                                                                                                                    +
                       "Plan Width": 4,                                                                                                                                   +
                       "Actual Startup Time": 0.106,                                                                                                                      +
                       "Actual Total Time": 0.122,                                                                                                                        +
                       "Actual Rows": 2,                                                                                                                                  +
                       "Actual Loops": 341836,                                                                                                                            +
                       "Index Cond": "(person_id = n.id)",                                                                                                                +
                       "Rows Removed by Index Recheck": 0,                                                                                                                +
                       "Shared Hit Blocks": 1299218,                                                                                                                      +
                       "Shared Read Blocks": 5115,                                                                                                                        +
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
                   "Index Name": "movie_id_movie_companies",                                                                                                              +
                   "Relation Name": "movie_companies",                                                                                                                    +
                   "Alias": "mc",                                                                                                                                         +
                   "Startup Cost": 0.01,                                                                                                                                  +
                   "Total Cost": 0.02,                                                                                                                                    +
                   "Plan Rows": 2,                                                                                                                                        +
                   "Plan Width": 8,                                                                                                                                       +
                   "Actual Startup Time": 0.021,                                                                                                                          +
                   "Actual Total Time": 0.028,                                                                                                                            +
                   "Actual Rows": 9,                                                                                                                                      +
                   "Actual Loops": 702993,                                                                                                                                +
                   "Index Cond": "(movie_id = mi.movie_id)",                                                                                                              +
                   "Rows Removed by Index Recheck": 0,                                                                                                                    +
                   "Shared Hit Blocks": 3154663,                                                                                                                          +
                   "Shared Read Blocks": 9338,                                                                                                                            +
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
               "Index Name": "company_name_pkey",                                                                                                                         +
               "Relation Name": "company_name",                                                                                                                           +
               "Alias": "cn",                                                                                                                                             +
               "Startup Cost": 0.01,                                                                                                                                      +
               "Total Cost": 0.02,                                                                                                                                        +
               "Plan Rows": 1,                                                                                                                                            +
               "Plan Width": 4,                                                                                                                                           +
               "Actual Startup Time": 0.008,                                                                                                                              +
               "Actual Total Time": 0.008,                                                                                                                                +
               "Actual Rows": 0,                                                                                                                                          +
               "Actual Loops": 6023690,                                                                                                                                   +
               "Index Cond": "(id = mc.company_id)",                                                                                                                      +
               "Rows Removed by Index Recheck": 0,                                                                                                                        +
               "Filter": "((country_code)::text = '[us]'::text)",                                                                                                         +
               "Rows Removed by Filter": 1,                                                                                                                               +
               "Shared Hit Blocks": 24108738,                                                                                                                             +
               "Shared Read Blocks": 3196,                                                                                                                                +
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
         }                                                                                                                                                                +
       ]                                                                                                                                                                  +
     },                                                                                                                                                                   +
     "Planning Time": 7066.085,                                                                                                                                           +
     "Triggers": [                                                                                                                                                        +
     ],                                                                                                                                                                   +
     "Execution Time": 1540218.371                                                                                                                                        +
   }                                                                                                                                                                      +
 ]
(1 row)

