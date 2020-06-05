                                                                QUERY PLAN                                                                
------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                       +
   {                                                                                                                                     +
     "Plan": {                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                         +
       "Strategy": "Plain",                                                                                                              +
       "Partial Mode": "Simple",                                                                                                         +
       "Parallel Aware": false,                                                                                                          +
       "Startup Cost": 619.24,                                                                                                           +
       "Total Cost": 619.24,                                                                                                             +
       "Plan Rows": 1,                                                                                                                   +
       "Plan Width": 96,                                                                                                                 +
       "Actual Startup Time": 3084.273,                                                                                                  +
       "Actual Total Time": 3084.274,                                                                                                    +
       "Actual Rows": 1,                                                                                                                 +
       "Actual Loops": 1,                                                                                                                +
       "Shared Hit Blocks": 57821,                                                                                                       +
       "Shared Read Blocks": 5939,                                                                                                       +
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
           "Startup Cost": 0.09,                                                                                                         +
           "Total Cost": 619.24,                                                                                                         +
           "Plan Rows": 1,                                                                                                               +
           "Plan Width": 48,                                                                                                             +
           "Actual Startup Time": 500.947,                                                                                               +
           "Actual Total Time": 3072.881,                                                                                                +
           "Actual Rows": 1410,                                                                                                          +
           "Actual Loops": 1,                                                                                                            +
           "Inner Unique": true,                                                                                                         +
           "Join Filter": "(ml.link_type_id = lt.id)",                                                                                   +
           "Rows Removed by Join Filter": 1156,                                                                                          +
           "Shared Hit Blocks": 57821,                                                                                                   +
           "Shared Read Blocks": 5939,                                                                                                   +
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
               "Startup Cost": 0.09,                                                                                                     +
               "Total Cost": 619.20,                                                                                                     +
               "Plan Rows": 1,                                                                                                           +
               "Plan Width": 40,                                                                                                         +
               "Actual Startup Time": 500.913,                                                                                           +
               "Actual Total Time": 3070.504,                                                                                            +
               "Actual Rows": 1410,                                                                                                      +
               "Actual Loops": 1,                                                                                                        +
               "Inner Unique": true,                                                                                                     +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                                            +
               "Rows Removed by Join Filter": 95,                                                                                        +
               "Shared Hit Blocks": 57820,                                                                                               +
               "Shared Read Blocks": 5939,                                                                                               +
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
                   "Startup Cost": 0.09,                                                                                                 +
                   "Total Cost": 619.17,                                                                                                 +
                   "Plan Rows": 1,                                                                                                       +
                   "Plan Width": 44,                                                                                                     +
                   "Actual Startup Time": 500.870,                                                                                       +
                   "Actual Total Time": 3068.558,                                                                                        +
                   "Actual Rows": 1505,                                                                                                  +
                   "Actual Loops": 1,                                                                                                    +
                   "Inner Unique": true,                                                                                                 +
                   "Shared Hit Blocks": 57819,                                                                                           +
                   "Shared Read Blocks": 5939,                                                                                           +
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
                       "Startup Cost": 0.08,                                                                                             +
                       "Total Cost": 619.06,                                                                                             +
                       "Plan Rows": 1,                                                                                                   +
                       "Plan Width": 29,                                                                                                 +
                       "Actual Startup Time": 455.211,                                                                                   +
                       "Actual Total Time": 2823.696,                                                                                    +
                       "Actual Rows": 3124,                                                                                              +
                       "Actual Loops": 1,                                                                                                +
                       "Inner Unique": true,                                                                                             +
                       "Join Filter": "(ml.movie_id = t.id)",                                                                            +
                       "Rows Removed by Join Filter": 0,                                                                                 +
                       "Shared Hit Blocks": 45347,                                                                                       +
                       "Shared Read Blocks": 5915,                                                                                       +
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
                           "Startup Cost": 0.06,                                                                                         +
                           "Total Cost": 618.97,                                                                                         +
                           "Plan Rows": 2,                                                                                               +
                           "Plan Width": 28,                                                                                             +
                           "Actual Startup Time": 409.231,                                                                               +
                           "Actual Total Time": 2649.880,                                                                                +
                           "Actual Rows": 4365,                                                                                          +
                           "Actual Loops": 1,                                                                                            +
                           "Inner Unique": false,                                                                                        +
                           "Join Filter": "(ml.movie_id = mc.movie_id)",                                                                 +
                           "Rows Removed by Join Filter": 0,                                                                             +
                           "Shared Hit Blocks": 27900,                                                                                   +
                           "Shared Read Blocks": 5902,                                                                                   +
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
                               "Startup Cost": 0.05,                                                                                     +
                               "Total Cost": 618.81,                                                                                     +
                               "Plan Rows": 1,                                                                                           +
                               "Plan Width": 16,                                                                                         +
                               "Actual Startup Time": 373.515,                                                                           +
                               "Actual Total Time": 2567.883,                                                                            +
                               "Actual Rows": 684,                                                                                       +
                               "Actual Loops": 1,                                                                                        +
                               "Inner Unique": false,                                                                                    +
                               "Join Filter": "(ml.movie_id = mi.movie_id)",                                                             +
                               "Rows Removed by Join Filter": 0,                                                                         +
                               "Shared Hit Blocks": 24491,                                                                               +
                               "Shared Read Blocks": 5895,                                                                               +
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
                                   "Startup Cost": 0.04,                                                                                 +
                                   "Total Cost": 618.50,                                                                                 +
                                   "Plan Rows": 2,                                                                                       +
                                   "Plan Width": 12,                                                                                     +
                                   "Actual Startup Time": 55.492,                                                                        +
                                   "Actual Total Time": 1448.471,                                                                        +
                                   "Actual Rows": 251,                                                                                   +
                                   "Actual Loops": 1,                                                                                    +
                                   "Inner Unique": false,                                                                                +
                                   "Shared Hit Blocks": 21086,                                                                           +
                                   "Shared Read Blocks": 5644,                                                                           +
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
                                       "Startup Cost": 0.03,                                                                             +
                                       "Total Cost": 618.15,                                                                             +
                                       "Plan Rows": 34,                                                                                  +
                                       "Plan Width": 4,                                                                                  +
                                       "Actual Startup Time": 55.458,                                                                    +
                                       "Actual Total Time": 1299.873,                                                                    +
                                       "Actual Rows": 10544,                                                                             +
                                       "Actual Loops": 1,                                                                                +
                                       "Inner Unique": false,                                                                            +
                                       "Shared Hit Blocks": 2,                                                                           +
                                       "Shared Read Blocks": 5604,                                                                       +
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
                                           "Index Name": "keyword_idx_keyword",                                                          +
                                           "Relation Name": "keyword",                                                                   +
                                           "Alias": "k",                                                                                 +
                                           "Startup Cost": 0.01,                                                                         +
                                           "Total Cost": 6.13,                                                                           +
                                           "Plan Rows": 1,                                                                               +
                                           "Plan Width": 4,                                                                              +
                                           "Actual Startup Time": 31.974,                                                                +
                                           "Actual Total Time": 31.978,                                                                  +
                                           "Actual Rows": 1,                                                                             +
                                           "Actual Loops": 1,                                                                            +
                                           "Index Cond": "(keyword = 'sequel'::text)",                                                   +
                                           "Rows Removed by Index Recheck": 0,                                                           +
                                           "Shared Hit Blocks": 0,                                                                       +
                                           "Shared Read Blocks": 4,                                                                      +
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
                                           "Node Type": "Index Scan",                                                                    +
                                           "Parent Relationship": "Inner",                                                               +
                                           "Parallel Aware": false,                                                                      +
                                           "Scan Direction": "Forward",                                                                  +
                                           "Index Name": "keyword_id_movie_keyword",                                                     +
                                           "Relation Name": "movie_keyword",                                                             +
                                           "Alias": "mk",                                                                                +
                                           "Startup Cost": 0.01,                                                                         +
                                           "Total Cost": 122.40,                                                                         +
                                           "Plan Rows": 39,                                                                              +
                                           "Plan Width": 8,                                                                              +
                                           "Actual Startup Time": 23.473,                                                                +
                                           "Actual Total Time": 1261.947,                                                                +
                                           "Actual Rows": 10544,                                                                         +
                                           "Actual Loops": 1,                                                                            +
                                           "Index Cond": "(keyword_id = k.id)",                                                          +
                                           "Rows Removed by Index Recheck": 0,                                                           +
                                           "Shared Hit Blocks": 2,                                                                       +
                                           "Shared Read Blocks": 5600,                                                                   +
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
                                       "Node Type": "Index Scan",                                                                        +
                                       "Parent Relationship": "Inner",                                                                   +
                                       "Parallel Aware": false,                                                                          +
                                       "Scan Direction": "Forward",                                                                      +
                                       "Index Name": "movie_id_movie_link",                                                              +
                                       "Relation Name": "movie_link",                                                                    +
                                       "Alias": "ml",                                                                                    +
                                       "Startup Cost": 0.01,                                                                             +
                                       "Total Cost": 0.01,                                                                               +
                                       "Plan Rows": 5,                                                                                   +
                                       "Plan Width": 8,                                                                                  +
                                       "Actual Startup Time": 0.013,                                                                     +
                                       "Actual Total Time": 0.013,                                                                       +
                                       "Actual Rows": 0,                                                                                 +
                                       "Actual Loops": 10544,                                                                            +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                         +
                                       "Rows Removed by Index Recheck": 0,                                                               +
                                       "Shared Hit Blocks": 21084,                                                                       +
                                       "Shared Read Blocks": 40,                                                                         +
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
                                 },                                                                                                      +
                                 {                                                                                                       +
                                   "Node Type": "Index Scan",                                                                            +
                                   "Parent Relationship": "Inner",                                                                       +
                                   "Parallel Aware": false,                                                                              +
                                   "Scan Direction": "Forward",                                                                          +
                                   "Index Name": "movie_id_movie_info",                                                                  +
                                   "Relation Name": "movie_info",                                                                        +
                                   "Alias": "mi",                                                                                        +
                                   "Startup Cost": 0.01,                                                                                 +
                                   "Total Cost": 0.16,                                                                                   +
                                   "Plan Rows": 1,                                                                                       +
                                   "Plan Width": 4,                                                                                      +
                                   "Actual Startup Time": 4.449,                                                                         +
                                   "Actual Total Time": 4.457,                                                                           +
                                   "Actual Rows": 3,                                                                                     +
                                   "Actual Loops": 251,                                                                                  +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                             +
                                   "Rows Removed by Index Recheck": 0,                                                                   +
                                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))", +
                                   "Rows Removed by Filter": 22,                                                                         +
                                   "Shared Hit Blocks": 3405,                                                                            +
                                   "Shared Read Blocks": 251,                                                                            +
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
                               "Index Name": "movie_id_movie_companies",                                                                 +
                               "Relation Name": "movie_companies",                                                                       +
                               "Alias": "mc",                                                                                            +
                               "Startup Cost": 0.01,                                                                                     +
                               "Total Cost": 0.03,                                                                                       +
                               "Plan Rows": 1,                                                                                           +
                               "Plan Width": 12,                                                                                         +
                               "Actual Startup Time": 0.111,                                                                             +
                               "Actual Total Time": 0.115,                                                                               +
                               "Actual Rows": 6,                                                                                         +
                               "Actual Loops": 684,                                                                                      +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                               "Rows Removed by Index Recheck": 0,                                                                       +
                               "Filter": "(note IS NULL)",                                                                               +
                               "Rows Removed by Filter": 2,                                                                              +
                               "Shared Hit Blocks": 3409,                                                                                +
                               "Shared Read Blocks": 7,                                                                                  +
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
                           "Index Name": "title_idx_id",                                                                                 +
                           "Relation Name": "title",                                                                                     +
                           "Alias": "t",                                                                                                 +
                           "Startup Cost": 0.01,                                                                                         +
                           "Total Cost": 0.04,                                                                                           +
                           "Plan Rows": 1,                                                                                               +
                           "Plan Width": 21,                                                                                             +
                           "Actual Startup Time": 0.039,                                                                                 +
                           "Actual Total Time": 0.039,                                                                                   +
                           "Actual Rows": 1,                                                                                             +
                           "Actual Loops": 4365,                                                                                         +
                           "Index Cond": "(id = mk.movie_id)",                                                                           +
                           "Rows Removed by Index Recheck": 0,                                                                           +
                           "Filter": "((production_year >= 1950) AND (production_year <= 2000))",                                        +
                           "Rows Removed by Filter": 0,                                                                                  +
                           "Shared Hit Blocks": 17447,                                                                                   +
                           "Shared Read Blocks": 13,                                                                                     +
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
                       "Actual Startup Time": 0.077,                                                                                     +
                       "Actual Total Time": 0.077,                                                                                       +
                       "Actual Rows": 0,                                                                                                 +
                       "Actual Loops": 3124,                                                                                             +
                       "Index Cond": "(id = mc.company_id)",                                                                             +
                       "Rows Removed by Index Recheck": 0,                                                                               +
                       "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                       "Rows Removed by Filter": 1,                                                                                      +
                       "Shared Hit Blocks": 12472,                                                                                       +
                       "Shared Read Blocks": 24,                                                                                         +
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
                   "Node Type": "Materialize",                                                                                           +
                   "Parent Relationship": "Inner",                                                                                       +
                   "Parallel Aware": false,                                                                                              +
                   "Startup Cost": 0.00,                                                                                                 +
                   "Total Cost": 0.03,                                                                                                   +
                   "Plan Rows": 1,                                                                                                       +
                   "Plan Width": 4,                                                                                                      +
                   "Actual Startup Time": 0.000,                                                                                         +
                   "Actual Total Time": 0.000,                                                                                           +
                   "Actual Rows": 1,                                                                                                     +
                   "Actual Loops": 1505,                                                                                                 +
                   "Shared Hit Blocks": 1,                                                                                               +
                   "Shared Read Blocks": 0,                                                                                              +
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
                       "Node Type": "Seq Scan",                                                                                          +
                       "Parent Relationship": "Outer",                                                                                   +
                       "Parallel Aware": false,                                                                                          +
                       "Relation Name": "company_type",                                                                                  +
                       "Alias": "ct",                                                                                                    +
                       "Startup Cost": 0.00,                                                                                             +
                       "Total Cost": 0.03,                                                                                               +
                       "Plan Rows": 1,                                                                                                   +
                       "Plan Width": 4,                                                                                                  +
                       "Actual Startup Time": 0.019,                                                                                     +
                       "Actual Total Time": 0.026,                                                                                       +
                       "Actual Rows": 1,                                                                                                 +
                       "Actual Loops": 1,                                                                                                +
                       "Filter": "((kind)::text = 'production companies'::text)",                                                        +
                       "Rows Removed by Filter": 3,                                                                                      +
                       "Shared Hit Blocks": 1,                                                                                           +
                       "Shared Read Blocks": 0,                                                                                          +
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
                 }                                                                                                                       +
               ]                                                                                                                         +
             },                                                                                                                          +
             {                                                                                                                           +
               "Node Type": "Materialize",                                                                                               +
               "Parent Relationship": "Inner",                                                                                           +
               "Parallel Aware": false,                                                                                                  +
               "Startup Cost": 0.00,                                                                                                     +
               "Total Cost": 0.03,                                                                                                       +
               "Plan Rows": 1,                                                                                                           +
               "Plan Width": 16,                                                                                                         +
               "Actual Startup Time": 0.000,                                                                                             +
               "Actual Total Time": 0.000,                                                                                               +
               "Actual Rows": 2,                                                                                                         +
               "Actual Loops": 1410,                                                                                                     +
               "Shared Hit Blocks": 1,                                                                                                   +
               "Shared Read Blocks": 0,                                                                                                  +
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
                   "Node Type": "Seq Scan",                                                                                              +
                   "Parent Relationship": "Outer",                                                                                       +
                   "Parallel Aware": false,                                                                                              +
                   "Relation Name": "link_type",                                                                                         +
                   "Alias": "lt",                                                                                                        +
                   "Startup Cost": 0.00,                                                                                                 +
                   "Total Cost": 0.03,                                                                                                   +
                   "Plan Rows": 1,                                                                                                       +
                   "Plan Width": 16,                                                                                                     +
                   "Actual Startup Time": 0.015,                                                                                         +
                   "Actual Total Time": 0.018,                                                                                           +
                   "Actual Rows": 2,                                                                                                     +
                   "Actual Loops": 1,                                                                                                    +
                   "Filter": "((link)::text ~~ '%follow%'::text)",                                                                       +
                   "Rows Removed by Filter": 0,                                                                                          +
                   "Shared Hit Blocks": 1,                                                                                               +
                   "Shared Read Blocks": 0,                                                                                              +
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
         }                                                                                                                               +
       ]                                                                                                                                 +
     },                                                                                                                                  +
     "Planning Time": 5908.318,                                                                                                          +
     "Triggers": [                                                                                                                       +
     ],                                                                                                                                  +
     "Execution Time": 3112.700                                                                                                          +
   }                                                                                                                                     +
 ]
(1 row)
