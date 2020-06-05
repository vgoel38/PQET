                                           QUERY PLAN                                           
------------------------------------------------------------------------------------------------
 [                                                                                             +
   {                                                                                           +
     "Plan": {                                                                                 +
       "Node Type": "Aggregate",                                                               +
       "Strategy": "Plain",                                                                    +
       "Partial Mode": "Simple",                                                               +
       "Parallel Aware": false,                                                                +
       "Startup Cost": 658.13,                                                                 +
       "Total Cost": 658.13,                                                                   +
       "Plan Rows": 1,                                                                         +
       "Plan Width": 32,                                                                       +
       "Actual Startup Time": 1609587.631,                                                     +
       "Actual Total Time": 1609587.631,                                                       +
       "Actual Rows": 1,                                                                       +
       "Actual Loops": 1,                                                                      +
       "Shared Hit Blocks": 10346211,                                                          +
       "Shared Read Blocks": 343677,                                                           +
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
           "Startup Cost": 0.10,                                                               +
           "Total Cost": 658.11,                                                               +
           "Plan Rows": 278,                                                                   +
           "Plan Width": 15,                                                                   +
           "Actual Startup Time": 1364.559,                                                    +
           "Actual Total Time": 1608801.373,                                                   +
           "Actual Rows": 1113120,                                                             +
           "Actual Loops": 1,                                                                  +
           "Inner Unique": true,                                                               +
           "Shared Hit Blocks": 10346211,                                                      +
           "Shared Read Blocks": 343677,                                                       +
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
               "Startup Cost": 0.08,                                                           +
               "Total Cost": 653.17,                                                           +
               "Plan Rows": 278,                                                               +
               "Plan Width": 19,                                                               +
               "Actual Startup Time": 1323.909,                                                +
               "Actual Total Time": 1570997.568,                                               +
               "Actual Rows": 1113120,                                                         +
               "Actual Loops": 1,                                                              +
               "Inner Unique": false,                                                          +
               "Shared Hit Blocks": 5893414,                                                   +
               "Shared Read Blocks": 339882,                                                   +
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
                   "Total Cost": 650.85,                                                       +
                   "Plan Rows": 145,                                                           +
                   "Plan Width": 27,                                                           +
                   "Actual Startup Time": 79.063,                                              +
                   "Actual Total Time": 1557992.842,                                           +
                   "Actual Rows": 149494,                                                      +
                   "Actual Loops": 1,                                                          +
                   "Inner Unique": true,                                                       +
                   "Shared Hit Blocks": 5193403,                                               +
                   "Shared Read Blocks": 322449,                                               +
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
                       "Startup Cost": 0.06,                                                   +
                       "Total Cost": 628.55,                                                   +
                       "Plan Rows": 1138,                                                      +
                       "Plan Width": 16,                                                       +
                       "Actual Startup Time": 62.255,                                          +
                       "Actual Total Time": 1219742.281,                                       +
                       "Actual Rows": 1038393,                                                 +
                       "Actual Loops": 1,                                                      +
                       "Inner Unique": false,                                                  +
                       "Join Filter": "(t.id = ci.movie_id)",                                  +
                       "Rows Removed by Join Filter": 0,                                       +
                       "Shared Hit Blocks": 1102029,                                           +
                       "Shared Read Blocks": 253545,                                           +
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
                           "Total Cost": 619.60,                                               +
                           "Plan Rows": 34,                                                    +
                           "Plan Width": 8,                                                    +
                           "Actual Startup Time": 58.093,                                      +
                           "Actual Total Time": 98721.521,                                     +
                           "Actual Rows": 41840,                                               +
                           "Actual Loops": 1,                                                  +
                           "Inner Unique": true,                                               +
                           "Shared Hit Blocks": 141602,                                        +
                           "Shared Read Blocks": 37527,                                        +
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
                               "Actual Startup Time": 40.308,                                  +
                               "Actual Total Time": 6228.283,                                  +
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
                                   "Actual Startup Time": 22.625,                              +
                                   "Actual Total Time": 22.627,                                +
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
                                   "Actual Startup Time": 17.638,                              +
                                   "Actual Total Time": 6159.449,                              +
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
                               "Index Name": "title_idx_id",                                   +
                               "Relation Name": "title",                                       +
                               "Alias": "t",                                                   +
                               "Startup Cost": 0.01,                                           +
                               "Total Cost": 0.04,                                             +
                               "Plan Rows": 1,                                                 +
                               "Plan Width": 4,                                                +
                               "Actual Startup Time": 2.207,                                   +
                               "Actual Total Time": 2.207,                                     +
                               "Actual Rows": 1,                                               +
                               "Actual Loops": 41840,                                          +
                               "Index Cond": "(id = mk.movie_id)",                             +
                               "Rows Removed by Index Recheck": 0,                             +
                               "Shared Hit Blocks": 141599,                                    +
                               "Shared Read Blocks": 25868,                                    +
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
                           "Index Name": "movie_id_cast_info",                                 +
                           "Relation Name": "cast_info",                                       +
                           "Alias": "ci",                                                      +
                           "Startup Cost": 0.02,                                               +
                           "Total Cost": 0.26,                                                 +
                           "Plan Rows": 23,                                                    +
                           "Plan Width": 8,                                                    +
                           "Actual Startup Time": 2.573,                                       +
                           "Actual Total Time": 26.755,                                        +
                           "Actual Rows": 25,                                                  +
                           "Actual Loops": 41840,                                              +
                           "Index Cond": "(movie_id = mk.movie_id)",                           +
                           "Rows Removed by Index Recheck": 0,                                 +
                           "Shared Hit Blocks": 960427,                                        +
                           "Shared Read Blocks": 216018,                                       +
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
                       "Index Name": "name_pkey",                                              +
                       "Relation Name": "name",                                                +
                       "Alias": "n",                                                           +
                       "Startup Cost": 0.01,                                                   +
                       "Total Cost": 0.02,                                                     +
                       "Plan Rows": 1,                                                         +
                       "Plan Width": 19,                                                       +
                       "Actual Startup Time": 0.324,                                           +
                       "Actual Total Time": 0.324,                                             +
                       "Actual Rows": 0,                                                       +
                       "Actual Loops": 1038393,                                                +
                       "Index Cond": "(id = ci.person_id)",                                    +
                       "Rows Removed by Index Recheck": 0,                                     +
                       "Filter": "(name ~~ '%B%'::text)",                                      +
                       "Rows Removed by Filter": 1,                                            +
                       "Shared Hit Blocks": 4091374,                                           +
                       "Shared Read Blocks": 68904,                                            +
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
                 },                                                                            +
                 {                                                                             +
                   "Node Type": "Index Scan",                                                  +
                   "Parent Relationship": "Inner",                                             +
                   "Parallel Aware": false,                                                    +
                   "Scan Direction": "Forward",                                                +
                   "Index Name": "movie_id_movie_companies",                                   +
                   "Relation Name": "movie_companies",                                         +
                   "Alias": "mc",                                                              +
                   "Startup Cost": 0.01,                                                       +
                   "Total Cost": 0.02,                                                         +
                   "Plan Rows": 2,                                                             +
                   "Plan Width": 8,                                                            +
                   "Actual Startup Time": 0.061,                                               +
                   "Actual Total Time": 0.081,                                                 +
                   "Actual Rows": 7,                                                           +
                   "Actual Loops": 149494,                                                     +
                   "Index Cond": "(movie_id = ci.movie_id)",                                   +
                   "Rows Removed by Index Recheck": 0,                                         +
                   "Shared Hit Blocks": 700011,                                                +
                   "Shared Read Blocks": 17433,                                                +
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
               "Index Name": "company_name_pkey",                                              +
               "Relation Name": "company_name",                                                +
               "Alias": "cn",                                                                  +
               "Startup Cost": 0.01,                                                           +
               "Total Cost": 0.02,                                                             +
               "Plan Rows": 1,                                                                 +
               "Plan Width": 4,                                                                +
               "Actual Startup Time": 0.033,                                                   +
               "Actual Total Time": 0.033,                                                     +
               "Actual Rows": 1,                                                               +
               "Actual Loops": 1113120,                                                        +
               "Index Cond": "(id = mc.company_id)",                                           +
               "Rows Removed by Index Recheck": 0,                                             +
               "Shared Hit Blocks": 4452797,                                                   +
               "Shared Read Blocks": 3795,                                                     +
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
     "Planning Time": 5774.674,                                                                +
     "Triggers": [                                                                             +
     ],                                                                                        +
     "Execution Time": 1609607.931                                                             +
   }                                                                                           +
 ]
(1 row)

