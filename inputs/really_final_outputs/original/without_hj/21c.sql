                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 619.08,                                                                                                       +
       "Total Cost": 619.08,                                                                                                         +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 96,                                                                                                             +
       "Actual Startup Time": 3875.573,                                                                                              +
       "Actual Total Time": 3875.574,                                                                                                +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 56487,                                                                                                   +
       "Shared Read Blocks": 6051,                                                                                                   +
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
           "Total Cost": 619.08,                                                                                                     +
           "Plan Rows": 1,                                                                                                           +
           "Plan Width": 48,                                                                                                         +
           "Actual Startup Time": 725.549,                                                                                           +
           "Actual Total Time": 3864.079,                                                                                            +
           "Actual Rows": 1874,                                                                                                      +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": true,                                                                                                     +
           "Join Filter": "(ml.link_type_id = lt.id)",                                                                               +
           "Rows Removed by Join Filter": 1429,                                                                                      +
           "Shared Hit Blocks": 56487,                                                                                               +
           "Shared Read Blocks": 6051,                                                                                               +
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
               "Total Cost": 619.04,                                                                                                 +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 40,                                                                                                     +
               "Actual Startup Time": 725.502,                                                                                       +
               "Actual Total Time": 3861.471,                                                                                        +
               "Actual Rows": 1894,                                                                                                  +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": true,                                                                                                 +
               "Shared Hit Blocks": 56486,                                                                                           +
               "Shared Read Blocks": 6051,                                                                                           +
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
                   "Total Cost": 619.00,                                                                                             +
                   "Plan Rows": 2,                                                                                                   +
                   "Plan Width": 25,                                                                                                 +
                   "Actual Startup Time": 198.691,                                                                                   +
                   "Actual Total Time": 3235.437,                                                                                    +
                   "Actual Rows": 4501,                                                                                              +
                   "Actual Loops": 1,                                                                                                +
                   "Inner Unique": false,                                                                                            +
                   "Join Filter": "(ml.movie_id = mi.movie_id)",                                                                     +
                   "Rows Removed by Join Filter": 0,                                                                                 +
                   "Shared Hit Blocks": 38549,                                                                                       +
                   "Shared Read Blocks": 5984,                                                                                       +
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
                       "Total Cost": 618.69,                                                                                         +
                       "Plan Rows": 2,                                                                                               +
                       "Plan Width": 41,                                                                                             +
                       "Actual Startup Time": 73.958,                                                                                +
                       "Actual Total Time": 2203.760,                                                                                +
                       "Actual Rows": 1052,                                                                                          +
                       "Actual Loops": 1,                                                                                            +
                       "Inner Unique": true,                                                                                         +
                       "Join Filter": "(mc.company_type_id = ct.id)",                                                                +
                       "Rows Removed by Join Filter": 121,                                                                           +
                       "Shared Hit Blocks": 23205,                                                                                   +
                       "Shared Read Blocks": 5760,                                                                                   +
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
                           "Startup Cost": 0.06,                                                                                     +
                           "Total Cost": 618.65,                                                                                     +
                           "Plan Rows": 5,                                                                                           +
                           "Plan Width": 45,                                                                                         +
                           "Actual Startup Time": 73.925,                                                                            +
                           "Actual Total Time": 2202.326,                                                                            +
                           "Actual Rows": 1173,                                                                                      +
                           "Actual Loops": 1,                                                                                        +
                           "Inner Unique": false,                                                                                    +
                           "Join Filter": "(ml.movie_id = mc.movie_id)",                                                             +
                           "Rows Removed by Join Filter": 0,                                                                         +
                           "Shared Hit Blocks": 23204,                                                                               +
                           "Shared Read Blocks": 5760,                                                                               +
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
                               "Startup Cost": 0.05,                                                                                 +
                               "Total Cost": 618.59,                                                                                 +
                               "Plan Rows": 2,                                                                                       +
                               "Plan Width": 33,                                                                                     +
                               "Actual Startup Time": 63.404,                                                                        +
                               "Actual Total Time": 2005.250,                                                                        +
                               "Actual Rows": 251,                                                                                   +
                               "Actual Loops": 1,                                                                                    +
                               "Inner Unique": true,                                                                                 +
                               "Join Filter": "(ml.movie_id = t.id)",                                                                +
                               "Rows Removed by Join Filter": 0,                                                                     +
                               "Shared Hit Blocks": 22035,                                                                           +
                               "Shared Read Blocks": 5699,                                                                           +
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
                                   "Startup Cost": 0.04,                                                                             +
                                   "Total Cost": 618.50,                                                                             +
                                   "Plan Rows": 2,                                                                                   +
                                   "Plan Width": 12,                                                                                 +
                                   "Actual Startup Time": 46.786,                                                                    +
                                   "Actual Total Time": 1446.944,                                                                    +
                                   "Actual Rows": 251,                                                                               +
                                   "Actual Loops": 1,                                                                                +
                                   "Inner Unique": false,                                                                            +
                                   "Shared Hit Blocks": 21086,                                                                       +
                                   "Shared Read Blocks": 5644,                                                                       +
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
                                       "Startup Cost": 0.03,                                                                         +
                                       "Total Cost": 618.15,                                                                         +
                                       "Plan Rows": 34,                                                                              +
                                       "Plan Width": 4,                                                                              +
                                       "Actual Startup Time": 46.753,                                                                +
                                       "Actual Total Time": 1305.436,                                                                +
                                       "Actual Rows": 10544,                                                                         +
                                       "Actual Loops": 1,                                                                            +
                                       "Inner Unique": false,                                                                        +
                                       "Shared Hit Blocks": 2,                                                                       +
                                       "Shared Read Blocks": 5604,                                                                   +
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
                                           "Index Name": "keyword_idx_keyword",                                                      +
                                           "Relation Name": "keyword",                                                               +
                                           "Alias": "k",                                                                             +
                                           "Startup Cost": 0.01,                                                                     +
                                           "Total Cost": 6.13,                                                                       +
                                           "Plan Rows": 1,                                                                           +
                                           "Plan Width": 4,                                                                          +
                                           "Actual Startup Time": 23.275,                                                            +
                                           "Actual Total Time": 23.278,                                                              +
                                           "Actual Rows": 1,                                                                         +
                                           "Actual Loops": 1,                                                                        +
                                           "Index Cond": "(keyword = 'sequel'::text)",                                               +
                                           "Rows Removed by Index Recheck": 0,                                                       +
                                           "Shared Hit Blocks": 0,                                                                   +
                                           "Shared Read Blocks": 4,                                                                  +
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
                                           "Node Type": "Index Scan",                                                                +
                                           "Parent Relationship": "Inner",                                                           +
                                           "Parallel Aware": false,                                                                  +
                                           "Scan Direction": "Forward",                                                              +
                                           "Index Name": "keyword_id_movie_keyword",                                                 +
                                           "Relation Name": "movie_keyword",                                                         +
                                           "Alias": "mk",                                                                            +
                                           "Startup Cost": 0.01,                                                                     +
                                           "Total Cost": 122.40,                                                                     +
                                           "Plan Rows": 39,                                                                          +
                                           "Plan Width": 8,                                                                          +
                                           "Actual Startup Time": 23.469,                                                            +
                                           "Actual Total Time": 1276.230,                                                            +
                                           "Actual Rows": 10544,                                                                     +
                                           "Actual Loops": 1,                                                                        +
                                           "Index Cond": "(keyword_id = k.id)",                                                      +
                                           "Rows Removed by Index Recheck": 0,                                                       +
                                           "Shared Hit Blocks": 2,                                                                   +
                                           "Shared Read Blocks": 5600,                                                               +
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
                                     },                                                                                              +
                                     {                                                                                               +
                                       "Node Type": "Index Scan",                                                                    +
                                       "Parent Relationship": "Inner",                                                               +
                                       "Parallel Aware": false,                                                                      +
                                       "Scan Direction": "Forward",                                                                  +
                                       "Index Name": "movie_id_movie_link",                                                          +
                                       "Relation Name": "movie_link",                                                                +
                                       "Alias": "ml",                                                                                +
                                       "Startup Cost": 0.01,                                                                         +
                                       "Total Cost": 0.01,                                                                           +
                                       "Plan Rows": 5,                                                                               +
                                       "Plan Width": 8,                                                                              +
                                       "Actual Startup Time": 0.012,                                                                 +
                                       "Actual Total Time": 0.012,                                                                   +
                                       "Actual Rows": 0,                                                                             +
                                       "Actual Loops": 10544,                                                                        +
                                       "Index Cond": "(movie_id = mk.movie_id)",                                                     +
                                       "Rows Removed by Index Recheck": 0,                                                           +
                                       "Shared Hit Blocks": 21084,                                                                   +
                                       "Shared Read Blocks": 40,                                                                     +
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
                                   "Index Name": "title_idx_id",                                                                     +
                                   "Relation Name": "title",                                                                         +
                                   "Alias": "t",                                                                                     +
                                   "Startup Cost": 0.01,                                                                             +
                                   "Total Cost": 0.04,                                                                               +
                                   "Plan Rows": 1,                                                                                   +
                                   "Plan Width": 21,                                                                                 +
                                   "Actual Startup Time": 2.222,                                                                     +
                                   "Actual Total Time": 2.222,                                                                       +
                                   "Actual Rows": 1,                                                                                 +
                                   "Actual Loops": 251,                                                                              +
                                   "Index Cond": "(id = mk.movie_id)",                                                               +
                                   "Rows Removed by Index Recheck": 0,                                                               +
                                   "Filter": "((production_year >= 1950) AND (production_year <= 2010))",                            +
                                   "Rows Removed by Filter": 0,                                                                      +
                                   "Shared Hit Blocks": 949,                                                                         +
                                   "Shared Read Blocks": 55,                                                                         +
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
                               "Index Name": "movie_id_movie_companies",                                                             +
                               "Relation Name": "movie_companies",                                                                   +
                               "Alias": "mc",                                                                                        +
                               "Startup Cost": 0.01,                                                                                 +
                               "Total Cost": 0.03,                                                                                   +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 12,                                                                                     +
                               "Actual Startup Time": 0.762,                                                                         +
                               "Actual Total Time": 0.780,                                                                           +
                               "Actual Rows": 5,                                                                                     +
                               "Actual Loops": 251,                                                                                  +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                             +
                               "Rows Removed by Index Recheck": 0,                                                                   +
                               "Filter": "(note IS NULL)",                                                                           +
                               "Rows Removed by Filter": 2,                                                                          +
                               "Shared Hit Blocks": 1169,                                                                            +
                               "Shared Read Blocks": 61,                                                                             +
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
                           "Node Type": "Materialize",                                                                               +
                           "Parent Relationship": "Inner",                                                                           +
                           "Parallel Aware": false,                                                                                  +
                           "Startup Cost": 0.00,                                                                                     +
                           "Total Cost": 0.03,                                                                                       +
                           "Plan Rows": 1,                                                                                           +
                           "Plan Width": 4,                                                                                          +
                           "Actual Startup Time": 0.000,                                                                             +
                           "Actual Total Time": 0.000,                                                                               +
                           "Actual Rows": 1,                                                                                         +
                           "Actual Loops": 1173,                                                                                     +
                           "Shared Hit Blocks": 1,                                                                                   +
                           "Shared Read Blocks": 0,                                                                                  +
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
                               "Node Type": "Seq Scan",                                                                              +
                               "Parent Relationship": "Outer",                                                                       +
                               "Parallel Aware": false,                                                                              +
                               "Relation Name": "company_type",                                                                      +
                               "Alias": "ct",                                                                                        +
                               "Startup Cost": 0.00,                                                                                 +
                               "Total Cost": 0.03,                                                                                   +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 4,                                                                                      +
                               "Actual Startup Time": 0.017,                                                                         +
                               "Actual Total Time": 0.021,                                                                           +
                               "Actual Rows": 1,                                                                                     +
                               "Actual Loops": 1,                                                                                    +
                               "Filter": "((kind)::text = 'production companies'::text)",                                            +
                               "Rows Removed by Filter": 3,                                                                          +
                               "Shared Hit Blocks": 1,                                                                               +
                               "Shared Read Blocks": 0,                                                                              +
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
                         }                                                                                                           +
                       ]                                                                                                             +
                     },                                                                                                              +
                     {                                                                                                               +
                       "Node Type": "Index Scan",                                                                                    +
                       "Parent Relationship": "Inner",                                                                               +
                       "Parallel Aware": false,                                                                                      +
                       "Scan Direction": "Forward",                                                                                  +
                       "Index Name": "movie_id_movie_info",                                                                          +
                       "Relation Name": "movie_info",                                                                                +
                       "Alias": "mi",                                                                                                +
                       "Startup Cost": 0.01,                                                                                         +
                       "Total Cost": 0.16,                                                                                           +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 4,                                                                                              +
                       "Actual Startup Time": 0.947,                                                                                 +
                       "Actual Total Time": 0.978,                                                                                   +
                       "Actual Rows": 4,                                                                                             +
                       "Actual Loops": 1052,                                                                                         +
                       "Index Cond": "(movie_id = mk.movie_id)",                                                                     +
                       "Rows Removed by Index Recheck": 0,                                                                           +
                       "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))", +
                       "Rows Removed by Filter": 20,                                                                                 +
                       "Shared Hit Blocks": 15344,                                                                                   +
                       "Shared Read Blocks": 224,                                                                                    +
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
                   "Actual Startup Time": 0.138,                                                                                     +
                   "Actual Total Time": 0.138,                                                                                       +
                   "Actual Rows": 0,                                                                                                 +
                   "Actual Loops": 4501,                                                                                             +
                   "Index Cond": "(id = mc.company_id)",                                                                             +
                   "Rows Removed by Index Recheck": 0,                                                                               +
                   "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                   "Rows Removed by Filter": 1,                                                                                      +
                   "Shared Hit Blocks": 17937,                                                                                       +
                   "Shared Read Blocks": 67,                                                                                         +
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
               "Plan Width": 16,                                                                                                     +
               "Actual Startup Time": 0.000,                                                                                         +
               "Actual Total Time": 0.000,                                                                                           +
               "Actual Rows": 2,                                                                                                     +
               "Actual Loops": 1894,                                                                                                 +
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
                   "Relation Name": "link_type",                                                                                     +
                   "Alias": "lt",                                                                                                    +
                   "Startup Cost": 0.00,                                                                                             +
                   "Total Cost": 0.03,                                                                                               +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 16,                                                                                                 +
                   "Actual Startup Time": 0.019,                                                                                     +
                   "Actual Total Time": 0.037,                                                                                       +
                   "Actual Rows": 2,                                                                                                 +
                   "Actual Loops": 1,                                                                                                +
                   "Filter": "((link)::text ~~ '%follow%'::text)",                                                                   +
                   "Rows Removed by Filter": 16,                                                                                     +
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
         }                                                                                                                           +
       ]                                                                                                                             +
     },                                                                                                                              +
     "Planning Time": 6095.940,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 3916.737                                                                                                      +
   }                                                                                                                                 +
 ]
(1 row)
