                                                      QUERY PLAN                                                       
-----------------------------------------------------------------------------------------------------------------------
 [                                                                                                                    +
   {                                                                                                                  +
     "Plan": {                                                                                                        +
       "Node Type": "Aggregate",                                                                                      +
       "Strategy": "Plain",                                                                                           +
       "Partial Mode": "Simple",                                                                                      +
       "Parallel Aware": false,                                                                                       +
       "Startup Cost": 597.49,                                                                                        +
       "Total Cost": 597.49,                                                                                          +
       "Plan Rows": 1,                                                                                                +
       "Plan Width": 192,                                                                                             +
       "Actual Startup Time": 5835.444,                                                                               +
       "Actual Total Time": 5835.444,                                                                                 +
       "Actual Rows": 1,                                                                                              +
       "Actual Loops": 1,                                                                                             +
       "Shared Hit Blocks": 49370,                                                                                    +
       "Shared Read Blocks": 2218,                                                                                    +
       "Shared Dirtied Blocks": 0,                                                                                    +
       "Shared Written Blocks": 0,                                                                                    +
       "Local Hit Blocks": 0,                                                                                         +
       "Local Read Blocks": 0,                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                     +
       "Local Written Blocks": 0,                                                                                     +
       "Temp Read Blocks": 0,                                                                                         +
       "Temp Written Blocks": 0,                                                                                      +
       "Plans": [                                                                                                     +
         {                                                                                                            +
           "Node Type": "Nested Loop",                                                                                +
           "Parent Relationship": "Outer",                                                                            +
           "Parallel Aware": false,                                                                                   +
           "Join Type": "Inner",                                                                                      +
           "Startup Cost": 16.84,                                                                                     +
           "Total Cost": 597.49,                                                                                      +
           "Plan Rows": 1,                                                                                            +
           "Plan Width": 84,                                                                                          +
           "Actual Startup Time": 1270.746,                                                                           +
           "Actual Total Time": 5835.395,                                                                             +
           "Actual Rows": 4,                                                                                          +
           "Actual Loops": 1,                                                                                         +
           "Inner Unique": false,                                                                                     +
           "Join Filter": "((t2.id = mi_idx2.movie_id) AND (it2.id = mi_idx2.info_type_id))",                         +
           "Rows Removed by Join Filter": 4,                                                                          +
           "Shared Hit Blocks": 49370,                                                                                +
           "Shared Read Blocks": 2218,                                                                                +
           "Shared Dirtied Blocks": 0,                                                                                +
           "Shared Written Blocks": 0,                                                                                +
           "Local Hit Blocks": 0,                                                                                     +
           "Local Read Blocks": 0,                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                 +
           "Local Written Blocks": 0,                                                                                 +
           "Temp Read Blocks": 0,                                                                                     +
           "Temp Written Blocks": 0,                                                                                  +
           "Plans": [                                                                                                 +
             {                                                                                                        +
               "Node Type": "Nested Loop",                                                                            +
               "Parent Relationship": "Outer",                                                                        +
               "Parallel Aware": false,                                                                               +
               "Join Type": "Inner",                                                                                  +
               "Startup Cost": 16.82,                                                                                 +
               "Total Cost": 597.35,                                                                                  +
               "Plan Rows": 1,                                                                                        +
               "Plan Width": 94,                                                                                      +
               "Actual Startup Time": 1270.656,                                                                       +
               "Actual Total Time": 5835.246,                                                                         +
               "Actual Rows": 4,                                                                                      +
               "Actual Loops": 1,                                                                                     +
               "Inner Unique": true,                                                                                  +
               "Shared Hit Blocks": 49356,                                                                            +
               "Shared Read Blocks": 2216,                                                                            +
               "Shared Dirtied Blocks": 0,                                                                            +
               "Shared Written Blocks": 0,                                                                            +
               "Local Hit Blocks": 0,                                                                                 +
               "Local Read Blocks": 0,                                                                                +
               "Local Dirtied Blocks": 0,                                                                             +
               "Local Written Blocks": 0,                                                                             +
               "Temp Read Blocks": 0,                                                                                 +
               "Temp Written Blocks": 0,                                                                              +
               "Plans": [                                                                                             +
                 {                                                                                                    +
                   "Node Type": "Nested Loop",                                                                        +
                   "Parent Relationship": "Outer",                                                                    +
                   "Parallel Aware": false,                                                                           +
                   "Join Type": "Inner",                                                                              +
                   "Startup Cost": 16.82,                                                                             +
                   "Total Cost": 597.32,                                                                              +
                   "Plan Rows": 1,                                                                                    +
                   "Plan Width": 98,                                                                                  +
                   "Actual Startup Time": 1270.599,                                                                   +
                   "Actual Total Time": 5835.170,                                                                     +
                   "Actual Rows": 4,                                                                                  +
                   "Actual Loops": 1,                                                                                 +
                   "Inner Unique": true,                                                                              +
                   "Join Filter": "(ml.movie_id = t1.id)",                                                            +
                   "Rows Removed by Join Filter": 0,                                                                  +
                   "Shared Hit Blocks": 49348,                                                                        +
                   "Shared Read Blocks": 2216,                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                        +
                   "Shared Written Blocks": 0,                                                                        +
                   "Local Hit Blocks": 0,                                                                             +
                   "Local Read Blocks": 0,                                                                            +
                   "Local Dirtied Blocks": 0,                                                                         +
                   "Local Written Blocks": 0,                                                                         +
                   "Temp Read Blocks": 0,                                                                             +
                   "Temp Written Blocks": 0,                                                                          +
                   "Plans": [                                                                                         +
                     {                                                                                                +
                       "Node Type": "Nested Loop",                                                                    +
                       "Parent Relationship": "Outer",                                                                +
                       "Parallel Aware": false,                                                                       +
                       "Join Type": "Inner",                                                                          +
                       "Startup Cost": 16.81,                                                                         +
                       "Total Cost": 597.00,                                                                          +
                       "Plan Rows": 1,                                                                                +
                       "Plan Width": 89,                                                                              +
                       "Actual Startup Time": 1265.499,                                                               +
                       "Actual Total Time": 5830.024,                                                                 +
                       "Actual Rows": 4,                                                                              +
                       "Actual Loops": 1,                                                                             +
                       "Inner Unique": true,                                                                          +
                       "Shared Hit Blocks": 49334,                                                                    +
                       "Shared Read Blocks": 2214,                                                                    +
                       "Shared Dirtied Blocks": 0,                                                                    +
                       "Shared Written Blocks": 0,                                                                    +
                       "Local Hit Blocks": 0,                                                                         +
                       "Local Read Blocks": 0,                                                                        +
                       "Local Dirtied Blocks": 0,                                                                     +
                       "Local Written Blocks": 0,                                                                     +
                       "Temp Read Blocks": 0,                                                                         +
                       "Temp Written Blocks": 0,                                                                      +
                       "Plans": [                                                                                     +
                         {                                                                                            +
                           "Node Type": "Nested Loop",                                                                +
                           "Parent Relationship": "Outer",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Join Type": "Inner",                                                                      +
                           "Startup Cost": 16.79,                                                                     +
                           "Total Cost": 596.92,                                                                      +
                           "Plan Rows": 1,                                                                            +
                           "Plan Width": 74,                                                                          +
                           "Actual Startup Time": 1265.461,                                                           +
                           "Actual Total Time": 5829.947,                                                             +
                           "Actual Rows": 4,                                                                          +
                           "Actual Loops": 1,                                                                         +
                           "Inner Unique": false,                                                                     +
                           "Shared Hit Blocks": 49318,                                                                +
                           "Shared Read Blocks": 2214,                                                                +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0,                                                                  +
                           "Plans": [                                                                                 +
                             {                                                                                        +
                               "Node Type": "Nested Loop",                                                            +
                               "Parent Relationship": "Outer",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Join Type": "Inner",                                                                  +
                               "Startup Cost": 16.78,                                                                 +
                               "Total Cost": 593.53,                                                                  +
                               "Plan Rows": 1,                                                                        +
                               "Plan Width": 66,                                                                      +
                               "Actual Startup Time": 1265.264,                                                       +
                               "Actual Total Time": 5829.729,                                                         +
                               "Actual Rows": 1,                                                                      +
                               "Actual Loops": 1,                                                                     +
                               "Inner Unique": true,                                                                  +
                               "Shared Hit Blocks": 49316,                                                            +
                               "Shared Read Blocks": 2211,                                                            +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0,                                                              +
                               "Plans": [                                                                             +
                                 {                                                                                    +
                                   "Node Type": "Nested Loop",                                                        +
                                   "Parent Relationship": "Outer",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Join Type": "Inner",                                                              +
                                   "Startup Cost": 16.77,                                                             +
                                   "Total Cost": 593.50,                                                              +
                                   "Plan Rows": 1,                                                                    +
                                   "Plan Width": 70,                                                                  +
                                   "Actual Startup Time": 241.896,                                                    +
                                   "Actual Total Time": 5829.579,                                                     +
                                   "Actual Rows": 6,                                                                  +
                                   "Actual Loops": 1,                                                                 +
                                   "Inner Unique": true,                                                              +
                                   "Shared Hit Blocks": 49304,                                                        +
                                   "Shared Read Blocks": 2211,                                                        +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0,                                                          +
                                   "Plans": [                                                                         +
                                     {                                                                                +
                                       "Node Type": "Nested Loop",                                                    +
                                       "Parent Relationship": "Outer",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Join Type": "Inner",                                                          +
                                       "Startup Cost": 16.76,                                                         +
                                       "Total Cost": 587.74,                                                          +
                                       "Plan Rows": 2,                                                                +
                                       "Plan Width": 45,                                                              +
                                       "Actual Startup Time": 130.449,                                                +
                                       "Actual Total Time": 2441.059,                                                 +
                                       "Actual Rows": 477,                                                            +
                                       "Actual Loops": 1,                                                             +
                                       "Inner Unique": false,                                                         +
                                       "Shared Hit Blocks": 47676,                                                    +
                                       "Shared Read Blocks": 1925,                                                    +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0,                                                      +
                                       "Plans": [                                                                     +
                                         {                                                                            +
                                           "Node Type": "Nested Loop",                                                +
                                           "Parent Relationship": "Outer",                                            +
                                           "Parallel Aware": false,                                                   +
                                           "Join Type": "Inner",                                                      +
                                           "Startup Cost": 16.76,                                                     +
                                           "Total Cost": 587.69,                                                      +
                                           "Plan Rows": 2,                                                            +
                                           "Plan Width": 41,                                                          +
                                           "Actual Startup Time": 130.386,                                            +
                                           "Actual Total Time": 2439.803,                                             +
                                           "Actual Rows": 477,                                                        +
                                           "Actual Loops": 1,                                                         +
                                           "Inner Unique": true,                                                      +
                                           "Shared Hit Blocks": 47675,                                                +
                                           "Shared Read Blocks": 1925,                                                +
                                           "Shared Dirtied Blocks": 0,                                                +
                                           "Shared Written Blocks": 0,                                                +
                                           "Local Hit Blocks": 0,                                                     +
                                           "Local Read Blocks": 0,                                                    +
                                           "Local Dirtied Blocks": 0,                                                 +
                                           "Local Written Blocks": 0,                                                 +
                                           "Temp Read Blocks": 0,                                                     +
                                           "Temp Written Blocks": 0,                                                  +
                                           "Plans": [                                                                 +
                                             {                                                                        +
                                               "Node Type": "Nested Loop",                                            +
                                               "Parent Relationship": "Outer",                                        +
                                               "Parallel Aware": false,                                               +
                                               "Join Type": "Inner",                                                  +
                                               "Startup Cost": 16.75,                                                 +
                                               "Total Cost": 584.15,                                                  +
                                               "Plan Rows": 199,                                                      +
                                               "Plan Width": 26,                                                      +
                                               "Actual Startup Time": 91.173,                                         +
                                               "Actual Total Time": 513.888,                                          +
                                               "Actual Rows": 9674,                                                   +
                                               "Actual Loops": 1,                                                     +
                                               "Inner Unique": false,                                                 +
                                               "Join Filter": "(ml.movie_id = mc1.movie_id)",                         +
                                               "Rows Removed by Join Filter": 0,                                      +
                                               "Shared Hit Blocks": 9708,                                             +
                                               "Shared Read Blocks": 1183,                                            +
                                               "Shared Dirtied Blocks": 0,                                            +
                                               "Shared Written Blocks": 0,                                            +
                                               "Local Hit Blocks": 0,                                                 +
                                               "Local Read Blocks": 0,                                                +
                                               "Local Dirtied Blocks": 0,                                             +
                                               "Local Written Blocks": 0,                                             +
                                               "Temp Read Blocks": 0,                                                 +
                                               "Temp Written Blocks": 0,                                              +
                                               "Plans": [                                                             +
                                                 {                                                                    +
                                                   "Node Type": "Nested Loop",                                        +
                                                   "Parent Relationship": "Outer",                                    +
                                                   "Parallel Aware": false,                                           +
                                                   "Join Type": "Inner",                                              +
                                                   "Startup Cost": 16.73,                                             +
                                                   "Total Cost": 581.00,                                              +
                                                   "Plan Rows": 44,                                                   +
                                                   "Plan Width": 18,                                                  +
                                                   "Actual Startup Time": 91.162,                                     +
                                                   "Actual Total Time": 277.277,                                      +
                                                   "Actual Rows": 2064,                                               +
                                                   "Actual Loops": 1,                                                 +
                                                   "Inner Unique": true,                                              +
                                                   "Join Filter": "(mi_idx1.info_type_id = it1.id)",                  +
                                                   "Rows Removed by Join Filter": 4128,                               +
                                                   "Shared Hit Blocks": 273,                                          +
                                                   "Shared Read Blocks": 722,                                         +
                                                   "Shared Dirtied Blocks": 0,                                        +
                                                   "Shared Written Blocks": 0,                                        +
                                                   "Local Hit Blocks": 0,                                             +
                                                   "Local Read Blocks": 0,                                            +
                                                   "Local Dirtied Blocks": 0,                                         +
                                                   "Local Written Blocks": 0,                                         +
                                                   "Temp Read Blocks": 0,                                             +
                                                   "Temp Written Blocks": 0,                                          +
                                                   "Plans": [                                                         +
                                                     {                                                                +
                                                       "Node Type": "Merge Join",                                     +
                                                       "Parent Relationship": "Outer",                                +
                                                       "Parallel Aware": false,                                       +
                                                       "Join Type": "Inner",                                          +
                                                       "Startup Cost": 16.73,                                         +
                                                       "Total Cost": 579.83,                                          +
                                                       "Plan Rows": 4998,                                             +
                                                       "Plan Width": 22,                                              +
                                                       "Actual Startup Time": 91.134,                                 +
                                                       "Actual Total Time": 271.061,                                  +
                                                       "Actual Rows": 6192,                                           +
                                                       "Actual Loops": 1,                                             +
                                                       "Inner Unique": false,                                         +
                                                       "Merge Cond": "(mi_idx1.movie_id = ml.movie_id)",              +
                                                       "Shared Hit Blocks": 272,                                      +
                                                       "Shared Read Blocks": 722,                                     +
                                                       "Shared Dirtied Blocks": 0,                                    +
                                                       "Shared Written Blocks": 0,                                    +
                                                       "Local Hit Blocks": 0,                                         +
                                                       "Local Read Blocks": 0,                                        +
                                                       "Local Dirtied Blocks": 0,                                     +
                                                       "Local Written Blocks": 0,                                     +
                                                       "Temp Read Blocks": 0,                                         +
                                                       "Temp Written Blocks": 0,                                      +
                                                       "Plans": [                                                     +
                                                         {                                                            +
                                                           "Node Type": "Index Scan",                                 +
                                                           "Parent Relationship": "Outer",                            +
                                                           "Parallel Aware": false,                                   +
                                                           "Scan Direction": "Forward",                               +
                                                           "Index Name": "movie_id_movie_info_idx",                   +
                                                           "Relation Name": "movie_info_idx",                         +
                                                           "Alias": "mi_idx1",                                        +
                                                           "Startup Cost": 0.01,                                      +
                                                           "Total Cost": 12031.00,                                    +
                                                           "Plan Rows": 1380035,                                      +
                                                           "Plan Width": 14,                                          +
                                                           "Actual Startup Time": 0.007,                              +
                                                           "Actual Total Time": 152.055,                              +
                                                           "Actual Rows": 63901,                                      +
                                                           "Actual Loops": 1,                                         +
                                                           "Shared Hit Blocks": 263,                                  +
                                                           "Shared Read Blocks": 563,                                 +
                                                           "Shared Dirtied Blocks": 0,                                +
                                                           "Shared Written Blocks": 0,                                +
                                                           "Local Hit Blocks": 0,                                     +
                                                           "Local Read Blocks": 0,                                    +
                                                           "Local Dirtied Blocks": 0,                                 +
                                                           "Local Written Blocks": 0,                                 +
                                                           "Temp Read Blocks": 0,                                     +
                                                           "Temp Written Blocks": 0                                   +
                                                         },                                                           +
                                                         {                                                            +
                                                           "Node Type": "Sort",                                       +
                                                           "Parent Relationship": "Inner",                            +
                                                           "Parallel Aware": false,                                   +
                                                           "Startup Cost": 16.72,                                     +
                                                           "Total Cost": 16.85,                                       +
                                                           "Plan Rows": 1666,                                         +
                                                           "Plan Width": 8,                                           +
                                                           "Actual Startup Time": 91.091,                             +
                                                           "Actual Total Time": 92.286,                               +
                                                           "Actual Rows": 6443,                                       +
                                                           "Actual Loops": 1,                                         +
                                                           "Sort Key": ["ml.movie_id"],                               +
                                                           "Sort Method": "quicksort",                                +
                                                           "Sort Space Used": 205,                                    +
                                                           "Sort Space Type": "Memory",                               +
                                                           "Shared Hit Blocks": 9,                                    +
                                                           "Shared Read Blocks": 159,                                 +
                                                           "Shared Dirtied Blocks": 0,                                +
                                                           "Shared Written Blocks": 0,                                +
                                                           "Local Hit Blocks": 0,                                     +
                                                           "Local Read Blocks": 0,                                    +
                                                           "Local Dirtied Blocks": 0,                                 +
                                                           "Local Written Blocks": 0,                                 +
                                                           "Temp Read Blocks": 0,                                     +
                                                           "Temp Written Blocks": 0,                                  +
                                                           "Plans": [                                                 +
                                                             {                                                        +
                                                               "Node Type": "Nested Loop",                            +
                                                               "Parent Relationship": "Outer",                        +
                                                               "Parallel Aware": false,                               +
                                                               "Join Type": "Inner",                                  +
                                                               "Startup Cost": 0.00,                                  +
                                                               "Total Cost": 13.95,                                   +
                                                               "Plan Rows": 1666,                                     +
                                                               "Plan Width": 8,                                       +
                                                               "Actual Startup Time": 0.175,                          +
                                                               "Actual Total Time": 63.564,                           +
                                                               "Actual Rows": 2315,                                   +
                                                               "Actual Loops": 1,                                     +
                                                               "Inner Unique": true,                                  +
                                                               "Join Filter": "(lt.id = ml.link_type_id)",            +
                                                               "Rows Removed by Join Filter": 56521,                  +
                                                               "Shared Hit Blocks": 5,                                +
                                                               "Shared Read Blocks": 159,                             +
                                                               "Shared Dirtied Blocks": 0,                            +
                                                               "Shared Written Blocks": 0,                            +
                                                               "Local Hit Blocks": 0,                                 +
                                                               "Local Read Blocks": 0,                                +
                                                               "Local Dirtied Blocks": 0,                             +
                                                               "Local Written Blocks": 0,                             +
                                                               "Temp Read Blocks": 0,                                 +
                                                               "Temp Written Blocks": 0,                              +
                                                               "Plans": [                                             +
                                                                 {                                                    +
                                                                   "Node Type": "Seq Scan",                           +
                                                                   "Parent Relationship": "Outer",                    +
                                                                   "Parallel Aware": false,                           +
                                                                   "Relation Name": "movie_link",                     +
                                                                   "Alias": "ml",                                     +
                                                                   "Startup Cost": 0.00,                              +
                                                                   "Total Cost": 7.19,                                +
                                                                   "Plan Rows": 29997,                                +
                                                                   "Plan Width": 12,                                  +
                                                                   "Actual Startup Time": 0.015,                      +
                                                                   "Actual Total Time": 31.120,                       +
                                                                   "Actual Rows": 29997,                              +
                                                                   "Actual Loops": 1,                                 +
                                                                   "Shared Hit Blocks": 4,                            +
                                                                   "Shared Read Blocks": 159,                         +
                                                                   "Shared Dirtied Blocks": 0,                        +
                                                                   "Shared Written Blocks": 0,                        +
                                                                   "Local Hit Blocks": 0,                             +
                                                                   "Local Read Blocks": 0,                            +
                                                                   "Local Dirtied Blocks": 0,                         +
                                                                   "Local Written Blocks": 0,                         +
                                                                   "Temp Read Blocks": 0,                             +
                                                                   "Temp Written Blocks": 0                           +
                                                                 },                                                   +
                                                                 {                                                    +
                                                                   "Node Type": "Materialize",                        +
                                                                   "Parent Relationship": "Inner",                    +
                                                                   "Parallel Aware": false,                           +
                                                                   "Startup Cost": 0.00,                              +
                                                                   "Total Cost": 0.03,                                +
                                                                   "Plan Rows": 1,                                    +
                                                                   "Plan Width": 4,                                   +
                                                                   "Actual Startup Time": 0.000,                      +
                                                                   "Actual Total Time": 0.000,                        +
                                                                   "Actual Rows": 2,                                  +
                                                                   "Actual Loops": 29997,                             +
                                                                   "Shared Hit Blocks": 1,                            +
                                                                   "Shared Read Blocks": 0,                           +
                                                                   "Shared Dirtied Blocks": 0,                        +
                                                                   "Shared Written Blocks": 0,                        +
                                                                   "Local Hit Blocks": 0,                             +
                                                                   "Local Read Blocks": 0,                            +
                                                                   "Local Dirtied Blocks": 0,                         +
                                                                   "Local Written Blocks": 0,                         +
                                                                   "Temp Read Blocks": 0,                             +
                                                                   "Temp Written Blocks": 0,                          +
                                                                   "Plans": [                                         +
                                                                     {                                                +
                                                                       "Node Type": "Seq Scan",                       +
                                                                       "Parent Relationship": "Outer",                +
                                                                       "Parallel Aware": false,                       +
                                                                       "Relation Name": "link_type",                  +
                                                                       "Alias": "lt",                                 +
                                                                       "Startup Cost": 0.00,                          +
                                                                       "Total Cost": 0.03,                            +
                                                                       "Plan Rows": 1,                                +
                                                                       "Plan Width": 4,                               +
                                                                       "Actual Startup Time": 0.046,                  +
                                                                       "Actual Total Time": 0.060,                    +
                                                                       "Actual Rows": 2,                              +
                                                                       "Actual Loops": 1,                             +
                                                                       "Filter": "((link)::text ~~ '%follow%'::text)",+
                                                                       "Rows Removed by Filter": 16,                  +
                                                                       "Shared Hit Blocks": 1,                        +
                                                                       "Shared Read Blocks": 0,                       +
                                                                       "Shared Dirtied Blocks": 0,                    +
                                                                       "Shared Written Blocks": 0,                    +
                                                                       "Local Hit Blocks": 0,                         +
                                                                       "Local Read Blocks": 0,                        +
                                                                       "Local Dirtied Blocks": 0,                     +
                                                                       "Local Written Blocks": 0,                     +
                                                                       "Temp Read Blocks": 0,                         +
                                                                       "Temp Written Blocks": 0                       +
                                                                     }                                                +
                                                                   ]                                                  +
                                                                 }                                                    +
                                                               ]                                                      +
                                                             }                                                        +
                                                           ]                                                          +
                                                         }                                                            +
                                                       ]                                                              +
                                                     },                                                               +
                                                     {                                                                +
                                                       "Node Type": "Materialize",                                    +
                                                       "Parent Relationship": "Inner",                                +
                                                       "Parallel Aware": false,                                       +
                                                       "Startup Cost": 0.00,                                          +
                                                       "Total Cost": 0.05,                                            +
                                                       "Plan Rows": 1,                                                +
                                                       "Plan Width": 4,                                               +
                                                       "Actual Startup Time": 0.000,                                  +
                                                       "Actual Total Time": 0.000,                                    +
                                                       "Actual Rows": 1,                                              +
                                                       "Actual Loops": 6192,                                          +
                                                       "Shared Hit Blocks": 1,                                        +
                                                       "Shared Read Blocks": 0,                                       +
                                                       "Shared Dirtied Blocks": 0,                                    +
                                                       "Shared Written Blocks": 0,                                    +
                                                       "Local Hit Blocks": 0,                                         +
                                                       "Local Read Blocks": 0,                                        +
                                                       "Local Dirtied Blocks": 0,                                     +
                                                       "Local Written Blocks": 0,                                     +
                                                       "Temp Read Blocks": 0,                                         +
                                                       "Temp Written Blocks": 0,                                      +
                                                       "Plans": [                                                     +
                                                         {                                                            +
                                                           "Node Type": "Seq Scan",                                   +
                                                           "Parent Relationship": "Outer",                            +
                                                           "Parallel Aware": false,                                   +
                                                           "Relation Name": "info_type",                              +
                                                           "Alias": "it1",                                            +
                                                           "Startup Cost": 0.00,                                      +
                                                           "Total Cost": 0.05,                                        +
                                                           "Plan Rows": 1,                                            +
                                                           "Plan Width": 4,                                           +
                                                           "Actual Startup Time": 0.018,                              +
                                                           "Actual Total Time": 0.020,                                +
                                                           "Actual Rows": 1,                                          +
                                                           "Actual Loops": 1,                                         +
                                                           "Filter": "((info)::text = 'rating'::text)",               +
                                                           "Rows Removed by Filter": 112,                             +
                                                           "Shared Hit Blocks": 1,                                    +
                                                           "Shared Read Blocks": 0,                                   +
                                                           "Shared Dirtied Blocks": 0,                                +
                                                           "Shared Written Blocks": 0,                                +
                                                           "Local Hit Blocks": 0,                                     +
                                                           "Local Read Blocks": 0,                                    +
                                                           "Local Dirtied Blocks": 0,                                 +
                                                           "Local Written Blocks": 0,                                 +
                                                           "Temp Read Blocks": 0,                                     +
                                                           "Temp Written Blocks": 0                                   +
                                                         }                                                            +
                                                       ]                                                              +
                                                     }                                                                +
                                                   ]                                                                  +
                                                 },                                                                   +
                                                 {                                                                    +
                                                   "Node Type": "Index Scan",                                         +
                                                   "Parent Relationship": "Inner",                                    +
                                                   "Parallel Aware": false,                                           +
                                                   "Scan Direction": "Forward",                                       +
                                                   "Index Name": "movie_id_movie_companies",                          +
                                                   "Relation Name": "movie_companies",                                +
                                                   "Alias": "mc1",                                                    +
                                                   "Startup Cost": 0.01,                                              +
                                                   "Total Cost": 0.07,                                                +
                                                   "Plan Rows": 2,                                                    +
                                                   "Plan Width": 8,                                                   +
                                                   "Actual Startup Time": 0.075,                                      +
                                                   "Actual Total Time": 0.110,                                        +
                                                   "Actual Rows": 5,                                                  +
                                                   "Actual Loops": 2064,                                              +
                                                   "Index Cond": "(movie_id = mi_idx1.movie_id)",                     +
                                                   "Rows Removed by Index Recheck": 0,                                +
                                                   "Shared Hit Blocks": 9435,                                         +
                                                   "Shared Read Blocks": 461,                                         +
                                                   "Shared Dirtied Blocks": 0,                                        +
                                                   "Shared Written Blocks": 0,                                        +
                                                   "Local Hit Blocks": 0,                                             +
                                                   "Local Read Blocks": 0,                                            +
                                                   "Local Dirtied Blocks": 0,                                         +
                                                   "Local Written Blocks": 0,                                         +
                                                   "Temp Read Blocks": 0,                                             +
                                                   "Temp Written Blocks": 0                                           +
                                                 }                                                                    +
                                               ]                                                                      +
                                             },                                                                       +
                                             {                                                                        +
                                               "Node Type": "Index Scan",                                             +
                                               "Parent Relationship": "Inner",                                        +
                                               "Parallel Aware": false,                                               +
                                               "Scan Direction": "Forward",                                           +
                                               "Index Name": "company_name_pkey",                                     +
                                               "Relation Name": "company_name",                                       +
                                               "Alias": "cn1",                                                        +
                                               "Startup Cost": 0.01,                                                  +
                                               "Total Cost": 0.02,                                                    +
                                               "Plan Rows": 1,                                                        +
                                               "Plan Width": 23,                                                      +
                                               "Actual Startup Time": 0.198,                                          +
                                               "Actual Total Time": 0.198,                                            +
                                               "Actual Rows": 0,                                                      +
                                               "Actual Loops": 9674,                                                  +
                                               "Index Cond": "(id = mc1.company_id)",                                 +
                                               "Rows Removed by Index Recheck": 0,                                    +
                                               "Filter": "((country_code)::text = '[nl]'::text)",                     +
                                               "Rows Removed by Filter": 1,                                           +
                                               "Shared Hit Blocks": 37967,                                            +
                                               "Shared Read Blocks": 742,                                             +
                                               "Shared Dirtied Blocks": 0,                                            +
                                               "Shared Written Blocks": 0,                                            +
                                               "Local Hit Blocks": 0,                                                 +
                                               "Local Read Blocks": 0,                                                +
                                               "Local Dirtied Blocks": 0,                                             +
                                               "Local Written Blocks": 0,                                             +
                                               "Temp Read Blocks": 0,                                                 +
                                               "Temp Written Blocks": 0                                               +
                                             }                                                                        +
                                           ]                                                                          +
                                         },                                                                           +
                                         {                                                                            +
                                           "Node Type": "Materialize",                                                +
                                           "Parent Relationship": "Inner",                                            +
                                           "Parallel Aware": false,                                                   +
                                           "Startup Cost": 0.00,                                                      +
                                           "Total Cost": 0.05,                                                        +
                                           "Plan Rows": 1,                                                            +
                                           "Plan Width": 4,                                                           +
                                           "Actual Startup Time": 0.000,                                              +
                                           "Actual Total Time": 0.001,                                                +
                                           "Actual Rows": 1,                                                          +
                                           "Actual Loops": 477,                                                       +
                                           "Shared Hit Blocks": 1,                                                    +
                                           "Shared Read Blocks": 0,                                                   +
                                           "Shared Dirtied Blocks": 0,                                                +
                                           "Shared Written Blocks": 0,                                                +
                                           "Local Hit Blocks": 0,                                                     +
                                           "Local Read Blocks": 0,                                                    +
                                           "Local Dirtied Blocks": 0,                                                 +
                                           "Local Written Blocks": 0,                                                 +
                                           "Temp Read Blocks": 0,                                                     +
                                           "Temp Written Blocks": 0,                                                  +
                                           "Plans": [                                                                 +
                                             {                                                                        +
                                               "Node Type": "Seq Scan",                                               +
                                               "Parent Relationship": "Outer",                                        +
                                               "Parallel Aware": false,                                               +
                                               "Relation Name": "info_type",                                          +
                                               "Alias": "it2",                                                        +
                                               "Startup Cost": 0.00,                                                  +
                                               "Total Cost": 0.05,                                                    +
                                               "Plan Rows": 1,                                                        +
                                               "Plan Width": 4,                                                       +
                                               "Actual Startup Time": 0.052,                                          +
                                               "Actual Total Time": 0.061,                                            +
                                               "Actual Rows": 1,                                                      +
                                               "Actual Loops": 1,                                                     +
                                               "Filter": "((info)::text = 'rating'::text)",                           +
                                               "Rows Removed by Filter": 112,                                         +
                                               "Shared Hit Blocks": 1,                                                +
                                               "Shared Read Blocks": 0,                                               +
                                               "Shared Dirtied Blocks": 0,                                            +
                                               "Shared Written Blocks": 0,                                            +
                                               "Local Hit Blocks": 0,                                                 +
                                               "Local Read Blocks": 0,                                                +
                                               "Local Dirtied Blocks": 0,                                             +
                                               "Local Written Blocks": 0,                                             +
                                               "Temp Read Blocks": 0,                                                 +
                                               "Temp Written Blocks": 0                                               +
                                             }                                                                        +
                                           ]                                                                          +
                                         }                                                                            +
                                       ]                                                                              +
                                     },                                                                               +
                                     {                                                                                +
                                       "Node Type": "Index Scan",                                                     +
                                       "Parent Relationship": "Inner",                                                +
                                       "Parallel Aware": false,                                                       +
                                       "Scan Direction": "Forward",                                                   +
                                       "Index Name": "title_idx_id",                                                  +
                                       "Relation Name": "title",                                                      +
                                       "Alias": "t2",                                                                 +
                                       "Startup Cost": 0.01,                                                          +
                                       "Total Cost": 2.88,                                                            +
                                       "Plan Rows": 1,                                                                +
                                       "Plan Width": 25,                                                              +
                                       "Actual Startup Time": 7.102,                                                  +
                                       "Actual Total Time": 7.102,                                                    +
                                       "Actual Rows": 0,                                                              +
                                       "Actual Loops": 477,                                                           +
                                       "Index Cond": "(id = ml.linked_movie_id)",                                     +
                                       "Rows Removed by Index Recheck": 0,                                            +
                                       "Filter": "(production_year = 2007)",                                          +
                                       "Rows Removed by Filter": 1,                                                   +
                                       "Shared Hit Blocks": 1628,                                                     +
                                       "Shared Read Blocks": 286,                                                     +
                                       "Shared Dirtied Blocks": 0,                                                    +
                                       "Shared Written Blocks": 0,                                                    +
                                       "Local Hit Blocks": 0,                                                         +
                                       "Local Read Blocks": 0,                                                        +
                                       "Local Dirtied Blocks": 0,                                                     +
                                       "Local Written Blocks": 0,                                                     +
                                       "Temp Read Blocks": 0,                                                         +
                                       "Temp Written Blocks": 0                                                       +
                                     }                                                                                +
                                   ]                                                                                  +
                                 },                                                                                   +
                                 {                                                                                    +
                                   "Node Type": "Index Scan",                                                         +
                                   "Parent Relationship": "Inner",                                                    +
                                   "Parallel Aware": false,                                                           +
                                   "Scan Direction": "Forward",                                                       +
                                   "Index Name": "kind_type_pkey",                                                    +
                                   "Relation Name": "kind_type",                                                      +
                                   "Alias": "kt2",                                                                    +
                                   "Startup Cost": 0.00,                                                              +
                                   "Total Cost": 0.00,                                                                +
                                   "Plan Rows": 1,                                                                    +
                                   "Plan Width": 4,                                                                   +
                                   "Actual Startup Time": 0.018,                                                      +
                                   "Actual Total Time": 0.018,                                                        +
                                   "Actual Rows": 0,                                                                  +
                                   "Actual Loops": 6,                                                                 +
                                   "Index Cond": "(id = t2.kind_id)",                                                 +
                                   "Rows Removed by Index Recheck": 0,                                                +
                                   "Filter": "((kind)::text = 'tv series'::text)",                                    +
                                   "Rows Removed by Filter": 1,                                                       +
                                   "Shared Hit Blocks": 12,                                                           +
                                   "Shared Read Blocks": 0,                                                           +
                                   "Shared Dirtied Blocks": 0,                                                        +
                                   "Shared Written Blocks": 0,                                                        +
                                   "Local Hit Blocks": 0,                                                             +
                                   "Local Read Blocks": 0,                                                            +
                                   "Local Dirtied Blocks": 0,                                                         +
                                   "Local Written Blocks": 0,                                                         +
                                   "Temp Read Blocks": 0,                                                             +
                                   "Temp Written Blocks": 0                                                           +
                                 }                                                                                    +
                               ]                                                                                      +
                             },                                                                                       +
                             {                                                                                        +
                               "Node Type": "Index Scan",                                                             +
                               "Parent Relationship": "Inner",                                                        +
                               "Parallel Aware": false,                                                               +
                               "Scan Direction": "Forward",                                                           +
                               "Index Name": "movie_id_movie_companies",                                              +
                               "Relation Name": "movie_companies",                                                    +
                               "Alias": "mc2",                                                                        +
                               "Startup Cost": 0.01,                                                                  +
                               "Total Cost": 0.68,                                                                    +
                               "Plan Rows": 2,                                                                        +
                               "Plan Width": 8,                                                                       +
                               "Actual Startup Time": 0.187,                                                          +
                               "Actual Total Time": 0.204,                                                            +
                               "Actual Rows": 4,                                                                      +
                               "Actual Loops": 1,                                                                     +
                               "Index Cond": "(movie_id = t2.id)",                                                    +
                               "Rows Removed by Index Recheck": 0,                                                    +
                               "Shared Hit Blocks": 2,                                                                +
                               "Shared Read Blocks": 3,                                                               +
                               "Shared Dirtied Blocks": 0,                                                            +
                               "Shared Written Blocks": 0,                                                            +
                               "Local Hit Blocks": 0,                                                                 +
                               "Local Read Blocks": 0,                                                                +
                               "Local Dirtied Blocks": 0,                                                             +
                               "Local Written Blocks": 0,                                                             +
                               "Temp Read Blocks": 0,                                                                 +
                               "Temp Written Blocks": 0                                                               +
                             }                                                                                        +
                           ]                                                                                          +
                         },                                                                                           +
                         {                                                                                            +
                           "Node Type": "Index Scan",                                                                 +
                           "Parent Relationship": "Inner",                                                            +
                           "Parallel Aware": false,                                                                   +
                           "Scan Direction": "Forward",                                                               +
                           "Index Name": "company_name_pkey",                                                         +
                           "Relation Name": "company_name",                                                           +
                           "Alias": "cn2",                                                                            +
                           "Startup Cost": 0.01,                                                                      +
                           "Total Cost": 0.02,                                                                        +
                           "Plan Rows": 1,                                                                            +
                           "Plan Width": 23,                                                                          +
                           "Actual Startup Time": 0.015,                                                              +
                           "Actual Total Time": 0.015,                                                                +
                           "Actual Rows": 1,                                                                          +
                           "Actual Loops": 4,                                                                         +
                           "Index Cond": "(id = mc2.company_id)",                                                     +
                           "Rows Removed by Index Recheck": 0,                                                        +
                           "Shared Hit Blocks": 16,                                                                   +
                           "Shared Read Blocks": 0,                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                +
                           "Shared Written Blocks": 0,                                                                +
                           "Local Hit Blocks": 0,                                                                     +
                           "Local Read Blocks": 0,                                                                    +
                           "Local Dirtied Blocks": 0,                                                                 +
                           "Local Written Blocks": 0,                                                                 +
                           "Temp Read Blocks": 0,                                                                     +
                           "Temp Written Blocks": 0                                                                   +
                         }                                                                                            +
                       ]                                                                                              +
                     },                                                                                               +
                     {                                                                                                +
                       "Node Type": "Index Scan",                                                                     +
                       "Parent Relationship": "Inner",                                                                +
                       "Parallel Aware": false,                                                                       +
                       "Scan Direction": "Forward",                                                                   +
                       "Index Name": "title_idx_id",                                                                  +
                       "Relation Name": "title",                                                                      +
                       "Alias": "t1",                                                                                 +
                       "Startup Cost": 0.01,                                                                          +
                       "Total Cost": 0.06,                                                                            +
                       "Plan Rows": 1,                                                                                +
                       "Plan Width": 25,                                                                              +
                       "Actual Startup Time": 1.281,                                                                  +
                       "Actual Total Time": 1.281,                                                                    +
                       "Actual Rows": 1,                                                                              +
                       "Actual Loops": 4,                                                                             +
                       "Index Cond": "(id = mc1.movie_id)",                                                           +
                       "Rows Removed by Index Recheck": 0,                                                            +
                       "Shared Hit Blocks": 14,                                                                       +
                       "Shared Read Blocks": 2,                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                    +
                       "Shared Written Blocks": 0,                                                                    +
                       "Local Hit Blocks": 0,                                                                         +
                       "Local Read Blocks": 0,                                                                        +
                       "Local Dirtied Blocks": 0,                                                                     +
                       "Local Written Blocks": 0,                                                                     +
                       "Temp Read Blocks": 0,                                                                         +
                       "Temp Written Blocks": 0                                                                       +
                     }                                                                                                +
                   ]                                                                                                  +
                 },                                                                                                   +
                 {                                                                                                    +
                   "Node Type": "Index Scan",                                                                         +
                   "Parent Relationship": "Inner",                                                                    +
                   "Parallel Aware": false,                                                                           +
                   "Scan Direction": "Forward",                                                                       +
                   "Index Name": "kind_type_pkey",                                                                    +
                   "Relation Name": "kind_type",                                                                      +
                   "Alias": "kt1",                                                                                    +
                   "Startup Cost": 0.00,                                                                              +
                   "Total Cost": 0.00,                                                                                +
                   "Plan Rows": 1,                                                                                    +
                   "Plan Width": 4,                                                                                   +
                   "Actual Startup Time": 0.015,                                                                      +
                   "Actual Total Time": 0.015,                                                                        +
                   "Actual Rows": 1,                                                                                  +
                   "Actual Loops": 4,                                                                                 +
                   "Index Cond": "(id = t1.kind_id)",                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                +
                   "Filter": "((kind)::text = 'tv series'::text)",                                                    +
                   "Rows Removed by Filter": 0,                                                                       +
                   "Shared Hit Blocks": 8,                                                                            +
                   "Shared Read Blocks": 0,                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                        +
                   "Shared Written Blocks": 0,                                                                        +
                   "Local Hit Blocks": 0,                                                                             +
                   "Local Read Blocks": 0,                                                                            +
                   "Local Dirtied Blocks": 0,                                                                         +
                   "Local Written Blocks": 0,                                                                         +
                   "Temp Read Blocks": 0,                                                                             +
                   "Temp Written Blocks": 0                                                                           +
                 }                                                                                                    +
               ]                                                                                                      +
             },                                                                                                       +
             {                                                                                                        +
               "Node Type": "Index Scan",                                                                             +
               "Parent Relationship": "Inner",                                                                        +
               "Parallel Aware": false,                                                                               +
               "Scan Direction": "Forward",                                                                           +
               "Index Name": "movie_id_movie_info_idx",                                                               +
               "Relation Name": "movie_info_idx",                                                                     +
               "Alias": "mi_idx2",                                                                                    +
               "Startup Cost": 0.01,                                                                                  +
               "Total Cost": 0.03,                                                                                    +
               "Plan Rows": 1,                                                                                        +
               "Plan Width": 14,                                                                                      +
               "Actual Startup Time": 0.031,                                                                          +
               "Actual Total Time": 0.032,                                                                            +
               "Actual Rows": 2,                                                                                      +
               "Actual Loops": 4,                                                                                     +
               "Index Cond": "(movie_id = mc2.movie_id)",                                                             +
               "Rows Removed by Index Recheck": 0,                                                                    +
               "Filter": "(info < '3.0'::text)",                                                                      +
               "Rows Removed by Filter": 1,                                                                           +
               "Shared Hit Blocks": 14,                                                                               +
               "Shared Read Blocks": 2,                                                                               +
               "Shared Dirtied Blocks": 0,                                                                            +
               "Shared Written Blocks": 0,                                                                            +
               "Local Hit Blocks": 0,                                                                                 +
               "Local Read Blocks": 0,                                                                                +
               "Local Dirtied Blocks": 0,                                                                             +
               "Local Written Blocks": 0,                                                                             +
               "Temp Read Blocks": 0,                                                                                 +
               "Temp Written Blocks": 0                                                                               +
             }                                                                                                        +
           ]                                                                                                          +
         }                                                                                                            +
       ]                                                                                                              +
     },                                                                                                               +
     "Planning Time": 6280.271,                                                                                       +
     "Triggers": [                                                                                                    +
     ],                                                                                                               +
     "Execution Time": 5836.547                                                                                       +
   }                                                                                                                  +
 ]
(1 row)
