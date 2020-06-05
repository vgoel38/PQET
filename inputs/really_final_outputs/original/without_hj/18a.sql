                                          QUERY PLAN                                           
-----------------------------------------------------------------------------------------------
 [                                                                                            +
   {                                                                                          +
     "Plan": {                                                                                +
       "Node Type": "Aggregate",                                                              +
       "Strategy": "Plain",                                                                   +
       "Partial Mode": "Simple",                                                              +
       "Parallel Aware": false,                                                               +
       "Startup Cost": 5517.56,                                                               +
       "Total Cost": 5517.56,                                                                 +
       "Plan Rows": 1,                                                                        +
       "Plan Width": 96,                                                                      +
       "Actual Startup Time": 1502057.562,                                                    +
       "Actual Total Time": 1502057.562,                                                      +
       "Actual Rows": 1,                                                                      +
       "Actual Loops": 1,                                                                     +
       "Shared Hit Blocks": 8701067,                                                          +
       "Shared Read Blocks": 505816,                                                          +
       "Shared Dirtied Blocks": 0,                                                            +
       "Shared Written Blocks": 0,                                                            +
       "Local Hit Blocks": 0,                                                                 +
       "Local Read Blocks": 0,                                                                +
       "Local Dirtied Blocks": 0,                                                             +
       "Local Written Blocks": 0,                                                             +
       "Temp Read Blocks": 0,                                                                 +
       "Temp Written Blocks": 0,                                                              +
       "Plans": [                                                                             +
         {                                                                                    +
           "Node Type": "Nested Loop",                                                        +
           "Parent Relationship": "Outer",                                                    +
           "Parallel Aware": false,                                                           +
           "Join Type": "Inner",                                                              +
           "Startup Cost": 0.06,                                                              +
           "Total Cost": 5517.56,                                                             +
           "Plan Rows": 2,                                                                    +
           "Plan Width": 65,                                                                  +
           "Actual Startup Time": 22309.374,                                                  +
           "Actual Total Time": 1502041.818,                                                  +
           "Actual Rows": 410,                                                                +
           "Actual Loops": 1,                                                                 +
           "Inner Unique": true,                                                              +
           "Shared Hit Blocks": 8701067,                                                      +
           "Shared Read Blocks": 505816,                                                      +
           "Shared Dirtied Blocks": 0,                                                        +
           "Shared Written Blocks": 0,                                                        +
           "Local Hit Blocks": 0,                                                             +
           "Local Read Blocks": 0,                                                            +
           "Local Dirtied Blocks": 0,                                                         +
           "Local Written Blocks": 0,                                                         +
           "Temp Read Blocks": 0,                                                             +
           "Temp Written Blocks": 0,                                                          +
           "Plans": [                                                                         +
             {                                                                                +
               "Node Type": "Nested Loop",                                                    +
               "Parent Relationship": "Outer",                                                +
               "Parallel Aware": false,                                                       +
               "Join Type": "Inner",                                                          +
               "Startup Cost": 0.04,                                                          +
               "Total Cost": 5310.84,                                                         +
               "Plan Rows": 1969,                                                             +
               "Plan Width": 69,                                                              +
               "Actual Startup Time": 160.740,                                                +
               "Actual Total Time": 1278748.449,                                              +
               "Actual Rows": 107339,                                                         +
               "Actual Loops": 1,                                                             +
               "Inner Unique": false,                                                         +
               "Join Filter": "(t.id = ci.movie_id)",                                         +
               "Rows Removed by Join Filter": 0,                                              +
               "Shared Hit Blocks": 8303533,                                                  +
               "Shared Read Blocks": 473153,                                                  +
               "Shared Dirtied Blocks": 0,                                                    +
               "Shared Written Blocks": 0,                                                    +
               "Local Hit Blocks": 0,                                                         +
               "Local Read Blocks": 0,                                                        +
               "Local Dirtied Blocks": 0,                                                     +
               "Local Written Blocks": 0,                                                     +
               "Temp Read Blocks": 0,                                                         +
               "Temp Written Blocks": 0,                                                      +
               "Plans": [                                                                     +
                 {                                                                            +
                   "Node Type": "Nested Loop",                                                +
                   "Parent Relationship": "Outer",                                            +
                   "Parallel Aware": false,                                                   +
                   "Join Type": "Inner",                                                      +
                   "Startup Cost": 0.03,                                                      +
                   "Total Cost": 5212.06,                                                     +
                   "Plan Rows": 1025,                                                         +
                   "Plan Width": 77,                                                          +
                   "Actual Startup Time": 114.080,                                            +
                   "Actual Total Time": 162409.487,                                           +
                   "Actual Rows": 45431,                                                      +
                   "Actual Loops": 1,                                                         +
                   "Inner Unique": true,                                                      +
                   "Join Filter": "(mi.info_type_id = it1.id)",                               +
                   "Rows Removed by Join Filter": 6884903,                                    +
                   "Shared Hit Blocks": 6572028,                                              +
                   "Shared Read Blocks": 243897,                                              +
                   "Shared Dirtied Blocks": 0,                                                +
                   "Shared Written Blocks": 0,                                                +
                   "Local Hit Blocks": 0,                                                     +
                   "Local Read Blocks": 0,                                                    +
                   "Local Dirtied Blocks": 0,                                                 +
                   "Local Written Blocks": 0,                                                 +
                   "Temp Read Blocks": 0,                                                     +
                   "Temp Written Blocks": 0,                                                  +
                   "Plans": [                                                                 +
                     {                                                                        +
                       "Node Type": "Nested Loop",                                            +
                       "Parent Relationship": "Outer",                                        +
                       "Parallel Aware": false,                                               +
                       "Join Type": "Inner",                                                  +
                       "Startup Cost": 0.03,                                                  +
                       "Total Cost": 5186.01,                                                 +
                       "Plan Rows": 115821,                                                   +
                       "Plan Width": 81,                                                      +
                       "Actual Startup Time": 33.597,                                         +
                       "Actual Total Time": 154964.113,                                       +
                       "Actual Rows": 6930334,                                                +
                       "Actual Loops": 1,                                                     +
                       "Inner Unique": false,                                                 +
                       "Shared Hit Blocks": 6572027,                                          +
                       "Shared Read Blocks": 243897,                                          +
                       "Shared Dirtied Blocks": 0,                                            +
                       "Shared Written Blocks": 0,                                            +
                       "Local Hit Blocks": 0,                                                 +
                       "Local Read Blocks": 0,                                                +
                       "Local Dirtied Blocks": 0,                                             +
                       "Local Written Blocks": 0,                                             +
                       "Temp Read Blocks": 0,                                                 +
                       "Temp Written Blocks": 0,                                              +
                       "Plans": [                                                             +
                         {                                                                    +
                           "Node Type": "Nested Loop",                                        +
                           "Parent Relationship": "Outer",                                    +
                           "Parallel Aware": false,                                           +
                           "Join Type": "Inner",                                              +
                           "Startup Cost": 0.01,                                              +
                           "Total Cost": 1998.43,                                             +
                           "Plan Rows": 12213,                                                +
                           "Plan Width": 31,                                                  +
                           "Actual Startup Time": 27.204,                                     +
                           "Actual Total Time": 62966.869,                                    +
                           "Actual Rows": 459925,                                             +
                           "Actual Loops": 1,                                                 +
                           "Inner Unique": true,                                              +
                           "Shared Hit Blocks": 1798620,                                      +
                           "Shared Read Blocks": 50808,                                       +
                           "Shared Dirtied Blocks": 0,                                        +
                           "Shared Written Blocks": 0,                                        +
                           "Local Hit Blocks": 0,                                             +
                           "Local Read Blocks": 0,                                            +
                           "Local Dirtied Blocks": 0,                                         +
                           "Local Written Blocks": 0,                                         +
                           "Temp Read Blocks": 0,                                             +
                           "Temp Written Blocks": 0,                                          +
                           "Plans": [                                                         +
                             {                                                                +
                               "Node Type": "Nested Loop",                                    +
                               "Parent Relationship": "Outer",                                +
                               "Parallel Aware": false,                                       +
                               "Join Type": "Inner",                                          +
                               "Startup Cost": 0.00,                                          +
                               "Total Cost": 670.32,                                          +
                               "Plan Rows": 12213,                                            +
                               "Plan Width": 10,                                              +
                               "Actual Startup Time": 0.087,                                  +
                               "Actual Total Time": 2255.698,                                 +
                               "Actual Rows": 459925,                                         +
                               "Actual Loops": 1,                                             +
                               "Inner Unique": true,                                          +
                               "Join Filter": "(it2.id = mi_idx.info_type_id)",               +
                               "Rows Removed by Join Filter": 920110,                         +
                               "Shared Hit Blocks": 3,                                        +
                               "Shared Read Blocks": 8451,                                    +
                               "Shared Dirtied Blocks": 0,                                    +
                               "Shared Written Blocks": 0,                                    +
                               "Local Hit Blocks": 0,                                         +
                               "Local Read Blocks": 0,                                        +
                               "Local Dirtied Blocks": 0,                                     +
                               "Local Written Blocks": 0,                                     +
                               "Temp Read Blocks": 0,                                         +
                               "Temp Written Blocks": 0,                                      +
                               "Plans": [                                                     +
                                 {                                                            +
                                   "Node Type": "Seq Scan",                                   +
                                   "Parent Relationship": "Outer",                            +
                                   "Parallel Aware": false,                                   +
                                   "Relation Name": "movie_info_idx",                         +
                                   "Alias": "mi_idx",                                         +
                                   "Startup Cost": 0.00,                                      +
                                   "Total Cost": 360.56,                                      +
                                   "Plan Rows": 1380035,                                      +
                                   "Plan Width": 14,                                          +
                                   "Actual Startup Time": 0.014,                              +
                                   "Actual Total Time": 570.472,                              +
                                   "Actual Rows": 1380035,                                    +
                                   "Actual Loops": 1,                                         +
                                   "Shared Hit Blocks": 2,                                    +
                                   "Shared Read Blocks": 8451,                                +
                                   "Shared Dirtied Blocks": 0,                                +
                                   "Shared Written Blocks": 0,                                +
                                   "Local Hit Blocks": 0,                                     +
                                   "Local Read Blocks": 0,                                    +
                                   "Local Dirtied Blocks": 0,                                 +
                                   "Local Written Blocks": 0,                                 +
                                   "Temp Read Blocks": 0,                                     +
                                   "Temp Written Blocks": 0                                   +
                                 },                                                           +
                                 {                                                            +
                                   "Node Type": "Materialize",                                +
                                   "Parent Relationship": "Inner",                            +
                                   "Parallel Aware": false,                                   +
                                   "Startup Cost": 0.00,                                      +
                                   "Total Cost": 0.05,                                        +
                                   "Plan Rows": 1,                                            +
                                   "Plan Width": 4,                                           +
                                   "Actual Startup Time": 0.000,                              +
                                   "Actual Total Time": 0.000,                                +
                                   "Actual Rows": 1,                                          +
                                   "Actual Loops": 1380035,                                   +
                                   "Shared Hit Blocks": 1,                                    +
                                   "Shared Read Blocks": 0,                                   +
                                   "Shared Dirtied Blocks": 0,                                +
                                   "Shared Written Blocks": 0,                                +
                                   "Local Hit Blocks": 0,                                     +
                                   "Local Read Blocks": 0,                                    +
                                   "Local Dirtied Blocks": 0,                                 +
                                   "Local Written Blocks": 0,                                 +
                                   "Temp Read Blocks": 0,                                     +
                                   "Temp Written Blocks": 0,                                  +
                                   "Plans": [                                                 +
                                     {                                                        +
                                       "Node Type": "Seq Scan",                               +
                                       "Parent Relationship": "Outer",                        +
                                       "Parallel Aware": false,                               +
                                       "Relation Name": "info_type",                          +
                                       "Alias": "it2",                                        +
                                       "Startup Cost": 0.00,                                  +
                                       "Total Cost": 0.05,                                    +
                                       "Plan Rows": 1,                                        +
                                       "Plan Width": 4,                                       +
                                       "Actual Startup Time": 0.049,                          +
                                       "Actual Total Time": 0.055,                            +
                                       "Actual Rows": 1,                                      +
                                       "Actual Loops": 1,                                     +
                                       "Filter": "((info)::text = 'votes'::text)",            +
                                       "Rows Removed by Filter": 112,                         +
                                       "Shared Hit Blocks": 1,                                +
                                       "Shared Read Blocks": 0,                               +
                                       "Shared Dirtied Blocks": 0,                            +
                                       "Shared Written Blocks": 0,                            +
                                       "Local Hit Blocks": 0,                                 +
                                       "Local Read Blocks": 0,                                +
                                       "Local Dirtied Blocks": 0,                             +
                                       "Local Written Blocks": 0,                             +
                                       "Temp Read Blocks": 0,                                 +
                                       "Temp Written Blocks": 0                               +
                                     }                                                        +
                                   ]                                                          +
                                 }                                                            +
                               ]                                                              +
                             },                                                               +
                             {                                                                +
                               "Node Type": "Index Scan",                                     +
                               "Parent Relationship": "Inner",                                +
                               "Parallel Aware": false,                                       +
                               "Scan Direction": "Forward",                                   +
                               "Index Name": "title_idx_id",                                  +
                               "Relation Name": "title",                                      +
                               "Alias": "t",                                                  +
                               "Startup Cost": 0.01,                                          +
                               "Total Cost": 0.11,                                            +
                               "Plan Rows": 1,                                                +
                               "Plan Width": 21,                                              +
                               "Actual Startup Time": 0.130,                                  +
                               "Actual Total Time": 0.130,                                    +
                               "Actual Rows": 1,                                              +
                               "Actual Loops": 459925,                                        +
                               "Index Cond": "(id = mi_idx.movie_id)",                        +
                               "Rows Removed by Index Recheck": 0,                            +
                               "Shared Hit Blocks": 1798617,                                  +
                               "Shared Read Blocks": 42357,                                   +
                               "Shared Dirtied Blocks": 0,                                    +
                               "Shared Written Blocks": 0,                                    +
                               "Local Hit Blocks": 0,                                         +
                               "Local Read Blocks": 0,                                        +
                               "Local Dirtied Blocks": 0,                                     +
                               "Local Written Blocks": 0,                                     +
                               "Temp Read Blocks": 0,                                         +
                               "Temp Written Blocks": 0                                       +
                             }                                                                +
                           ]                                                                  +
                         },                                                                   +
                         {                                                                    +
                           "Node Type": "Index Scan",                                         +
                           "Parent Relationship": "Inner",                                    +
                           "Parallel Aware": false,                                           +
                           "Scan Direction": "Forward",                                       +
                           "Index Name": "movie_id_movie_info",                               +
                           "Relation Name": "movie_info",                                     +
                           "Alias": "mi",                                                     +
                           "Startup Cost": 0.01,                                              +
                           "Total Cost": 0.26,                                                +
                           "Plan Rows": 9,                                                    +
                           "Plan Width": 50,                                                  +
                           "Actual Startup Time": 0.035,                                      +
                           "Actual Total Time": 0.190,                                        +
                           "Actual Rows": 15,                                                 +
                           "Actual Loops": 459925,                                            +
                           "Index Cond": "(movie_id = t.id)",                                 +
                           "Rows Removed by Index Recheck": 0,                                +
                           "Shared Hit Blocks": 4773407,                                      +
                           "Shared Read Blocks": 193089,                                      +
                           "Shared Dirtied Blocks": 0,                                        +
                           "Shared Written Blocks": 0,                                        +
                           "Local Hit Blocks": 0,                                             +
                           "Local Read Blocks": 0,                                            +
                           "Local Dirtied Blocks": 0,                                         +
                           "Local Written Blocks": 0,                                         +
                           "Temp Read Blocks": 0,                                             +
                           "Temp Written Blocks": 0                                           +
                         }                                                                    +
                       ]                                                                      +
                     },                                                                       +
                     {                                                                        +
                       "Node Type": "Materialize",                                            +
                       "Parent Relationship": "Inner",                                        +
                       "Parallel Aware": false,                                               +
                       "Startup Cost": 0.00,                                                  +
                       "Total Cost": 0.05,                                                    +
                       "Plan Rows": 1,                                                        +
                       "Plan Width": 4,                                                       +
                       "Actual Startup Time": 0.000,                                          +
                       "Actual Total Time": 0.000,                                            +
                       "Actual Rows": 1,                                                      +
                       "Actual Loops": 6930334,                                               +
                       "Shared Hit Blocks": 1,                                                +
                       "Shared Read Blocks": 0,                                               +
                       "Shared Dirtied Blocks": 0,                                            +
                       "Shared Written Blocks": 0,                                            +
                       "Local Hit Blocks": 0,                                                 +
                       "Local Read Blocks": 0,                                                +
                       "Local Dirtied Blocks": 0,                                             +
                       "Local Written Blocks": 0,                                             +
                       "Temp Read Blocks": 0,                                                 +
                       "Temp Written Blocks": 0,                                              +
                       "Plans": [                                                             +
                         {                                                                    +
                           "Node Type": "Seq Scan",                                           +
                           "Parent Relationship": "Outer",                                    +
                           "Parallel Aware": false,                                           +
                           "Relation Name": "info_type",                                      +
                           "Alias": "it1",                                                    +
                           "Startup Cost": 0.00,                                              +
                           "Total Cost": 0.05,                                                +
                           "Plan Rows": 1,                                                    +
                           "Plan Width": 4,                                                   +
                           "Actual Startup Time": 0.054,                                      +
                           "Actual Total Time": 0.058,                                        +
                           "Actual Rows": 1,                                                  +
                           "Actual Loops": 1,                                                 +
                           "Filter": "((info)::text = 'budget'::text)",                       +
                           "Rows Removed by Filter": 112,                                     +
                           "Shared Hit Blocks": 1,                                            +
                           "Shared Read Blocks": 0,                                           +
                           "Shared Dirtied Blocks": 0,                                        +
                           "Shared Written Blocks": 0,                                        +
                           "Local Hit Blocks": 0,                                             +
                           "Local Read Blocks": 0,                                            +
                           "Local Dirtied Blocks": 0,                                         +
                           "Local Written Blocks": 0,                                         +
                           "Temp Read Blocks": 0,                                             +
                           "Temp Written Blocks": 0                                           +
                         }                                                                    +
                       ]                                                                      +
                     }                                                                        +
                   ]                                                                          +
                 },                                                                           +
                 {                                                                            +
                   "Node Type": "Index Scan",                                                 +
                   "Parent Relationship": "Inner",                                            +
                   "Parallel Aware": false,                                                   +
                   "Scan Direction": "Forward",                                               +
                   "Index Name": "movie_id_cast_info",                                        +
                   "Relation Name": "cast_info",                                              +
                   "Alias": "ci",                                                             +
                   "Startup Cost": 0.02,                                                      +
                   "Total Cost": 0.10,                                                        +
                   "Plan Rows": 1,                                                            +
                   "Plan Width": 8,                                                           +
                   "Actual Startup Time": 15.905,                                             +
                   "Actual Total Time": 24.567,                                               +
                   "Actual Rows": 2,                                                          +
                   "Actual Loops": 45431,                                                     +
                   "Index Cond": "(movie_id = mi.movie_id)",                                  +
                   "Rows Removed by Index Recheck": 0,                                        +
                   "Filter": "(note = ANY ('{(producer),\"(executive producer)\"}'::text[]))",+
                   "Rows Removed by Filter": 38,                                              +
                   "Shared Hit Blocks": 1731505,                                              +
                   "Shared Read Blocks": 229256,                                              +
                   "Shared Dirtied Blocks": 0,                                                +
                   "Shared Written Blocks": 0,                                                +
                   "Local Hit Blocks": 0,                                                     +
                   "Local Read Blocks": 0,                                                    +
                   "Local Dirtied Blocks": 0,                                                 +
                   "Local Written Blocks": 0,                                                 +
                   "Temp Read Blocks": 0,                                                     +
                   "Temp Written Blocks": 0                                                   +
                 }                                                                            +
               ]                                                                              +
             },                                                                               +
             {                                                                                +
               "Node Type": "Index Scan",                                                     +
               "Parent Relationship": "Inner",                                                +
               "Parallel Aware": false,                                                       +
               "Scan Direction": "Forward",                                                   +
               "Index Name": "name_pkey",                                                     +
               "Relation Name": "name",                                                       +
               "Alias": "n",                                                                  +
               "Startup Cost": 0.01,                                                          +
               "Total Cost": 0.10,                                                            +
               "Plan Rows": 1,                                                                +
               "Plan Width": 4,                                                               +
               "Actual Startup Time": 2.077,                                                  +
               "Actual Total Time": 2.077,                                                    +
               "Actual Rows": 0,                                                              +
               "Actual Loops": 107339,                                                        +
               "Index Cond": "(id = ci.person_id)",                                           +
               "Rows Removed by Index Recheck": 0,                                            +
               "Filter": "((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))",        +
               "Rows Removed by Filter": 1,                                                   +
               "Shared Hit Blocks": 397534,                                                   +
               "Shared Read Blocks": 32663,                                                   +
               "Shared Dirtied Blocks": 0,                                                    +
               "Shared Written Blocks": 0,                                                    +
               "Local Hit Blocks": 0,                                                         +
               "Local Read Blocks": 0,                                                        +
               "Local Dirtied Blocks": 0,                                                     +
               "Local Written Blocks": 0,                                                     +
               "Temp Read Blocks": 0,                                                         +
               "Temp Written Blocks": 0                                                       +
             }                                                                                +
           ]                                                                                  +
         }                                                                                    +
       ]                                                                                      +
     },                                                                                       +
     "Planning Time": 5758.551,                                                               +
     "Triggers": [                                                                            +
     ],                                                                                       +
     "Execution Time": 1502102.441                                                            +
   }                                                                                          +
 ]
(1 row)

