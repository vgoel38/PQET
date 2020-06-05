                                                       QUERY PLAN                                                       
------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                     +
   {                                                                                                                   +
     "Plan": {                                                                                                         +
       "Node Type": "Aggregate",                                                                                       +
       "Strategy": "Plain",                                                                                            +
       "Partial Mode": "Simple",                                                                                       +
       "Parallel Aware": false,                                                                                        +
       "Startup Cost": 387.53,                                                                                         +
       "Total Cost": 387.53,                                                                                           +
       "Plan Rows": 1,                                                                                                 +
       "Plan Width": 96,                                                                                               +
       "Actual Startup Time": 6091.951,                                                                                +
       "Actual Total Time": 6091.951,                                                                                  +
       "Actual Rows": 1,                                                                                               +
       "Actual Loops": 1,                                                                                              +
       "Shared Hit Blocks": 173816,                                                                                    +
       "Shared Read Blocks": 17722,                                                                                    +
       "Shared Dirtied Blocks": 0,                                                                                     +
       "Shared Written Blocks": 0,                                                                                     +
       "Local Hit Blocks": 0,                                                                                          +
       "Local Read Blocks": 0,                                                                                         +
       "Local Dirtied Blocks": 0,                                                                                      +
       "Local Written Blocks": 0,                                                                                      +
       "Temp Read Blocks": 0,                                                                                          +
       "Temp Written Blocks": 0,                                                                                       +
       "Plans": [                                                                                                      +
         {                                                                                                             +
           "Node Type": "Nested Loop",                                                                                 +
           "Parent Relationship": "Outer",                                                                             +
           "Parallel Aware": false,                                                                                    +
           "Join Type": "Inner",                                                                                       +
           "Startup Cost": 0.08,                                                                                       +
           "Total Cost": 387.53,                                                                                       +
           "Plan Rows": 12,                                                                                            +
           "Plan Width": 60,                                                                                           +
           "Actual Startup Time": 170.838,                                                                             +
           "Actual Total Time": 6069.533,                                                                              +
           "Actual Rows": 14899,                                                                                       +
           "Actual Loops": 1,                                                                                          +
           "Inner Unique": true,                                                                                       +
           "Shared Hit Blocks": 173816,                                                                                +
           "Shared Read Blocks": 17722,                                                                                +
           "Shared Dirtied Blocks": 0,                                                                                 +
           "Shared Written Blocks": 0,                                                                                 +
           "Local Hit Blocks": 0,                                                                                      +
           "Local Read Blocks": 0,                                                                                     +
           "Local Dirtied Blocks": 0,                                                                                  +
           "Local Written Blocks": 0,                                                                                  +
           "Temp Read Blocks": 0,                                                                                      +
           "Temp Written Blocks": 0,                                                                                   +
           "Plans": [                                                                                                  +
             {                                                                                                         +
               "Node Type": "Nested Loop",                                                                             +
               "Parent Relationship": "Outer",                                                                         +
               "Parallel Aware": false,                                                                                +
               "Join Type": "Inner",                                                                                   +
               "Startup Cost": 0.06,                                                                                   +
               "Total Cost": 387.24,                                                                                   +
               "Plan Rows": 13,                                                                                        +
               "Plan Width": 45,                                                                                       +
               "Actual Startup Time": 162.620,                                                                         +
               "Actual Total Time": 5378.885,                                                                          +
               "Actual Rows": 14916,                                                                                   +
               "Actual Loops": 1,                                                                                      +
               "Inner Unique": true,                                                                                   +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                          +
               "Rows Removed by Join Filter": 1782,                                                                    +
               "Shared Hit Blocks": 114351,                                                                            +
               "Shared Read Blocks": 17510,                                                                            +
               "Shared Dirtied Blocks": 0,                                                                             +
               "Shared Written Blocks": 0,                                                                             +
               "Local Hit Blocks": 0,                                                                                  +
               "Local Read Blocks": 0,                                                                                 +
               "Local Dirtied Blocks": 0,                                                                              +
               "Local Written Blocks": 0,                                                                              +
               "Temp Read Blocks": 0,                                                                                  +
               "Temp Written Blocks": 0,                                                                               +
               "Plans": [                                                                                              +
                 {                                                                                                     +
                   "Node Type": "Nested Loop",                                                                         +
                   "Parent Relationship": "Outer",                                                                     +
                   "Parallel Aware": false,                                                                            +
                   "Join Type": "Inner",                                                                               +
                   "Startup Cost": 0.06,                                                                               +
                   "Total Cost": 387.20,                                                                               +
                   "Plan Rows": 17,                                                                                    +
                   "Plan Width": 49,                                                                                   +
                   "Actual Startup Time": 162.584,                                                                     +
                   "Actual Total Time": 5368.041,                                                                      +
                   "Actual Rows": 15510,                                                                               +
                   "Actual Loops": 1,                                                                                  +
                   "Inner Unique": false,                                                                              +
                   "Join Filter": "(ml.movie_id = mc.movie_id)",                                                       +
                   "Rows Removed by Join Filter": 0,                                                                   +
                   "Shared Hit Blocks": 114350,                                                                        +
                   "Shared Read Blocks": 17510,                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                         +
                   "Shared Written Blocks": 0,                                                                         +
                   "Local Hit Blocks": 0,                                                                              +
                   "Local Read Blocks": 0,                                                                             +
                   "Local Dirtied Blocks": 0,                                                                          +
                   "Local Written Blocks": 0,                                                                          +
                   "Temp Read Blocks": 0,                                                                              +
                   "Temp Written Blocks": 0,                                                                           +
                   "Plans": [                                                                                          +
                     {                                                                                                 +
                       "Node Type": "Nested Loop",                                                                     +
                       "Parent Relationship": "Outer",                                                                 +
                       "Parallel Aware": false,                                                                        +
                       "Join Type": "Inner",                                                                           +
                       "Startup Cost": 0.05,                                                                           +
                       "Total Cost": 387.01,                                                                           +
                       "Plan Rows": 6,                                                                                 +
                       "Plan Width": 29,                                                                               +
                       "Actual Startup Time": 129.598,                                                                 +
                       "Actual Total Time": 4797.689,                                                                  +
                       "Actual Rows": 1460,                                                                            +
                       "Actual Loops": 1,                                                                              +
                       "Inner Unique": false,                                                                          +
                       "Join Filter": "(ml.link_type_id = lt.id)",                                                     +
                       "Rows Removed by Join Filter": 24820,                                                           +
                       "Shared Hit Blocks": 107674,                                                                    +
                       "Shared Read Blocks": 17289,                                                                    +
                       "Shared Dirtied Blocks": 0,                                                                     +
                       "Shared Written Blocks": 0,                                                                     +
                       "Local Hit Blocks": 0,                                                                          +
                       "Local Read Blocks": 0,                                                                         +
                       "Local Dirtied Blocks": 0,                                                                      +
                       "Local Written Blocks": 0,                                                                      +
                       "Temp Read Blocks": 0,                                                                          +
                       "Temp Written Blocks": 0,                                                                       +
                       "Plans": [                                                                                      +
                         {                                                                                             +
                           "Node Type": "Seq Scan",                                                                    +
                           "Parent Relationship": "Outer",                                                             +
                           "Parallel Aware": false,                                                                    +
                           "Relation Name": "link_type",                                                               +
                           "Alias": "lt",                                                                              +
                           "Startup Cost": 0.00,                                                                       +
                           "Total Cost": 0.03,                                                                         +
                           "Plan Rows": 18,                                                                            +
                           "Plan Width": 4,                                                                            +
                           "Actual Startup Time": 0.009,                                                               +
                           "Actual Total Time": 0.023,                                                                 +
                           "Actual Rows": 18,                                                                          +
                           "Actual Loops": 1,                                                                          +
                           "Shared Hit Blocks": 1,                                                                     +
                           "Shared Read Blocks": 0,                                                                    +
                           "Shared Dirtied Blocks": 0,                                                                 +
                           "Shared Written Blocks": 0,                                                                 +
                           "Local Hit Blocks": 0,                                                                      +
                           "Local Read Blocks": 0,                                                                     +
                           "Local Dirtied Blocks": 0,                                                                  +
                           "Local Written Blocks": 0,                                                                  +
                           "Temp Read Blocks": 0,                                                                      +
                           "Temp Written Blocks": 0                                                                    +
                         },                                                                                            +
                         {                                                                                             +
                           "Node Type": "Materialize",                                                                 +
                           "Parent Relationship": "Inner",                                                             +
                           "Parallel Aware": false,                                                                    +
                           "Startup Cost": 0.05,                                                                       +
                           "Total Cost": 386.96,                                                                       +
                           "Plan Rows": 6,                                                                             +
                           "Plan Width": 33,                                                                           +
                           "Actual Startup Time": 3.474,                                                               +
                           "Actual Total Time": 266.227,                                                               +
                           "Actual Rows": 1460,                                                                        +
                           "Actual Loops": 18,                                                                         +
                           "Shared Hit Blocks": 107673,                                                                +
                           "Shared Read Blocks": 17289,                                                                +
                           "Shared Dirtied Blocks": 0,                                                                 +
                           "Shared Written Blocks": 0,                                                                 +
                           "Local Hit Blocks": 0,                                                                      +
                           "Local Read Blocks": 0,                                                                     +
                           "Local Dirtied Blocks": 0,                                                                  +
                           "Local Written Blocks": 0,                                                                  +
                           "Temp Read Blocks": 0,                                                                      +
                           "Temp Written Blocks": 0,                                                                   +
                           "Plans": [                                                                                  +
                             {                                                                                         +
                               "Node Type": "Nested Loop",                                                             +
                               "Parent Relationship": "Outer",                                                         +
                               "Parallel Aware": false,                                                                +
                               "Join Type": "Inner",                                                                   +
                               "Startup Cost": 0.05,                                                                   +
                               "Total Cost": 386.96,                                                                   +
                               "Plan Rows": 6,                                                                         +
                               "Plan Width": 33,                                                                       +
                               "Actual Startup Time": 62.522,                                                          +
                               "Actual Total Time": 4787.920,                                                          +
                               "Actual Rows": 1460,                                                                    +
                               "Actual Loops": 1,                                                                      +
                               "Inner Unique": true,                                                                   +
                               "Join Filter": "(ml.movie_id = t.id)",                                                  +
                               "Rows Removed by Join Filter": 0,                                                       +
                               "Shared Hit Blocks": 107673,                                                            +
                               "Shared Read Blocks": 17289,                                                            +
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
                                   "Startup Cost": 0.04,                                                               +
                                   "Total Cost": 386.66,                                                               +
                                   "Plan Rows": 7,                                                                     +
                                   "Plan Width": 12,                                                                   +
                                   "Actual Startup Time": 44.783,                                                      +
                                   "Actual Total Time": 3352.104,                                                      +
                                   "Actual Rows": 1460,                                                                +
                                   "Actual Loops": 1,                                                                  +
                                   "Inner Unique": false,                                                              +
                                   "Shared Hit Blocks": 102094,                                                        +
                                   "Shared Read Blocks": 17026,                                                        +
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
                                       "Startup Cost": 0.03,                                                           +
                                       "Total Cost": 385.61,                                                           +
                                       "Plan Rows": 101,                                                               +
                                       "Plan Width": 4,                                                                +
                                       "Actual Startup Time": 44.254,                                                  +
                                       "Actual Total Time": 3033.271,                                                  +
                                       "Actual Rows": 47403,                                                           +
                                       "Actual Loops": 1,                                                              +
                                       "Inner Unique": false,                                                          +
                                       "Shared Hit Blocks": 7192,                                                      +
                                       "Shared Read Blocks": 16914,                                                    +
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
                                           "Node Type": "Index Scan",                                                  +
                                           "Parent Relationship": "Outer",                                             +
                                           "Parallel Aware": false,                                                    +
                                           "Scan Direction": "Forward",                                                +
                                           "Index Name": "keyword_idx_keyword",                                        +
                                           "Relation Name": "keyword",                                                 +
                                           "Alias": "k",                                                               +
                                           "Startup Cost": 0.01,                                                       +
                                           "Total Cost": 18.40,                                                        +
                                           "Plan Rows": 3,                                                             +
                                           "Plan Width": 4,                                                            +
                                           "Actual Startup Time": 18.795,                                              +
                                           "Actual Total Time": 90.115,                                                +
                                           "Actual Rows": 3,                                                           +
                                           "Actual Loops": 1,                                                          +
                                           "Index Cond": "(keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))",+
                                           "Rows Removed by Index Recheck": 0,                                         +
                                           "Shared Hit Blocks": 6,                                                     +
                                           "Shared Read Blocks": 9,                                                    +
                                           "Shared Dirtied Blocks": 0,                                                 +
                                           "Shared Written Blocks": 0,                                                 +
                                           "Local Hit Blocks": 0,                                                      +
                                           "Local Read Blocks": 0,                                                     +
                                           "Local Dirtied Blocks": 0,                                                  +
                                           "Local Written Blocks": 0,                                                  +
                                           "Temp Read Blocks": 0,                                                      +
                                           "Temp Written Blocks": 0                                                    +
                                         },                                                                            +
                                         {                                                                             +
                                           "Node Type": "Index Scan",                                                  +
                                           "Parent Relationship": "Inner",                                             +
                                           "Parallel Aware": false,                                                    +
                                           "Scan Direction": "Forward",                                                +
                                           "Index Name": "keyword_id_movie_keyword",                                   +
                                           "Relation Name": "movie_keyword",                                           +
                                           "Alias": "mk",                                                              +
                                           "Startup Cost": 0.01,                                                       +
                                           "Total Cost": 122.40,                                                       +
                                           "Plan Rows": 39,                                                            +
                                           "Plan Width": 8,                                                            +
                                           "Actual Startup Time": 16.307,                                              +
                                           "Actual Total Time": 974.054,                                               +
                                           "Actual Rows": 15801,                                                       +
                                           "Actual Loops": 3,                                                          +
                                           "Index Cond": "(keyword_id = k.id)",                                        +
                                           "Rows Removed by Index Recheck": 0,                                         +
                                           "Shared Hit Blocks": 7186,                                                  +
                                           "Shared Read Blocks": 16905,                                                +
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
                                       "Index Name": "movie_id_movie_link",                                            +
                                       "Relation Name": "movie_link",                                                  +
                                       "Alias": "ml",                                                                  +
                                       "Startup Cost": 0.01,                                                           +
                                       "Total Cost": 0.01,                                                             +
                                       "Plan Rows": 5,                                                                 +
                                       "Plan Width": 8,                                                                +
                                       "Actual Startup Time": 0.006,                                                   +
                                       "Actual Total Time": 0.006,                                                     +
                                       "Actual Rows": 0,                                                               +
                                       "Actual Loops": 47403,                                                          +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                       +
                                       "Rows Removed by Index Recheck": 0,                                             +
                                       "Shared Hit Blocks": 94902,                                                     +
                                       "Shared Read Blocks": 112,                                                      +
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
                                 },                                                                                    +
                                 {                                                                                     +
                                   "Node Type": "Index Scan",                                                          +
                                   "Parent Relationship": "Inner",                                                     +
                                   "Parallel Aware": false,                                                            +
                                   "Scan Direction": "Forward",                                                        +
                                   "Index Name": "title_idx_id",                                                       +
                                   "Relation Name": "title",                                                           +
                                   "Alias": "t",                                                                       +
                                   "Startup Cost": 0.01,                                                               +
                                   "Total Cost": 0.04,                                                                 +
                                   "Plan Rows": 1,                                                                     +
                                   "Plan Width": 21,                                                                   +
                                   "Actual Startup Time": 0.981,                                                       +
                                   "Actual Total Time": 0.981,                                                         +
                                   "Actual Rows": 1,                                                                   +
                                   "Actual Loops": 1460,                                                               +
                                   "Index Cond": "(id = mk.movie_id)",                                                 +
                                   "Rows Removed by Index Recheck": 0,                                                 +
                                   "Filter": "(production_year > 1950)",                                               +
                                   "Rows Removed by Filter": 0,                                                        +
                                   "Shared Hit Blocks": 5579,                                                          +
                                   "Shared Read Blocks": 263,                                                          +
                                   "Shared Dirtied Blocks": 0,                                                         +
                                   "Shared Written Blocks": 0,                                                         +
                                   "Local Hit Blocks": 0,                                                              +
                                   "Local Read Blocks": 0,                                                             +
                                   "Local Dirtied Blocks": 0,                                                          +
                                   "Local Written Blocks": 0,                                                          +
                                   "Temp Read Blocks": 0,                                                              +
                                   "Temp Written Blocks": 0                                                            +
                                 }                                                                                     +
                               ]                                                                                       +
                             }                                                                                         +
                           ]                                                                                           +
                         }                                                                                             +
                       ]                                                                                               +
                     },                                                                                                +
                     {                                                                                                 +
                       "Node Type": "Index Scan",                                                                      +
                       "Parent Relationship": "Inner",                                                                 +
                       "Parallel Aware": false,                                                                        +
                       "Scan Direction": "Forward",                                                                    +
                       "Index Name": "movie_id_movie_companies",                                                       +
                       "Relation Name": "movie_companies",                                                             +
                       "Alias": "mc",                                                                                  +
                       "Startup Cost": 0.01,                                                                           +
                       "Total Cost": 0.03,                                                                             +
                       "Plan Rows": 1,                                                                                 +
                       "Plan Width": 36,                                                                               +
                       "Actual Startup Time": 0.339,                                                                   +
                       "Actual Total Time": 0.386,                                                                     +
                       "Actual Rows": 11,                                                                              +
                       "Actual Loops": 1460,                                                                           +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                       +
                       "Rows Removed by Index Recheck": 0,                                                             +
                       "Filter": "(note IS NOT NULL)",                                                                 +
                       "Rows Removed by Filter": 2,                                                                    +
                       "Shared Hit Blocks": 6676,                                                                      +
                       "Shared Read Blocks": 221,                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                     +
                       "Shared Written Blocks": 0,                                                                     +
                       "Local Hit Blocks": 0,                                                                          +
                       "Local Read Blocks": 0,                                                                         +
                       "Local Dirtied Blocks": 0,                                                                      +
                       "Local Written Blocks": 0,                                                                      +
                       "Temp Read Blocks": 0,                                                                          +
                       "Temp Written Blocks": 0                                                                        +
                     }                                                                                                 +
                   ]                                                                                                   +
                 },                                                                                                    +
                 {                                                                                                     +
                   "Node Type": "Materialize",                                                                         +
                   "Parent Relationship": "Inner",                                                                     +
                   "Parallel Aware": false,                                                                            +
                   "Startup Cost": 0.00,                                                                               +
                   "Total Cost": 0.03,                                                                                 +
                   "Plan Rows": 3,                                                                                     +
                   "Plan Width": 4,                                                                                    +
                   "Actual Startup Time": 0.000,                                                                       +
                   "Actual Total Time": 0.000,                                                                         +
                   "Actual Rows": 1,                                                                                   +
                   "Actual Loops": 15510,                                                                              +
                   "Shared Hit Blocks": 1,                                                                             +
                   "Shared Read Blocks": 0,                                                                            +
                   "Shared Dirtied Blocks": 0,                                                                         +
                   "Shared Written Blocks": 0,                                                                         +
                   "Local Hit Blocks": 0,                                                                              +
                   "Local Read Blocks": 0,                                                                             +
                   "Local Dirtied Blocks": 0,                                                                          +
                   "Local Written Blocks": 0,                                                                          +
                   "Temp Read Blocks": 0,                                                                              +
                   "Temp Written Blocks": 0,                                                                           +
                   "Plans": [                                                                                          +
                     {                                                                                                 +
                       "Node Type": "Seq Scan",                                                                        +
                       "Parent Relationship": "Outer",                                                                 +
                       "Parallel Aware": false,                                                                        +
                       "Relation Name": "company_type",                                                                +
                       "Alias": "ct",                                                                                  +
                       "Startup Cost": 0.00,                                                                           +
                       "Total Cost": 0.03,                                                                             +
                       "Plan Rows": 3,                                                                                 +
                       "Plan Width": 4,                                                                                +
                       "Actual Startup Time": 0.015,                                                                   +
                       "Actual Total Time": 0.022,                                                                     +
                       "Actual Rows": 3,                                                                               +
                       "Actual Loops": 1,                                                                              +
                       "Filter": "((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))",            +
                       "Rows Removed by Filter": 1,                                                                    +
                       "Shared Hit Blocks": 1,                                                                         +
                       "Shared Read Blocks": 0,                                                                        +
                       "Shared Dirtied Blocks": 0,                                                                     +
                       "Shared Written Blocks": 0,                                                                     +
                       "Local Hit Blocks": 0,                                                                          +
                       "Local Read Blocks": 0,                                                                         +
                       "Local Dirtied Blocks": 0,                                                                      +
                       "Local Written Blocks": 0,                                                                      +
                       "Temp Read Blocks": 0,                                                                          +
                       "Temp Written Blocks": 0                                                                        +
                     }                                                                                                 +
                   ]                                                                                                   +
                 }                                                                                                     +
               ]                                                                                                       +
             },                                                                                                        +
             {                                                                                                         +
               "Node Type": "Index Scan",                                                                              +
               "Parent Relationship": "Inner",                                                                         +
               "Parallel Aware": false,                                                                                +
               "Scan Direction": "Forward",                                                                            +
               "Index Name": "company_name_pkey",                                                                      +
               "Relation Name": "company_name",                                                                        +
               "Alias": "cn",                                                                                          +
               "Startup Cost": 0.01,                                                                                   +
               "Total Cost": 0.02,                                                                                     +
               "Plan Rows": 1,                                                                                         +
               "Plan Width": 23,                                                                                       +
               "Actual Startup Time": 0.045,                                                                           +
               "Actual Total Time": 0.045,                                                                             +
               "Actual Rows": 1,                                                                                       +
               "Actual Loops": 14916,                                                                                  +
               "Index Cond": "(id = mc.company_id)",                                                                   +
               "Rows Removed by Index Recheck": 0,                                                                     +
               "Filter": "((country_code)::text <> '[pl]'::text)",                                                     +
               "Rows Removed by Filter": 0,                                                                            +
               "Shared Hit Blocks": 59465,                                                                             +
               "Shared Read Blocks": 212,                                                                              +
               "Shared Dirtied Blocks": 0,                                                                             +
               "Shared Written Blocks": 0,                                                                             +
               "Local Hit Blocks": 0,                                                                                  +
               "Local Read Blocks": 0,                                                                                 +
               "Local Dirtied Blocks": 0,                                                                              +
               "Local Written Blocks": 0,                                                                              +
               "Temp Read Blocks": 0,                                                                                  +
               "Temp Written Blocks": 0                                                                                +
             }                                                                                                         +
           ]                                                                                                           +
         }                                                                                                             +
       ]                                                                                                               +
     },                                                                                                                +
     "Planning Time": 3629.246,                                                                                        +
     "Triggers": [                                                                                                     +
     ],                                                                                                                +
     "Execution Time": 6157.471                                                                                        +
   }                                                                                                                   +
 ]
(1 row)

