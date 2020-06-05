                                                              QUERY PLAN                                                              
--------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                   +
   {                                                                                                                                 +
     "Plan": {                                                                                                                       +
       "Node Type": "Aggregate",                                                                                                     +
       "Strategy": "Plain",                                                                                                          +
       "Partial Mode": "Simple",                                                                                                     +
       "Parallel Aware": false,                                                                                                      +
       "Startup Cost": 618.83,                                                                                                       +
       "Total Cost": 618.83,                                                                                                         +
       "Plan Rows": 1,                                                                                                               +
       "Plan Width": 96,                                                                                                             +
       "Actual Startup Time": 2508.889,                                                                                              +
       "Actual Total Time": 2508.890,                                                                                                +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 29334,                                                                                                   +
       "Shared Read Blocks": 5804,                                                                                                   +
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
           "Startup Cost": 0.08,                                                                                                     +
           "Total Cost": 618.83,                                                                                                     +
           "Plan Rows": 1,                                                                                                           +
           "Plan Width": 48,                                                                                                         +
           "Actual Startup Time": 400.581,                                                                                           +
           "Actual Total Time": 2499.521,                                                                                            +
           "Actual Rows": 310,                                                                                                       +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": true,                                                                                                     +
           "Join Filter": "(ml.link_type_id = lt.id)",                                                                               +
           "Rows Removed by Join Filter": 294,                                                                                       +
           "Shared Hit Blocks": 29334,                                                                                               +
           "Shared Read Blocks": 5804,                                                                                               +
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
               "Startup Cost": 0.08,                                                                                                 +
               "Total Cost": 618.80,                                                                                                 +
               "Plan Rows": 1,                                                                                                       +
               "Plan Width": 40,                                                                                                     +
               "Actual Startup Time": 400.541,                                                                                       +
               "Actual Total Time": 2498.679,                                                                                        +
               "Actual Rows": 330,                                                                                                   +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": true,                                                                                                 +
               "Shared Hit Blocks": 29333,                                                                                           +
               "Shared Read Blocks": 5804,                                                                                           +
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
                   "Startup Cost": 0.06,                                                                                             +
                   "Total Cost": 618.69,                                                                                             +
                   "Plan Rows": 1,                                                                                                   +
                   "Plan Width": 25,                                                                                                 +
                   "Actual Startup Time": 76.390,                                                                                    +
                   "Actual Total Time": 2097.263,                                                                                    +
                   "Actual Rows": 742,                                                                                               +
                   "Actual Loops": 1,                                                                                                +
                   "Inner Unique": true,                                                                                             +
                   "Join Filter": "(ml.movie_id = t.id)",                                                                            +
                   "Rows Removed by Join Filter": 0,                                                                                 +
                   "Shared Hit Blocks": 26415,                                                                                       +
                   "Shared Read Blocks": 5754,                                                                                       +
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
                       "Startup Cost": 0.05,                                                                                         +
                       "Total Cost": 618.60,                                                                                         +
                       "Plan Rows": 2,                                                                                               +
                       "Plan Width": 20,                                                                                             +
                       "Actual Startup Time": 65.637,                                                                                +
                       "Actual Total Time": 1759.600,                                                                                +
                       "Actual Rows": 1052,                                                                                          +
                       "Actual Loops": 1,                                                                                            +
                       "Inner Unique": true,                                                                                         +
                       "Join Filter": "(mc.company_type_id = ct.id)",                                                                +
                       "Rows Removed by Join Filter": 121,                                                                           +
                       "Shared Hit Blocks": 22256,                                                                                   +
                       "Shared Read Blocks": 5705,                                                                                   +
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
                           "Total Cost": 618.57,                                                                                     +
                           "Plan Rows": 6,                                                                                           +
                           "Plan Width": 24,                                                                                         +
                           "Actual Startup Time": 65.595,                                                                            +
                           "Actual Total Time": 1757.838,                                                                            +
                           "Actual Rows": 1173,                                                                                      +
                           "Actual Loops": 1,                                                                                        +
                           "Inner Unique": false,                                                                                    +
                           "Join Filter": "(ml.movie_id = mc.movie_id)",                                                             +
                           "Rows Removed by Join Filter": 0,                                                                         +
                           "Shared Hit Blocks": 22255,                                                                               +
                           "Shared Read Blocks": 5705,                                                                               +
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
                               "Actual Startup Time": 55.117,                                                                        +
                               "Actual Total Time": 1506.176,                                                                        +
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
                                   "Actual Startup Time": 55.083,                                                                    +
                                   "Actual Total Time": 1402.998,                                                                    +
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
                                       "Actual Startup Time": 31.619,                                                                +
                                       "Actual Total Time": 31.621,                                                                  +
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
                                       "Actual Startup Time": 23.417,                                                                +
                                       "Actual Total Time": 1365.278,                                                                +
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
                                   "Actual Startup Time": 0.009,                                                                     +
                                   "Actual Total Time": 0.009,                                                                       +
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
                               "Index Name": "movie_id_movie_companies",                                                             +
                               "Relation Name": "movie_companies",                                                                   +
                               "Alias": "mc",                                                                                        +
                               "Startup Cost": 0.01,                                                                                 +
                               "Total Cost": 0.03,                                                                                   +
                               "Plan Rows": 1,                                                                                       +
                               "Plan Width": 12,                                                                                     +
                               "Actual Startup Time": 0.878,                                                                         +
                               "Actual Total Time": 0.997,                                                                           +
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
                               "Actual Startup Time": 0.015,                                                                         +
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
                       "Index Name": "title_idx_id",                                                                                 +
                       "Relation Name": "title",                                                                                     +
                       "Alias": "t",                                                                                                 +
                       "Startup Cost": 0.01,                                                                                         +
                       "Total Cost": 0.04,                                                                                           +
                       "Plan Rows": 1,                                                                                               +
                       "Plan Width": 21,                                                                                             +
                       "Actual Startup Time": 0.319,                                                                                 +
                       "Actual Total Time": 0.319,                                                                                   +
                       "Actual Rows": 1,                                                                                             +
                       "Actual Loops": 1052,                                                                                         +
                       "Index Cond": "(id = mk.movie_id)",                                                                           +
                       "Rows Removed by Index Recheck": 0,                                                                           +
                       "Filter": "((production_year >= 1950) AND (production_year <= 2000))",                                        +
                       "Rows Removed by Filter": 0,                                                                                  +
                       "Shared Hit Blocks": 4159,                                                                                    +
                       "Shared Read Blocks": 49,                                                                                     +
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
                   "Actual Startup Time": 0.539,                                                                                     +
                   "Actual Total Time": 0.539,                                                                                       +
                   "Actual Rows": 0,                                                                                                 +
                   "Actual Loops": 742,                                                                                              +
                   "Index Cond": "(id = mc.company_id)",                                                                             +
                   "Rows Removed by Index Recheck": 0,                                                                               +
                   "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                   "Rows Removed by Filter": 1,                                                                                      +
                   "Shared Hit Blocks": 2918,                                                                                        +
                   "Shared Read Blocks": 50,                                                                                         +
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
               "Actual Total Time": 0.001,                                                                                           +
               "Actual Rows": 2,                                                                                                     +
               "Actual Loops": 330,                                                                                                  +
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
                   "Actual Total Time": 0.038,                                                                                       +
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
     "Planning Time": 3408.479,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 2528.826                                                                                                      +
   }                                                                                                                                 +
 ]
(1 row)

