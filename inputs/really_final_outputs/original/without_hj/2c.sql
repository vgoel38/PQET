                                  QUERY PLAN                                  
------------------------------------------------------------------------------
 [                                                                           +
   {                                                                         +
     "Plan": {                                                               +
       "Node Type": "Aggregate",                                             +
       "Strategy": "Plain",                                                  +
       "Partial Mode": "Simple",                                             +
       "Parallel Aware": false,                                              +
       "Startup Cost": 260.89,                                               +
       "Total Cost": 260.89,                                                 +
       "Plan Rows": 1,                                                       +
       "Plan Width": 32,                                                     +
       "Actual Startup Time": 306.929,                                       +
       "Actual Total Time": 306.929,                                         +
       "Actual Rows": 1,                                                     +
       "Actual Loops": 1,                                                    +
       "Shared Hit Blocks": 9,                                               +
       "Shared Read Blocks": 3005,                                           +
       "Shared Dirtied Blocks": 0,                                           +
       "Shared Written Blocks": 0,                                           +
       "Local Hit Blocks": 0,                                                +
       "Local Read Blocks": 0,                                               +
       "Local Dirtied Blocks": 0,                                            +
       "Local Written Blocks": 0,                                            +
       "Temp Read Blocks": 0,                                                +
       "Temp Written Blocks": 0,                                             +
       "Plans": [                                                            +
         {                                                                   +
           "Node Type": "Nested Loop",                                       +
           "Parent Relationship": "Outer",                                   +
           "Parallel Aware": false,                                          +
           "Join Type": "Inner",                                             +
           "Startup Cost": 0.05,                                             +
           "Total Cost": 260.89,                                             +
           "Plan Rows": 1,                                                   +
           "Plan Width": 17,                                                 +
           "Actual Startup Time": 306.877,                                   +
           "Actual Total Time": 306.878,                                     +
           "Actual Rows": 0,                                                 +
           "Actual Loops": 1,                                                +
           "Inner Unique": true,                                             +
           "Join Filter": "(mc.movie_id = t.id)",                            +
           "Rows Removed by Join Filter": 0,                                 +
           "Shared Hit Blocks": 9,                                           +
           "Shared Read Blocks": 3005,                                       +
           "Shared Dirtied Blocks": 0,                                       +
           "Shared Written Blocks": 0,                                       +
           "Local Hit Blocks": 0,                                            +
           "Local Read Blocks": 0,                                           +
           "Local Dirtied Blocks": 0,                                        +
           "Local Written Blocks": 0,                                        +
           "Temp Read Blocks": 0,                                            +
           "Temp Written Blocks": 0,                                         +
           "Plans": [                                                        +
             {                                                               +
               "Node Type": "Nested Loop",                                   +
               "Parent Relationship": "Outer",                               +
               "Parallel Aware": false,                                      +
               "Join Type": "Inner",                                         +
               "Startup Cost": 0.04,                                         +
               "Total Cost": 260.68,                                         +
               "Plan Rows": 1,                                               +
               "Plan Width": 8,                                              +
               "Actual Startup Time": 306.876,                               +
               "Actual Total Time": 306.876,                                 +
               "Actual Rows": 0,                                             +
               "Actual Loops": 1,                                            +
               "Inner Unique": true,                                         +
               "Shared Hit Blocks": 9,                                       +
               "Shared Read Blocks": 3005,                                   +
               "Shared Dirtied Blocks": 0,                                   +
               "Shared Written Blocks": 0,                                   +
               "Local Hit Blocks": 0,                                        +
               "Local Read Blocks": 0,                                       +
               "Local Dirtied Blocks": 0,                                    +
               "Local Written Blocks": 0,                                    +
               "Temp Read Blocks": 0,                                        +
               "Temp Written Blocks": 0,                                     +
               "Plans": [                                                    +
                 {                                                           +
                   "Node Type": "Nested Loop",                               +
                   "Parent Relationship": "Outer",                           +
                   "Parallel Aware": false,                                  +
                   "Join Type": "Inner",                                     +
                   "Startup Cost": 0.03,                                     +
                   "Total Cost": 259.16,                                     +
                   "Plan Rows": 106,                                         +
                   "Plan Width": 12,                                         +
                   "Actual Startup Time": 147.228,                           +
                   "Actual Total Time": 276.923,                             +
                   "Actual Rows": 2,                                         +
                   "Actual Loops": 1,                                        +
                   "Inner Unique": false,                                    +
                   "Shared Hit Blocks": 5,                                   +
                   "Shared Read Blocks": 3001,                               +
                   "Shared Dirtied Blocks": 0,                               +
                   "Shared Written Blocks": 0,                               +
                   "Local Hit Blocks": 0,                                    +
                   "Local Read Blocks": 0,                                   +
                   "Local Dirtied Blocks": 0,                                +
                   "Local Written Blocks": 0,                                +
                   "Temp Read Blocks": 0,                                    +
                   "Temp Written Blocks": 0,                                 +
                   "Plans": [                                                +
                     {                                                       +
                       "Node Type": "Nested Loop",                           +
                       "Parent Relationship": "Outer",                       +
                       "Parallel Aware": false,                              +
                       "Join Type": "Inner",                                 +
                       "Startup Cost": 0.01,                                 +
                       "Total Cost": 258.51,                                 +
                       "Plan Rows": 11,                                      +
                       "Plan Width": 4,                                      +
                       "Actual Startup Time": 87.055,                        +
                       "Actual Total Time": 231.818,                         +
                       "Actual Rows": 2,                                     +
                       "Actual Loops": 1,                                    +
                       "Inner Unique": false,                                +
                       "Shared Hit Blocks": 3,                               +
                       "Shared Read Blocks": 2996,                           +
                       "Shared Dirtied Blocks": 0,                           +
                       "Shared Written Blocks": 0,                           +
                       "Local Hit Blocks": 0,                                +
                       "Local Read Blocks": 0,                               +
                       "Local Dirtied Blocks": 0,                            +
                       "Local Written Blocks": 0,                            +
                       "Temp Read Blocks": 0,                                +
                       "Temp Written Blocks": 0,                             +
                       "Plans": [                                            +
                         {                                                   +
                           "Node Type": "Seq Scan",                          +
                           "Parent Relationship": "Outer",                   +
                           "Parallel Aware": false,                          +
                           "Relation Name": "company_name",                  +
                           "Alias": "cn",                                    +
                           "Startup Cost": 0.00,                             +
                           "Total Cost": 128.41,                             +
                           "Plan Rows": 1,                                   +
                           "Plan Width": 4,                                  +
                           "Actual Startup Time": 47.343,                    +
                           "Actual Total Time": 177.029,                     +
                           "Actual Rows": 1,                                 +
                           "Actual Loops": 1,                                +
                           "Filter": "((country_code)::text = '[sm]'::text)",+
                           "Rows Removed by Filter": 234996,                 +
                           "Shared Hit Blocks": 2,                           +
                           "Shared Read Blocks": 2992,                       +
                           "Shared Dirtied Blocks": 0,                       +
                           "Shared Written Blocks": 0,                       +
                           "Local Hit Blocks": 0,                            +
                           "Local Read Blocks": 0,                           +
                           "Local Dirtied Blocks": 0,                        +
                           "Local Written Blocks": 0,                        +
                           "Temp Read Blocks": 0,                            +
                           "Temp Written Blocks": 0                          +
                         },                                                  +
                         {                                                   +
                           "Node Type": "Index Scan",                        +
                           "Parent Relationship": "Inner",                   +
                           "Parallel Aware": false,                          +
                           "Scan Direction": "Forward",                      +
                           "Index Name": "company_id_movie_companies",       +
                           "Relation Name": "movie_companies",               +
                           "Alias": "mc",                                    +
                           "Startup Cost": 0.01,                             +
                           "Total Cost": 26.02,                              +
                           "Plan Rows": 11,                                  +
                           "Plan Width": 8,                                  +
                           "Actual Startup Time": 39.704,                    +
                           "Actual Total Time": 54.776,                      +
                           "Actual Rows": 2,                                 +
                           "Actual Loops": 1,                                +
                           "Index Cond": "(company_id = cn.id)",             +
                           "Rows Removed by Index Recheck": 0,               +
                           "Shared Hit Blocks": 1,                           +
                           "Shared Read Blocks": 4,                          +
                           "Shared Dirtied Blocks": 0,                       +
                           "Shared Written Blocks": 0,                       +
                           "Local Hit Blocks": 0,                            +
                           "Local Read Blocks": 0,                           +
                           "Local Dirtied Blocks": 0,                        +
                           "Local Written Blocks": 0,                        +
                           "Temp Read Blocks": 0,                            +
                           "Temp Written Blocks": 0                          +
                         }                                                   +
                       ]                                                     +
                     },                                                      +
                     {                                                       +
                       "Node Type": "Index Scan",                            +
                       "Parent Relationship": "Inner",                       +
                       "Parallel Aware": false,                              +
                       "Scan Direction": "Forward",                          +
                       "Index Name": "movie_id_movie_keyword",               +
                       "Relation Name": "movie_keyword",                     +
                       "Alias": "mk",                                        +
                       "Startup Cost": 0.01,                                 +
                       "Total Cost": 0.06,                                   +
                       "Plan Rows": 11,                                      +
                       "Plan Width": 8,                                      +
                       "Actual Startup Time": 22.541,                        +
                       "Actual Total Time": 22.542,                          +
                       "Actual Rows": 1,                                     +
                       "Actual Loops": 2,                                    +
                       "Index Cond": "(movie_id = mc.movie_id)",             +
                       "Rows Removed by Index Recheck": 0,                   +
                       "Shared Hit Blocks": 2,                               +
                       "Shared Read Blocks": 5,                              +
                       "Shared Dirtied Blocks": 0,                           +
                       "Shared Written Blocks": 0,                           +
                       "Local Hit Blocks": 0,                                +
                       "Local Read Blocks": 0,                               +
                       "Local Dirtied Blocks": 0,                            +
                       "Local Written Blocks": 0,                            +
                       "Temp Read Blocks": 0,                                +
                       "Temp Written Blocks": 0                              +
                     }                                                       +
                   ]                                                         +
                 },                                                          +
                 {                                                           +
                   "Node Type": "Index Scan",                                +
                   "Parent Relationship": "Inner",                           +
                   "Parallel Aware": false,                                  +
                   "Scan Direction": "Forward",                              +
                   "Index Name": "keyword_pkey",                             +
                   "Relation Name": "keyword",                               +
                   "Alias": "k",                                             +
                   "Startup Cost": 0.01,                                     +
                   "Total Cost": 0.01,                                       +
                   "Plan Rows": 1,                                           +
                   "Plan Width": 4,                                          +
                   "Actual Startup Time": 14.971,                            +
                   "Actual Total Time": 14.971,                              +
                   "Actual Rows": 0,                                         +
                   "Actual Loops": 2,                                        +
                   "Index Cond": "(id = mk.keyword_id)",                     +
                   "Rows Removed by Index Recheck": 0,                       +
                   "Filter": "(keyword = 'character-name-in-title'::text)",  +
                   "Rows Removed by Filter": 1,                              +
                   "Shared Hit Blocks": 4,                                   +
                   "Shared Read Blocks": 4,                                  +
                   "Shared Dirtied Blocks": 0,                               +
                   "Shared Written Blocks": 0,                               +
                   "Local Hit Blocks": 0,                                    +
                   "Local Read Blocks": 0,                                   +
                   "Local Dirtied Blocks": 0,                                +
                   "Local Written Blocks": 0,                                +
                   "Temp Read Blocks": 0,                                    +
                   "Temp Written Blocks": 0                                  +
                 }                                                           +
               ]                                                             +
             },                                                              +
             {                                                               +
               "Node Type": "Index Scan",                                    +
               "Parent Relationship": "Inner",                               +
               "Parallel Aware": false,                                      +
               "Scan Direction": "Forward",                                  +
               "Index Name": "title_idx_id",                                 +
               "Relation Name": "title",                                     +
               "Alias": "t",                                                 +
               "Startup Cost": 0.01,                                         +
               "Total Cost": 0.04,                                           +
               "Plan Rows": 1,                                               +
               "Plan Width": 21,                                             +
               "Actual Startup Time": 0.000,                                 +
               "Actual Total Time": 0.000,                                   +
               "Actual Rows": 0,                                             +
               "Actual Loops": 0,                                            +
               "Index Cond": "(id = mk.movie_id)",                           +
               "Rows Removed by Index Recheck": 0,                           +
               "Shared Hit Blocks": 0,                                       +
               "Shared Read Blocks": 0,                                      +
               "Shared Dirtied Blocks": 0,                                   +
               "Shared Written Blocks": 0,                                   +
               "Local Hit Blocks": 0,                                        +
               "Local Read Blocks": 0,                                       +
               "Local Dirtied Blocks": 0,                                    +
               "Local Written Blocks": 0,                                    +
               "Temp Read Blocks": 0,                                        +
               "Temp Written Blocks": 0                                      +
             }                                                               +
           ]                                                                 +
         }                                                                   +
       ]                                                                     +
     },                                                                      +
     "Planning Time": 2329.110,                                              +
     "Triggers": [                                                           +
     ],                                                                      +
     "Execution Time": 331.353                                               +
   }                                                                         +
 ]
(1 row)

