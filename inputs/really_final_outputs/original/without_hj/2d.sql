                                       QUERY PLAN                                       
----------------------------------------------------------------------------------------
 [                                                                                     +
   {                                                                                   +
     "Plan": {                                                                         +
       "Node Type": "Aggregate",                                                       +
       "Strategy": "Plain",                                                            +
       "Partial Mode": "Simple",                                                       +
       "Parallel Aware": false,                                                        +
       "Startup Cost": 624.06,                                                         +
       "Total Cost": 624.06,                                                           +
       "Plan Rows": 1,                                                                 +
       "Plan Width": 32,                                                               +
       "Actual Startup Time": 35353.568,                                               +
       "Actual Total Time": 35353.568,                                                 +
       "Actual Rows": 1,                                                               +
       "Actual Loops": 1,                                                              +
       "Shared Hit Blocks": 902354,                                                    +
       "Shared Read Blocks": 60401,                                                    +
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
           "Total Cost": 624.06,                                                       +
           "Plan Rows": 68,                                                            +
           "Plan Width": 17,                                                           +
           "Actual Startup Time": 89.760,                                              +
           "Actual Total Time": 35303.098,                                             +
           "Actual Rows": 68316,                                                       +
           "Actual Loops": 1,                                                          +
           "Inner Unique": true,                                                       +
           "Shared Hit Blocks": 902354,                                                +
           "Shared Read Blocks": 60401,                                                +
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
               "Total Cost": 620.67,                                                   +
               "Plan Rows": 190,                                                       +
               "Plan Width": 21,                                                       +
               "Actual Startup Time": 63.855,                                          +
               "Actual Total Time": 26407.945,                                         +
               "Actual Rows": 148552,                                                  +
               "Actual Loops": 1,                                                      +
               "Inner Unique": false,                                                  +
               "Join Filter": "(t.id = mc.movie_id)",                                  +
               "Rows Removed by Join Filter": 0,                                       +
               "Shared Hit Blocks": 311353,                                            +
               "Shared Read Blocks": 56594,                                            +
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
                   "Plan Width": 25,                                                   +
                   "Actual Startup Time": 58.101,                                      +
                   "Actual Total Time": 22923.531,                                     +
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
                       "Actual Total Time": 3400.818,                                  +
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
                           "Actual Startup Time": 21.465,                              +
                           "Actual Total Time": 21.466,                                +
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
                           "Actual Startup Time": 18.811,                              +
                           "Actual Total Time": 3360.875,                              +
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
                       "Plan Width": 21,                                               +
                       "Actual Startup Time": 0.465,                                   +
                       "Actual Total Time": 0.465,                                     +
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
                   "Index Name": "movie_id_movie_companies",                           +
                   "Relation Name": "movie_companies",                                 +
                   "Alias": "mc",                                                      +
                   "Startup Cost": 0.01,                                               +
                   "Total Cost": 0.03,                                                 +
                   "Plan Rows": 2,                                                     +
                   "Plan Width": 8,                                                    +
                   "Actual Startup Time": 0.064,                                       +
                   "Actual Total Time": 0.080,                                         +
                   "Actual Rows": 4,                                                   +
                   "Actual Loops": 41840,                                              +
                   "Index Cond": "(movie_id = mk.movie_id)",                           +
                   "Rows Removed by Index Recheck": 0,                                 +
                   "Shared Hit Blocks": 169751,                                        +
                   "Shared Read Blocks": 19067,                                        +
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
               "Index Name": "company_name_pkey",                                      +
               "Relation Name": "company_name",                                        +
               "Alias": "cn",                                                          +
               "Startup Cost": 0.01,                                                   +
               "Total Cost": 0.02,                                                     +
               "Plan Rows": 1,                                                         +
               "Plan Width": 4,                                                        +
               "Actual Startup Time": 0.059,                                           +
               "Actual Total Time": 0.059,                                             +
               "Actual Rows": 0,                                                       +
               "Actual Loops": 148552,                                                 +
               "Index Cond": "(id = mc.company_id)",                                   +
               "Rows Removed by Index Recheck": 0,                                     +
               "Filter": "((country_code)::text = '[us]'::text)",                      +
               "Rows Removed by Filter": 1,                                            +
               "Shared Hit Blocks": 591001,                                            +
               "Shared Read Blocks": 3807,                                             +
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
     "Planning Time": 2413.368,                                                        +
     "Triggers": [                                                                     +
     ],                                                                                +
     "Execution Time": 35377.057                                                       +
   }                                                                                   +
 ]
(1 row)

