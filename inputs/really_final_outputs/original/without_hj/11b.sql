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
       "Actual Startup Time": 2142.279,                                                                                              +
       "Actual Total Time": 2142.279,                                                                                                +
       "Actual Rows": 1,                                                                                                             +
       "Actual Loops": 1,                                                                                                            +
       "Shared Hit Blocks": 26639,                                                                                                   +
       "Shared Read Blocks": 5759,                                                                                                   +
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
           "Actual Startup Time": 653.623,                                                                                           +
           "Actual Total Time": 2142.169,                                                                                            +
           "Actual Rows": 14,                                                                                                        +
           "Actual Loops": 1,                                                                                                        +
           "Inner Unique": true,                                                                                                     +
           "Join Filter": "(ml.link_type_id = lt.id)",                                                                               +
           "Rows Removed by Join Filter": 24,                                                                                        +
           "Shared Hit Blocks": 26639,                                                                                               +
           "Shared Read Blocks": 5759,                                                                                               +
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
               "Actual Startup Time": 634.093,                                                                                       +
               "Actual Total Time": 2142.042,                                                                                        +
               "Actual Rows": 38,                                                                                                    +
               "Actual Loops": 1,                                                                                                    +
               "Inner Unique": true,                                                                                                 +
               "Shared Hit Blocks": 26638,                                                                                           +
               "Shared Read Blocks": 5759,                                                                                           +
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
                   "Actual Startup Time": 589.799,                                                                                   +
                   "Actual Total Time": 2078.869,                                                                                    +
                   "Actual Rows": 57,                                                                                                +
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
                       "Actual Startup Time": 65.592,                                                                                +
                       "Actual Total Time": 1725.949,                                                                                +
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
                           "Actual Startup Time": 65.559,                                                                            +
                           "Actual Total Time": 1724.639,                                                                            +
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
                               "Actual Startup Time": 55.093,                                                                        +
                               "Actual Total Time": 1520.172,                                                                        +
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
                                   "Actual Startup Time": 55.057,                                                                    +
                                   "Actual Total Time": 1394.186,                                                                    +
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
                                       "Actual Startup Time": 31.587,                                                                +
                                       "Actual Total Time": 31.589,                                                                  +
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
                                       "Actual Startup Time": 23.425,                                                                +
                                       "Actual Total Time": 1356.814,                                                                +
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
                                   "Actual Startup Time": 0.011,                                                                     +
                                   "Actual Total Time": 0.011,                                                                       +
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
                               "Actual Startup Time": 0.793,                                                                         +
                               "Actual Total Time": 0.810,                                                                           +
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
                               "Actual Startup Time": 0.016,                                                                         +
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
                       "Actual Startup Time": 0.335,                                                                                 +
                       "Actual Total Time": 0.335,                                                                                   +
                       "Actual Rows": 0,                                                                                             +
                       "Actual Loops": 1052,                                                                                         +
                       "Index Cond": "(id = mk.movie_id)",                                                                           +
                       "Rows Removed by Index Recheck": 0,                                                                           +
                       "Filter": "((title ~~ '%Money%'::text) AND (production_year = 1998))",                                        +
                       "Rows Removed by Filter": 1,                                                                                  +
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
                   "Actual Startup Time": 1.106,                                                                                     +
                   "Actual Total Time": 1.106,                                                                                       +
                   "Actual Rows": 1,                                                                                                 +
                   "Actual Loops": 57,                                                                                               +
                   "Index Cond": "(id = mc.company_id)",                                                                             +
                   "Rows Removed by Index Recheck": 0,                                                                               +
                   "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                   "Rows Removed by Filter": 0,                                                                                      +
                   "Shared Hit Blocks": 223,                                                                                         +
                   "Shared Read Blocks": 5,                                                                                          +
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
               "Actual Startup Time": 0.001,                                                                                         +
               "Actual Total Time": 0.002,                                                                                           +
               "Actual Rows": 1,                                                                                                     +
               "Actual Loops": 38,                                                                                                   +
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
                   "Actual Total Time": 0.034,                                                                                       +
                   "Actual Rows": 1,                                                                                                 +
                   "Actual Loops": 1,                                                                                                +
                   "Filter": "((link)::text ~~ '%follows%'::text)",                                                                  +
                   "Rows Removed by Filter": 17,                                                                                     +
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
     "Planning Time": 3521.376,                                                                                                      +
     "Triggers": [                                                                                                                   +
     ],                                                                                                                              +
     "Execution Time": 2166.045                                                                                                      +
   }                                                                                                                                 +
 ]
(1 row)
