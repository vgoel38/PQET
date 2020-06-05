                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                           +
   {                                                                                                                                                         +
     "Plan": {                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                             +
       "Parallel Aware": false,                                                                                                                              +
       "Startup Cost": 2002.78,                                                                                                                              +
       "Total Cost": 2002.78,                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                       +
       "Plan Width": 64,                                                                                                                                     +
       "Actual Startup Time": 1844.352,                                                                                                                      +
       "Actual Total Time": 1844.352,                                                                                                                        +
       "Actual Rows": 1,                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                    +
       "Shared Hit Blocks": 302,                                                                                                                             +
       "Shared Read Blocks": 8572,                                                                                                                           +
       "Shared Dirtied Blocks": 0,                                                                                                                           +
       "Shared Written Blocks": 0,                                                                                                                           +
       "Local Hit Blocks": 0,                                                                                                                                +
       "Local Read Blocks": 0,                                                                                                                               +
       "Local Dirtied Blocks": 0,                                                                                                                            +
       "Local Written Blocks": 0,                                                                                                                            +
       "Temp Read Blocks": 0,                                                                                                                                +
       "Temp Written Blocks": 0,                                                                                                                             +
       "Plans": [                                                                                                                                            +
         {                                                                                                                                                   +
           "Node Type": "Nested Loop",                                                                                                                       +
           "Parent Relationship": "Outer",                                                                                                                   +
           "Parallel Aware": false,                                                                                                                          +
           "Join Type": "Inner",                                                                                                                             +
           "Startup Cost": 0.05,                                                                                                                             +
           "Total Cost": 2002.78,                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                   +
           "Plan Width": 59,                                                                                                                                 +
           "Actual Startup Time": 1164.521,                                                                                                                  +
           "Actual Total Time": 1844.254,                                                                                                                    +
           "Actual Rows": 10,                                                                                                                                +
           "Actual Loops": 1,                                                                                                                                +
           "Inner Unique": true,                                                                                                                             +
           "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                      +
           "Rows Removed by Join Filter": 1200,                                                                                                              +
           "Shared Hit Blocks": 302,                                                                                                                         +
           "Shared Read Blocks": 8572,                                                                                                                       +
           "Shared Dirtied Blocks": 0,                                                                                                                       +
           "Shared Written Blocks": 0,                                                                                                                       +
           "Local Hit Blocks": 0,                                                                                                                            +
           "Local Read Blocks": 0,                                                                                                                           +
           "Local Dirtied Blocks": 0,                                                                                                                        +
           "Local Written Blocks": 0,                                                                                                                        +
           "Temp Read Blocks": 0,                                                                                                                            +
           "Temp Written Blocks": 0,                                                                                                                         +
           "Plans": [                                                                                                                                        +
             {                                                                                                                                               +
               "Node Type": "Nested Loop",                                                                                                                   +
               "Parent Relationship": "Outer",                                                                                                               +
               "Parallel Aware": false,                                                                                                                      +
               "Join Type": "Inner",                                                                                                                         +
               "Startup Cost": 0.05,                                                                                                                         +
               "Total Cost": 2002.72,                                                                                                                        +
               "Plan Rows": 40,                                                                                                                              +
               "Plan Width": 63,                                                                                                                             +
               "Actual Startup Time": 1108.016,                                                                                                              +
               "Actual Total Time": 1842.728,                                                                                                                +
               "Actual Rows": 1210,                                                                                                                          +
               "Actual Loops": 1,                                                                                                                            +
               "Inner Unique": false,                                                                                                                        +
               "Join Filter": "(t.id = mi.movie_id)",                                                                                                        +
               "Rows Removed by Join Filter": 0,                                                                                                             +
               "Shared Hit Blocks": 301,                                                                                                                     +
               "Shared Read Blocks": 8572,                                                                                                                   +
               "Shared Dirtied Blocks": 0,                                                                                                                   +
               "Shared Written Blocks": 0,                                                                                                                   +
               "Local Hit Blocks": 0,                                                                                                                        +
               "Local Read Blocks": 0,                                                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                                                    +
               "Local Written Blocks": 0,                                                                                                                    +
               "Temp Read Blocks": 0,                                                                                                                        +
               "Temp Written Blocks": 0,                                                                                                                     +
               "Plans": [                                                                                                                                    +
                 {                                                                                                                                           +
                   "Node Type": "Nested Loop",                                                                                                               +
                   "Parent Relationship": "Outer",                                                                                                           +
                   "Parallel Aware": false,                                                                                                                  +
                   "Join Type": "Inner",                                                                                                                     +
                   "Startup Cost": 0.04,                                                                                                                     +
                   "Total Cost": 2001.96,                                                                                                                    +
                   "Plan Rows": 3,                                                                                                                           +
                   "Plan Width": 29,                                                                                                                         +
                   "Actual Startup Time": 1076.425,                                                                                                          +
                   "Actual Total Time": 1558.547,                                                                                                            +
                   "Actual Rows": 10,                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                        +
                   "Inner Unique": true,                                                                                                                     +
                   "Shared Hit Blocks": 109,                                                                                                                 +
                   "Shared Read Blocks": 8528,                                                                                                               +
                   "Shared Dirtied Blocks": 0,                                                                                                               +
                   "Shared Written Blocks": 0,                                                                                                               +
                   "Local Hit Blocks": 0,                                                                                                                    +
                   "Local Read Blocks": 0,                                                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                                                +
                   "Local Written Blocks": 0,                                                                                                                +
                   "Temp Read Blocks": 0,                                                                                                                    +
                   "Temp Written Blocks": 0,                                                                                                                 +
                   "Plans": [                                                                                                                                +
                     {                                                                                                                                       +
                       "Node Type": "Nested Loop",                                                                                                           +
                       "Parent Relationship": "Outer",                                                                                                       +
                       "Parallel Aware": false,                                                                                                              +
                       "Join Type": "Inner",                                                                                                                 +
                       "Startup Cost": 0.03,                                                                                                                 +
                       "Total Cost": 2001.81,                                                                                                                +
                       "Plan Rows": 8,                                                                                                                       +
                       "Plan Width": 33,                                                                                                                     +
                       "Actual Startup Time": 1028.020,                                                                                                      +
                       "Actual Total Time": 1181.555,                                                                                                        +
                       "Actual Rows": 33,                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                    +
                       "Inner Unique": true,                                                                                                                 +
                       "Join Filter": "(mc.company_type_id = ct.id)",                                                                                        +
                       "Rows Removed by Join Filter": 5,                                                                                                     +
                       "Shared Hit Blocks": 19,                                                                                                              +
                       "Shared Read Blocks": 8486,                                                                                                           +
                       "Shared Dirtied Blocks": 0,                                                                                                           +
                       "Shared Written Blocks": 0,                                                                                                           +
                       "Local Hit Blocks": 0,                                                                                                                +
                       "Local Read Blocks": 0,                                                                                                               +
                       "Local Dirtied Blocks": 0,                                                                                                            +
                       "Local Written Blocks": 0,                                                                                                            +
                       "Temp Read Blocks": 0,                                                                                                                +
                       "Temp Written Blocks": 0,                                                                                                             +
                       "Plans": [                                                                                                                            +
                         {                                                                                                                                   +
                           "Node Type": "Nested Loop",                                                                                                       +
                           "Parent Relationship": "Outer",                                                                                                   +
                           "Parallel Aware": false,                                                                                                          +
                           "Join Type": "Inner",                                                                                                             +
                           "Startup Cost": 0.03,                                                                                                             +
                           "Total Cost": 2001.78,                                                                                                            +
                           "Plan Rows": 16,                                                                                                                  +
                           "Plan Width": 37,                                                                                                                 +
                           "Actual Startup Time": 1027.976,                                                                                                  +
                           "Actual Total Time": 1181.411,                                                                                                    +
                           "Actual Rows": 33,                                                                                                                +
                           "Actual Loops": 1,                                                                                                                +
                           "Inner Unique": false,                                                                                                            +
                           "Join Filter": "(t.id = mc.movie_id)",                                                                                            +
                           "Rows Removed by Join Filter": 0,                                                                                                 +
                           "Shared Hit Blocks": 18,                                                                                                          +
                           "Shared Read Blocks": 8486,                                                                                                       +
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
                               "Startup Cost": 0.01,                                                                                                         +
                               "Total Cost": 2001.27,                                                                                                        +
                               "Plan Rows": 7,                                                                                                               +
                               "Plan Width": 25,                                                                                                             +
                               "Actual Startup Time": 992.350,                                                                                               +
                               "Actual Total Time": 1084.340,                                                                                                +
                               "Actual Rows": 2,                                                                                                             +
                               "Actual Loops": 1,                                                                                                            +
                               "Inner Unique": true,                                                                                                         +
                               "Shared Hit Blocks": 16,                                                                                                      +
                               "Shared Read Blocks": 8478,                                                                                                   +
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
                                   "Startup Cost": 0.00,                                                                                                     +
                                   "Total Cost": 670.32,                                                                                                     +
                                   "Plan Rows": 12213,                                                                                                       +
                                   "Plan Width": 4,                                                                                                          +
                                   "Actual Startup Time": 656.943,                                                                                           +
                                   "Actual Total Time": 656.998,                                                                                             +
                                   "Actual Rows": 10,                                                                                                        +
                                   "Actual Loops": 1,                                                                                                        +
                                   "Inner Unique": true,                                                                                                     +
                                   "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                                          +
                                   "Rows Removed by Join Filter": 1380025,                                                                                   +
                                   "Shared Hit Blocks": 3,                                                                                                   +
                                   "Shared Read Blocks": 8451,                                                                                               +
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
                                       "Relation Name": "movie_info_idx",                                                                                    +
                                       "Alias": "mi_idx",                                                                                                    +
                                       "Startup Cost": 0.00,                                                                                                 +
                                       "Total Cost": 360.56,                                                                                                 +
                                       "Plan Rows": 1380035,                                                                                                 +
                                       "Plan Width": 8,                                                                                                      +
                                       "Actual Startup Time": 0.018,                                                                                         +
                                       "Actual Total Time": 158.438,                                                                                         +
                                       "Actual Rows": 1380035,                                                                                               +
                                       "Actual Loops": 1,                                                                                                    +
                                       "Shared Hit Blocks": 2,                                                                                               +
                                       "Shared Read Blocks": 8451,                                                                                           +
                                       "Shared Dirtied Blocks": 0,                                                                                           +
                                       "Shared Written Blocks": 0,                                                                                           +
                                       "Local Hit Blocks": 0,                                                                                                +
                                       "Local Read Blocks": 0,                                                                                               +
                                       "Local Dirtied Blocks": 0,                                                                                            +
                                       "Local Written Blocks": 0,                                                                                            +
                                       "Temp Read Blocks": 0,                                                                                                +
                                       "Temp Written Blocks": 0                                                                                              +
                                     },                                                                                                                      +
                                     {                                                                                                                       +
                                       "Node Type": "Materialize",                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                       +
                                       "Parallel Aware": false,                                                                                              +
                                       "Startup Cost": 0.00,                                                                                                 +
                                       "Total Cost": 0.05,                                                                                                   +
                                       "Plan Rows": 1,                                                                                                       +
                                       "Plan Width": 4,                                                                                                      +
                                       "Actual Startup Time": 0.000,                                                                                         +
                                       "Actual Total Time": 0.000,                                                                                           +
                                       "Actual Rows": 1,                                                                                                     +
                                       "Actual Loops": 1380035,                                                                                              +
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
                                           "Relation Name": "info_type",                                                                                     +
                                           "Alias": "it2",                                                                                                   +
                                           "Startup Cost": 0.00,                                                                                             +
                                           "Total Cost": 0.05,                                                                                               +
                                           "Plan Rows": 1,                                                                                                   +
                                           "Plan Width": 4,                                                                                                  +
                                           "Actual Startup Time": 0.071,                                                                                     +
                                           "Actual Total Time": 0.072,                                                                                       +
                                           "Actual Rows": 1,                                                                                                 +
                                           "Actual Loops": 1,                                                                                                +
                                           "Filter": "((info)::text = 'bottom 10 rank'::text)",                                                              +
                                           "Rows Removed by Filter": 112,                                                                                    +
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
                                   "Node Type": "Index Scan",                                                                                                +
                                   "Parent Relationship": "Inner",                                                                                           +
                                   "Parallel Aware": false,                                                                                                  +
                                   "Scan Direction": "Forward",                                                                                              +
                                   "Index Name": "title_idx_id",                                                                                             +
                                   "Relation Name": "title",                                                                                                 +
                                   "Alias": "t",                                                                                                             +
                                   "Startup Cost": 0.01,                                                                                                     +
                                   "Total Cost": 0.11,                                                                                                       +
                                   "Plan Rows": 1,                                                                                                           +
                                   "Plan Width": 21,                                                                                                         +
                                   "Actual Startup Time": 42.729,                                                                                            +
                                   "Actual Total Time": 42.729,                                                                                              +
                                   "Actual Rows": 0,                                                                                                         +
                                   "Actual Loops": 10,                                                                                                       +
                                   "Index Cond": "(id = mi_idx.movie_id)",                                                                                   +
                                   "Rows Removed by Index Recheck": 0,                                                                                       +
                                   "Filter": "((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))",                  +
                                   "Rows Removed by Filter": 1,                                                                                              +
                                   "Shared Hit Blocks": 13,                                                                                                  +
                                   "Shared Read Blocks": 27,                                                                                                 +
                                   "Shared Dirtied Blocks": 0,                                                                                               +
                                   "Shared Written Blocks": 0,                                                                                               +
                                   "Local Hit Blocks": 0,                                                                                                    +
                                   "Local Read Blocks": 0,                                                                                                   +
                                   "Local Dirtied Blocks": 0,                                                                                                +
                                   "Local Written Blocks": 0,                                                                                                +
                                   "Temp Read Blocks": 0,                                                                                                    +
                                   "Temp Written Blocks": 0                                                                                                  +
                                 }                                                                                                                           +
                               ]                                                                                                                             +
                             },                                                                                                                              +
                             {                                                                                                                               +
                               "Node Type": "Index Scan",                                                                                                    +
                               "Parent Relationship": "Inner",                                                                                               +
                               "Parallel Aware": false,                                                                                                      +
                               "Scan Direction": "Forward",                                                                                                  +
                               "Index Name": "movie_id_movie_companies",                                                                                     +
                               "Relation Name": "movie_companies",                                                                                           +
                               "Alias": "mc",                                                                                                                +
                               "Startup Cost": 0.01,                                                                                                         +
                               "Total Cost": 0.07,                                                                                                           +
                               "Plan Rows": 2,                                                                                                               +
                               "Plan Width": 12,                                                                                                             +
                               "Actual Startup Time": 36.032,                                                                                                +
                               "Actual Total Time": 48.489,                                                                                                  +
                               "Actual Rows": 16,                                                                                                            +
                               "Actual Loops": 2,                                                                                                            +
                               "Index Cond": "(movie_id = mi_idx.movie_id)",                                                                                 +
                               "Rows Removed by Index Recheck": 0,                                                                                           +
                               "Shared Hit Blocks": 2,                                                                                                       +
                               "Shared Read Blocks": 8,                                                                                                      +
                               "Shared Dirtied Blocks": 0,                                                                                                   +
                               "Shared Written Blocks": 0,                                                                                                   +
                               "Local Hit Blocks": 0,                                                                                                        +
                               "Local Read Blocks": 0,                                                                                                       +
                               "Local Dirtied Blocks": 0,                                                                                                    +
                               "Local Written Blocks": 0,                                                                                                    +
                               "Temp Read Blocks": 0,                                                                                                        +
                               "Temp Written Blocks": 0                                                                                                      +
                             }                                                                                                                               +
                           ]                                                                                                                                 +
                         },                                                                                                                                  +
                         {                                                                                                                                   +
                           "Node Type": "Materialize",                                                                                                       +
                           "Parent Relationship": "Inner",                                                                                                   +
                           "Parallel Aware": false,                                                                                                          +
                           "Startup Cost": 0.00,                                                                                                             +
                           "Total Cost": 0.03,                                                                                                               +
                           "Plan Rows": 2,                                                                                                                   +
                           "Plan Width": 4,                                                                                                                  +
                           "Actual Startup Time": 0.002,                                                                                                     +
                           "Actual Total Time": 0.002,                                                                                                       +
                           "Actual Rows": 1,                                                                                                                 +
                           "Actual Loops": 33,                                                                                                               +
                           "Shared Hit Blocks": 1,                                                                                                           +
                           "Shared Read Blocks": 0,                                                                                                          +
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
                               "Node Type": "Seq Scan",                                                                                                      +
                               "Parent Relationship": "Outer",                                                                                               +
                               "Parallel Aware": false,                                                                                                      +
                               "Relation Name": "company_type",                                                                                              +
                               "Alias": "ct",                                                                                                                +
                               "Startup Cost": 0.00,                                                                                                         +
                               "Total Cost": 0.03,                                                                                                           +
                               "Plan Rows": 2,                                                                                                               +
                               "Plan Width": 4,                                                                                                              +
                               "Actual Startup Time": 0.024,                                                                                                 +
                               "Actual Total Time": 0.029,                                                                                                   +
                               "Actual Rows": 2,                                                                                                             +
                               "Actual Loops": 1,                                                                                                            +
                               "Filter": "((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))",+
                               "Rows Removed by Filter": 0,                                                                                                  +
                               "Shared Hit Blocks": 1,                                                                                                       +
                               "Shared Read Blocks": 0,                                                                                                      +
                               "Shared Dirtied Blocks": 0,                                                                                                   +
                               "Shared Written Blocks": 0,                                                                                                   +
                               "Local Hit Blocks": 0,                                                                                                        +
                               "Local Read Blocks": 0,                                                                                                       +
                               "Local Dirtied Blocks": 0,                                                                                                    +
                               "Local Written Blocks": 0,                                                                                                    +
                               "Temp Read Blocks": 0,                                                                                                        +
                               "Temp Written Blocks": 0                                                                                                      +
                             }                                                                                                                               +
                           ]                                                                                                                                 +
                         }                                                                                                                                   +
                       ]                                                                                                                                     +
                     },                                                                                                                                      +
                     {                                                                                                                                       +
                       "Node Type": "Index Scan",                                                                                                            +
                       "Parent Relationship": "Inner",                                                                                                       +
                       "Parallel Aware": false,                                                                                                              +
                       "Scan Direction": "Forward",                                                                                                          +
                       "Index Name": "company_name_pkey",                                                                                                    +
                       "Relation Name": "company_name",                                                                                                      +
                       "Alias": "cn",                                                                                                                        +
                       "Startup Cost": 0.01,                                                                                                                 +
                       "Total Cost": 0.02,                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 4,                                                                                                                      +
                       "Actual Startup Time": 11.420,                                                                                                        +
                       "Actual Total Time": 11.420,                                                                                                          +
                       "Actual Rows": 0,                                                                                                                     +
                       "Actual Loops": 33,                                                                                                                   +
                       "Index Cond": "(id = mc.company_id)",                                                                                                 +
                       "Rows Removed by Index Recheck": 0,                                                                                                   +
                       "Filter": "((country_code)::text = '[us]'::text)",                                                                                    +
                       "Rows Removed by Filter": 1,                                                                                                          +
                       "Shared Hit Blocks": 90,                                                                                                              +
                       "Shared Read Blocks": 42,                                                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                                                           +
                       "Shared Written Blocks": 0,                                                                                                           +
                       "Local Hit Blocks": 0,                                                                                                                +
                       "Local Read Blocks": 0,                                                                                                               +
                       "Local Dirtied Blocks": 0,                                                                                                            +
                       "Local Written Blocks": 0,                                                                                                            +
                       "Temp Read Blocks": 0,                                                                                                                +
                       "Temp Written Blocks": 0                                                                                                              +
                     }                                                                                                                                       +
                   ]                                                                                                                                         +
                 },                                                                                                                                          +
                 {                                                                                                                                           +
                   "Node Type": "Index Scan",                                                                                                                +
                   "Parent Relationship": "Inner",                                                                                                           +
                   "Parallel Aware": false,                                                                                                                  +
                   "Scan Direction": "Forward",                                                                                                              +
                   "Index Name": "movie_id_movie_info",                                                                                                      +
                   "Relation Name": "movie_info",                                                                                                            +
                   "Alias": "mi",                                                                                                                            +
                   "Startup Cost": 0.01,                                                                                                                     +
                   "Total Cost": 0.25,                                                                                                                       +
                   "Plan Rows": 9,                                                                                                                           +
                   "Plan Width": 50,                                                                                                                         +
                   "Actual Startup Time": 7.066,                                                                                                             +
                   "Actual Total Time": 28.311,                                                                                                              +
                   "Actual Rows": 121,                                                                                                                       +
                   "Actual Loops": 10,                                                                                                                       +
                   "Index Cond": "(movie_id = mc.movie_id)",                                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                                       +
                   "Shared Hit Blocks": 192,                                                                                                                 +
                   "Shared Read Blocks": 44,                                                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                                               +
                   "Shared Written Blocks": 0,                                                                                                               +
                   "Local Hit Blocks": 0,                                                                                                                    +
                   "Local Read Blocks": 0,                                                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                                                +
                   "Local Written Blocks": 0,                                                                                                                +
                   "Temp Read Blocks": 0,                                                                                                                    +
                   "Temp Written Blocks": 0                                                                                                                  +
                 }                                                                                                                                           +
               ]                                                                                                                                             +
             },                                                                                                                                              +
             {                                                                                                                                               +
               "Node Type": "Materialize",                                                                                                                   +
               "Parent Relationship": "Inner",                                                                                                               +
               "Parallel Aware": false,                                                                                                                      +
               "Startup Cost": 0.00,                                                                                                                         +
               "Total Cost": 0.05,                                                                                                                           +
               "Plan Rows": 1,                                                                                                                               +
               "Plan Width": 4,                                                                                                                              +
               "Actual Startup Time": 0.000,                                                                                                                 +
               "Actual Total Time": 0.000,                                                                                                                   +
               "Actual Rows": 1,                                                                                                                             +
               "Actual Loops": 1210,                                                                                                                         +
               "Shared Hit Blocks": 1,                                                                                                                       +
               "Shared Read Blocks": 0,                                                                                                                      +
               "Shared Dirtied Blocks": 0,                                                                                                                   +
               "Shared Written Blocks": 0,                                                                                                                   +
               "Local Hit Blocks": 0,                                                                                                                        +
               "Local Read Blocks": 0,                                                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                                                    +
               "Local Written Blocks": 0,                                                                                                                    +
               "Temp Read Blocks": 0,                                                                                                                        +
               "Temp Written Blocks": 0,                                                                                                                     +
               "Plans": [                                                                                                                                    +
                 {                                                                                                                                           +
                   "Node Type": "Seq Scan",                                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                                           +
                   "Parallel Aware": false,                                                                                                                  +
                   "Relation Name": "info_type",                                                                                                             +
                   "Alias": "it1",                                                                                                                           +
                   "Startup Cost": 0.00,                                                                                                                     +
                   "Total Cost": 0.05,                                                                                                                       +
                   "Plan Rows": 1,                                                                                                                           +
                   "Plan Width": 4,                                                                                                                          +
                   "Actual Startup Time": 0.059,                                                                                                             +
                   "Actual Total Time": 0.063,                                                                                                               +
                   "Actual Rows": 1,                                                                                                                         +
                   "Actual Loops": 1,                                                                                                                        +
                   "Filter": "((info)::text = 'budget'::text)",                                                                                              +
                   "Rows Removed by Filter": 112,                                                                                                            +
                   "Shared Hit Blocks": 1,                                                                                                                   +
                   "Shared Read Blocks": 0,                                                                                                                  +
                   "Shared Dirtied Blocks": 0,                                                                                                               +
                   "Shared Written Blocks": 0,                                                                                                               +
                   "Local Hit Blocks": 0,                                                                                                                    +
                   "Local Read Blocks": 0,                                                                                                                   +
                   "Local Dirtied Blocks": 0,                                                                                                                +
                   "Local Written Blocks": 0,                                                                                                                +
                   "Temp Read Blocks": 0,                                                                                                                    +
                   "Temp Written Blocks": 0                                                                                                                  +
                 }                                                                                                                                           +
               ]                                                                                                                                             +
             }                                                                                                                                               +
           ]                                                                                                                                                 +
         }                                                                                                                                                   +
       ]                                                                                                                                                     +
     },                                                                                                                                                      +
     "Planning Time": 5027.497,                                                                                                                              +
     "Triggers": [                                                                                                                                           +
     ],                                                                                                                                                      +
     "Execution Time": 1878.531                                                                                                                              +
   }                                                                                                                                                         +
 ]
(1 row)

