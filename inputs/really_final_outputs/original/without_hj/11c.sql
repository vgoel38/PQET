                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                    +
   {                                                                                                                                                                  +
     "Plan": {                                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                                      +
       "Strategy": "Plain",                                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                                      +
       "Parallel Aware": false,                                                                                                                                       +
       "Startup Cost": 387.48,                                                                                                                                        +
       "Total Cost": 387.48,                                                                                                                                          +
       "Plan Rows": 1,                                                                                                                                                +
       "Plan Width": 96,                                                                                                                                              +
       "Actual Startup Time": 4611.245,                                                                                                                               +
       "Actual Total Time": 4611.245,                                                                                                                                 +
       "Actual Rows": 1,                                                                                                                                              +
       "Actual Loops": 1,                                                                                                                                             +
       "Shared Hit Blocks": 196034,                                                                                                                                   +
       "Shared Read Blocks": 17467,                                                                                                                                   +
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
           "Total Cost": 387.48,                                                                                                                                      +
           "Plan Rows": 1,                                                                                                                                            +
           "Plan Width": 60,                                                                                                                                          +
           "Actual Startup Time": 4441.717,                                                                                                                           +
           "Actual Total Time": 4605.979,                                                                                                                             +
           "Actual Rows": 6946,                                                                                                                                       +
           "Actual Loops": 1,                                                                                                                                         +
           "Inner Unique": true,                                                                                                                                      +
           "Join Filter": "(ml.movie_id = t.id)",                                                                                                                     +
           "Rows Removed by Join Filter": 0,                                                                                                                          +
           "Shared Hit Blocks": 196034,                                                                                                                               +
           "Shared Read Blocks": 17467,                                                                                                                               +
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
               "Startup Cost": 0.06,                                                                                                                                  +
               "Total Cost": 387.27,                                                                                                                                  +
               "Plan Rows": 1,                                                                                                                                        +
               "Plan Width": 55,                                                                                                                                      +
               "Actual Startup Time": 4396.867,                                                                                                                       +
               "Actual Total Time": 4431.404,                                                                                                                         +
               "Actual Rows": 6946,                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                     +
               "Inner Unique": false,                                                                                                                                 +
               "Join Filter": "(ml.link_type_id = lt.id)",                                                                                                            +
               "Rows Removed by Join Filter": 118082,                                                                                                                 +
               "Shared Hit Blocks": 168258,                                                                                                                           +
               "Shared Read Blocks": 17459,                                                                                                                           +
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
                   "Node Type": "Seq Scan",                                                                                                                           +
                   "Parent Relationship": "Outer",                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                           +
                   "Relation Name": "link_type",                                                                                                                      +
                   "Alias": "lt",                                                                                                                                     +
                   "Startup Cost": 0.00,                                                                                                                              +
                   "Total Cost": 0.03,                                                                                                                                +
                   "Plan Rows": 18,                                                                                                                                   +
                   "Plan Width": 4,                                                                                                                                   +
                   "Actual Startup Time": 0.009,                                                                                                                      +
                   "Actual Total Time": 0.020,                                                                                                                        +
                   "Actual Rows": 18,                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                 +
                   "Shared Hit Blocks": 1,                                                                                                                            +
                   "Shared Read Blocks": 0,                                                                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                                             +
                   "Temp Written Blocks": 0                                                                                                                           +
                 },                                                                                                                                                   +
                 {                                                                                                                                                    +
                   "Node Type": "Materialize",                                                                                                                        +
                   "Parent Relationship": "Inner",                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                           +
                   "Startup Cost": 0.06,                                                                                                                              +
                   "Total Cost": 387.23,                                                                                                                              +
                   "Plan Rows": 1,                                                                                                                                    +
                   "Plan Width": 59,                                                                                                                                  +
                   "Actual Startup Time": 118.699,                                                                                                                    +
                   "Actual Total Time": 244.676,                                                                                                                      +
                   "Actual Rows": 6946,                                                                                                                               +
                   "Actual Loops": 18,                                                                                                                                +
                   "Shared Hit Blocks": 168257,                                                                                                                       +
                   "Shared Read Blocks": 17459,                                                                                                                       +
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
                       "Startup Cost": 0.06,                                                                                                                          +
                       "Total Cost": 387.23,                                                                                                                          +
                       "Plan Rows": 1,                                                                                                                                +
                       "Plan Width": 59,                                                                                                                              +
                       "Actual Startup Time": 2136.569,                                                                                                               +
                       "Actual Total Time": 4391.502,                                                                                                                 +
                       "Actual Rows": 6946,                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                             +
                       "Inner Unique": true,                                                                                                                          +
                       "Shared Hit Blocks": 168257,                                                                                                                   +
                       "Shared Read Blocks": 17459,                                                                                                                   +
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
                           "Startup Cost": 0.05,                                                                                                                      +
                           "Total Cost": 386.92,                                                                                                                      +
                           "Plan Rows": 14,                                                                                                                           +
                           "Plan Width": 44,                                                                                                                          +
                           "Actual Startup Time": 76.810,                                                                                                             +
                           "Actual Total Time": 3872.118,                                                                                                             +
                           "Actual Rows": 14916,                                                                                                                      +
                           "Actual Loops": 1,                                                                                                                         +
                           "Inner Unique": true,                                                                                                                      +
                           "Join Filter": "(mc.company_type_id = ct.id)",                                                                                             +
                           "Rows Removed by Join Filter": 1782,                                                                                                       +
                           "Shared Hit Blocks": 108771,                                                                                                               +
                           "Shared Read Blocks": 17247,                                                                                                               +
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
                               "Startup Cost": 0.05,                                                                                                                  +
                               "Total Cost": 386.88,                                                                                                                  +
                               "Plan Rows": 19,                                                                                                                       +
                               "Plan Width": 48,                                                                                                                      +
                               "Actual Startup Time": 76.780,                                                                                                         +
                               "Actual Total Time": 3861.850,                                                                                                         +
                               "Actual Rows": 15510,                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                     +
                               "Inner Unique": false,                                                                                                                 +
                               "Join Filter": "(ml.movie_id = mc.movie_id)",                                                                                          +
                               "Rows Removed by Join Filter": 0,                                                                                                      +
                               "Shared Hit Blocks": 108770,                                                                                                           +
                               "Shared Read Blocks": 17247,                                                                                                           +
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
                                   "Startup Cost": 0.04,                                                                                                              +
                                   "Total Cost": 386.66,                                                                                                              +
                                   "Plan Rows": 7,                                                                                                                    +
                                   "Plan Width": 12,                                                                                                                  +
                                   "Actual Startup Time": 44.681,                                                                                                     +
                                   "Actual Total Time": 3377.545,                                                                                                     +
                                   "Actual Rows": 1460,                                                                                                               +
                                   "Actual Loops": 1,                                                                                                                 +
                                   "Inner Unique": false,                                                                                                             +
                                   "Shared Hit Blocks": 102094,                                                                                                       +
                                   "Shared Read Blocks": 17026,                                                                                                       +
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
                                       "Startup Cost": 0.03,                                                                                                          +
                                       "Total Cost": 385.61,                                                                                                          +
                                       "Plan Rows": 101,                                                                                                              +
                                       "Plan Width": 4,                                                                                                               +
                                       "Actual Startup Time": 44.165,                                                                                                 +
                                       "Actual Total Time": 2995.096,                                                                                                 +
                                       "Actual Rows": 47403,                                                                                                          +
                                       "Actual Loops": 1,                                                                                                             +
                                       "Inner Unique": false,                                                                                                         +
                                       "Shared Hit Blocks": 7192,                                                                                                     +
                                       "Shared Read Blocks": 16914,                                                                                                   +
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
                                           "Node Type": "Index Scan",                                                                                                 +
                                           "Parent Relationship": "Outer",                                                                                            +
                                           "Parallel Aware": false,                                                                                                   +
                                           "Scan Direction": "Forward",                                                                                               +
                                           "Index Name": "keyword_idx_keyword",                                                                                       +
                                           "Relation Name": "keyword",                                                                                                +
                                           "Alias": "k",                                                                                                              +
                                           "Startup Cost": 0.01,                                                                                                      +
                                           "Total Cost": 18.40,                                                                                                       +
                                           "Plan Rows": 3,                                                                                                            +
                                           "Plan Width": 4,                                                                                                           +
                                           "Actual Startup Time": 18.795,                                                                                             +
                                           "Actual Total Time": 90.609,                                                                                               +
                                           "Actual Rows": 3,                                                                                                          +
                                           "Actual Loops": 1,                                                                                                         +
                                           "Index Cond": "(keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))",                                               +
                                           "Rows Removed by Index Recheck": 0,                                                                                        +
                                           "Shared Hit Blocks": 6,                                                                                                    +
                                           "Shared Read Blocks": 9,                                                                                                   +
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
                                           "Node Type": "Index Scan",                                                                                                 +
                                           "Parent Relationship": "Inner",                                                                                            +
                                           "Parallel Aware": false,                                                                                                   +
                                           "Scan Direction": "Forward",                                                                                               +
                                           "Index Name": "keyword_id_movie_keyword",                                                                                  +
                                           "Relation Name": "movie_keyword",                                                                                          +
                                           "Alias": "mk",                                                                                                             +
                                           "Startup Cost": 0.01,                                                                                                      +
                                           "Total Cost": 122.40,                                                                                                      +
                                           "Plan Rows": 39,                                                                                                           +
                                           "Plan Width": 8,                                                                                                           +
                                           "Actual Startup Time": 16.252,                                                                                             +
                                           "Actual Total Time": 960.898,                                                                                              +
                                           "Actual Rows": 15801,                                                                                                      +
                                           "Actual Loops": 3,                                                                                                         +
                                           "Index Cond": "(keyword_id = k.id)",                                                                                       +
                                           "Rows Removed by Index Recheck": 0,                                                                                        +
                                           "Shared Hit Blocks": 7186,                                                                                                 +
                                           "Shared Read Blocks": 16905,                                                                                               +
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
                                       "Index Name": "movie_id_movie_link",                                                                                           +
                                       "Relation Name": "movie_link",                                                                                                 +
                                       "Alias": "ml",                                                                                                                 +
                                       "Startup Cost": 0.01,                                                                                                          +
                                       "Total Cost": 0.01,                                                                                                            +
                                       "Plan Rows": 5,                                                                                                                +
                                       "Plan Width": 8,                                                                                                               +
                                       "Actual Startup Time": 0.007,                                                                                                  +
                                       "Actual Total Time": 0.007,                                                                                                    +
                                       "Actual Rows": 0,                                                                                                              +
                                       "Actual Loops": 47403,                                                                                                         +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                                                      +
                                       "Rows Removed by Index Recheck": 0,                                                                                            +
                                       "Shared Hit Blocks": 94902,                                                                                                    +
                                       "Shared Read Blocks": 112,                                                                                                     +
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
                                   "Index Name": "movie_id_movie_companies",                                                                                          +
                                   "Relation Name": "movie_companies",                                                                                                +
                                   "Alias": "mc",                                                                                                                     +
                                   "Startup Cost": 0.01,                                                                                                              +
                                   "Total Cost": 0.03,                                                                                                                +
                                   "Plan Rows": 1,                                                                                                                    +
                                   "Plan Width": 36,                                                                                                                  +
                                   "Actual Startup Time": 0.292,                                                                                                      +
                                   "Actual Total Time": 0.327,                                                                                                        +
                                   "Actual Rows": 11,                                                                                                                 +
                                   "Actual Loops": 1460,                                                                                                              +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                          +
                                   "Rows Removed by Index Recheck": 0,                                                                                                +
                                   "Filter": "(note IS NOT NULL)",                                                                                                    +
                                   "Rows Removed by Filter": 2,                                                                                                       +
                                   "Shared Hit Blocks": 6676,                                                                                                         +
                                   "Shared Read Blocks": 221,                                                                                                         +
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
                               "Plan Rows": 3,                                                                                                                        +
                               "Plan Width": 4,                                                                                                                       +
                               "Actual Startup Time": 0.000,                                                                                                          +
                               "Actual Total Time": 0.000,                                                                                                            +
                               "Actual Rows": 1,                                                                                                                      +
                               "Actual Loops": 15510,                                                                                                                 +
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
                                   "Relation Name": "company_type",                                                                                                   +
                                   "Alias": "ct",                                                                                                                     +
                                   "Startup Cost": 0.00,                                                                                                              +
                                   "Total Cost": 0.03,                                                                                                                +
                                   "Plan Rows": 3,                                                                                                                    +
                                   "Plan Width": 4,                                                                                                                   +
                                   "Actual Startup Time": 0.015,                                                                                                      +
                                   "Actual Total Time": 0.020,                                                                                                        +
                                   "Actual Rows": 3,                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                 +
                                   "Filter": "((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))",                                               +
                                   "Rows Removed by Filter": 1,                                                                                                       +
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
                           "Index Name": "company_name_pkey",                                                                                                         +
                           "Relation Name": "company_name",                                                                                                           +
                           "Alias": "cn",                                                                                                                             +
                           "Startup Cost": 0.01,                                                                                                                      +
                           "Total Cost": 0.02,                                                                                                                        +
                           "Plan Rows": 1,                                                                                                                            +
                           "Plan Width": 23,                                                                                                                          +
                           "Actual Startup Time": 0.034,                                                                                                              +
                           "Actual Total Time": 0.034,                                                                                                                +
                           "Actual Rows": 0,                                                                                                                          +
                           "Actual Loops": 14916,                                                                                                                     +
                           "Index Cond": "(id = mc.company_id)",                                                                                                      +
                           "Rows Removed by Index Recheck": 0,                                                                                                        +
                           "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))",+
                           "Rows Removed by Filter": 1,                                                                                                               +
                           "Shared Hit Blocks": 59486,                                                                                                                +
                           "Shared Read Blocks": 212,                                                                                                                 +
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
                     }                                                                                                                                                +
                   ]                                                                                                                                                  +
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
               "Actual Startup Time": 0.024,                                                                                                                          +
               "Actual Total Time": 0.024,                                                                                                                            +
               "Actual Rows": 1,                                                                                                                                      +
               "Actual Loops": 6946,                                                                                                                                  +
               "Index Cond": "(id = mk.movie_id)",                                                                                                                    +
               "Rows Removed by Index Recheck": 0,                                                                                                                    +
               "Filter": "(production_year > 1950)",                                                                                                                  +
               "Rows Removed by Filter": 0,                                                                                                                           +
               "Shared Hit Blocks": 27776,                                                                                                                            +
               "Shared Read Blocks": 8,                                                                                                                               +
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
         }                                                                                                                                                            +
       ]                                                                                                                                                              +
     },                                                                                                                                                               +
     "Planning Time": 3640.109,                                                                                                                                       +
     "Triggers": [                                                                                                                                                    +
     ],                                                                                                                                                               +
     "Execution Time": 4641.288                                                                                                                                       +
   }                                                                                                                                                                  +
 ]
(1 row)

