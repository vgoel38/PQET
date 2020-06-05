                                        QUERY PLAN                                         
-------------------------------------------------------------------------------------------
 [                                                                                        +
   {                                                                                      +
     "Plan": {                                                                            +
       "Node Type": "Aggregate",                                                          +
       "Strategy": "Plain",                                                               +
       "Partial Mode": "Simple",                                                          +
       "Parallel Aware": false,                                                           +
       "Startup Cost": 1958.71,                                                           +
       "Total Cost": 1958.71,                                                             +
       "Plan Rows": 1,                                                                    +
       "Plan Width": 68,                                                                  +
       "Actual Startup Time": 1158.893,                                                   +
       "Actual Total Time": 1158.893,                                                     +
       "Actual Rows": 1,                                                                  +
       "Actual Loops": 1,                                                                 +
       "Shared Hit Blocks": 26,                                                           +
       "Shared Read Blocks": 8499,                                                        +
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
           "Startup Cost": 0.03,                                                          +
           "Total Cost": 1958.46,                                                         +
           "Plan Rows": 1069,                                                             +
           "Plan Width": 45,                                                              +
           "Actual Startup Time": 1158.754,                                               +
           "Actual Total Time": 1158.814,                                                 +
           "Actual Rows": 3,                                                              +
           "Actual Loops": 1,                                                             +
           "Inner Unique": true,                                                          +
           "Join Filter": "(mc.movie_id = t.id)",                                         +
           "Rows Removed by Join Filter": 0,                                              +
           "Shared Hit Blocks": 26,                                                       +
           "Shared Read Blocks": 8499,                                                    +
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
               "Startup Cost": 0.01,                                                      +
               "Total Cost": 1546.81,                                                     +
               "Plan Rows": 3775,                                                         +
               "Plan Width": 32,                                                          +
               "Actual Startup Time": 851.935,                                            +
               "Actual Total Time": 1009.741,                                             +
               "Actual Rows": 5,                                                          +
               "Actual Loops": 1,                                                         +
               "Inner Unique": true,                                                      +
               "Join Filter": "(mc.company_type_id = ct.id)",                             +
               "Rows Removed by Join Filter": 95,                                         +
               "Shared Hit Blocks": 15,                                                   +
               "Shared Read Blocks": 8490,                                                +
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
                   "Startup Cost": 0.01,                                                  +
                   "Total Cost": 1543.39,                                                 +
                   "Plan Rows": 15098,                                                    +
                   "Plan Width": 36,                                                      +
                   "Actual Startup Time": 695.534,                                        +
                   "Actual Total Time": 1009.528,                                         +
                   "Actual Rows": 100,                                                    +
                   "Actual Loops": 1,                                                     +
                   "Inner Unique": false,                                                 +
                   "Shared Hit Blocks": 14,                                               +
                   "Shared Read Blocks": 8490,                                            +
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
                       "Startup Cost": 0.00,                                              +
                       "Total Cost": 670.32,                                              +
                       "Plan Rows": 12213,                                                +
                       "Plan Width": 4,                                                   +
                       "Actual Startup Time": 656.545,                                    +
                       "Actual Total Time": 656.604,                                      +
                       "Actual Rows": 10,                                                 +
                       "Actual Loops": 1,                                                 +
                       "Inner Unique": true,                                              +
                       "Join Filter": "(it.id = mi_idx.info_type_id)",                    +
                       "Rows Removed by Join Filter": 1380025,                            +
                       "Shared Hit Blocks": 3,                                            +
                       "Shared Read Blocks": 8451,                                        +
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
                           "Node Type": "Seq Scan",                                       +
                           "Parent Relationship": "Outer",                                +
                           "Parallel Aware": false,                                       +
                           "Relation Name": "movie_info_idx",                             +
                           "Alias": "mi_idx",                                             +
                           "Startup Cost": 0.00,                                          +
                           "Total Cost": 360.56,                                          +
                           "Plan Rows": 1380035,                                          +
                           "Plan Width": 8,                                               +
                           "Actual Startup Time": 0.013,                                  +
                           "Actual Total Time": 156.382,                                  +
                           "Actual Rows": 1380035,                                        +
                           "Actual Loops": 1,                                             +
                           "Shared Hit Blocks": 2,                                        +
                           "Shared Read Blocks": 8451,                                    +
                           "Shared Dirtied Blocks": 0,                                    +
                           "Shared Written Blocks": 0,                                    +
                           "Local Hit Blocks": 0,                                         +
                           "Local Read Blocks": 0,                                        +
                           "Local Dirtied Blocks": 0,                                     +
                           "Local Written Blocks": 0,                                     +
                           "Temp Read Blocks": 0,                                         +
                           "Temp Written Blocks": 0                                       +
                         },                                                               +
                         {                                                                +
                           "Node Type": "Materialize",                                    +
                           "Parent Relationship": "Inner",                                +
                           "Parallel Aware": false,                                       +
                           "Startup Cost": 0.00,                                          +
                           "Total Cost": 0.05,                                            +
                           "Plan Rows": 1,                                                +
                           "Plan Width": 4,                                               +
                           "Actual Startup Time": 0.000,                                  +
                           "Actual Total Time": 0.000,                                    +
                           "Actual Rows": 1,                                              +
                           "Actual Loops": 1380035,                                       +
                           "Shared Hit Blocks": 1,                                        +
                           "Shared Read Blocks": 0,                                       +
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
                               "Relation Name": "info_type",                              +
                               "Alias": "it",                                             +
                               "Startup Cost": 0.00,                                      +
                               "Total Cost": 0.05,                                        +
                               "Plan Rows": 1,                                            +
                               "Plan Width": 4,                                           +
                               "Actual Startup Time": 0.072,                              +
                               "Actual Total Time": 0.073,                                +
                               "Actual Rows": 1,                                          +
                               "Actual Loops": 1,                                         +
                               "Filter": "((info)::text = 'bottom 10 rank'::text)",       +
                               "Rows Removed by Filter": 112,                             +
                               "Shared Hit Blocks": 1,                                    +
                               "Shared Read Blocks": 0,                                   +
                               "Shared Dirtied Blocks": 0,                                +
                               "Shared Written Blocks": 0,                                +
                               "Local Hit Blocks": 0,                                     +
                               "Local Read Blocks": 0,                                    +
                               "Local Dirtied Blocks": 0,                                 +
                               "Local Written Blocks": 0,                                 +
                               "Temp Read Blocks": 0,                                     +
                               "Temp Written Blocks": 0                                   +
                             }                                                            +
                           ]                                                              +
                         }                                                                +
                       ]                                                                  +
                     },                                                                   +
                     {                                                                    +
                       "Node Type": "Index Scan",                                         +
                       "Parent Relationship": "Inner",                                    +
                       "Parallel Aware": false,                                           +
                       "Scan Direction": "Forward",                                       +
                       "Index Name": "movie_id_movie_companies",                          +
                       "Relation Name": "movie_companies",                                +
                       "Alias": "mc",                                                     +
                       "Startup Cost": 0.01,                                              +
                       "Total Cost": 0.07,                                                +
                       "Plan Rows": 1,                                                    +
                       "Plan Width": 32,                                                  +
                       "Actual Startup Time": 31.386,                                     +
                       "Actual Total Time": 35.279,                                       +
                       "Actual Rows": 10,                                                 +
                       "Actual Loops": 10,                                                +
                       "Index Cond": "(movie_id = mi_idx.movie_id)",                      +
                       "Rows Removed by Index Recheck": 0,                                +
                       "Filter": "(note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)",+
                       "Rows Removed by Filter": 2,                                       +
                       "Shared Hit Blocks": 11,                                           +
                       "Shared Read Blocks": 39,                                          +
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
                   "Total Cost": 0.03,                                                    +
                   "Plan Rows": 1,                                                        +
                   "Plan Width": 4,                                                       +
                   "Actual Startup Time": 0.001,                                          +
                   "Actual Total Time": 0.001,                                            +
                   "Actual Rows": 1,                                                      +
                   "Actual Loops": 100,                                                   +
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
                       "Relation Name": "company_type",                                   +
                       "Alias": "ct",                                                     +
                       "Startup Cost": 0.00,                                              +
                       "Total Cost": 0.03,                                                +
                       "Plan Rows": 1,                                                    +
                       "Plan Width": 4,                                                   +
                       "Actual Startup Time": 0.015,                                      +
                       "Actual Total Time": 0.018,                                        +
                       "Actual Rows": 1,                                                  +
                       "Actual Loops": 1,                                                 +
                       "Filter": "((kind)::text = 'production companies'::text)",         +
                       "Rows Removed by Filter": 3,                                       +
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
               "Index Name": "title_idx_id",                                              +
               "Relation Name": "title",                                                  +
               "Alias": "t",                                                              +
               "Startup Cost": 0.01,                                                      +
               "Total Cost": 0.11,                                                        +
               "Plan Rows": 1,                                                            +
               "Plan Width": 25,                                                          +
               "Actual Startup Time": 29.807,                                             +
               "Actual Total Time": 29.807,                                               +
               "Actual Rows": 1,                                                          +
               "Actual Loops": 5,                                                         +
               "Index Cond": "(id = mi_idx.movie_id)",                                    +
               "Rows Removed by Index Recheck": 0,                                        +
               "Filter": "((production_year >= 2005) AND (production_year <= 2010))",     +
               "Rows Removed by Filter": 0,                                               +
               "Shared Hit Blocks": 11,                                                   +
               "Shared Read Blocks": 9,                                                   +
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
         }                                                                                +
       ]                                                                                  +
     },                                                                                   +
     "Planning Time": 2330.539,                                                           +
     "Triggers": [                                                                        +
     ],                                                                                   +
     "Execution Time": 1181.919                                                           +
   }                                                                                      +
 ]
(1 row)

