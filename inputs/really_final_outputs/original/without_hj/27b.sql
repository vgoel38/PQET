                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 450.48,                                                                                                       +
       "Total Cost": 450.48,                                                                                                         +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 96,                                                                                                             +
       "Actual Startup Time": 1280.376,                                                                                              +
       "Actual Total Time": 1280.376,                                                                                                +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 16674,                                                                                                   +
       "Shared Read Blocks": 495,                                                                                                    +
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
           "Startup Cost": 76.57,                                                                                                    +
           "Total Cost": 450.48,                                                                                                     +
           "Plan Rows": 1,                                                                                                           +
           "Plan Width": 48,                                                                                                         +
           "Actual Startup Time": 927.085,                                                                                           +
           "Actual Total Time": 1264.907,                                                                                            +
           "Actual Rows": 247,                                                                                                       +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": false,                                                                                                    +
           "Join Filter": "(ml.movie_id = mi.movie_id)",                                                                             +
           "Rows Removed by Join Filter": 0,                                                                                         +
           "Shared Hit Blocks": 16674,                                                                                               +
           "Shared Read Blocks": 495,                                                                                                +
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
               "Startup Cost": 76.55,                                                                                                +
               "Total Cost": 449.71,                                                                                                 +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 68,                                                                                                     +
               "Actual Startup Time": 834.409,                                                                                       +
               "Actual Total Time": 1150.083,                                                                                        +
               "Actual Rows": 95,                                                                                                    +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": true,                                                                                                 +
               "Shared Hit Blocks": 15529,                                                                                           +
               "Shared Read Blocks": 481,                                                                                            +
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
                   "Startup Cost": 76.54,                                                                                            +
                   "Total Cost": 449.60,                                                                                             +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 53,                                                                                                 +
                   "Actual Startup Time": 804.973,                                                                                   +
                   "Actual Total Time": 1016.170,                                                                                    +
                   "Actual Rows": 190,                                                                                               +
                   "Actual Loops": 1,                                                                                                +
                   "Inner Unique": true,                                                                                             +
                   "Shared Hit Blocks": 14782,                                                                                       +
                   "Shared Read Blocks": 468,                                                                                        +
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
                       "Startup Cost": 76.53,                                                                                        +
                       "Total Cost": 449.53,                                                                                         +
                       "Plan Rows": 5,                                                                                               +
                       "Plan Width": 57,                                                                                             +
                       "Actual Startup Time": 785.099,                                                                               +
                       "Actual Total Time": 945.746,                                                                                 +
                       "Actual Rows": 1558,                                                                                          +
                       "Actual Loops": 1,                                                                                            +
                       "Inner Unique": false,                                                                                        +
                       "Join Filter": "(ml.movie_id = mk.movie_id)",                                                                 +
                       "Rows Removed by Join Filter": 0,                                                                             +
                       "Shared Hit Blocks": 8569,                                                                                    +
                       "Shared Read Blocks": 449,                                                                                    +
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
                           "Startup Cost": 76.51,                                                                                    +
                           "Total Cost": 449.21,                                                                                     +
                           "Plan Rows": 3,                                                                                           +
                           "Plan Width": 49,                                                                                         +
                           "Actual Startup Time": 757.934,                                                                           +
                           "Actual Total Time": 914.551,                                                                             +
                           "Actual Rows": 190,                                                                                       +
                           "Actual Loops": 1,                                                                                        +
                           "Inner Unique": true,                                                                                     +
                           "Join Filter": "(ml.movie_id = t.id)",                                                                    +
                           "Rows Removed by Join Filter": 0,                                                                         +
                           "Shared Hit Blocks": 7811,                                                                                +
                           "Shared Read Blocks": 447,                                                                                +
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
                               "Startup Cost": 76.50,                                                                                +
                               "Total Cost": 430.48,                                                                                 +
                               "Plan Rows": 160,                                                                                     +
                               "Plan Width": 28,                                                                                     +
                               "Actual Startup Time": 91.330,                                                                        +
                               "Actual Total Time": 444.626,                                                                         +
                               "Actual Rows": 705,                                                                                   +
                               "Actual Loops": 1,                                                                                    +
                               "Inner Unique": true,                                                                                 +
                               "Join Filter": "(mc.company_type_id = ct.id)",                                                        +
                               "Rows Removed by Join Filter": 89,                                                                    +
                               "Shared Hit Blocks": 5068,                                                                            +
                               "Shared Read Blocks": 370,                                                                            +
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
                                   "Startup Cost": 76.50,                                                                            +
                                   "Total Cost": 430.31,                                                                             +
                                   "Plan Rows": 641,                                                                                 +
                                   "Plan Width": 32,                                                                                 +
                                   "Actual Startup Time": 91.302,                                                                    +
                                   "Actual Total Time": 443.688,                                                                     +
                                   "Actual Rows": 794,                                                                               +
                                   "Actual Loops": 1,                                                                                +
                                   "Inner Unique": false,                                                                            +
                                   "Join Filter": "(ml.movie_id = mc.movie_id)",                                                     +
                                   "Rows Removed by Join Filter": 0,                                                                 +
                                   "Shared Hit Blocks": 5067,                                                                        +
                                   "Shared Read Blocks": 370,                                                                        +
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
                                       "Node Type": "Nested Loop",                                                                   +
                                       "Parent Relationship": "Outer",                                                               +
                                       "Parallel Aware": false,                                                                      +
                                       "Join Type": "Inner",                                                                         +
                                       "Startup Cost": 76.49,                                                                        +
                                       "Total Cost": 255.22,                                                                         +
                                       "Plan Rows": 291,                                                                             +
                                       "Plan Width": 20,                                                                             +
                                       "Actual Startup Time": 70.352,                                                                +
                                       "Actual Total Time": 106.560,                                                                 +
                                       "Actual Rows": 189,                                                                           +
                                       "Actual Loops": 1,                                                                            +
                                       "Inner Unique": true,                                                                         +
                                       "Join Filter": "(ml.link_type_id = lt.id)",                                                   +
                                       "Rows Removed by Join Filter": 6446,                                                          +
                                       "Shared Hit Blocks": 4249,                                                                    +
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
                                           "Node Type": "Nested Loop",                                                               +
                                           "Parent Relationship": "Outer",                                                           +
                                           "Parallel Aware": false,                                                                  +
                                           "Join Type": "Inner",                                                                     +
                                           "Startup Cost": 76.49,                                                                    +
                                           "Total Cost": 254.01,                                                                     +
                                           "Plan Rows": 5241,                                                                        +
                                           "Plan Width": 12,                                                                         +
                                           "Actual Startup Time": 60.813,                                                            +
                                           "Actual Total Time": 101.575,                                                             +
                                           "Actual Rows": 3346,                                                                      +
                                           "Actual Loops": 1,                                                                        +
                                           "Inner Unique": true,                                                                     +
                                           "Join Filter": "(cct2.id = cc.status_id)",                                                +
                                           "Rows Removed by Join Filter": 1503,                                                      +
                                           "Shared Hit Blocks": 4248,                                                                +
                                           "Shared Read Blocks": 261,                                                                +
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
                                               "Node Type": "Nested Loop",                                                           +
                                               "Parent Relationship": "Outer",                                                       +
                                               "Parallel Aware": false,                                                              +
                                               "Join Type": "Inner",                                                                 +
                                               "Startup Cost": 76.49,                                                                +
                                               "Total Cost": 249.28,                                                                 +
                                               "Plan Rows": 20964,                                                                   +
                                               "Plan Width": 16,                                                                     +
                                               "Actual Startup Time": 60.800,                                                        +
                                               "Actual Total Time": 97.544,                                                          +
                                               "Actual Rows": 4849,                                                                  +
                                               "Actual Loops": 1,                                                                    +
                                               "Inner Unique": true,                                                                 +
                                               "Join Filter": "(cct1.id = cc.subject_id)",                                           +
                                               "Rows Removed by Join Filter": 1285,                                                  +
                                               "Shared Hit Blocks": 4247,                                                            +
                                               "Shared Read Blocks": 261,                                                            +
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
                                                   "Node Type": "Merge Join",                                                        +
                                                   "Parent Relationship": "Outer",                                                   +
                                                   "Parallel Aware": false,                                                          +
                                                   "Join Type": "Inner",                                                             +
                                                   "Startup Cost": 76.49,                                                            +
                                                   "Total Cost": 231.99,                                                             +
                                                   "Plan Rows": 41927,                                                               +
                                                   "Plan Width": 20,                                                                 +
                                                   "Actual Startup Time": 60.771,                                                    +
                                                   "Actual Total Time": 92.761,                                                      +
                                                   "Actual Rows": 4849,                                                              +
                                                   "Actual Loops": 1,                                                                +
                                                   "Inner Unique": false,                                                            +
                                                   "Merge Cond": "(cc.movie_id = ml.movie_id)",                                      +
                                                   "Shared Hit Blocks": 4246,                                                        +
                                                   "Shared Read Blocks": 261,                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                       +
                                                   "Shared Written Blocks": 0,                                                       +
                                                   "Local Hit Blocks": 0,                                                            +
                                                   "Local Read Blocks": 0,                                                           +
                                                   "Local Dirtied Blocks": 0,                                                        +
                                                   "Local Written Blocks": 0,                                                        +
                                                   "Temp Read Blocks": 0,                                                            +
                                                   "Temp Written Blocks": 0,                                                         +
                                                   "Plans": [                                                                        +
                                                     {                                                                               +
                                                       "Node Type": "Index Scan",                                                    +
                                                       "Parent Relationship": "Outer",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Scan Direction": "Forward",                                                  +
                                                       "Index Name": "movie_id_complete_cast",                                       +
                                                       "Relation Name": "complete_cast",                                             +
                                                       "Alias": "cc",                                                                +
                                                       "Startup Cost": 0.01,                                                         +
                                                       "Total Cost": 3283.51,                                                        +
                                                       "Plan Rows": 135086,                                                          +
                                                       "Plan Width": 12,                                                             +
                                                       "Actual Startup Time": 0.025,                                                 +
                                                       "Actual Total Time": 18.634,                                                  +
                                                       "Actual Rows": 5993,                                                          +
                                                       "Actual Loops": 1,                                                            +
                                                       "Shared Hit Blocks": 4240,                                                    +
                                                       "Shared Read Blocks": 100,                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0                                                      +
                                                     },                                                                              +
                                                     {                                                                               +
                                                       "Node Type": "Sort",                                                          +
                                                       "Parent Relationship": "Inner",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Startup Cost": 76.46,                                                        +
                                                       "Total Cost": 78.79,                                                          +
                                                       "Plan Rows": 29997,                                                           +
                                                       "Plan Width": 8,                                                              +
                                                       "Actual Startup Time": 57.769,                                                +
                                                       "Actual Total Time": 61.886,                                                  +
                                                       "Actual Rows": 30755,                                                         +
                                                       "Actual Loops": 1,                                                            +
                                                       "Sort Key": ["ml.movie_id"],                                                  +
                                                       "Sort Method": "quicksort",                                                   +
                                                       "Sort Space Used": 2175,                                                      +
                                                       "Sort Space Type": "Memory",                                                  +
                                                       "Shared Hit Blocks": 6,                                                       +
                                                       "Shared Read Blocks": 161,                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0,                                                     +
                                                       "Plans": [                                                                    +
                                                         {                                                                           +
                                                           "Node Type": "Seq Scan",                                                  +
                                                           "Parent Relationship": "Outer",                                           +
                                                           "Parallel Aware": false,                                                  +
                                                           "Relation Name": "movie_link",                                            +
                                                           "Alias": "ml",                                                            +
                                                           "Startup Cost": 0.00,                                                     +
                                                           "Total Cost": 7.19,                                                       +
                                                           "Plan Rows": 29997,                                                       +
                                                           "Plan Width": 8,                                                          +
                                                           "Actual Startup Time": 0.019,                                             +
                                                           "Actual Total Time": 29.735,                                              +
                                                           "Actual Rows": 29997,                                                     +
                                                           "Actual Loops": 1,                                                        +
                                                           "Shared Hit Blocks": 2,                                                   +
                                                           "Shared Read Blocks": 161,                                                +
                                                           "Shared Dirtied Blocks": 0,                                               +
                                                           "Shared Written Blocks": 0,                                               +
                                                           "Local Hit Blocks": 0,                                                    +
                                                           "Local Read Blocks": 0,                                                   +
                                                           "Local Dirtied Blocks": 0,                                                +
                                                           "Local Written Blocks": 0,                                                +
                                                           "Temp Read Blocks": 0,                                                    +
                                                           "Temp Written Blocks": 0                                                  +
                                                         }                                                                           +
                                                       ]                                                                             +
                                                     }                                                                               +
                                                   ]                                                                                 +
                                                 },                                                                                  +
                                                 {                                                                                   +
                                                   "Node Type": "Materialize",                                                       +
                                                   "Parent Relationship": "Inner",                                                   +
                                                   "Parallel Aware": false,                                                          +
                                                   "Startup Cost": 0.00,                                                             +
                                                   "Total Cost": 0.03,                                                               +
                                                   "Plan Rows": 2,                                                                   +
                                                   "Plan Width": 4,                                                                  +
                                                   "Actual Startup Time": 0.000,                                                     +
                                                   "Actual Total Time": 0.000,                                                       +
                                                   "Actual Rows": 1,                                                                 +
                                                   "Actual Loops": 4849,                                                             +
                                                   "Shared Hit Blocks": 1,                                                           +
                                                   "Shared Read Blocks": 0,                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                       +
                                                   "Shared Written Blocks": 0,                                                       +
                                                   "Local Hit Blocks": 0,                                                            +
                                                   "Local Read Blocks": 0,                                                           +
                                                   "Local Dirtied Blocks": 0,                                                        +
                                                   "Local Written Blocks": 0,                                                        +
                                                   "Temp Read Blocks": 0,                                                            +
                                                   "Temp Written Blocks": 0,                                                         +
                                                   "Plans": [                                                                        +
                                                     {                                                                               +
                                                       "Node Type": "Seq Scan",                                                      +
                                                       "Parent Relationship": "Outer",                                               +
                                                       "Parallel Aware": false,                                                      +
                                                       "Relation Name": "comp_cast_type",                                            +
                                                       "Alias": "cct1",                                                              +
                                                       "Startup Cost": 0.00,                                                         +
                                                       "Total Cost": 0.03,                                                           +
                                                       "Plan Rows": 2,                                                               +
                                                       "Plan Width": 4,                                                              +
                                                       "Actual Startup Time": 0.016,                                                 +
                                                       "Actual Total Time": 0.019,                                                   +
                                                       "Actual Rows": 2,                                                             +
                                                       "Actual Loops": 1,                                                            +
                                                       "Filter": "((kind)::text = ANY ('{cast,crew}'::text[]))",                     +
                                                       "Rows Removed by Filter": 0,                                                  +
                                                       "Shared Hit Blocks": 1,                                                       +
                                                       "Shared Read Blocks": 0,                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                   +
                                                       "Shared Written Blocks": 0,                                                   +
                                                       "Local Hit Blocks": 0,                                                        +
                                                       "Local Read Blocks": 0,                                                       +
                                                       "Local Dirtied Blocks": 0,                                                    +
                                                       "Local Written Blocks": 0,                                                    +
                                                       "Temp Read Blocks": 0,                                                        +
                                                       "Temp Written Blocks": 0                                                      +
                                                     }                                                                               +
                                                   ]                                                                                 +
                                                 }                                                                                   +
                                               ]                                                                                     +
                                             },                                                                                      +
                                             {                                                                                       +
                                               "Node Type": "Materialize",                                                           +
                                               "Parent Relationship": "Inner",                                                       +
                                               "Parallel Aware": false,                                                              +
                                               "Startup Cost": 0.00,                                                                 +
                                               "Total Cost": 0.03,                                                                   +
                                               "Plan Rows": 1,                                                                       +
                                               "Plan Width": 4,                                                                      +
                                               "Actual Startup Time": 0.000,                                                         +
                                               "Actual Total Time": 0.000,                                                           +
                                               "Actual Rows": 1,                                                                     +
                                               "Actual Loops": 4849,                                                                 +
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
                                                   "Relation Name": "comp_cast_type",                                                +
                                                   "Alias": "cct2",                                                                  +
                                                   "Startup Cost": 0.00,                                                             +
                                                   "Total Cost": 0.03,                                                               +
                                                   "Plan Rows": 1,                                                                   +
                                                   "Plan Width": 4,                                                                  +
                                                   "Actual Startup Time": 0.007,                                                     +
                                                   "Actual Total Time": 0.011,                                                       +
                                                   "Actual Rows": 1,                                                                 +
                                                   "Actual Loops": 1,                                                                +
                                                   "Filter": "((kind)::text = 'complete'::text)",                                    +
                                                   "Rows Removed by Filter": 3,                                                      +
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
                                         },                                                                                          +
                                         {                                                                                           +
                                           "Node Type": "Materialize",                                                               +
                                           "Parent Relationship": "Inner",                                                           +
                                           "Parallel Aware": false,                                                                  +
                                           "Startup Cost": 0.00,                                                                     +
                                           "Total Cost": 0.03,                                                                       +
                                           "Plan Rows": 1,                                                                           +
                                           "Plan Width": 16,                                                                         +
                                           "Actual Startup Time": 0.000,                                                             +
                                           "Actual Total Time": 0.000,                                                               +
                                           "Actual Rows": 2,                                                                         +
                                           "Actual Loops": 3346,                                                                     +
                                           "Shared Hit Blocks": 1,                                                                   +
                                           "Shared Read Blocks": 0,                                                                  +
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
                                               "Relation Name": "link_type",                                                         +
                                               "Alias": "lt",                                                                        +
                                               "Startup Cost": 0.00,                                                                 +
                                               "Total Cost": 0.03,                                                                   +
                                               "Plan Rows": 1,                                                                       +
                                               "Plan Width": 16,                                                                     +
                                               "Actual Startup Time": 0.022,                                                         +
                                               "Actual Total Time": 0.035,                                                           +
                                               "Actual Rows": 2,                                                                     +
                                               "Actual Loops": 1,                                                                    +
                                               "Filter": "((link)::text ~~ '%follow%'::text)",                                       +
                                               "Rows Removed by Filter": 16,                                                         +
                                               "Shared Hit Blocks": 1,                                                               +
                                               "Shared Read Blocks": 0,                                                              +
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
                                       "Node Type": "Index Scan",                                                                    +
                                       "Parent Relationship": "Inner",                                                               +
                                       "Parallel Aware": false,                                                                      +
                                       "Scan Direction": "Forward",                                                                  +
                                       "Index Name": "movie_id_movie_companies",                                                     +
                                       "Relation Name": "movie_companies",                                                           +
                                       "Alias": "mc",                                                                                +
                                       "Startup Cost": 0.01,                                                                         +
                                       "Total Cost": 0.60,                                                                           +
                                       "Plan Rows": 1,                                                                               +
                                       "Plan Width": 12,                                                                             +
                                       "Actual Startup Time": 1.432,                                                                 +
                                       "Actual Total Time": 1.780,                                                                   +
                                       "Actual Rows": 4,                                                                             +
                                       "Actual Loops": 189,                                                                          +
                                       "Index Cond": "(movie_id = cc.movie_id)",                                                     +
                                       "Rows Removed by Index Recheck": 0,                                                           +
                                       "Filter": "(note IS NULL)",                                                                   +
                                       "Rows Removed by Filter": 3,                                                                  +
                                       "Shared Hit Blocks": 818,                                                                     +
                                       "Shared Read Blocks": 109,                                                                    +
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
                                   "Actual Loops": 794,                                                                              +
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
                                       "Relation Name": "company_type",                                                              +
                                       "Alias": "ct",                                                                                +
                                       "Startup Cost": 0.00,                                                                         +
                                       "Total Cost": 0.03,                                                                           +
                                       "Plan Rows": 1,                                                                               +
                                       "Plan Width": 4,                                                                              +
                                       "Actual Startup Time": 0.016,                                                                 +
                                       "Actual Total Time": 0.021,                                                                   +
                                       "Actual Rows": 1,                                                                             +
                                       "Actual Loops": 1,                                                                            +
                                       "Filter": "((kind)::text = 'production companies'::text)",                                    +
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
                               "Node Type": "Index Scan",                                                                            +
                               "Parent Relationship": "Inner",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Scan Direction": "Forward",                                                                          +
                               "Index Name": "title_idx_id",                                                                         +
                               "Relation Name": "title",                                                                             +
                               "Alias": "t",                                                                                         +
                               "Startup Cost": 0.01,                                                                                 +
                               "Total Cost": 0.12,                                                                                   +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 21,                                                                                     +
                               "Actual Startup Time": 0.665,                                                                         +
                               "Actual Total Time": 0.665,                                                                           +
                               "Actual Rows": 0,                                                                                     +
                               "Actual Loops": 705,                                                                                  +
                               "Index Cond": "(id = mc.movie_id)",                                                                   +
                               "Rows Removed by Index Recheck": 0,                                                                   +
                               "Filter": "(production_year = 1998)",                                                                 +
                               "Rows Removed by Filter": 1,                                                                          +
                               "Shared Hit Blocks": 2743,                                                                            +
                               "Shared Read Blocks": 77,                                                                             +
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
                           "Index Name": "movie_id_movie_keyword",                                                                   +
                           "Relation Name": "movie_keyword",                                                                         +
                           "Alias": "mk",                                                                                            +
                           "Startup Cost": 0.01,                                                                                     +
                           "Total Cost": 0.10,                                                                                       +
                           "Plan Rows": 11,                                                                                          +
                           "Plan Width": 8,                                                                                          +
                           "Actual Startup Time": 0.150,                                                                             +
                           "Actual Total Time": 0.155,                                                                               +
                           "Actual Rows": 8,                                                                                         +
                           "Actual Loops": 190,                                                                                      +
                           "Index Cond": "(movie_id = mc.movie_id)",                                                                 +
                           "Rows Removed by Index Recheck": 0,                                                                       +
                           "Shared Hit Blocks": 758,                                                                                 +
                           "Shared Read Blocks": 2,                                                                                  +
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
                       "Node Type": "Index Scan",                                                                                    +
                       "Parent Relationship": "Inner",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Scan Direction": "Forward",                                                                                  +
                       "Index Name": "keyword_pkey",                                                                                 +
                       "Relation Name": "keyword",                                                                                   +
                       "Alias": "k",                                                                                                 +
                       "Startup Cost": 0.01,                                                                                         +
                       "Total Cost": 0.01,                                                                                           +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 4,                                                                                              +
                       "Actual Startup Time": 0.044,                                                                                 +
                       "Actual Total Time": 0.044,                                                                                   +
                       "Actual Rows": 0,                                                                                             +
                       "Actual Loops": 1558,                                                                                         +
                       "Index Cond": "(id = mk.keyword_id)",                                                                         +
                       "Rows Removed by Index Recheck": 0,                                                                           +
                       "Filter": "(keyword = 'sequel'::text)",                                                                       +
                       "Rows Removed by Filter": 1,                                                                                  +
                       "Shared Hit Blocks": 6213,                                                                                    +
                       "Shared Read Blocks": 19,                                                                                     +
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
                   "Actual Startup Time": 0.703,                                                                                     +
                   "Actual Total Time": 0.703,                                                                                       +
                   "Actual Rows": 0,                                                                                                 +
                   "Actual Loops": 190,                                                                                              +
                   "Index Cond": "(id = mc.company_id)",                                                                             +
                   "Rows Removed by Index Recheck": 0,                                                                               +
                   "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                   "Rows Removed by Filter": 0,                                                                                      +
                   "Shared Hit Blocks": 747,                                                                                         +
                   "Shared Read Blocks": 13,                                                                                         +
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
               "Total Cost": 0.15,                                                                                                   +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 4,                                                                                                      +
               "Actual Startup Time": 1.081,                                                                                         +
               "Actual Total Time": 1.205,                                                                                           +
               "Actual Rows": 3,                                                                                                     +
               "Actual Loops": 95,                                                                                                   +
               "Index Cond": "(movie_id = mk.movie_id)",                                                                             +
               "Rows Removed by Index Recheck": 0,                                                                                   +
               "Filter": "(info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))",                                                 +
               "Rows Removed by Filter": 10,                                                                                         +
               "Shared Hit Blocks": 1145,                                                                                            +
               "Shared Read Blocks": 14,                                                                                             +
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
     "Planning Time": 11324.498,                                                                                                     +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 1350.351                                                                                                      +
   }                                                                                                                                 +
 ]
(1 row)

