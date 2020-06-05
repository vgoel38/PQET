                                       QUERY PLAN                                       
----------------------------------------------------------------------------------------
 [                                                                                     +
   {                                                                                   +
     "Plan": {                                                                         +
       "Node Type": "Aggregate",                                                       +
       "Strategy": "Plain",                                                            +
       "Partial Mode": "Simple",                                                       +
       "Parallel Aware": false,                                                        +
       "Startup Cost": 622.69,                                                         +
       "Total Cost": 622.69,                                                           +
       "Plan Rows": 1,                                                                 +
       "Plan Width": 32,                                                               +
       "Actual Startup Time": 27860.628,                                               +
       "Actual Total Time": 27860.628,                                                 +
       "Actual Rows": 1,                                                               +
       "Actual Loops": 1,                                                              +
       "Shared Hit Blocks": 777993,                                                    +
       "Shared Read Blocks": 38361,                                                    +
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
           "Startup Cost": 0.07,                                                       +
           "Total Cost": 622.69,                                                       +
           "Plan Rows": 2,                                                             +
           "Plan Width": 17,                                                           +
           "Actual Startup Time": 561.055,                                             +
           "Actual Total Time": 27838.978,                                             +
           "Actual Rows": 5228,                                                        +
           "Actual Loops": 1,                                                          +
           "Inner Unique": true,                                                       +
           "Join Filter": "(mc.movie_id = t.id)",                                      +
           "Rows Removed by Join Filter": 0,                                           +
           "Shared Hit Blocks": 777993,                                                +
           "Shared Read Blocks": 38361,                                                +
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
               "Node Type": "Nested Loop",                                             +
               "Parent Relationship": "Outer",                                         +
               "Parallel Aware": false,                                                +
               "Join Type": "Inner",                                                   +
               "Startup Cost": 0.05,                                                   +
               "Total Cost": 622.60,                                                   +
               "Plan Rows": 2,                                                         +
               "Plan Width": 8,                                                        +
               "Actual Startup Time": 515.434,                                         +
               "Actual Total Time": 15179.992,                                         +
               "Actual Rows": 5228,                                                    +
               "Actual Loops": 1,                                                      +
               "Inner Unique": true,                                                   +
               "Shared Hit Blocks": 760897,                                            +
               "Shared Read Blocks": 34533,                                            +
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
                   "Total Cost": 619.22,                                               +
                   "Plan Rows": 190,                                                   +
                   "Plan Width": 12,                                                   +
                   "Actual Startup Time": 41.007,                                      +
                   "Actual Total Time": 8023.606,                                      +
                   "Actual Rows": 148552,                                              +
                   "Actual Loops": 1,                                                  +
                   "Inner Unique": false,                                              +
                   "Shared Hit Blocks": 169754,                                        +
                   "Shared Read Blocks": 30726,                                        +
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
                       "Actual Startup Time": 40.319,                                  +
                       "Actual Total Time": 4488.744,                                  +
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
                           "Actual Startup Time": 21.461,                              +
                           "Actual Total Time": 21.462,                                +
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
                           "Actual Startup Time": 18.826,                              +
                           "Actual Total Time": 4447.875,                              +
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
                       "Index Name": "movie_id_movie_companies",                       +
                       "Relation Name": "movie_companies",                             +
                       "Alias": "mc",                                                  +
                       "Startup Cost": 0.01,                                           +
                       "Total Cost": 0.03,                                             +
                       "Plan Rows": 2,                                                 +
                       "Plan Width": 8,                                                +
                       "Actual Startup Time": 0.065,                                   +
                       "Actual Total Time": 0.082,                                     +
                       "Actual Rows": 4,                                               +
                       "Actual Loops": 41840,                                          +
                       "Index Cond": "(movie_id = mk.movie_id)",                       +
                       "Rows Removed by Index Recheck": 0,                             +
                       "Shared Hit Blocks": 169751,                                    +
                       "Shared Read Blocks": 19067,                                    +
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
                 },                                                                    +
                 {                                                                     +
                   "Node Type": "Index Scan",                                          +
                   "Parent Relationship": "Inner",                                     +
                   "Parallel Aware": false,                                            +
                   "Scan Direction": "Forward",                                        +
                   "Index Name": "company_name_pkey",                                  +
                   "Relation Name": "company_name",                                    +
                   "Alias": "cn",                                                      +
                   "Startup Cost": 0.01,                                               +
                   "Total Cost": 0.02,                                                 +
                   "Plan Rows": 1,                                                     +
                   "Plan Width": 4,                                                    +
                   "Actual Startup Time": 0.047,                                       +
                   "Actual Total Time": 0.047,                                         +
                   "Actual Rows": 0,                                                   +
                   "Actual Loops": 148552,                                             +
                   "Index Cond": "(id = mc.company_id)",                               +
                   "Rows Removed by Index Recheck": 0,                                 +
                   "Filter": "((country_code)::text = '[nl]'::text)",                  +
                   "Rows Removed by Filter": 1,                                        +
                   "Shared Hit Blocks": 591143,                                        +
                   "Shared Read Blocks": 3807,                                         +
                   "Shared Dirtied Blocks": 0,                                         +
                   "Shared Written Blocks": 0,                                         +
                   "Local Hit Blocks": 0,                                              +
                   "Local Read Blocks": 0,                                             +
                   "Local Dirtied Blocks": 0,                                          +
                   "Local Written Blocks": 0,                                          +
                   "Temp Read Blocks": 0,                                              +
                   "Temp Written Blocks": 0                                            +
                 }                                                                     +
               ]                                                                       +
             },                                                                        +
             {                                                                         +
               "Node Type": "Index Scan",                                              +
               "Parent Relationship": "Inner",                                         +
               "Parallel Aware": false,                                                +
               "Scan Direction": "Forward",                                            +
               "Index Name": "title_idx_id",                                           +
               "Relation Name": "title",                                               +
               "Alias": "t",                                                           +
               "Startup Cost": 0.01,                                                   +
               "Total Cost": 0.04,                                                     +
               "Plan Rows": 1,                                                         +
               "Plan Width": 21,                                                       +
               "Actual Startup Time": 2.419,                                           +
               "Actual Total Time": 2.419,                                             +
               "Actual Rows": 1,                                                       +
               "Actual Loops": 5228,                                                   +
               "Index Cond": "(id = mk.movie_id)",                                     +
               "Rows Removed by Index Recheck": 0,                                     +
               "Shared Hit Blocks": 17096,                                             +
               "Shared Read Blocks": 3828,                                             +
               "Shared Dirtied Blocks": 0,                                             +
               "Shared Written Blocks": 0,                                             +
               "Local Hit Blocks": 0,                                                  +
               "Local Read Blocks": 0,                                                 +
               "Local Dirtied Blocks": 0,                                              +
               "Local Written Blocks": 0,                                              +
               "Temp Read Blocks": 0,                                                  +
               "Temp Written Blocks": 0                                                +
             }                                                                         +
           ]                                                                           +
         }                                                                             +
       ]                                                                               +
     },                                                                                +
     "Planning Time": 2458.225,                                                        +
     "Triggers": [                                                                     +
     ],                                                                                +
     "Execution Time": 27880.931                                                       +
   }                                                                                   +
 ]
(1 row)

