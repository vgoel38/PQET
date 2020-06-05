                                           QUERY PLAN                                           
------------------------------------------------------------------------------------------------
 [                                                                                             +
   {                                                                                           +
     "Plan": {                                                                                 +
       "Node Type": "Aggregate",                                                               +
       "Strategy": "Plain",                                                                    +
       "Partial Mode": "Simple",                                                               +
       "Parallel Aware": false,                                                                +
       "Startup Cost": 624.39,                                                                 +
       "Total Cost": 624.39,                                                                   +
       "Plan Rows": 1,                                                                         +
       "Plan Width": 96,                                                                       +
       "Actual Startup Time": 65018.207,                                                       +
       "Actual Total Time": 65018.207,                                                         +
       "Actual Rows": 1,                                                                       +
       "Actual Loops": 1,                                                                      +
       "Shared Hit Blocks": 113531,                                                            +
       "Shared Read Blocks": 17502,                                                            +
       "Shared Dirtied Blocks": 0,                                                             +
       "Shared Written Blocks": 0,                                                             +
       "Local Hit Blocks": 0,                                                                  +
       "Local Read Blocks": 0,                                                                 +
       "Local Dirtied Blocks": 0,                                                              +
       "Local Written Blocks": 0,                                                              +
       "Temp Read Blocks": 0,                                                                  +
       "Temp Written Blocks": 0,                                                               +
       "Plans": [                                                                              +
         {                                                                                     +
           "Node Type": "Nested Loop",                                                         +
           "Parent Relationship": "Outer",                                                     +
           "Parallel Aware": false,                                                            +
           "Join Type": "Inner",                                                               +
           "Startup Cost": 0.06,                                                               +
           "Total Cost": 624.39,                                                               +
           "Plan Rows": 2,                                                                     +
           "Plan Width": 46,                                                                   +
           "Actual Startup Time": 202.187,                                                     +
           "Actual Total Time": 64983.237,                                                     +
           "Actual Rows": 4388,                                                                +
           "Actual Loops": 1,                                                                  +
           "Inner Unique": true,                                                               +
           "Shared Hit Blocks": 113531,                                                        +
           "Shared Read Blocks": 17502,                                                        +
           "Shared Dirtied Blocks": 0,                                                         +
           "Shared Written Blocks": 0,                                                         +
           "Local Hit Blocks": 0,                                                              +
           "Local Read Blocks": 0,                                                             +
           "Local Dirtied Blocks": 0,                                                          +
           "Local Written Blocks": 0,                                                          +
           "Temp Read Blocks": 0,                                                              +
           "Temp Written Blocks": 0,                                                           +
           "Plans": [                                                                          +
             {                                                                                 +
               "Node Type": "Nested Loop",                                                     +
               "Parent Relationship": "Outer",                                                 +
               "Parallel Aware": false,                                                        +
               "Join Type": "Inner",                                                           +
               "Startup Cost": 0.05,                                                           +
               "Total Cost": 618.63,                                                           +
               "Plan Rows": 2,                                                                 +
               "Plan Width": 33,                                                               +
               "Actual Startup Time": 143.363,                                                 +
               "Actual Total Time": 5922.913,                                                  +
               "Actual Rows": 4388,                                                            +
               "Actual Loops": 1,                                                              +
               "Inner Unique": true,                                                           +
               "Shared Hit Blocks": 101047,                                                    +
               "Shared Read Blocks": 12427,                                                    +
               "Shared Dirtied Blocks": 0,                                                     +
               "Shared Written Blocks": 0,                                                     +
               "Local Hit Blocks": 0,                                                          +
               "Local Read Blocks": 0,                                                         +
               "Local Dirtied Blocks": 0,                                                      +
               "Local Written Blocks": 0,                                                      +
               "Temp Read Blocks": 0,                                                          +
               "Temp Written Blocks": 0,                                                       +
               "Plans": [                                                                      +
                 {                                                                             +
                   "Node Type": "Nested Loop",                                                 +
                   "Parent Relationship": "Outer",                                             +
                   "Parallel Aware": false,                                                    +
                   "Join Type": "Inner",                                                       +
                   "Startup Cost": 0.04,                                                       +
                   "Total Cost": 618.54,                                                       +
                   "Plan Rows": 2,                                                             +
                   "Plan Width": 24,                                                           +
                   "Actual Startup Time": 94.031,                                              +
                   "Actual Total Time": 1636.628,                                              +
                   "Actual Rows": 4388,                                                        +
                   "Actual Loops": 1,                                                          +
                   "Inner Unique": false,                                                      +
                   "Join Filter": "(ml.link_type_id = lt.id)",                                 +
                   "Rows Removed by Join Filter": 74596,                                       +
                   "Shared Hit Blocks": 84095,                                                 +
                   "Shared Read Blocks": 11825,                                                +
                   "Shared Dirtied Blocks": 0,                                                 +
                   "Shared Written Blocks": 0,                                                 +
                   "Local Hit Blocks": 0,                                                      +
                   "Local Read Blocks": 0,                                                     +
                   "Local Dirtied Blocks": 0,                                                  +
                   "Local Written Blocks": 0,                                                  +
                   "Temp Read Blocks": 0,                                                      +
                   "Temp Written Blocks": 0,                                                   +
                   "Plans": [                                                                  +
                     {                                                                         +
                       "Node Type": "Seq Scan",                                                +
                       "Parent Relationship": "Outer",                                         +
                       "Parallel Aware": false,                                                +
                       "Relation Name": "link_type",                                           +
                       "Alias": "lt",                                                          +
                       "Startup Cost": 0.00,                                                   +
                       "Total Cost": 0.03,                                                     +
                       "Plan Rows": 18,                                                        +
                       "Plan Width": 16,                                                       +
                       "Actual Startup Time": 0.004,                                           +
                       "Actual Total Time": 0.043,                                             +
                       "Actual Rows": 18,                                                      +
                       "Actual Loops": 1,                                                      +
                       "Shared Hit Blocks": 1,                                                 +
                       "Shared Read Blocks": 0,                                                +
                       "Shared Dirtied Blocks": 0,                                             +
                       "Shared Written Blocks": 0,                                             +
                       "Local Hit Blocks": 0,                                                  +
                       "Local Read Blocks": 0,                                                 +
                       "Local Dirtied Blocks": 0,                                              +
                       "Local Written Blocks": 0,                                              +
                       "Temp Read Blocks": 0,                                                  +
                       "Temp Written Blocks": 0                                                +
                     },                                                                        +
                     {                                                                         +
                       "Node Type": "Materialize",                                             +
                       "Parent Relationship": "Inner",                                         +
                       "Parallel Aware": false,                                                +
                       "Startup Cost": 0.04,                                                   +
                       "Total Cost": 618.50,                                                   +
                       "Plan Rows": 2,                                                         +
                       "Plan Width": 16,                                                       +
                       "Actual Startup Time": 3.795,                                           +
                       "Actual Total Time": 88.751,                                            +
                       "Actual Rows": 4388,                                                    +
                       "Actual Loops": 18,                                                     +
                       "Shared Hit Blocks": 84094,                                             +
                       "Shared Read Blocks": 11825,                                            +
                       "Shared Dirtied Blocks": 0,                                             +
                       "Shared Written Blocks": 0,                                             +
                       "Local Hit Blocks": 0,                                                  +
                       "Local Read Blocks": 0,                                                 +
                       "Local Dirtied Blocks": 0,                                              +
                       "Local Written Blocks": 0,                                              +
                       "Temp Read Blocks": 0,                                                  +
                       "Temp Written Blocks": 0,                                               +
                       "Plans": [                                                              +
                         {                                                                     +
                           "Node Type": "Nested Loop",                                         +
                           "Parent Relationship": "Outer",                                     +
                           "Parallel Aware": false,                                            +
                           "Join Type": "Inner",                                               +
                           "Startup Cost": 0.04,                                               +
                           "Total Cost": 618.50,                                               +
                           "Plan Rows": 2,                                                     +
                           "Plan Width": 16,                                                   +
                           "Actual Startup Time": 68.307,                                      +
                           "Actual Total Time": 1578.594,                                      +
                           "Actual Rows": 4388,                                                +
                           "Actual Loops": 1,                                                  +
                           "Inner Unique": false,                                              +
                           "Shared Hit Blocks": 84094,                                         +
                           "Shared Read Blocks": 11825,                                        +
                           "Shared Dirtied Blocks": 0,                                         +
                           "Shared Written Blocks": 0,                                         +
                           "Local Hit Blocks": 0,                                              +
                           "Local Read Blocks": 0,                                             +
                           "Local Dirtied Blocks": 0,                                          +
                           "Local Written Blocks": 0,                                          +
                           "Temp Read Blocks": 0,                                              +
                           "Temp Written Blocks": 0,                                           +
                           "Plans": [                                                          +
                             {                                                                 +
                               "Node Type": "Nested Loop",                                     +
                               "Parent Relationship": "Outer",                                 +
                               "Parallel Aware": false,                                        +
                               "Join Type": "Inner",                                           +
                               "Startup Cost": 0.03,                                           +
                               "Total Cost": 618.15,                                           +
                               "Plan Rows": 34,                                                +
                               "Plan Width": 4,                                                +
                               "Actual Startup Time": 47.888,                                  +
                               "Actual Total Time": 1321.753,                                  +
                               "Actual Rows": 41840,                                           +
                               "Actual Loops": 1,                                              +
                               "Inner Unique": false,                                          +
                               "Shared Hit Blocks": 3,                                         +
                               "Shared Read Blocks": 11659,                                    +
                               "Shared Dirtied Blocks": 0,                                     +
                               "Shared Written Blocks": 0,                                     +
                               "Local Hit Blocks": 0,                                          +
                               "Local Read Blocks": 0,                                         +
                               "Local Dirtied Blocks": 0,                                      +
                               "Local Written Blocks": 0,                                      +
                               "Temp Read Blocks": 0,                                          +
                               "Temp Written Blocks": 0,                                       +
                               "Plans": [                                                      +
                                 {                                                             +
                                   "Node Type": "Index Scan",                                  +
                                   "Parent Relationship": "Outer",                             +
                                   "Parallel Aware": false,                                    +
                                   "Scan Direction": "Forward",                                +
                                   "Index Name": "keyword_idx_keyword",                        +
                                   "Relation Name": "keyword",                                 +
                                   "Alias": "k",                                               +
                                   "Startup Cost": 0.01,                                       +
                                   "Total Cost": 6.13,                                         +
                                   "Plan Rows": 1,                                             +
                                   "Plan Width": 4,                                            +
                                   "Actual Startup Time": 30.206,                              +
                                   "Actual Total Time": 30.208,                                +
                                   "Actual Rows": 1,                                           +
                                   "Actual Loops": 1,                                          +
                                   "Index Cond": "(keyword = 'character-name-in-title'::text)",+
                                   "Rows Removed by Index Recheck": 0,                         +
                                   "Shared Hit Blocks": 0,                                     +
                                   "Shared Read Blocks": 4,                                    +
                                   "Shared Dirtied Blocks": 0,                                 +
                                   "Shared Written Blocks": 0,                                 +
                                   "Local Hit Blocks": 0,                                      +
                                   "Local Read Blocks": 0,                                     +
                                   "Local Dirtied Blocks": 0,                                  +
                                   "Local Written Blocks": 0,                                  +
                                   "Temp Read Blocks": 0,                                      +
                                   "Temp Written Blocks": 0                                    +
                                 },                                                            +
                                 {                                                             +
                                   "Node Type": "Index Scan",                                  +
                                   "Parent Relationship": "Inner",                             +
                                   "Parallel Aware": false,                                    +
                                   "Scan Direction": "Forward",                                +
                                   "Index Name": "keyword_id_movie_keyword",                   +
                                   "Relation Name": "movie_keyword",                           +
                                   "Alias": "mk",                                              +
                                   "Startup Cost": 0.01,                                       +
                                   "Total Cost": 122.40,                                       +
                                   "Plan Rows": 39,                                            +
                                   "Plan Width": 8,                                            +
                                   "Actual Startup Time": 17.624,                              +
                                   "Actual Total Time": 1273.880,                              +
                                   "Actual Rows": 41840,                                       +
                                   "Actual Loops": 1,                                          +
                                   "Index Cond": "(keyword_id = k.id)",                        +
                                   "Rows Removed by Index Recheck": 0,                         +
                                   "Shared Hit Blocks": 3,                                     +
                                   "Shared Read Blocks": 11655,                                +
                                   "Shared Dirtied Blocks": 0,                                 +
                                   "Shared Written Blocks": 0,                                 +
                                   "Local Hit Blocks": 0,                                      +
                                   "Local Read Blocks": 0,                                     +
                                   "Local Dirtied Blocks": 0,                                  +
                                   "Local Written Blocks": 0,                                  +
                                   "Temp Read Blocks": 0,                                      +
                                   "Temp Written Blocks": 0                                    +
                                 }                                                             +
                               ]                                                               +
                             },                                                                +
                             {                                                                 +
                               "Node Type": "Index Scan",                                      +
                               "Parent Relationship": "Inner",                                 +
                               "Parallel Aware": false,                                        +
                               "Scan Direction": "Forward",                                    +
                               "Index Name": "movie_id_movie_link",                            +
                               "Relation Name": "movie_link",                                  +
                               "Alias": "ml",                                                  +
                               "Startup Cost": 0.01,                                           +
                               "Total Cost": 0.01,                                             +
                               "Plan Rows": 5,                                                 +
                               "Plan Width": 12,                                               +
                               "Actual Startup Time": 0.005,                                   +
                               "Actual Total Time": 0.005,                                     +
                               "Actual Rows": 0,                                               +
                               "Actual Loops": 41840,                                          +
                               "Index Cond": "(movie_id = mk.movie_id)",                       +
                               "Rows Removed by Index Recheck": 0,                             +
                               "Shared Hit Blocks": 84091,                                     +
                               "Shared Read Blocks": 166,                                      +
                               "Shared Dirtied Blocks": 0,                                     +
                               "Shared Written Blocks": 0,                                     +
                               "Local Hit Blocks": 0,                                          +
                               "Local Read Blocks": 0,                                         +
                               "Local Dirtied Blocks": 0,                                      +
                               "Local Written Blocks": 0,                                      +
                               "Temp Read Blocks": 0,                                          +
                               "Temp Written Blocks": 0                                        +
                             }                                                                 +
                           ]                                                                   +
                         }                                                                     +
                       ]                                                                       +
                     }                                                                         +
                   ]                                                                           +
                 },                                                                            +
                 {                                                                             +
                   "Node Type": "Index Scan",                                                  +
                   "Parent Relationship": "Inner",                                             +
                   "Parallel Aware": false,                                                    +
                   "Scan Direction": "Forward",                                                +
                   "Index Name": "title_idx_id",                                               +
                   "Relation Name": "title",                                                   +
                   "Alias": "t1",                                                              +
                   "Startup Cost": 0.01,                                                       +
                   "Total Cost": 0.04,                                                         +
                   "Plan Rows": 1,                                                             +
                   "Plan Width": 21,                                                           +
                   "Actual Startup Time": 0.971,                                               +
                   "Actual Total Time": 0.971,                                                 +
                   "Actual Rows": 1,                                                           +
                   "Actual Loops": 4388,                                                       +
                   "Index Cond": "(id = mk.movie_id)",                                         +
                   "Rows Removed by Index Recheck": 0,                                         +
                   "Shared Hit Blocks": 16952,                                                 +
                   "Shared Read Blocks": 602,                                                  +
                   "Shared Dirtied Blocks": 0,                                                 +
                   "Shared Written Blocks": 0,                                                 +
                   "Local Hit Blocks": 0,                                                      +
                   "Local Read Blocks": 0,                                                     +
                   "Local Dirtied Blocks": 0,                                                  +
                   "Local Written Blocks": 0,                                                  +
                   "Temp Read Blocks": 0,                                                      +
                   "Temp Written Blocks": 0                                                    +
                 }                                                                             +
               ]                                                                               +
             },                                                                                +
             {                                                                                 +
               "Node Type": "Index Scan",                                                      +
               "Parent Relationship": "Inner",                                                 +
               "Parallel Aware": false,                                                        +
               "Scan Direction": "Forward",                                                    +
               "Index Name": "title_idx_id",                                                   +
               "Relation Name": "title",                                                       +
               "Alias": "t2",                                                                  +
               "Startup Cost": 0.01,                                                           +
               "Total Cost": 2.88,                                                             +
               "Plan Rows": 1,                                                                 +
               "Plan Width": 21,                                                               +
               "Actual Startup Time": 13.454,                                                  +
               "Actual Total Time": 13.454,                                                    +
               "Actual Rows": 1,                                                               +
               "Actual Loops": 4388,                                                           +
               "Index Cond": "(id = ml.linked_movie_id)",                                      +
               "Rows Removed by Index Recheck": 0,                                             +
               "Shared Hit Blocks": 12484,                                                     +
               "Shared Read Blocks": 5075,                                                     +
               "Shared Dirtied Blocks": 0,                                                     +
               "Shared Written Blocks": 0,                                                     +
               "Local Hit Blocks": 0,                                                          +
               "Local Read Blocks": 0,                                                         +
               "Local Dirtied Blocks": 0,                                                      +
               "Local Written Blocks": 0,                                                      +
               "Temp Read Blocks": 0,                                                          +
               "Temp Written Blocks": 0                                                        +
             }                                                                                 +
           ]                                                                                   +
         }                                                                                     +
       ]                                                                                       +
     },                                                                                        +
     "Planning Time": 1473.255,                                                                +
     "Triggers": [                                                                             +
     ],                                                                                        +
     "Execution Time": 65018.919                                                               +
   }                                                                                           +
 ]
(1 row)

