                                                                QUERY PLAN                                                                
------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                       +
   {                                                                                                                                     +
     "Plan": {                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                         +
       "Strategy": "Plain",                                                                                                              +
       "Partial Mode": "Simple",                                                                                                         +
       "Parallel Aware": false,                                                                                                          +
       "Startup Cost": 619.23,                                                                                                           +
       "Total Cost": 619.23,                                                                                                             +
       "Plan Rows": 1,                                                                                                                   +
       "Plan Width": 96,                                                                                                                 +
       "Actual Startup Time": 3034.205,                                                                                                  +
       "Actual Total Time": 3034.206,                                                                                                    +
       "Actual Rows": 1,                                                                                                                 +
       "Actual Loops": 1,                                                                                                                +
       "Shared Hit Blocks": 28577,                                                                                                       +
       "Shared Read Blocks": 5925,                                                                                                       +
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
           "Total Cost": 619.23,                                                                                                         +
           "Plan Rows": 1,                                                                                                               +
           "Plan Width": 48,                                                                                                             +
           "Actual Startup Time": 1484.495,                                                                                              +
           "Actual Total Time": 3034.085,                                                                                                +
           "Actual Rows": 38,                                                                                                            +
           "Actual Loops": 1,                                                                                                            +
           "Inner Unique": true,                                                                                                         +
           "Join Filter": "(ml.link_type_id = lt.id)",                                                                                   +
           "Rows Removed by Join Filter": 22,                                                                                            +
           "Shared Hit Blocks": 28577,                                                                                                   +
           "Shared Read Blocks": 5925,                                                                                                   +
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
               "Actual Startup Time": 1484.463,                                                                                          +
               "Actual Total Time": 3033.985,                                                                                            +
               "Actual Rows": 38,                                                                                                        +
               "Actual Loops": 1,                                                                                                        +
               "Inner Unique": true,                                                                                                     +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                                            +
               "Rows Removed by Join Filter": 0,                                                                                         +
               "Shared Hit Blocks": 28576,                                                                                               +
               "Shared Read Blocks": 5925,                                                                                               +
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
                   "Actual Startup Time": 1484.422,                                                                                      +
                   "Actual Total Time": 3033.891,                                                                                        +
                   "Actual Rows": 38,                                                                                                    +
                   "Actual Loops": 1,                                                                                                    +
                   "Inner Unique": true,                                                                                                 +
                   "Shared Hit Blocks": 28575,                                                                                           +
                   "Shared Read Blocks": 5925,                                                                                           +
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
                       "Total Cost": 619.05,                                                                                             +
                       "Plan Rows": 1,                                                                                                   +
                       "Plan Width": 29,                                                                                                 +
                       "Actual Startup Time": 1389.934,                                                                                  +
                       "Actual Total Time": 2924.880,                                                                                    +
                       "Actual Rows": 133,                                                                                               +
                       "Actual Loops": 1,                                                                                                +
                       "Inner Unique": true,                                                                                             +
                       "Join Filter": "(ml.movie_id = t.id)",                                                                            +
                       "Rows Removed by Join Filter": 0,                                                                                 +
                       "Shared Hit Blocks": 28055,                                                                                       +
                       "Shared Read Blocks": 5913,                                                                                       +
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
                           "Actual Startup Time": 459.223,                                                                               +
                           "Actual Total Time": 2770.071,                                                                                +
                           "Actual Rows": 749,                                                                                           +
                           "Actual Loops": 1,                                                                                            +
                           "Inner Unique": false,                                                                                        +
                           "Join Filter": "(ml.movie_id = mc.movie_id)",                                                                 +
                           "Rows Removed by Join Filter": 0,                                                                             +
                           "Shared Hit Blocks": 25070,                                                                                   +
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
                               "Actual Startup Time": 423.508,                                                                           +
                               "Actual Total Time": 2697.221,                                                                            +
                               "Actual Rows": 118,                                                                                       +
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
                                   "Actual Startup Time": 55.472,                                                                        +
                                   "Actual Total Time": 1480.276,                                                                        +
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
                                       "Actual Startup Time": 55.434,                                                                    +
                                       "Actual Total Time": 1319.533,                                                                    +
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
                                           "Actual Startup Time": 31.978,                                                                +
                                           "Actual Total Time": 31.981,                                                                  +
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
                                           "Actual Startup Time": 23.445,                                                                +
                                           "Actual Total Time": 1281.882,                                                                +
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
                                       "Actual Startup Time": 0.014,                                                                     +
                                       "Actual Total Time": 0.014,                                                                       +
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
                                   "Total Cost": 0.15,                                                                                   +
                                   "Plan Rows": 1,                                                                                       +
                                   "Plan Width": 4,                                                                                      +
                                   "Actual Startup Time": 4.803,                                                                         +
                                   "Actual Total Time": 4.847,                                                                           +
                                   "Actual Rows": 0,                                                                                     +
                                   "Actual Loops": 251,                                                                                  +
                                   "Index Cond": "(movie_id = mk.movie_id)",                                                             +
                                   "Rows Removed by Index Recheck": 0,                                                                   +
                                   "Filter": "(info = ANY ('{Germany,German}'::text[]))",                                                +
                                   "Rows Removed by Filter": 24,                                                                         +
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
                               "Actual Startup Time": 0.607,                                                                             +
                               "Actual Total Time": 0.612,                                                                               +
                               "Actual Rows": 6,                                                                                         +
                               "Actual Loops": 118,                                                                                      +
                               "Index Cond": "(movie_id = mk.movie_id)",                                                                 +
                               "Rows Removed by Index Recheck": 0,                                                                       +
                               "Filter": "(note IS NULL)",                                                                               +
                               "Rows Removed by Filter": 2,                                                                              +
                               "Shared Hit Blocks": 579,                                                                                 +
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
                           "Actual Startup Time": 0.206,                                                                                 +
                           "Actual Total Time": 0.206,                                                                                   +
                           "Actual Rows": 0,                                                                                             +
                           "Actual Loops": 749,                                                                                          +
                           "Index Cond": "(id = mk.movie_id)",                                                                           +
                           "Rows Removed by Index Recheck": 0,                                                                           +
                           "Filter": "((production_year >= 2000) AND (production_year <= 2010))",                                        +
                           "Rows Removed by Filter": 1,                                                                                  +
                           "Shared Hit Blocks": 2985,                                                                                    +
                           "Shared Read Blocks": 11,                                                                                     +
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
                       "Actual Startup Time": 0.818,                                                                                     +
                       "Actual Total Time": 0.818,                                                                                       +
                       "Actual Rows": 0,                                                                                                 +
                       "Actual Loops": 133,                                                                                              +
                       "Index Cond": "(id = mc.company_id)",                                                                             +
                       "Rows Removed by Index Recheck": 0,                                                                               +
                       "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                       "Rows Removed by Filter": 1,                                                                                      +
                       "Shared Hit Blocks": 520,                                                                                         +
                       "Shared Read Blocks": 12,                                                                                         +
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
                   "Actual Startup Time": 0.001,                                                                                         +
                   "Actual Total Time": 0.001,                                                                                           +
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
                       "Relation Name": "company_type",                                                                                  +
                       "Alias": "ct",                                                                                                    +
                       "Startup Cost": 0.00,                                                                                             +
                       "Total Cost": 0.03,                                                                                               +
                       "Plan Rows": 1,                                                                                                   +
                       "Plan Width": 4,                                                                                                  +
                       "Actual Startup Time": 0.021,                                                                                     +
                       "Actual Total Time": 0.021,                                                                                       +
                       "Actual Rows": 1,                                                                                                 +
                       "Actual Loops": 1,                                                                                                +
                       "Filter": "((kind)::text = 'production companies'::text)",                                                        +
                       "Rows Removed by Filter": 1,                                                                                      +
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
               "Actual Startup Time": 0.001,                                                                                             +
               "Actual Total Time": 0.001,                                                                                               +
               "Actual Rows": 2,                                                                                                         +
               "Actual Loops": 38,                                                                                                       +
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
                   "Actual Startup Time": 0.017,                                                                                         +
                   "Actual Total Time": 0.019,                                                                                           +
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
     "Planning Time": 5976.176,                                                                                                          +
     "Triggers": [                                                                                                                       +
     ],                                                                                                                                  +
     "Execution Time": 3061.435                                                                                                          +
   }                                                                                                                                     +
 ]
(1 row)

