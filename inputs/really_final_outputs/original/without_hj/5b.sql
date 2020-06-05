                                                             QUERY PLAN                                                              
-------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                  +
   {                                                                                                                                +
     "Plan": {                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                    +
       "Strategy": "Plain",                                                                                                         +
       "Partial Mode": "Simple",                                                                                                    +
       "Parallel Aware": false,                                                                                                     +
       "Startup Cost": 1454.39,                                                                                                     +
       "Total Cost": 1454.39,                                                                                                       +
       "Plan Rows": 1,                                                                                                              +
       "Plan Width": 32,                                                                                                            +
       "Actual Startup Time": 918.495,                                                                                              +
       "Actual Total Time": 918.496,                                                                                                +
       "Actual Rows": 1,                                                                                                            +
       "Actual Loops": 1,                                                                                                           +
       "Shared Hit Blocks": 4,                                                                                                      +
       "Shared Read Blocks": 18787,                                                                                                 +
       "Shared Dirtied Blocks": 0,                                                                                                  +
       "Shared Written Blocks": 0,                                                                                                  +
       "Local Hit Blocks": 0,                                                                                                       +
       "Local Read Blocks": 0,                                                                                                      +
       "Local Dirtied Blocks": 0,                                                                                                   +
       "Local Written Blocks": 0,                                                                                                   +
       "Temp Read Blocks": 0,                                                                                                       +
       "Temp Written Blocks": 0,                                                                                                    +
       "Plans": [                                                                                                                   +
         {                                                                                                                          +
           "Node Type": "Nested Loop",                                                                                              +
           "Parent Relationship": "Outer",                                                                                          +
           "Parallel Aware": false,                                                                                                 +
           "Join Type": "Inner",                                                                                                    +
           "Startup Cost": 0.03,                                                                                                    +
           "Total Cost": 1454.39,                                                                                                   +
           "Plan Rows": 1,                                                                                                          +
           "Plan Width": 17,                                                                                                        +
           "Actual Startup Time": 918.456,                                                                                          +
           "Actual Total Time": 918.456,                                                                                            +
           "Actual Rows": 0,                                                                                                        +
           "Actual Loops": 1,                                                                                                       +
           "Inner Unique": false,                                                                                                   +
           "Join Filter": "(mi.info_type_id = it.id)",                                                                              +
           "Rows Removed by Join Filter": 0,                                                                                        +
           "Shared Hit Blocks": 4,                                                                                                  +
           "Shared Read Blocks": 18787,                                                                                             +
           "Shared Dirtied Blocks": 0,                                                                                              +
           "Shared Written Blocks": 0,                                                                                              +
           "Local Hit Blocks": 0,                                                                                                   +
           "Local Read Blocks": 0,                                                                                                  +
           "Local Dirtied Blocks": 0,                                                                                               +
           "Local Written Blocks": 0,                                                                                               +
           "Temp Read Blocks": 0,                                                                                                   +
           "Temp Written Blocks": 0,                                                                                                +
           "Plans": [                                                                                                               +
             {                                                                                                                      +
               "Node Type": "Seq Scan",                                                                                             +
               "Parent Relationship": "Outer",                                                                                      +
               "Parallel Aware": false,                                                                                             +
               "Relation Name": "info_type",                                                                                        +
               "Alias": "it",                                                                                                       +
               "Startup Cost": 0.00,                                                                                                +
               "Total Cost": 0.04,                                                                                                  +
               "Plan Rows": 113,                                                                                                    +
               "Plan Width": 4,                                                                                                     +
               "Actual Startup Time": 0.011,                                                                                        +
               "Actual Total Time": 0.027,                                                                                          +
               "Actual Rows": 113,                                                                                                  +
               "Actual Loops": 1,                                                                                                   +
               "Shared Hit Blocks": 1,                                                                                              +
               "Shared Read Blocks": 0,                                                                                             +
               "Shared Dirtied Blocks": 0,                                                                                          +
               "Shared Written Blocks": 0,                                                                                          +
               "Local Hit Blocks": 0,                                                                                               +
               "Local Read Blocks": 0,                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                           +
               "Local Written Blocks": 0,                                                                                           +
               "Temp Read Blocks": 0,                                                                                               +
               "Temp Written Blocks": 0                                                                                             +
             },                                                                                                                     +
             {                                                                                                                      +
               "Node Type": "Materialize",                                                                                          +
               "Parent Relationship": "Inner",                                                                                      +
               "Parallel Aware": false,                                                                                             +
               "Startup Cost": 0.03,                                                                                                +
               "Total Cost": 1454.32,                                                                                               +
               "Plan Rows": 1,                                                                                                      +
               "Plan Width": 21,                                                                                                    +
               "Actual Startup Time": 8.127,                                                                                        +
               "Actual Total Time": 8.127,                                                                                          +
               "Actual Rows": 0,                                                                                                    +
               "Actual Loops": 113,                                                                                                 +
               "Shared Hit Blocks": 3,                                                                                              +
               "Shared Read Blocks": 18787,                                                                                         +
               "Shared Dirtied Blocks": 0,                                                                                          +
               "Shared Written Blocks": 0,                                                                                          +
               "Local Hit Blocks": 0,                                                                                               +
               "Local Read Blocks": 0,                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                           +
               "Local Written Blocks": 0,                                                                                           +
               "Temp Read Blocks": 0,                                                                                               +
               "Temp Written Blocks": 0,                                                                                            +
               "Plans": [                                                                                                           +
                 {                                                                                                                  +
                   "Node Type": "Nested Loop",                                                                                      +
                   "Parent Relationship": "Outer",                                                                                  +
                   "Parallel Aware": false,                                                                                         +
                   "Join Type": "Inner",                                                                                            +
                   "Startup Cost": 0.03,                                                                                            +
                   "Total Cost": 1454.32,                                                                                           +
                   "Plan Rows": 1,                                                                                                  +
                   "Plan Width": 21,                                                                                                +
                   "Actual Startup Time": 918.379,                                                                                  +
                   "Actual Total Time": 918.379,                                                                                    +
                   "Actual Rows": 0,                                                                                                +
                   "Actual Loops": 1,                                                                                               +
                   "Inner Unique": false,                                                                                           +
                   "Shared Hit Blocks": 3,                                                                                          +
                   "Shared Read Blocks": 18787,                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                      +
                   "Shared Written Blocks": 0,                                                                                      +
                   "Local Hit Blocks": 0,                                                                                           +
                   "Local Read Blocks": 0,                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                       +
                   "Local Written Blocks": 0,                                                                                       +
                   "Temp Read Blocks": 0,                                                                                           +
                   "Temp Written Blocks": 0,                                                                                        +
                   "Plans": [                                                                                                       +
                     {                                                                                                              +
                       "Node Type": "Nested Loop",                                                                                  +
                       "Parent Relationship": "Outer",                                                                              +
                       "Parallel Aware": false,                                                                                     +
                       "Join Type": "Inner",                                                                                        +
                       "Startup Cost": 0.01,                                                                                        +
                       "Total Cost": 1451.12,                                                                                       +
                       "Plan Rows": 2,                                                                                              +
                       "Plan Width": 25,                                                                                            +
                       "Actual Startup Time": 918.379,                                                                              +
                       "Actual Total Time": 918.379,                                                                                +
                       "Actual Rows": 0,                                                                                            +
                       "Actual Loops": 1,                                                                                           +
                       "Inner Unique": true,                                                                                        +
                       "Shared Hit Blocks": 3,                                                                                      +
                       "Shared Read Blocks": 18787,                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                  +
                       "Shared Written Blocks": 0,                                                                                  +
                       "Local Hit Blocks": 0,                                                                                       +
                       "Local Read Blocks": 0,                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                   +
                       "Local Written Blocks": 0,                                                                                   +
                       "Temp Read Blocks": 0,                                                                                       +
                       "Temp Written Blocks": 0,                                                                                    +
                       "Plans": [                                                                                                   +
                         {                                                                                                          +
                           "Node Type": "Nested Loop",                                                                              +
                           "Parent Relationship": "Outer",                                                                          +
                           "Parallel Aware": false,                                                                                 +
                           "Join Type": "Inner",                                                                                    +
                           "Startup Cost": 0.00,                                                                                    +
                           "Total Cost": 1377.51,                                                                                   +
                           "Plan Rows": 12,                                                                                         +
                           "Plan Width": 4,                                                                                         +
                           "Actual Startup Time": 918.377,                                                                          +
                           "Actual Total Time": 918.377,                                                                            +
                           "Actual Rows": 0,                                                                                        +
                           "Actual Loops": 1,                                                                                       +
                           "Inner Unique": true,                                                                                    +
                           "Join Filter": "(ct.id = mc.company_type_id)",                                                           +
                           "Rows Removed by Join Filter": 1418,                                                                     +
                           "Shared Hit Blocks": 3,                                                                                  +
                           "Shared Read Blocks": 18787,                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                              +
                           "Shared Written Blocks": 0,                                                                              +
                           "Local Hit Blocks": 0,                                                                                   +
                           "Local Read Blocks": 0,                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                               +
                           "Local Written Blocks": 0,                                                                               +
                           "Temp Read Blocks": 0,                                                                                   +
                           "Temp Written Blocks": 0,                                                                                +
                           "Plans": [                                                                                               +
                             {                                                                                                      +
                               "Node Type": "Seq Scan",                                                                             +
                               "Parent Relationship": "Outer",                                                                      +
                               "Parallel Aware": false,                                                                             +
                               "Relation Name": "movie_companies",                                                                  +
                               "Alias": "mc",                                                                                       +
                               "Startup Cost": 0.00,                                                                                +
                               "Total Cost": 1377.47,                                                                               +
                               "Plan Rows": 46,                                                                                     +
                               "Plan Width": 8,                                                                                     +
                               "Actual Startup Time": 33.053,                                                                       +
                               "Actual Total Time": 917.445,                                                                        +
                               "Actual Rows": 1418,                                                                                 +
                               "Actual Loops": 1,                                                                                   +
                               "Filter": "((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))",+
                               "Rows Removed by Filter": 2607711,                                                                   +
                               "Shared Hit Blocks": 2,                                                                              +
                               "Shared Read Blocks": 18787,                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                          +
                               "Shared Written Blocks": 0,                                                                          +
                               "Local Hit Blocks": 0,                                                                               +
                               "Local Read Blocks": 0,                                                                              +
                               "Local Dirtied Blocks": 0,                                                                           +
                               "Local Written Blocks": 0,                                                                           +
                               "Temp Read Blocks": 0,                                                                               +
                               "Temp Written Blocks": 0                                                                             +
                             },                                                                                                     +
                             {                                                                                                      +
                               "Node Type": "Materialize",                                                                          +
                               "Parent Relationship": "Inner",                                                                      +
                               "Parallel Aware": false,                                                                             +
                               "Startup Cost": 0.00,                                                                                +
                               "Total Cost": 0.03,                                                                                  +
                               "Plan Rows": 1,                                                                                      +
                               "Plan Width": 4,                                                                                     +
                               "Actual Startup Time": 0.000,                                                                        +
                               "Actual Total Time": 0.000,                                                                          +
                               "Actual Rows": 1,                                                                                    +
                               "Actual Loops": 1418,                                                                                +
                               "Shared Hit Blocks": 1,                                                                              +
                               "Shared Read Blocks": 0,                                                                             +
                               "Shared Dirtied Blocks": 0,                                                                          +
                               "Shared Written Blocks": 0,                                                                          +
                               "Local Hit Blocks": 0,                                                                               +
                               "Local Read Blocks": 0,                                                                              +
                               "Local Dirtied Blocks": 0,                                                                           +
                               "Local Written Blocks": 0,                                                                           +
                               "Temp Read Blocks": 0,                                                                               +
                               "Temp Written Blocks": 0,                                                                            +
                               "Plans": [                                                                                           +
                                 {                                                                                                  +
                                   "Node Type": "Seq Scan",                                                                         +
                                   "Parent Relationship": "Outer",                                                                  +
                                   "Parallel Aware": false,                                                                         +
                                   "Relation Name": "company_type",                                                                 +
                                   "Alias": "ct",                                                                                   +
                                   "Startup Cost": 0.00,                                                                            +
                                   "Total Cost": 0.03,                                                                              +
                                   "Plan Rows": 1,                                                                                  +
                                   "Plan Width": 4,                                                                                 +
                                   "Actual Startup Time": 0.012,                                                                    +
                                   "Actual Total Time": 0.014,                                                                      +
                                   "Actual Rows": 1,                                                                                +
                                   "Actual Loops": 1,                                                                               +
                                   "Filter": "((kind)::text = 'production companies'::text)",                                       +
                                   "Rows Removed by Filter": 3,                                                                     +
                                   "Shared Hit Blocks": 1,                                                                          +
                                   "Shared Read Blocks": 0,                                                                         +
                                   "Shared Dirtied Blocks": 0,                                                                      +
                                   "Shared Written Blocks": 0,                                                                      +
                                   "Local Hit Blocks": 0,                                                                           +
                                   "Local Read Blocks": 0,                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                       +
                                   "Local Written Blocks": 0,                                                                       +
                                   "Temp Read Blocks": 0,                                                                           +
                                   "Temp Written Blocks": 0                                                                         +
                                 }                                                                                                  +
                               ]                                                                                                    +
                             }                                                                                                      +
                           ]                                                                                                        +
                         },                                                                                                         +
                         {                                                                                                          +
                           "Node Type": "Index Scan",                                                                               +
                           "Parent Relationship": "Inner",                                                                          +
                           "Parallel Aware": false,                                                                                 +
                           "Scan Direction": "Forward",                                                                             +
                           "Index Name": "title_idx_id",                                                                            +
                           "Relation Name": "title",                                                                                +
                           "Alias": "t",                                                                                            +
                           "Startup Cost": 0.01,                                                                                    +
                           "Total Cost": 6.13,                                                                                      +
                           "Plan Rows": 1,                                                                                          +
                           "Plan Width": 21,                                                                                        +
                           "Actual Startup Time": 0.000,                                                                            +
                           "Actual Total Time": 0.000,                                                                              +
                           "Actual Rows": 0,                                                                                        +
                           "Actual Loops": 0,                                                                                       +
                           "Index Cond": "(id = mc.movie_id)",                                                                      +
                           "Rows Removed by Index Recheck": 0,                                                                      +
                           "Filter": "(production_year > 2010)",                                                                    +
                           "Rows Removed by Filter": 0,                                                                             +
                           "Shared Hit Blocks": 0,                                                                                  +
                           "Shared Read Blocks": 0,                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                              +
                           "Shared Written Blocks": 0,                                                                              +
                           "Local Hit Blocks": 0,                                                                                   +
                           "Local Read Blocks": 0,                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                               +
                           "Local Written Blocks": 0,                                                                               +
                           "Temp Read Blocks": 0,                                                                                   +
                           "Temp Written Blocks": 0                                                                                 +
                         }                                                                                                          +
                       ]                                                                                                            +
                     },                                                                                                             +
                     {                                                                                                              +
                       "Node Type": "Index Scan",                                                                                   +
                       "Parent Relationship": "Inner",                                                                              +
                       "Parallel Aware": false,                                                                                     +
                       "Scan Direction": "Forward",                                                                                 +
                       "Index Name": "movie_id_movie_info",                                                                         +
                       "Relation Name": "movie_info",                                                                               +
                       "Alias": "mi",                                                                                               +
                       "Startup Cost": 0.01,                                                                                        +
                       "Total Cost": 1.60,                                                                                          +
                       "Plan Rows": 1,                                                                                              +
                       "Plan Width": 8,                                                                                             +
                       "Actual Startup Time": 0.000,                                                                                +
                       "Actual Total Time": 0.000,                                                                                  +
                       "Actual Rows": 0,                                                                                            +
                       "Actual Loops": 0,                                                                                           +
                       "Index Cond": "(movie_id = t.id)",                                                                           +
                       "Rows Removed by Index Recheck": 0,                                                                          +
                       "Filter": "(info = ANY ('{USA,America}'::text[]))",                                                          +
                       "Rows Removed by Filter": 0,                                                                                 +
                       "Shared Hit Blocks": 0,                                                                                      +
                       "Shared Read Blocks": 0,                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                  +
                       "Shared Written Blocks": 0,                                                                                  +
                       "Local Hit Blocks": 0,                                                                                       +
                       "Local Read Blocks": 0,                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                   +
                       "Local Written Blocks": 0,                                                                                   +
                       "Temp Read Blocks": 0,                                                                                       +
                       "Temp Written Blocks": 0                                                                                     +
                     }                                                                                                              +
                   ]                                                                                                                +
                 }                                                                                                                  +
               ]                                                                                                                    +
             }                                                                                                                      +
           ]                                                                                                                        +
         }                                                                                                                          +
       ]                                                                                                                            +
     },                                                                                                                             +
     "Planning Time": 1945.366,                                                                                                     +
     "Triggers": [                                                                                                                  +
     ],                                                                                                                             +
     "Execution Time": 942.708                                                                                                      +
   }                                                                                                                                +
 ]
(1 row)

