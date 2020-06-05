                                             QUERY PLAN                                             
----------------------------------------------------------------------------------------------------
 [                                                                                                 +
   {                                                                                               +
     "Plan": {                                                                                     +
       "Node Type": "Aggregate",                                                                   +
       "Strategy": "Plain",                                                                        +
       "Partial Mode": "Simple",                                                                   +
       "Parallel Aware": false,                                                                    +
       "Startup Cost": 667.30,                                                                     +
       "Total Cost": 667.30,                                                                       +
       "Plan Rows": 1,                                                                             +
       "Plan Width": 64,                                                                           +
       "Actual Startup Time": 1624204.342,                                                         +
       "Actual Total Time": 1624204.342,                                                           +
       "Actual Rows": 1,                                                                           +
       "Actual Loops": 1,                                                                          +
       "Shared Hit Blocks": 29135748,                                                              +
       "Shared Read Blocks": 320928,                                                               +
       "Shared Dirtied Blocks": 0,                                                                 +
       "Shared Written Blocks": 0,                                                                 +
       "Local Hit Blocks": 0,                                                                      +
       "Local Read Blocks": 0,                                                                     +
       "Local Dirtied Blocks": 0,                                                                  +
       "Local Written Blocks": 0,                                                                  +
       "Temp Read Blocks": 0,                                                                      +
       "Temp Written Blocks": 0,                                                                   +
       "Plans": [                                                                                  +
         {                                                                                         +
           "Node Type": "Nested Loop",                                                             +
           "Parent Relationship": "Outer",                                                         +
           "Parallel Aware": false,                                                                +
           "Join Type": "Inner",                                                                   +
           "Startup Cost": 0.11,                                                                   +
           "Total Cost": 667.19,                                                                   +
           "Plan Rows": 686,                                                                       +
           "Plan Width": 33,                                                                       +
           "Actual Startup Time": 433.668,                                                         +
           "Actual Total Time": 1620927.527,                                                       +
           "Actual Rows": 3710592,                                                                 +
           "Actual Loops": 1,                                                                      +
           "Inner Unique": true,                                                                   +
           "Join Filter": "(an.person_id = n.id)",                                                 +
           "Rows Removed by Join Filter": 0,                                                       +
           "Shared Hit Blocks": 29135748,                                                          +
           "Shared Read Blocks": 320928,                                                           +
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
               "Total Cost": 653.70,                                                               +
               "Plan Rows": 686,                                                                   +
               "Plan Width": 41,                                                                   +
               "Actual Startup Time": 419.531,                                                     +
               "Actual Total Time": 1258770.080,                                                   +
               "Actual Rows": 3710592,                                                             +
               "Actual Loops": 1,                                                                  +
               "Inner Unique": false,                                                              +
               "Shared Hit Blocks": 14342744,                                                      +
               "Shared Read Blocks": 259385,                                                       +
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
                   "Total Cost": 641.96,                                                           +
                   "Plan Rows": 789,                                                               +
                   "Plan Width": 21,                                                               +
                   "Actual Startup Time": 385.115,                                                 +
                   "Actual Total Time": 1161446.921,                                               +
                   "Actual Rows": 2832555,                                                         +
                   "Actual Loops": 1,                                                              +
                   "Inner Unique": false,                                                          +
                   "Join Filter": "(t.id = ci.movie_id)",                                          +
                   "Rows Removed by Join Filter": 0,                                               +
                   "Shared Hit Blocks": 3741609,                                                   +
                   "Shared Read Blocks": 245891,                                                   +
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
                       "Plan Width": 29,                                                           +
                       "Actual Startup Time": 98.107,                                              +
                       "Actual Total Time": 139140.198,                                            +
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
                           "Plan Width": 33,                                                       +
                           "Actual Startup Time": 72.157,                                          +
                           "Actual Total Time": 109253.019,                                        +
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
                               "Actual Startup Time": 66.437,                                      +
                               "Actual Total Time": 100276.652,                                    +
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
                                   "Actual Startup Time": 48.641,                                  +
                                   "Actual Total Time": 6477.057,                                  +
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
                                       "Actual Startup Time": 30.965,                              +
                                       "Actual Total Time": 30.966,                                +
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
                                       "Actual Startup Time": 17.631,                              +
                                       "Actual Total Time": 6403.990,                              +
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
                                   "Actual Startup Time": 2.238,                                   +
                                   "Actual Total Time": 2.238,                                     +
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
                               "Actual Startup Time": 0.170,                                       +
                               "Actual Total Time": 0.208,                                         +
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
                           "Actual Startup Time": 0.199,                                           +
                           "Actual Total Time": 0.199,                                             +
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
                     },                                                                            +
                     {                                                                             +
                       "Node Type": "Index Scan",                                                  +
                       "Parent Relationship": "Inner",                                             +
                       "Parallel Aware": false,                                                    +
                       "Scan Direction": "Forward",                                                +
                       "Index Name": "movie_id_cast_info",                                         +
                       "Relation Name": "cast_info",                                               +
                       "Alias": "ci",                                                              +
                       "Startup Cost": 0.02,                                                       +
                       "Total Cost": 0.26,                                                         +
                       "Plan Rows": 23,                                                            +
                       "Plan Width": 8,                                                            +
                       "Actual Startup Time": 1.310,                                               +
                       "Actual Total Time": 14.927,                                                +
                       "Actual Rows": 41,                                                          +
                       "Actual Loops": 68316,                                                      +
                       "Index Cond": "(movie_id = mk.movie_id)",                                   +
                       "Rows Removed by Index Recheck": 0,                                         +
                       "Shared Hit Blocks": 2839255,                                               +
                       "Shared Read Blocks": 185490,                                               +
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
                   "Index Name": "person_id_aka_name",                                             +
                   "Relation Name": "aka_name",                                                    +
                   "Alias": "an",                                                                  +
                   "Startup Cost": 0.01,                                                           +
                   "Total Cost": 0.01,                                                             +
                   "Plan Rows": 2,                                                                 +
                   "Plan Width": 20,                                                               +
                   "Actual Startup Time": 0.029,                                                   +
                   "Actual Total Time": 0.032,                                                     +
                   "Actual Rows": 1,                                                               +
                   "Actual Loops": 2832555,                                                        +
                   "Index Cond": "(person_id = ci.person_id)",                                     +
                   "Rows Removed by Index Recheck": 0,                                             +
                   "Shared Hit Blocks": 10601135,                                                  +
                   "Shared Read Blocks": 13494,                                                    +
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
             },                                                                                    +
             {                                                                                     +
               "Node Type": "Index Scan",                                                          +
               "Parent Relationship": "Inner",                                                     +
               "Parallel Aware": false,                                                            +
               "Scan Direction": "Forward",                                                        +
               "Index Name": "name_pkey",                                                          +
               "Relation Name": "name",                                                            +
               "Alias": "n",                                                                       +
               "Startup Cost": 0.01,                                                               +
               "Total Cost": 0.02,                                                                 +
               "Plan Rows": 1,                                                                     +
               "Plan Width": 4,                                                                    +
               "Actual Startup Time": 0.096,                                                       +
               "Actual Total Time": 0.096,                                                         +
               "Actual Rows": 1,                                                                   +
               "Actual Loops": 3710592,                                                            +
               "Index Cond": "(id = ci.person_id)",                                                +
               "Rows Removed by Index Recheck": 0,                                                 +
               "Shared Hit Blocks": 14793004,                                                      +
               "Shared Read Blocks": 61543,                                                        +
               "Shared Dirtied Blocks": 0,                                                         +
               "Shared Written Blocks": 0,                                                         +
               "Local Hit Blocks": 0,                                                              +
               "Local Read Blocks": 0,                                                             +
               "Local Dirtied Blocks": 0,                                                          +
               "Local Written Blocks": 0,                                                          +
               "Temp Read Blocks": 0,                                                              +
               "Temp Written Blocks": 0                                                            +
             }                                                                                     +
           ]                                                                                       +
         }                                                                                         +
       ]                                                                                           +
     },                                                                                            +
     "Planning Time": 7395.668,                                                                    +
     "Triggers": [                                                                                 +
     ],                                                                                            +
     "Execution Time": 1624220.216                                                                 +
   }                                                                                               +
 ]
(1 row)

