                                             QUERY PLAN                                             
----------------------------------------------------------------------------------------------------
 [                                                                                                 +
   {                                                                                               +
     "Plan": {                                                                                     +
       "Node Type": "Aggregate",                                                                   +
       "Strategy": "Plain",                                                                        +
       "Partial Mode": "Simple",                                                                   +
       "Parallel Aware": false,                                                                    +
       "Startup Cost": 632.76,                                                                     +
       "Total Cost": 632.76,                                                                       +
       "Plan Rows": 1,                                                                             +
       "Plan Width": 64,                                                                           +
       "Actual Startup Time": 455261.132,                                                          +
       "Actual Total Time": 455261.133,                                                            +
       "Actual Rows": 1,                                                                           +
       "Actual Loops": 1,                                                                          +
       "Shared Hit Blocks": 1995729,                                                               +
       "Shared Read Blocks": 97776,                                                                +
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
           "Total Cost": 632.73,                                                                   +
           "Plan Rows": 188,                                                                       +
           "Plan Width": 33,                                                                       +
           "Actual Startup Time": 320.793,                                                         +
           "Actual Total Time": 454924.416,                                                        +
           "Actual Rows": 249455,                                                                  +
           "Actual Loops": 1,                                                                      +
           "Inner Unique": true,                                                                   +
           "Join Filter": "(an.person_id = n.id)",                                                 +
           "Rows Removed by Join Filter": 0,                                                       +
           "Shared Hit Blocks": 1995729,                                                           +
           "Shared Read Blocks": 97776,                                                            +
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
               "Total Cost": 629.03,                                                               +
               "Plan Rows": 188,                                                                   +
               "Plan Width": 41,                                                                   +
               "Actual Startup Time": 302.467,                                                     +
               "Actual Total Time": 323726.180,                                                    +
               "Actual Rows": 249455,                                                              +
               "Actual Loops": 1,                                                                  +
               "Inner Unique": false,                                                              +
               "Shared Hit Blocks": 1016104,                                                       +
               "Shared Read Blocks": 78813,                                                        +
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
                   "Total Cost": 625.82,                                                           +
                   "Plan Rows": 216,                                                               +
                   "Plan Width": 21,                                                               +
                   "Actual Startup Time": 273.558,                                                 +
                   "Actual Total Time": 261822.304,                                                +
                   "Actual Rows": 169273,                                                          +
                   "Actual Loops": 1,                                                              +
                   "Inner Unique": false,                                                          +
                   "Join Filter": "(t.id = ci.movie_id)",                                          +
                   "Rows Removed by Join Filter": 0,                                               +
                   "Shared Hit Blocks": 359360,                                                    +
                   "Shared Read Blocks": 68979,                                                    +
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
                       "Total Cost": 620.81,                                                       +
                       "Plan Rows": 19,                                                            +
                       "Plan Width": 29,                                                           +
                       "Actual Startup Time": 244.805,                                             +
                       "Actual Total Time": 65407.671,                                             +
                       "Actual Rows": 6766,                                                        +
                       "Actual Loops": 1,                                                          +
                       "Inner Unique": true,                                                       +
                       "Shared Hit Blocks": 196095,                                                +
                       "Shared Read Blocks": 40136,                                                +
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
                           "Total Cost": 619.89,                                                   +
                           "Plan Rows": 52,                                                        +
                           "Plan Width": 33,                                                       +
                           "Actual Startup Time": 94.144,                                          +
                           "Actual Total Time": 56442.298,                                         +
                           "Actual Rows": 8661,                                                    +
                           "Actual Loops": 1,                                                      +
                           "Inner Unique": false,                                                  +
                           "Join Filter": "(t.id = mc.movie_id)",                                  +
                           "Rows Removed by Join Filter": 0,                                       +
                           "Shared Hit Blocks": 162228,                                            +
                           "Shared Read Blocks": 39348,                                            +
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
                               "Plan Rows": 9,                                                     +
                               "Plan Width": 25,                                                   +
                               "Actual Startup Time": 69.961,                                      +
                               "Actual Total Time": 48969.169,                                     +
                               "Actual Rows": 5385,                                                +
                               "Actual Loops": 1,                                                  +
                               "Inner Unique": true,                                               +
                               "Shared Hit Blocks": 141704,                                        +
                               "Shared Read Blocks": 37530,                                        +
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
                                   "Actual Startup Time": 51.450,                                  +
                                   "Actual Total Time": 3043.553,                                  +
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
                                       "Actual Startup Time": 51.169,                              +
                                       "Actual Total Time": 51.172,                                +
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
                                       "Actual Startup Time": 0.235,                               +
                                       "Actual Total Time": 2965.961,                              +
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
                                   "Actual Startup Time": 1.096,                                   +
                                   "Actual Total Time": 1.096,                                     +
                                   "Actual Rows": 0,                                               +
                                   "Actual Loops": 41840,                                          +
                                   "Index Cond": "(id = mk.movie_id)",                             +
                                   "Rows Removed by Index Recheck": 0,                             +
                                   "Filter": "((episode_nr >= 5) AND (episode_nr < 100))",         +
                                   "Rows Removed by Filter": 1,                                    +
                                   "Shared Hit Blocks": 141701,                                    +
                                   "Shared Read Blocks": 25871,                                    +
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
                               "Actual Startup Time": 1.083,                                       +
                               "Actual Total Time": 1.381,                                         +
                               "Actual Rows": 2,                                                   +
                               "Actual Loops": 5385,                                               +
                               "Index Cond": "(movie_id = mk.movie_id)",                           +
                               "Rows Removed by Index Recheck": 0,                                 +
                               "Shared Hit Blocks": 20524,                                         +
                               "Shared Read Blocks": 1818,                                         +
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
                           "Actual Startup Time": 1.032,                                           +
                           "Actual Total Time": 1.032,                                             +
                           "Actual Rows": 1,                                                       +
                           "Actual Loops": 8661,                                                   +
                           "Index Cond": "(id = mc.company_id)",                                   +
                           "Rows Removed by Index Recheck": 0,                                     +
                           "Filter": "((country_code)::text = '[us]'::text)",                      +
                           "Rows Removed by Filter": 0,                                            +
                           "Shared Hit Blocks": 33867,                                             +
                           "Shared Read Blocks": 788,                                              +
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
                       "Actual Startup Time": 2.927,                                               +
                       "Actual Total Time": 28.995,                                                +
                       "Actual Rows": 25,                                                          +
                       "Actual Loops": 6766,                                                       +
                       "Index Cond": "(movie_id = mk.movie_id)",                                   +
                       "Rows Removed by Index Recheck": 0,                                         +
                       "Shared Hit Blocks": 163265,                                                +
                       "Shared Read Blocks": 28843,                                                +
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
                   "Actual Startup Time": 0.320,                                                   +
                   "Actual Total Time": 0.363,                                                     +
                   "Actual Rows": 1,                                                               +
                   "Actual Loops": 169273,                                                         +
                   "Index Cond": "(person_id = ci.person_id)",                                     +
                   "Rows Removed by Index Recheck": 0,                                             +
                   "Shared Hit Blocks": 656744,                                                    +
                   "Shared Read Blocks": 9834,                                                     +
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
               "Actual Startup Time": 0.524,                                                       +
               "Actual Total Time": 0.524,                                                         +
               "Actual Rows": 1,                                                                   +
               "Actual Loops": 249455,                                                             +
               "Index Cond": "(id = ci.person_id)",                                                +
               "Rows Removed by Index Recheck": 0,                                                 +
               "Shared Hit Blocks": 979625,                                                        +
               "Shared Read Blocks": 18963,                                                        +
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
     "Planning Time": 7865.791,                                                                    +
     "Triggers": [                                                                                 +
     ],                                                                                            +
     "Execution Time": 455261.714                                                                  +
   }                                                                                               +
 ]
(1 row)

