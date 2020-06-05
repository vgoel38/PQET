                                             QUERY PLAN                                             
----------------------------------------------------------------------------------------------------
 [                                                                                                 +
   {                                                                                               +
     "Plan": {                                                                                     +
       "Node Type": "Aggregate",                                                                   +
       "Strategy": "Plain",                                                                        +
       "Partial Mode": "Simple",                                                                   +
       "Parallel Aware": false,                                                                    +
       "Startup Cost": 637.34,                                                                     +
       "Total Cost": 637.34,                                                                       +
       "Plan Rows": 1,                                                                             +
       "Plan Width": 64,                                                                           +
       "Actual Startup Time": 528155.705,                                                          +
       "Actual Total Time": 528155.705,                                                            +
       "Actual Rows": 1,                                                                           +
       "Actual Loops": 1,                                                                          +
       "Shared Hit Blocks": 2543946,                                                               +
       "Shared Read Blocks": 109106,                                                               +
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
           "Total Cost": 637.30,                                                                   +
           "Plan Rows": 257,                                                                       +
           "Plan Width": 33,                                                                       +
           "Actual Startup Time": 267.247,                                                         +
           "Actual Total Time": 527733.348,                                                        +
           "Actual Rows": 319932,                                                                  +
           "Actual Loops": 1,                                                                      +
           "Inner Unique": true,                                                                   +
           "Join Filter": "(an.person_id = n.id)",                                                 +
           "Rows Removed by Join Filter": 0,                                                       +
           "Shared Hit Blocks": 2543946,                                                           +
           "Shared Read Blocks": 109106,                                                           +
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
               "Total Cost": 632.25,                                                               +
               "Plan Rows": 257,                                                                   +
               "Plan Width": 41,                                                                   +
               "Actual Startup Time": 248.937,                                                     +
               "Actual Total Time": 375449.654,                                                    +
               "Actual Rows": 319932,                                                              +
               "Actual Loops": 1,                                                                  +
               "Inner Unique": false,                                                              +
               "Shared Hit Blocks": 1285252,                                                       +
               "Shared Read Blocks": 87047,                                                        +
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
                   "Total Cost": 627.86,                                                           +
                   "Plan Rows": 295,                                                               +
                   "Plan Width": 21,                                                               +
                   "Actual Startup Time": 211.692,                                                 +
                   "Actual Total Time": 310307.987,                                                +
                   "Actual Rows": 221609,                                                          +
                   "Actual Loops": 1,                                                              +
                   "Inner Unique": false,                                                          +
                   "Join Filter": "(t.id = ci.movie_id)",                                          +
                   "Rows Removed by Join Filter": 0,                                               +
                   "Shared Hit Blocks": 427226,                                                    +
                   "Shared Read Blocks": 76523,                                                    +
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
                       "Total Cost": 621.28,                                                       +
                       "Plan Rows": 25,                                                            +
                       "Plan Width": 29,                                                           +
                       "Actual Startup Time": 182.934,                                             +
                       "Actual Total Time": 68421.753,                                             +
                       "Actual Rows": 8538,                                                        +
                       "Actual Loops": 1,                                                          +
                       "Inner Unique": true,                                                       +
                       "Shared Hit Blocks": 212895,                                                +
                       "Shared Read Blocks": 40604,                                                +
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
                           "Total Cost": 620.01,                                                   +
                           "Plan Rows": 71,                                                        +
                           "Plan Width": 33,                                                       +
                           "Actual Startup Time": 73.942,                                          +
                           "Actual Total Time": 57996.905,                                         +
                           "Actual Rows": 11406,                                                   +
                           "Actual Loops": 1,                                                      +
                           "Inner Unique": false,                                                  +
                           "Join Filter": "(t.id = mc.movie_id)",                                  +
                           "Rows Removed by Join Filter": 0,                                       +
                           "Shared Hit Blocks": 168182,                                            +
                           "Shared Read Blocks": 39682,                                            +
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
                               "Plan Rows": 13,                                                    +
                               "Plan Width": 25,                                                   +
                               "Actual Startup Time": 49.761,                                      +
                               "Actual Total Time": 50522.026,                                     +
                               "Actual Rows": 6926,                                                +
                               "Actual Loops": 1,                                                  +
                               "Inner Unique": true,                                               +
                               "Shared Hit Blocks": 141700,                                        +
                               "Shared Read Blocks": 37529,                                        +
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
                                   "Actual Startup Time": 31.972,                                  +
                                   "Actual Total Time": 2869.892,                                  +
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
                                       "Actual Startup Time": 13.105,                              +
                                       "Actual Total Time": 13.108,                                +
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
                                       "Actual Startup Time": 18.835,                              +
                                       "Actual Total Time": 2830.706,                              +
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
                                   "Actual Startup Time": 1.137,                                   +
                                   "Actual Total Time": 1.137,                                     +
                                   "Actual Rows": 0,                                               +
                                   "Actual Loops": 41840,                                          +
                                   "Index Cond": "(id = mk.movie_id)",                             +
                                   "Rows Removed by Index Recheck": 0,                             +
                                   "Filter": "(episode_nr < 100)",                                 +
                                   "Rows Removed by Filter": 1,                                    +
                                   "Shared Hit Blocks": 141697,                                    +
                                   "Shared Read Blocks": 25870,                                    +
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
                               "Actual Startup Time": 0.803,                                       +
                               "Actual Total Time": 1.073,                                         +
                               "Actual Rows": 2,                                                   +
                               "Actual Loops": 6926,                                               +
                               "Index Cond": "(movie_id = mk.movie_id)",                           +
                               "Rows Removed by Index Recheck": 0,                                 +
                               "Shared Hit Blocks": 26482,                                         +
                               "Shared Read Blocks": 2153,                                         +
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
                           "Actual Startup Time": 0.911,                                           +
                           "Actual Total Time": 0.911,                                             +
                           "Actual Rows": 1,                                                       +
                           "Actual Loops": 11406,                                                  +
                           "Index Cond": "(id = mc.company_id)",                                   +
                           "Rows Removed by Index Recheck": 0,                                     +
                           "Filter": "((country_code)::text = '[us]'::text)",                      +
                           "Rows Removed by Filter": 0,                                            +
                           "Shared Hit Blocks": 44713,                                             +
                           "Shared Read Blocks": 922,                                              +
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
                       "Actual Startup Time": 2.632,                                               +
                       "Actual Total Time": 28.295,                                                +
                       "Actual Rows": 26,                                                          +
                       "Actual Loops": 8538,                                                       +
                       "Index Cond": "(movie_id = mk.movie_id)",                                   +
                       "Rows Removed by Index Recheck": 0,                                         +
                       "Shared Hit Blocks": 214331,                                                +
                       "Shared Read Blocks": 35919,                                                +
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
                   "Actual Startup Time": 0.260,                                                   +
                   "Actual Total Time": 0.291,                                                     +
                   "Actual Rows": 1,                                                               +
                   "Actual Loops": 221609,                                                         +
                   "Index Cond": "(person_id = ci.person_id)",                                     +
                   "Rows Removed by Index Recheck": 0,                                             +
                   "Shared Hit Blocks": 858026,                                                    +
                   "Shared Read Blocks": 10524,                                                    +
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
               "Actual Startup Time": 0.474,                                                       +
               "Actual Total Time": 0.474,                                                         +
               "Actual Rows": 1,                                                                   +
               "Actual Loops": 319932,                                                             +
               "Index Cond": "(id = ci.person_id)",                                                +
               "Rows Removed by Index Recheck": 0,                                                 +
               "Shared Hit Blocks": 1258694,                                                       +
               "Shared Read Blocks": 22059,                                                        +
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
     "Planning Time": 7573.575,                                                                    +
     "Triggers": [                                                                                 +
     ],                                                                                            +
     "Execution Time": 528185.306                                                                  +
   }                                                                                               +
 ]
(1 row)

