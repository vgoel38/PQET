                                                                    QUERY PLAN                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                               +
   {                                                                                                                                             +
     "Plan": {                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                 +
       "Strategy": "Plain",                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                 +
       "Parallel Aware": false,                                                                                                                  +
       "Startup Cost": 361.93,                                                                                                                   +
       "Total Cost": 361.93,                                                                                                                     +
       "Plan Rows": 1,                                                                                                                           +
       "Plan Width": 96,                                                                                                                         +
       "Actual Startup Time": 1671.509,                                                                                                          +
       "Actual Total Time": 1671.509,                                                                                                            +
       "Actual Rows": 1,                                                                                                                         +
       "Actual Loops": 1,                                                                                                                        +
       "Shared Hit Blocks": 42796,                                                                                                               +
       "Shared Read Blocks": 603,                                                                                                                +
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
           "Startup Cost": 16.81,                                                                                                                +
           "Total Cost": 361.93,                                                                                                                 +
           "Plan Rows": 1,                                                                                                                       +
           "Plan Width": 48,                                                                                                                     +
           "Actual Startup Time": 584.658,                                                                                                       +
           "Actual Total Time": 1658.019,                                                                                                        +
           "Actual Rows": 477,                                                                                                                   +
           "Actual Loops": 1,                                                                                                                    +
           "Inner Unique": true,                                                                                                                 +
           "Join Filter": "(ml.movie_id = t.id)",                                                                                                +
           "Rows Removed by Join Filter": 0,                                                                                                     +
           "Shared Hit Blocks": 42796,                                                                                                           +
           "Shared Read Blocks": 603,                                                                                                            +
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
               "Startup Cost": 16.80,                                                                                                            +
               "Total Cost": 361.71,                                                                                                             +
               "Plan Rows": 1,                                                                                                                   +
               "Plan Width": 51,                                                                                                                 +
               "Actual Startup Time": 551.332,                                                                                                   +
               "Actual Total Time": 1550.576,                                                                                                    +
               "Actual Rows": 477,                                                                                                               +
               "Actual Loops": 1,                                                                                                                +
               "Inner Unique": true,                                                                                                             +
               "Shared Hit Blocks": 40895,                                                                                                       +
               "Shared Read Blocks": 596,                                                                                                        +
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
                   "Startup Cost": 16.79,                                                                                                        +
                   "Total Cost": 360.57,                                                                                                         +
                   "Plan Rows": 80,                                                                                                              +
                   "Plan Width": 55,                                                                                                             +
                   "Actual Startup Time": 551.027,                                                                                               +
                   "Actual Total Time": 1441.591,                                                                                                +
                   "Actual Rows": 6483,                                                                                                          +
                   "Actual Loops": 1,                                                                                                            +
                   "Inner Unique": false,                                                                                                        +
                   "Join Filter": "(ml.movie_id = mk.movie_id)",                                                                                 +
                   "Rows Removed by Join Filter": 0,                                                                                             +
                   "Shared Hit Blocks": 15002,                                                                                                   +
                   "Shared Read Blocks": 557,                                                                                                    +
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
                       "Startup Cost": 16.78,                                                                                                    +
                       "Total Cost": 359.72,                                                                                                     +
                       "Plan Rows": 8,                                                                                                           +
                       "Plan Width": 47,                                                                                                         +
                       "Actual Startup Time": 550.772,                                                                                           +
                       "Actual Total Time": 1401.469,                                                                                            +
                       "Actual Rows": 705,                                                                                                       +
                       "Actual Loops": 1,                                                                                                        +
                       "Inner Unique": false,                                                                                                    +
                       "Join Filter": "(ml.movie_id = mi.movie_id)",                                                                             +
                       "Rows Removed by Join Filter": 0,                                                                                         +
                       "Shared Hit Blocks": 12187,                                                                                               +
                       "Shared Read Blocks": 552,                                                                                                +
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
                           "Startup Cost": 16.76,                                                                                                +
                           "Total Cost": 343.09,                                                                                                 +
                           "Plan Rows": 33,                                                                                                      +
                           "Plan Width": 43,                                                                                                     +
                           "Actual Startup Time": 285.259,                                                                                       +
                           "Actual Total Time": 896.137,                                                                                         +
                           "Actual Rows": 273,                                                                                                   +
                           "Actual Loops": 1,                                                                                                    +
                           "Inner Unique": true,                                                                                                 +
                           "Shared Hit Blocks": 7790,                                                                                            +
                           "Shared Read Blocks": 468,                                                                                            +
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
                               "Startup Cost": 16.75,                                                                                            +
                               "Total Cost": 339.45,                                                                                             +
                               "Plan Rows": 160,                                                                                                 +
                               "Plan Width": 28,                                                                                                 +
                               "Actual Startup Time": 108.021,                                                                                   +
                               "Actual Total Time": 369.862,                                                                                     +
                               "Actual Rows": 705,                                                                                               +
                               "Actual Loops": 1,                                                                                                +
                               "Inner Unique": true,                                                                                             +
                               "Join Filter": "(ct.id = mc.company_type_id)",                                                                    +
                               "Rows Removed by Join Filter": 89,                                                                                +
                               "Shared Hit Blocks": 5068,                                                                                        +
                               "Shared Read Blocks": 370,                                                                                        +
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
                                   "Startup Cost": 16.75,                                                                                        +
                                   "Total Cost": 339.28,                                                                                         +
                                   "Plan Rows": 641,                                                                                             +
                                   "Plan Width": 32,                                                                                             +
                                   "Actual Startup Time": 107.994,                                                                               +
                                   "Actual Total Time": 368.829,                                                                                 +
                                   "Actual Rows": 794,                                                                                           +
                                   "Actual Loops": 1,                                                                                            +
                                   "Inner Unique": false,                                                                                        +
                                   "Join Filter": "(ml.movie_id = mc.movie_id)",                                                                 +
                                   "Rows Removed by Join Filter": 0,                                                                             +
                                   "Shared Hit Blocks": 5067,                                                                                    +
                                   "Shared Read Blocks": 370,                                                                                    +
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
                                       "Startup Cost": 16.74,                                                                                    +
                                       "Total Cost": 164.19,                                                                                     +
                                       "Plan Rows": 291,                                                                                         +
                                       "Plan Width": 20,                                                                                         +
                                       "Actual Startup Time": 86.113,                                                                            +
                                       "Actual Total Time": 98.504,                                                                              +
                                       "Actual Rows": 189,                                                                                       +
                                       "Actual Loops": 1,                                                                                        +
                                       "Inner Unique": true,                                                                                     +
                                       "Join Filter": "(cct1.id = cc.subject_id)",                                                               +
                                       "Rows Removed by Join Filter": 29,                                                                        +
                                       "Shared Hit Blocks": 4249,                                                                                +
                                       "Shared Read Blocks": 261,                                                                                +
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
                                           "Node Type": "Nested Loop",                                                                           +
                                           "Parent Relationship": "Outer",                                                                       +
                                           "Parallel Aware": false,                                                                              +
                                           "Join Type": "Inner",                                                                                 +
                                           "Startup Cost": 16.74,                                                                                +
                                           "Total Cost": 163.92,                                                                                 +
                                           "Plan Rows": 582,                                                                                     +
                                           "Plan Width": 24,                                                                                     +
                                           "Actual Startup Time": 86.094,                                                                        +
                                           "Actual Total Time": 98.217,                                                                          +
                                           "Actual Rows": 189,                                                                                   +
                                           "Actual Loops": 1,                                                                                    +
                                           "Inner Unique": true,                                                                                 +
                                           "Join Filter": "(cct2.id = cc.status_id)",                                                            +
                                           "Rows Removed by Join Filter": 68,                                                                    +
                                           "Shared Hit Blocks": 4248,                                                                            +
                                           "Shared Read Blocks": 261,                                                                            +
                                           "Shared Dirtied Blocks": 0,                                                                           +
                                           "Shared Written Blocks": 0,                                                                           +
                                           "Local Hit Blocks": 0,                                                                                +
                                           "Local Read Blocks": 0,                                                                               +
                                           "Local Dirtied Blocks": 0,                                                                            +
                                           "Local Written Blocks": 0,                                                                            +
                                           "Temp Read Blocks": 0,                                                                                +
                                           "Temp Written Blocks": 0,                                                                             +
                                           "Plans": [                                                                                            +
                                             {                                                                                                   +
                                               "Node Type": "Merge Join",                                                                        +
                                               "Parent Relationship": "Outer",                                                                   +
                                               "Parallel Aware": false,                                                                          +
                                               "Join Type": "Inner",                                                                             +
                                               "Startup Cost": 16.74,                                                                            +
                                               "Total Cost": 163.37,                                                                             +
                                               "Plan Rows": 2329,                                                                                +
                                               "Plan Width": 28,                                                                                 +
                                               "Actual Startup Time": 86.067,                                                                    +
                                               "Actual Total Time": 97.812,                                                                      +
                                               "Actual Rows": 257,                                                                               +
                                               "Actual Loops": 1,                                                                                +
                                               "Inner Unique": false,                                                                            +
                                               "Merge Cond": "(cc.movie_id = ml.movie_id)",                                                      +
                                               "Shared Hit Blocks": 4247,                                                                        +
                                               "Shared Read Blocks": 261,                                                                        +
                                               "Shared Dirtied Blocks": 0,                                                                       +
                                               "Shared Written Blocks": 0,                                                                       +
                                               "Local Hit Blocks": 0,                                                                            +
                                               "Local Read Blocks": 0,                                                                           +
                                               "Local Dirtied Blocks": 0,                                                                        +
                                               "Local Written Blocks": 0,                                                                        +
                                               "Temp Read Blocks": 0,                                                                            +
                                               "Temp Written Blocks": 0,                                                                         +
                                               "Plans": [                                                                                        +
                                                 {                                                                                               +
                                                   "Node Type": "Index Scan",                                                                    +
                                                   "Parent Relationship": "Outer",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Scan Direction": "Forward",                                                                  +
                                                   "Index Name": "movie_id_complete_cast",                                                       +
                                                   "Relation Name": "complete_cast",                                                             +
                                                   "Alias": "cc",                                                                                +
                                                   "Startup Cost": 0.01,                                                                         +
                                                   "Total Cost": 3283.51,                                                                        +
                                                   "Plan Rows": 135086,                                                                          +
                                                   "Plan Width": 12,                                                                             +
                                                   "Actual Startup Time": 0.026,                                                                 +
                                                   "Actual Total Time": 22.412,                                                                  +
                                                   "Actual Rows": 5993,                                                                          +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Shared Hit Blocks": 4240,                                                                    +
                                                   "Shared Read Blocks": 100,                                                                    +
                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                   "Shared Written Blocks": 0,                                                                   +
                                                   "Local Hit Blocks": 0,                                                                        +
                                                   "Local Read Blocks": 0,                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                   "Local Written Blocks": 0,                                                                    +
                                                   "Temp Read Blocks": 0,                                                                        +
                                                   "Temp Written Blocks": 0                                                                      +
                                                 },                                                                                              +
                                                 {                                                                                               +
                                                   "Node Type": "Sort",                                                                          +
                                                   "Parent Relationship": "Inner",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Startup Cost": 16.72,                                                                        +
                                                   "Total Cost": 16.85,                                                                          +
                                                   "Plan Rows": 1666,                                                                            +
                                                   "Plan Width": 16,                                                                             +
                                                   "Actual Startup Time": 71.849,                                                                +
                                                   "Actual Total Time": 72.227,                                                                  +
                                                   "Actual Rows": 2341,                                                                          +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Sort Key": ["ml.movie_id"],                                                                  +
                                                   "Sort Method": "quicksort",                                                                   +
                                                   "Sort Space Used": 205,                                                                       +
                                                   "Sort Space Type": "Memory",                                                                  +
                                                   "Shared Hit Blocks": 7,                                                                       +
                                                   "Shared Read Blocks": 161,                                                                    +
                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                   "Shared Written Blocks": 0,                                                                   +
                                                   "Local Hit Blocks": 0,                                                                        +
                                                   "Local Read Blocks": 0,                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                   "Local Written Blocks": 0,                                                                    +
                                                   "Temp Read Blocks": 0,                                                                        +
                                                   "Temp Written Blocks": 0,                                                                     +
                                                   "Plans": [                                                                                    +
                                                     {                                                                                           +
                                                       "Node Type": "Nested Loop",                                                               +
                                                       "Parent Relationship": "Outer",                                                           +
                                                       "Parallel Aware": false,                                                                  +
                                                       "Join Type": "Inner",                                                                     +
                                                       "Startup Cost": 0.00,                                                                     +
                                                       "Total Cost": 13.95,                                                                      +
                                                       "Plan Rows": 1666,                                                                        +
                                                       "Plan Width": 16,                                                                         +
                                                       "Actual Startup Time": 0.151,                                                             +
                                                       "Actual Total Time": 61.144,                                                              +
                                                       "Actual Rows": 2315,                                                                      +
                                                       "Actual Loops": 1,                                                                        +
                                                       "Inner Unique": true,                                                                     +
                                                       "Join Filter": "(lt.id = ml.link_type_id)",                                               +
                                                       "Rows Removed by Join Filter": 56521,                                                     +
                                                       "Shared Hit Blocks": 3,                                                                   +
                                                       "Shared Read Blocks": 161,                                                                +
                                                       "Shared Dirtied Blocks": 0,                                                               +
                                                       "Shared Written Blocks": 0,                                                               +
                                                       "Local Hit Blocks": 0,                                                                    +
                                                       "Local Read Blocks": 0,                                                                   +
                                                       "Local Dirtied Blocks": 0,                                                                +
                                                       "Local Written Blocks": 0,                                                                +
                                                       "Temp Read Blocks": 0,                                                                    +
                                                       "Temp Written Blocks": 0,                                                                 +
                                                       "Plans": [                                                                                +
                                                         {                                                                                       +
                                                           "Node Type": "Seq Scan",                                                              +
                                                           "Parent Relationship": "Outer",                                                       +
                                                           "Parallel Aware": false,                                                              +
                                                           "Relation Name": "movie_link",                                                        +
                                                           "Alias": "ml",                                                                        +
                                                           "Startup Cost": 0.00,                                                                 +
                                                           "Total Cost": 7.19,                                                                   +
                                                           "Plan Rows": 29997,                                                                   +
                                                           "Plan Width": 8,                                                                      +
                                                           "Actual Startup Time": 0.015,                                                         +
                                                           "Actual Total Time": 19.901,                                                          +
                                                           "Actual Rows": 29997,                                                                 +
                                                           "Actual Loops": 1,                                                                    +
                                                           "Shared Hit Blocks": 2,                                                               +
                                                           "Shared Read Blocks": 161,                                                            +
                                                           "Shared Dirtied Blocks": 0,                                                           +
                                                           "Shared Written Blocks": 0,                                                           +
                                                           "Local Hit Blocks": 0,                                                                +
                                                           "Local Read Blocks": 0,                                                               +
                                                           "Local Dirtied Blocks": 0,                                                            +
                                                           "Local Written Blocks": 0,                                                            +
                                                           "Temp Read Blocks": 0,                                                                +
                                                           "Temp Written Blocks": 0                                                              +
                                                         },                                                                                      +
                                                         {                                                                                       +
                                                           "Node Type": "Materialize",                                                           +
                                                           "Parent Relationship": "Inner",                                                       +
                                                           "Parallel Aware": false,                                                              +
                                                           "Startup Cost": 0.00,                                                                 +
                                                           "Total Cost": 0.03,                                                                   +
                                                           "Plan Rows": 1,                                                                       +
                                                           "Plan Width": 16,                                                                     +
                                                           "Actual Startup Time": 0.000,                                                         +
                                                           "Actual Total Time": 0.000,                                                           +
                                                           "Actual Rows": 2,                                                                     +
                                                           "Actual Loops": 29997,                                                                +
                                                           "Shared Hit Blocks": 1,                                                               +
                                                           "Shared Read Blocks": 0,                                                              +
                                                           "Shared Dirtied Blocks": 0,                                                           +
                                                           "Shared Written Blocks": 0,                                                           +
                                                           "Local Hit Blocks": 0,                                                                +
                                                           "Local Read Blocks": 0,                                                               +
                                                           "Local Dirtied Blocks": 0,                                                            +
                                                           "Local Written Blocks": 0,                                                            +
                                                           "Temp Read Blocks": 0,                                                                +
                                                           "Temp Written Blocks": 0,                                                             +
                                                           "Plans": [                                                                            +
                                                             {                                                                                   +
                                                               "Node Type": "Seq Scan",                                                          +
                                                               "Parent Relationship": "Outer",                                                   +
                                                               "Parallel Aware": false,                                                          +
                                                               "Relation Name": "link_type",                                                     +
                                                               "Alias": "lt",                                                                    +
                                                               "Startup Cost": 0.00,                                                             +
                                                               "Total Cost": 0.03,                                                               +
                                                               "Plan Rows": 1,                                                                   +
                                                               "Plan Width": 16,                                                                 +
                                                               "Actual Startup Time": 0.017,                                                     +
                                                               "Actual Total Time": 0.031,                                                       +
                                                               "Actual Rows": 2,                                                                 +
                                                               "Actual Loops": 1,                                                                +
                                                               "Filter": "((link)::text ~~ '%follow%'::text)",                                   +
                                                               "Rows Removed by Filter": 16,                                                     +
                                                               "Shared Hit Blocks": 1,                                                           +
                                                               "Shared Read Blocks": 0,                                                          +
                                                               "Shared Dirtied Blocks": 0,                                                       +
                                                               "Shared Written Blocks": 0,                                                       +
                                                               "Local Hit Blocks": 0,                                                            +
                                                               "Local Read Blocks": 0,                                                           +
                                                               "Local Dirtied Blocks": 0,                                                        +
                                                               "Local Written Blocks": 0,                                                        +
                                                               "Temp Read Blocks": 0,                                                            +
                                                               "Temp Written Blocks": 0                                                          +
                                                             }                                                                                   +
                                                           ]                                                                                     +
                                                         }                                                                                       +
                                                       ]                                                                                         +
                                                     }                                                                                           +
                                                   ]                                                                                             +
                                                 }                                                                                               +
                                               ]                                                                                                 +
                                             },                                                                                                  +
                                             {                                                                                                   +
                                               "Node Type": "Materialize",                                                                       +
                                               "Parent Relationship": "Inner",                                                                   +
                                               "Parallel Aware": false,                                                                          +
                                               "Startup Cost": 0.00,                                                                             +
                                               "Total Cost": 0.03,                                                                               +
                                               "Plan Rows": 1,                                                                                   +
                                               "Plan Width": 4,                                                                                  +
                                               "Actual Startup Time": 0.000,                                                                     +
                                               "Actual Total Time": 0.000,                                                                       +
                                               "Actual Rows": 1,                                                                                 +
                                               "Actual Loops": 257,                                                                              +
                                               "Shared Hit Blocks": 1,                                                                           +
                                               "Shared Read Blocks": 0,                                                                          +
                                               "Shared Dirtied Blocks": 0,                                                                       +
                                               "Shared Written Blocks": 0,                                                                       +
                                               "Local Hit Blocks": 0,                                                                            +
                                               "Local Read Blocks": 0,                                                                           +
                                               "Local Dirtied Blocks": 0,                                                                        +
                                               "Local Written Blocks": 0,                                                                        +
                                               "Temp Read Blocks": 0,                                                                            +
                                               "Temp Written Blocks": 0,                                                                         +
                                               "Plans": [                                                                                        +
                                                 {                                                                                               +
                                                   "Node Type": "Seq Scan",                                                                      +
                                                   "Parent Relationship": "Outer",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Relation Name": "comp_cast_type",                                                            +
                                                   "Alias": "cct2",                                                                              +
                                                   "Startup Cost": 0.00,                                                                         +
                                                   "Total Cost": 0.03,                                                                           +
                                                   "Plan Rows": 1,                                                                               +
                                                   "Plan Width": 4,                                                                              +
                                                   "Actual Startup Time": 0.015,                                                                 +
                                                   "Actual Total Time": 0.018,                                                                   +
                                                   "Actual Rows": 1,                                                                             +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Filter": "((kind)::text = 'complete'::text)",                                                +
                                                   "Rows Removed by Filter": 3,                                                                  +
                                                   "Shared Hit Blocks": 1,                                                                       +
                                                   "Shared Read Blocks": 0,                                                                      +
                                                   "Shared Dirtied Blocks": 0,                                                                   +
                                                   "Shared Written Blocks": 0,                                                                   +
                                                   "Local Hit Blocks": 0,                                                                        +
                                                   "Local Read Blocks": 0,                                                                       +
                                                   "Local Dirtied Blocks": 0,                                                                    +
                                                   "Local Written Blocks": 0,                                                                    +
                                                   "Temp Read Blocks": 0,                                                                        +
                                                   "Temp Written Blocks": 0                                                                      +
                                                 }                                                                                               +
                                               ]                                                                                                 +
                                             }                                                                                                   +
                                           ]                                                                                                     +
                                         },                                                                                                      +
                                         {                                                                                                       +
                                           "Node Type": "Materialize",                                                                           +
                                           "Parent Relationship": "Inner",                                                                       +
                                           "Parallel Aware": false,                                                                              +
                                           "Startup Cost": 0.00,                                                                                 +
                                           "Total Cost": 0.03,                                                                                   +
                                           "Plan Rows": 2,                                                                                       +
                                           "Plan Width": 4,                                                                                      +
                                           "Actual Startup Time": 0.000,                                                                         +
                                           "Actual Total Time": 0.000,                                                                           +
                                           "Actual Rows": 1,                                                                                     +
                                           "Actual Loops": 189,                                                                                  +
                                           "Shared Hit Blocks": 1,                                                                               +
                                           "Shared Read Blocks": 0,                                                                              +
                                           "Shared Dirtied Blocks": 0,                                                                           +
                                           "Shared Written Blocks": 0,                                                                           +
                                           "Local Hit Blocks": 0,                                                                                +
                                           "Local Read Blocks": 0,                                                                               +
                                           "Local Dirtied Blocks": 0,                                                                            +
                                           "Local Written Blocks": 0,                                                                            +
                                           "Temp Read Blocks": 0,                                                                                +
                                           "Temp Written Blocks": 0,                                                                             +
                                           "Plans": [                                                                                            +
                                             {                                                                                                   +
                                               "Node Type": "Seq Scan",                                                                          +
                                               "Parent Relationship": "Outer",                                                                   +
                                               "Parallel Aware": false,                                                                          +
                                               "Relation Name": "comp_cast_type",                                                                +
                                               "Alias": "cct1",                                                                                  +
                                               "Startup Cost": 0.00,                                                                             +
                                               "Total Cost": 0.03,                                                                               +
                                               "Plan Rows": 2,                                                                                   +
                                               "Plan Width": 4,                                                                                  +
                                               "Actual Startup Time": 0.009,                                                                     +
                                               "Actual Total Time": 0.012,                                                                       +
                                               "Actual Rows": 2,                                                                                 +
                                               "Actual Loops": 1,                                                                                +
                                               "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                                         +
                                               "Rows Removed by Filter": 0,                                                                      +
                                               "Shared Hit Blocks": 1,                                                                           +
                                               "Shared Read Blocks": 0,                                                                          +
                                               "Shared Dirtied Blocks": 0,                                                                       +
                                               "Shared Written Blocks": 0,                                                                       +
                                               "Local Hit Blocks": 0,                                                                            +
                                               "Local Read Blocks": 0,                                                                           +
                                               "Local Dirtied Blocks": 0,                                                                        +
                                               "Local Written Blocks": 0,                                                                        +
                                               "Temp Read Blocks": 0,                                                                            +
                                               "Temp Written Blocks": 0                                                                          +
                                             }                                                                                                   +
                                           ]                                                                                                     +
                                         }                                                                                                       +
                                       ]                                                                                                         +
                                     },                                                                                                          +
                                     {                                                                                                           +
                                       "Node Type": "Index Scan",                                                                                +
                                       "Parent Relationship": "Inner",                                                                           +
                                       "Parallel Aware": false,                                                                                  +
                                       "Scan Direction": "Forward",                                                                              +
                                       "Index Name": "movie_id_movie_companies",                                                                 +
                                       "Relation Name": "movie_companies",                                                                       +
                                       "Alias": "mc",                                                                                            +
                                       "Startup Cost": 0.01,                                                                                     +
                                       "Total Cost": 0.60,                                                                                       +
                                       "Plan Rows": 1,                                                                                           +
                                       "Plan Width": 12,                                                                                         +
                                       "Actual Startup Time": 1.285,                                                                             +
                                       "Actual Total Time": 1.426,                                                                               +
                                       "Actual Rows": 4,                                                                                         +
                                       "Actual Loops": 189,                                                                                      +
                                       "Index Cond": "(movie_id = cc.movie_id)",                                                                 +
                                       "Rows Removed by Index Recheck": 0,                                                                       +
                                       "Filter": "(note IS NULL)",                                                                               +
                                       "Rows Removed by Filter": 3,                                                                              +
                                       "Shared Hit Blocks": 818,                                                                                 +
                                       "Shared Read Blocks": 109,                                                                                +
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
                                   "Actual Loops": 794,                                                                                          +
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
                                       "Relation Name": "company_type",                                                                          +
                                       "Alias": "ct",                                                                                            +
                                       "Startup Cost": 0.00,                                                                                     +
                                       "Total Cost": 0.03,                                                                                       +
                                       "Plan Rows": 1,                                                                                           +
                                       "Plan Width": 4,                                                                                          +
                                       "Actual Startup Time": 0.015,                                                                             +
                                       "Actual Total Time": 0.022,                                                                               +
                                       "Actual Rows": 1,                                                                                         +
                                       "Actual Loops": 1,                                                                                        +
                                       "Filter": "((kind)::text = 'production companies'::text)",                                                +
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
                               "Node Type": "Index Scan",                                                                                        +
                               "Parent Relationship": "Inner",                                                                                   +
                               "Parallel Aware": false,                                                                                          +
                               "Scan Direction": "Forward",                                                                                      +
                               "Index Name": "company_name_pkey",                                                                                +
                               "Relation Name": "company_name",                                                                                  +
                               "Alias": "cn",                                                                                                    +
                               "Startup Cost": 0.01,                                                                                             +
                               "Total Cost": 0.02,                                                                                               +
                               "Plan Rows": 1,                                                                                                   +
                               "Plan Width": 23,                                                                                                 +
                               "Actual Startup Time": 0.745,                                                                                     +
                               "Actual Total Time": 0.745,                                                                                       +
                               "Actual Rows": 0,                                                                                                 +
                               "Actual Loops": 705,                                                                                              +
                               "Index Cond": "(id = mc.company_id)",                                                                             +
                               "Rows Removed by Index Recheck": 0,                                                                               +
                               "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                               "Rows Removed by Filter": 1,                                                                                      +
                               "Shared Hit Blocks": 2722,                                                                                        +
                               "Shared Read Blocks": 98,                                                                                         +
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
                           "Index Name": "movie_id_movie_info",                                                                                  +
                           "Relation Name": "movie_info",                                                                                        +
                           "Alias": "mi",                                                                                                        +
                           "Startup Cost": 0.01,                                                                                                 +
                           "Total Cost": 0.50,                                                                                                   +
                           "Plan Rows": 1,                                                                                                       +
                           "Plan Width": 4,                                                                                                      +
                           "Actual Startup Time": 1.813,                                                                                         +
                           "Actual Total Time": 1.848,                                                                                           +
                           "Actual Rows": 3,                                                                                                     +
                           "Actual Loops": 273,                                                                                                  +
                           "Index Cond": "(movie_id = mc.movie_id)",                                                                             +
                           "Rows Removed by Index Recheck": 0,                                                                                   +
                           "Filter": "(info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))",                                                 +
                           "Rows Removed by Filter": 23,                                                                                         +
                           "Shared Hit Blocks": 4397,                                                                                            +
                           "Shared Read Blocks": 84,                                                                                             +
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
                       "Index Name": "movie_id_movie_keyword",                                                                                   +
                       "Relation Name": "movie_keyword",                                                                                         +
                       "Alias": "mk",                                                                                                            +
                       "Startup Cost": 0.01,                                                                                                     +
                       "Total Cost": 0.10,                                                                                                       +
                       "Plan Rows": 11,                                                                                                          +
                       "Plan Width": 8,                                                                                                          +
                       "Actual Startup Time": 0.046,                                                                                             +
                       "Actual Total Time": 0.050,                                                                                               +
                       "Actual Rows": 9,                                                                                                         +
                       "Actual Loops": 705,                                                                                                      +
                       "Index Cond": "(movie_id = mc.movie_id)",                                                                                 +
                       "Rows Removed by Index Recheck": 0,                                                                                       +
                       "Shared Hit Blocks": 2815,                                                                                                +
                       "Shared Read Blocks": 5,                                                                                                  +
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
                   "Index Name": "keyword_pkey",                                                                                                 +
                   "Relation Name": "keyword",                                                                                                   +
                   "Alias": "k",                                                                                                                 +
                   "Startup Cost": 0.01,                                                                                                         +
                   "Total Cost": 0.01,                                                                                                           +
                   "Plan Rows": 1,                                                                                                               +
                   "Plan Width": 4,                                                                                                              +
                   "Actual Startup Time": 0.016,                                                                                                 +
                   "Actual Total Time": 0.016,                                                                                                   +
                   "Actual Rows": 0,                                                                                                             +
                   "Actual Loops": 6483,                                                                                                         +
                   "Index Cond": "(id = mk.keyword_id)",                                                                                         +
                   "Rows Removed by Index Recheck": 0,                                                                                           +
                   "Filter": "(keyword = 'sequel'::text)",                                                                                       +
                   "Rows Removed by Filter": 1,                                                                                                  +
                   "Shared Hit Blocks": 25893,                                                                                                   +
                   "Shared Read Blocks": 39,                                                                                                     +
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
               "Actual Startup Time": 0.224,                                                                                                     +
               "Actual Total Time": 0.224,                                                                                                       +
               "Actual Rows": 1,                                                                                                                 +
               "Actual Loops": 477,                                                                                                              +
               "Index Cond": "(id = mk.movie_id)",                                                                                               +
               "Rows Removed by Index Recheck": 0,                                                                                               +
               "Filter": "((production_year >= 1950) AND (production_year <= 2000))",                                                            +
               "Rows Removed by Filter": 0,                                                                                                      +
               "Shared Hit Blocks": 1901,                                                                                                        +
               "Shared Read Blocks": 7,                                                                                                          +
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
         }                                                                                                                                       +
       ]                                                                                                                                         +
     },                                                                                                                                          +
     "Planning Time": 11480.704,                                                                                                                 +
     "Triggers": [                                                                                                                               +
     ],                                                                                                                                          +
     "Execution Time": 1701.839                                                                                                                  +
   }                                                                                                                                             +
 ]
(1 row)

