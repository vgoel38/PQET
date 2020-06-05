                                                                    QUERY PLAN                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                               +
   {                                                                                                                                             +
     "Plan": {                                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                                 +
       "Strategy": "Plain",                                                                                                                      +
       "Partial Mode": "Simple",                                                                                                                 +
       "Parallel Aware": false,                                                                                                                  +
       "Startup Cost": 339.44,                                                                                                                   +
       "Total Cost": 339.44,                                                                                                                     +
       "Plan Rows": 1,                                                                                                                           +
       "Plan Width": 96,                                                                                                                         +
       "Actual Startup Time": 1487.069,                                                                                                          +
       "Actual Total Time": 1487.069,                                                                                                            +
       "Actual Rows": 1,                                                                                                                         +
       "Actual Loops": 1,                                                                                                                        +
       "Shared Hit Blocks": 25502,                                                                                                               +
       "Shared Read Blocks": 690,                                                                                                                +
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
           "Startup Cost": 76.57,                                                                                                                +
           "Total Cost": 339.44,                                                                                                                 +
           "Plan Rows": 1,                                                                                                                       +
           "Plan Width": 48,                                                                                                                     +
           "Actual Startup Time": 525.793,                                                                                                       +
           "Actual Total Time": 1473.519,                                                                                                        +
           "Actual Rows": 743,                                                                                                                   +
           "Actual Loops": 1,                                                                                                                    +
           "Inner Unique": false,                                                                                                                +
           "Join Filter": "(ml.movie_id = mi.movie_id)",                                                                                         +
           "Rows Removed by Join Filter": 0,                                                                                                     +
           "Shared Hit Blocks": 25502,                                                                                                           +
           "Shared Read Blocks": 690,                                                                                                            +
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
               "Startup Cost": 76.55,                                                                                                            +
               "Total Cost": 338.66,                                                                                                             +
               "Plan Rows": 1,                                                                                                                   +
               "Plan Width": 68,                                                                                                                 +
               "Actual Startup Time": 468.010,                                                                                                   +
               "Actual Total Time": 1260.125,                                                                                                    +
               "Actual Rows": 172,                                                                                                               +
               "Actual Loops": 1,                                                                                                                +
               "Inner Unique": true,                                                                                                             +
               "Join Filter": "(ml.movie_id = t.id)",                                                                                            +
               "Rows Removed by Join Filter": 0,                                                                                                 +
               "Shared Hit Blocks": 22992,                                                                                                       +
               "Shared Read Blocks": 664,                                                                                                        +
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
                   "Startup Cost": 76.54,                                                                                                        +
                   "Total Cost": 338.45,                                                                                                         +
                   "Plan Rows": 1,                                                                                                               +
                   "Plan Width": 47,                                                                                                             +
                   "Actual Startup Time": 421.518,                                                                                               +
                   "Actual Total Time": 1133.133,                                                                                                +
                   "Actual Rows": 172,                                                                                                           +
                   "Actual Loops": 1,                                                                                                            +
                   "Inner Unique": true,                                                                                                         +
                   "Shared Hit Blocks": 22311,                                                                                                   +
                   "Shared Read Blocks": 657,                                                                                                    +
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
                       "Startup Cost": 76.53,                                                                                                    +
                       "Total Cost": 336.00,                                                                                                     +
                       "Plan Rows": 171,                                                                                                         +
                       "Plan Width": 51,                                                                                                         +
                       "Actual Startup Time": 287.151,                                                                                           +
                       "Actual Total Time": 1019.572,                                                                                            +
                       "Actual Rows": 3296,                                                                                                      +
                       "Actual Loops": 1,                                                                                                        +
                       "Inner Unique": false,                                                                                                    +
                       "Join Filter": "(ml.movie_id = mk.movie_id)",                                                                             +
                       "Rows Removed by Join Filter": 0,                                                                                         +
                       "Shared Hit Blocks": 9237,                                                                                                +
                       "Shared Read Blocks": 547,                                                                                                +
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
                           "Startup Cost": 76.51,                                                                                                +
                           "Total Cost": 334.20,                                                                                                 +
                           "Plan Rows": 17,                                                                                                      +
                           "Plan Width": 43,                                                                                                     +
                           "Actual Startup Time": 268.598,                                                                                       +
                           "Actual Total Time": 921.419,                                                                                         +
                           "Actual Rows": 277,                                                                                                   +
                           "Actual Loops": 1,                                                                                                    +
                           "Inner Unique": true,                                                                                                 +
                           "Shared Hit Blocks": 8149,                                                                                            +
                           "Shared Read Blocks": 529,                                                                                            +
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
                               "Startup Cost": 76.50,                                                                                            +
                               "Total Cost": 332.39,                                                                                             +
                               "Plan Rows": 80,                                                                                                  +
                               "Plan Width": 28,                                                                                                 +
                               "Actual Startup Time": 91.343,                                                                                    +
                               "Actual Total Time": 396.136,                                                                                     +
                               "Actual Rows": 763,                                                                                               +
                               "Actual Loops": 1,                                                                                                +
                               "Inner Unique": true,                                                                                             +
                               "Join Filter": "(mc.company_type_id = ct.id)",                                                                    +
                               "Rows Removed by Join Filter": 101,                                                                               +
                               "Shared Hit Blocks": 5215,                                                                                        +
                               "Shared Read Blocks": 411,                                                                                        +
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
                                   "Startup Cost": 76.50,                                                                                        +
                                   "Total Cost": 332.28,                                                                                         +
                                   "Plan Rows": 322,                                                                                             +
                                   "Plan Width": 32,                                                                                             +
                                   "Actual Startup Time": 91.316,                                                                                +
                                   "Actual Total Time": 394.981,                                                                                 +
                                   "Actual Rows": 864,                                                                                           +
                                   "Actual Loops": 1,                                                                                            +
                                   "Inner Unique": false,                                                                                        +
                                   "Join Filter": "(ml.movie_id = mc.movie_id)",                                                                 +
                                   "Rows Removed by Join Filter": 0,                                                                             +
                                   "Shared Hit Blocks": 5214,                                                                                    +
                                   "Shared Read Blocks": 411,                                                                                    +
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
                                       "Startup Cost": 76.49,                                                                                    +
                                       "Total Cost": 244.44,                                                                                     +
                                       "Plan Rows": 146,                                                                                         +
                                       "Plan Width": 20,                                                                                         +
                                       "Actual Startup Time": 70.379,                                                                            +
                                       "Actual Total Time": 108.609,                                                                             +
                                       "Actual Rows": 228,                                                                                       +
                                       "Actual Loops": 1,                                                                                        +
                                       "Inner Unique": true,                                                                                     +
                                       "Join Filter": "(ml.link_type_id = lt.id)",                                                               +
                                       "Rows Removed by Join Filter": 6826,                                                                      +
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
                                           "Startup Cost": 76.49,                                                                                +
                                           "Total Cost": 243.82,                                                                                 +
                                           "Plan Rows": 2620,                                                                                    +
                                           "Plan Width": 12,                                                                                     +
                                           "Actual Startup Time": 60.817,                                                                        +
                                           "Actual Total Time": 103.182,                                                                         +
                                           "Actual Rows": 3564,                                                                                  +
                                           "Actual Loops": 1,                                                                                    +
                                           "Inner Unique": true,                                                                                 +
                                           "Join Filter": "(cct2.id = cc.status_id)",                                                            +
                                           "Rows Removed by Join Filter": 1492,                                                                  +
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
                                               "Node Type": "Nested Loop",                                                                       +
                                               "Parent Relationship": "Outer",                                                                   +
                                               "Parallel Aware": false,                                                                          +
                                               "Join Type": "Inner",                                                                             +
                                               "Startup Cost": 76.49,                                                                            +
                                               "Total Cost": 241.43,                                                                             +
                                               "Plan Rows": 10482,                                                                               +
                                               "Plan Width": 16,                                                                                 +
                                               "Actual Startup Time": 60.803,                                                                    +
                                               "Actual Total Time": 99.123,                                                                      +
                                               "Actual Rows": 3564,                                                                              +
                                               "Actual Loops": 1,                                                                                +
                                               "Inner Unique": true,                                                                             +
                                               "Join Filter": "(cct1.id = cc.subject_id)",                                                       +
                                               "Rows Removed by Join Filter": 1285,                                                              +
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
                                                   "Node Type": "Merge Join",                                                                    +
                                                   "Parent Relationship": "Outer",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Join Type": "Inner",                                                                         +
                                                   "Startup Cost": 76.49,                                                                        +
                                                   "Total Cost": 231.99,                                                                         +
                                                   "Plan Rows": 41927,                                                                           +
                                                   "Plan Width": 20,                                                                             +
                                                   "Actual Startup Time": 60.779,                                                                +
                                                   "Actual Total Time": 94.511,                                                                  +
                                                   "Actual Rows": 4849,                                                                          +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Inner Unique": false,                                                                        +
                                                   "Merge Cond": "(cc.movie_id = ml.movie_id)",                                                  +
                                                   "Shared Hit Blocks": 4246,                                                                    +
                                                   "Shared Read Blocks": 261,                                                                    +
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
                                                       "Node Type": "Index Scan",                                                                +
                                                       "Parent Relationship": "Outer",                                                           +
                                                       "Parallel Aware": false,                                                                  +
                                                       "Scan Direction": "Forward",                                                              +
                                                       "Index Name": "movie_id_complete_cast",                                                   +
                                                       "Relation Name": "complete_cast",                                                         +
                                                       "Alias": "cc",                                                                            +
                                                       "Startup Cost": 0.01,                                                                     +
                                                       "Total Cost": 3283.51,                                                                    +
                                                       "Plan Rows": 135086,                                                                      +
                                                       "Plan Width": 12,                                                                         +
                                                       "Actual Startup Time": 0.025,                                                             +
                                                       "Actual Total Time": 20.417,                                                              +
                                                       "Actual Rows": 5993,                                                                      +
                                                       "Actual Loops": 1,                                                                        +
                                                       "Shared Hit Blocks": 4240,                                                                +
                                                       "Shared Read Blocks": 100,                                                                +
                                                       "Shared Dirtied Blocks": 0,                                                               +
                                                       "Shared Written Blocks": 0,                                                               +
                                                       "Local Hit Blocks": 0,                                                                    +
                                                       "Local Read Blocks": 0,                                                                   +
                                                       "Local Dirtied Blocks": 0,                                                                +
                                                       "Local Written Blocks": 0,                                                                +
                                                       "Temp Read Blocks": 0,                                                                    +
                                                       "Temp Written Blocks": 0                                                                  +
                                                     },                                                                                          +
                                                     {                                                                                           +
                                                       "Node Type": "Sort",                                                                      +
                                                       "Parent Relationship": "Inner",                                                           +
                                                       "Parallel Aware": false,                                                                  +
                                                       "Startup Cost": 76.46,                                                                    +
                                                       "Total Cost": 78.79,                                                                      +
                                                       "Plan Rows": 29997,                                                                       +
                                                       "Plan Width": 8,                                                                          +
                                                       "Actual Startup Time": 56.437,                                                            +
                                                       "Actual Total Time": 60.885,                                                              +
                                                       "Actual Rows": 30755,                                                                     +
                                                       "Actual Loops": 1,                                                                        +
                                                       "Sort Key": ["ml.movie_id"],                                                              +
                                                       "Sort Method": "quicksort",                                                               +
                                                       "Sort Space Used": 2175,                                                                  +
                                                       "Sort Space Type": "Memory",                                                              +
                                                       "Shared Hit Blocks": 6,                                                                   +
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
                                                           "Actual Startup Time": 0.019,                                                         +
                                                           "Actual Total Time": 26.275,                                                          +
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
                                                         }                                                                                       +
                                                       ]                                                                                         +
                                                     }                                                                                           +
                                                   ]                                                                                             +
                                                 },                                                                                              +
                                                 {                                                                                               +
                                                   "Node Type": "Materialize",                                                                   +
                                                   "Parent Relationship": "Inner",                                                               +
                                                   "Parallel Aware": false,                                                                      +
                                                   "Startup Cost": 0.00,                                                                         +
                                                   "Total Cost": 0.03,                                                                           +
                                                   "Plan Rows": 1,                                                                               +
                                                   "Plan Width": 4,                                                                              +
                                                   "Actual Startup Time": 0.000,                                                                 +
                                                   "Actual Total Time": 0.000,                                                                   +
                                                   "Actual Rows": 1,                                                                             +
                                                   "Actual Loops": 4849,                                                                         +
                                                   "Shared Hit Blocks": 1,                                                                       +
                                                   "Shared Read Blocks": 0,                                                                      +
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
                                                       "Node Type": "Seq Scan",                                                                  +
                                                       "Parent Relationship": "Outer",                                                           +
                                                       "Parallel Aware": false,                                                                  +
                                                       "Relation Name": "comp_cast_type",                                                        +
                                                       "Alias": "cct1",                                                                          +
                                                       "Startup Cost": 0.00,                                                                     +
                                                       "Total Cost": 0.03,                                                                       +
                                                       "Plan Rows": 1,                                                                           +
                                                       "Plan Width": 4,                                                                          +
                                                       "Actual Startup Time": 0.013,                                                             +
                                                       "Actual Total Time": 0.016,                                                               +
                                                       "Actual Rows": 1,                                                                         +
                                                       "Actual Loops": 1,                                                                        +
                                                       "Filter": "((kind)::text = 'cast'::text)",                                                +
                                                       "Rows Removed by Filter": 3,                                                              +
                                                       "Shared Hit Blocks": 1,                                                                   +
                                                       "Shared Read Blocks": 0,                                                                  +
                                                       "Shared Dirtied Blocks": 0,                                                               +
                                                       "Shared Written Blocks": 0,                                                               +
                                                       "Local Hit Blocks": 0,                                                                    +
                                                       "Local Read Blocks": 0,                                                                   +
                                                       "Local Dirtied Blocks": 0,                                                                +
                                                       "Local Written Blocks": 0,                                                                +
                                                       "Temp Read Blocks": 0,                                                                    +
                                                       "Temp Written Blocks": 0                                                                  +
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
                                               "Actual Loops": 3564,                                                                             +
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
                                                   "Actual Startup Time": 0.008,                                                                 +
                                                   "Actual Total Time": 0.012,                                                                   +
                                                   "Actual Rows": 2,                                                                             +
                                                   "Actual Loops": 1,                                                                            +
                                                   "Filter": "((kind)::text ~~ 'complete%'::text)",                                              +
                                                   "Rows Removed by Filter": 2,                                                                  +
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
                                           "Plan Rows": 1,                                                                                       +
                                           "Plan Width": 16,                                                                                     +
                                           "Actual Startup Time": 0.000,                                                                         +
                                           "Actual Total Time": 0.000,                                                                           +
                                           "Actual Rows": 2,                                                                                     +
                                           "Actual Loops": 3564,                                                                                 +
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
                                               "Relation Name": "link_type",                                                                     +
                                               "Alias": "lt",                                                                                    +
                                               "Startup Cost": 0.00,                                                                             +
                                               "Total Cost": 0.03,                                                                               +
                                               "Plan Rows": 1,                                                                                   +
                                               "Plan Width": 16,                                                                                 +
                                               "Actual Startup Time": 0.009,                                                                     +
                                               "Actual Total Time": 0.022,                                                                       +
                                               "Actual Rows": 2,                                                                                 +
                                               "Actual Loops": 1,                                                                                +
                                               "Filter": "((link)::text ~~ '%follow%'::text)",                                                   +
                                               "Rows Removed by Filter": 16,                                                                     +
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
                                       "Actual Startup Time": 1.229,                                                                             +
                                       "Actual Total Time": 1.252,                                                                               +
                                       "Actual Rows": 4,                                                                                         +
                                       "Actual Loops": 228,                                                                                      +
                                       "Index Cond": "(movie_id = cc.movie_id)",                                                                 +
                                       "Rows Removed by Index Recheck": 0,                                                                       +
                                       "Filter": "(note IS NULL)",                                                                               +
                                       "Rows Removed by Filter": 3,                                                                              +
                                       "Shared Hit Blocks": 965,                                                                                 +
                                       "Shared Read Blocks": 150,                                                                                +
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
                                   "Actual Loops": 864,                                                                                          +
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
                                       "Actual Total Time": 0.020,                                                                               +
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
                               "Actual Startup Time": 0.687,                                                                                     +
                               "Actual Total Time": 0.687,                                                                                       +
                               "Actual Rows": 0,                                                                                                 +
                               "Actual Loops": 763,                                                                                              +
                               "Index Cond": "(id = mc.company_id)",                                                                             +
                               "Rows Removed by Index Recheck": 0,                                                                               +
                               "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                               "Rows Removed by Filter": 1,                                                                                      +
                               "Shared Hit Blocks": 2934,                                                                                        +
                               "Shared Read Blocks": 118,                                                                                        +
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
                           "Index Name": "movie_id_movie_keyword",                                                                               +
                           "Relation Name": "movie_keyword",                                                                                     +
                           "Alias": "mk",                                                                                                        +
                           "Startup Cost": 0.01,                                                                                                 +
                           "Total Cost": 0.10,                                                                                                   +
                           "Plan Rows": 11,                                                                                                      +
                           "Plan Width": 8,                                                                                                      +
                           "Actual Startup Time": 0.339,                                                                                         +
                           "Actual Total Time": 0.344,                                                                                           +
                           "Actual Rows": 12,                                                                                                    +
                           "Actual Loops": 277,                                                                                                  +
                           "Index Cond": "(movie_id = mc.movie_id)",                                                                             +
                           "Rows Removed by Index Recheck": 0,                                                                                   +
                           "Shared Hit Blocks": 1088,                                                                                            +
                           "Shared Read Blocks": 18,                                                                                             +
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
                       "Index Name": "keyword_pkey",                                                                                             +
                       "Relation Name": "keyword",                                                                                               +
                       "Alias": "k",                                                                                                             +
                       "Startup Cost": 0.01,                                                                                                     +
                       "Total Cost": 0.01,                                                                                                       +
                       "Plan Rows": 1,                                                                                                           +
                       "Plan Width": 4,                                                                                                          +
                       "Actual Startup Time": 0.034,                                                                                             +
                       "Actual Total Time": 0.034,                                                                                               +
                       "Actual Rows": 0,                                                                                                         +
                       "Actual Loops": 3296,                                                                                                     +
                       "Index Cond": "(id = mk.keyword_id)",                                                                                     +
                       "Rows Removed by Index Recheck": 0,                                                                                       +
                       "Filter": "(keyword = 'sequel'::text)",                                                                                   +
                       "Rows Removed by Filter": 1,                                                                                              +
                       "Shared Hit Blocks": 13074,                                                                                               +
                       "Shared Read Blocks": 110,                                                                                                +
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
                   "Index Name": "title_idx_id",                                                                                                 +
                   "Relation Name": "title",                                                                                                     +
                   "Alias": "t",                                                                                                                 +
                   "Startup Cost": 0.01,                                                                                                         +
                   "Total Cost": 0.04,                                                                                                           +
                   "Plan Rows": 1,                                                                                                               +
                   "Plan Width": 21,                                                                                                             +
                   "Actual Startup Time": 0.736,                                                                                                 +
                   "Actual Total Time": 0.736,                                                                                                   +
                   "Actual Rows": 1,                                                                                                             +
                   "Actual Loops": 172,                                                                                                          +
                   "Index Cond": "(id = mk.movie_id)",                                                                                           +
                   "Rows Removed by Index Recheck": 0,                                                                                           +
                   "Filter": "((production_year >= 1950) AND (production_year <= 2010))",                                                        +
                   "Rows Removed by Filter": 0,                                                                                                  +
                   "Shared Hit Blocks": 681,                                                                                                     +
                   "Shared Read Blocks": 7,                                                                                                      +
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
               "Index Name": "movie_id_movie_info",                                                                                              +
               "Relation Name": "movie_info",                                                                                                    +
               "Alias": "mi",                                                                                                                    +
               "Startup Cost": 0.01,                                                                                                             +
               "Total Cost": 0.16,                                                                                                               +
               "Plan Rows": 1,                                                                                                                   +
               "Plan Width": 4,                                                                                                                  +
               "Actual Startup Time": 1.064,                                                                                                     +
               "Actual Total Time": 1.237,                                                                                                       +
               "Actual Rows": 4,                                                                                                                 +
               "Actual Loops": 172,                                                                                                              +
               "Index Cond": "(movie_id = mk.movie_id)",                                                                                         +
               "Rows Removed by Index Recheck": 0,                                                                                               +
               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))",                     +
               "Rows Removed by Filter": 15,                                                                                                     +
               "Shared Hit Blocks": 2510,                                                                                                        +
               "Shared Read Blocks": 26,                                                                                                         +
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
     "Planning Time": 11409.579,                                                                                                                 +
     "Triggers": [                                                                                                                               +
     ],                                                                                                                                          +
     "Execution Time": 1505.361                                                                                                                  +
   }                                                                                                                                             +
 ]
(1 row)

