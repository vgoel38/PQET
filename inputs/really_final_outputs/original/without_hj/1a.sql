                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                      +
   {                                                                                                                                                                    +
     "Plan": {                                                                                                                                                          +
       "Node Type": "Aggregate",                                                                                                                                        +
       "Strategy": "Plain",                                                                                                                                             +
       "Partial Mode": "Simple",                                                                                                                                        +
       "Parallel Aware": false,                                                                                                                                         +
       "Startup Cost": 1551.83,                                                                                                                                         +
       "Total Cost": 1551.83,                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                  +
       "Plan Width": 68,                                                                                                                                                +
       "Actual Startup Time": 10897.955,                                                                                                                                +
       "Actual Total Time": 10897.955,                                                                                                                                  +
       "Actual Rows": 1,                                                                                                                                                +
       "Actual Loops": 1,                                                                                                                                               +
       "Shared Hit Blocks": 877,                                                                                                                                        +
       "Shared Read Blocks": 9478,                                                                                                                                      +
       "Shared Dirtied Blocks": 0,                                                                                                                                      +
       "Shared Written Blocks": 0,                                                                                                                                      +
       "Local Hit Blocks": 0,                                                                                                                                           +
       "Local Read Blocks": 0,                                                                                                                                          +
       "Local Dirtied Blocks": 0,                                                                                                                                       +
       "Local Written Blocks": 0,                                                                                                                                       +
       "Temp Read Blocks": 0,                                                                                                                                           +
       "Temp Written Blocks": 0,                                                                                                                                        +
       "Plans": [                                                                                                                                                       +
         {                                                                                                                                                              +
           "Node Type": "Nested Loop",                                                                                                                                  +
           "Parent Relationship": "Outer",                                                                                                                              +
           "Parallel Aware": false,                                                                                                                                     +
           "Join Type": "Inner",                                                                                                                                        +
           "Startup Cost": 0.03,                                                                                                                                        +
           "Total Cost": 1551.82,                                                                                                                                       +
           "Plan Rows": 42,                                                                                                                                             +
           "Plan Width": 45,                                                                                                                                            +
           "Actual Startup Time": 747.367,                                                                                                                              +
           "Actual Total Time": 10897.042,                                                                                                                              +
           "Actual Rows": 142,                                                                                                                                          +
           "Actual Loops": 1,                                                                                                                                           +
           "Inner Unique": true,                                                                                                                                        +
           "Join Filter": "(mc.movie_id = t.id)",                                                                                                                       +
           "Rows Removed by Join Filter": 0,                                                                                                                            +
           "Shared Hit Blocks": 877,                                                                                                                                    +
           "Shared Read Blocks": 9478,                                                                                                                                  +
           "Shared Dirtied Blocks": 0,                                                                                                                                  +
           "Shared Written Blocks": 0,                                                                                                                                  +
           "Local Hit Blocks": 0,                                                                                                                                       +
           "Local Read Blocks": 0,                                                                                                                                      +
           "Local Dirtied Blocks": 0,                                                                                                                                   +
           "Local Written Blocks": 0,                                                                                                                                   +
           "Temp Read Blocks": 0,                                                                                                                                       +
           "Temp Written Blocks": 0,                                                                                                                                    +
           "Plans": [                                                                                                                                                   +
             {                                                                                                                                                          +
               "Node Type": "Nested Loop",                                                                                                                              +
               "Parent Relationship": "Outer",                                                                                                                          +
               "Parallel Aware": false,                                                                                                                                 +
               "Join Type": "Inner",                                                                                                                                    +
               "Startup Cost": 0.01,                                                                                                                                    +
               "Total Cost": 1547.25,                                                                                                                                   +
               "Plan Rows": 42,                                                                                                                                         +
               "Plan Width": 32,                                                                                                                                        +
               "Actual Startup Time": 702.408,                                                                                                                          +
               "Actual Total Time": 7045.167,                                                                                                                           +
               "Actual Rows": 142,                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                       +
               "Inner Unique": true,                                                                                                                                    +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                                                                           +
               "Rows Removed by Join Filter": 5,                                                                                                                        +
               "Shared Hit Blocks": 524,                                                                                                                                +
               "Shared Read Blocks": 9263,                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                              +
               "Shared Written Blocks": 0,                                                                                                                              +
               "Local Hit Blocks": 0,                                                                                                                                   +
               "Local Read Blocks": 0,                                                                                                                                  +
               "Local Dirtied Blocks": 0,                                                                                                                               +
               "Local Written Blocks": 0,                                                                                                                               +
               "Temp Read Blocks": 0,                                                                                                                                   +
               "Temp Written Blocks": 0,                                                                                                                                +
               "Plans": [                                                                                                                                               +
                 {                                                                                                                                                      +
                   "Node Type": "Nested Loop",                                                                                                                          +
                   "Parent Relationship": "Outer",                                                                                                                      +
                   "Parallel Aware": false,                                                                                                                             +
                   "Join Type": "Inner",                                                                                                                                +
                   "Startup Cost": 0.01,                                                                                                                                +
                   "Total Cost": 1547.18,                                                                                                                               +
                   "Plan Rows": 168,                                                                                                                                    +
                   "Plan Width": 36,                                                                                                                                    +
                   "Actual Startup Time": 702.378,                                                                                                                      +
                   "Actual Total Time": 7044.490,                                                                                                                       +
                   "Actual Rows": 147,                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                   +
                   "Inner Unique": false,                                                                                                                               +
                   "Shared Hit Blocks": 523,                                                                                                                            +
                   "Shared Read Blocks": 9263,                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                          +
                   "Shared Written Blocks": 0,                                                                                                                          +
                   "Local Hit Blocks": 0,                                                                                                                               +
                   "Local Read Blocks": 0,                                                                                                                              +
                   "Local Dirtied Blocks": 0,                                                                                                                           +
                   "Local Written Blocks": 0,                                                                                                                           +
                   "Temp Read Blocks": 0,                                                                                                                               +
                   "Temp Written Blocks": 0,                                                                                                                            +
                   "Plans": [                                                                                                                                           +
                     {                                                                                                                                                  +
                       "Node Type": "Nested Loop",                                                                                                                      +
                       "Parent Relationship": "Outer",                                                                                                                  +
                       "Parallel Aware": false,                                                                                                                         +
                       "Join Type": "Inner",                                                                                                                            +
                       "Startup Cost": 0.00,                                                                                                                            +
                       "Total Cost": 670.32,                                                                                                                            +
                       "Plan Rows": 12213,                                                                                                                              +
                       "Plan Width": 4,                                                                                                                                 +
                       "Actual Startup Time": 669.862,                                                                                                                  +
                       "Actual Total Time": 671.435,                                                                                                                    +
                       "Actual Rows": 250,                                                                                                                              +
                       "Actual Loops": 1,                                                                                                                               +
                       "Inner Unique": true,                                                                                                                            +
                       "Join Filter": "(it.id = mi_idx.info_type_id)",                                                                                                  +
                       "Rows Removed by Join Filter": 1379785,                                                                                                          +
                       "Shared Hit Blocks": 3,                                                                                                                          +
                       "Shared Read Blocks": 8451,                                                                                                                      +
                       "Shared Dirtied Blocks": 0,                                                                                                                      +
                       "Shared Written Blocks": 0,                                                                                                                      +
                       "Local Hit Blocks": 0,                                                                                                                           +
                       "Local Read Blocks": 0,                                                                                                                          +
                       "Local Dirtied Blocks": 0,                                                                                                                       +
                       "Local Written Blocks": 0,                                                                                                                       +
                       "Temp Read Blocks": 0,                                                                                                                           +
                       "Temp Written Blocks": 0,                                                                                                                        +
                       "Plans": [                                                                                                                                       +
                         {                                                                                                                                              +
                           "Node Type": "Seq Scan",                                                                                                                     +
                           "Parent Relationship": "Outer",                                                                                                              +
                           "Parallel Aware": false,                                                                                                                     +
                           "Relation Name": "movie_info_idx",                                                                                                           +
                           "Alias": "mi_idx",                                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                                        +
                           "Total Cost": 360.56,                                                                                                                        +
                           "Plan Rows": 1380035,                                                                                                                        +
                           "Plan Width": 8,                                                                                                                             +
                           "Actual Startup Time": 0.014,                                                                                                                +
                           "Actual Total Time": 159.692,                                                                                                                +
                           "Actual Rows": 1380035,                                                                                                                      +
                           "Actual Loops": 1,                                                                                                                           +
                           "Shared Hit Blocks": 2,                                                                                                                      +
                           "Shared Read Blocks": 8451,                                                                                                                  +
                           "Shared Dirtied Blocks": 0,                                                                                                                  +
                           "Shared Written Blocks": 0,                                                                                                                  +
                           "Local Hit Blocks": 0,                                                                                                                       +
                           "Local Read Blocks": 0,                                                                                                                      +
                           "Local Dirtied Blocks": 0,                                                                                                                   +
                           "Local Written Blocks": 0,                                                                                                                   +
                           "Temp Read Blocks": 0,                                                                                                                       +
                           "Temp Written Blocks": 0                                                                                                                     +
                         },                                                                                                                                             +
                         {                                                                                                                                              +
                           "Node Type": "Materialize",                                                                                                                  +
                           "Parent Relationship": "Inner",                                                                                                              +
                           "Parallel Aware": false,                                                                                                                     +
                           "Startup Cost": 0.00,                                                                                                                        +
                           "Total Cost": 0.05,                                                                                                                          +
                           "Plan Rows": 1,                                                                                                                              +
                           "Plan Width": 4,                                                                                                                             +
                           "Actual Startup Time": 0.000,                                                                                                                +
                           "Actual Total Time": 0.000,                                                                                                                  +
                           "Actual Rows": 1,                                                                                                                            +
                           "Actual Loops": 1380035,                                                                                                                     +
                           "Shared Hit Blocks": 1,                                                                                                                      +
                           "Shared Read Blocks": 0,                                                                                                                     +
                           "Shared Dirtied Blocks": 0,                                                                                                                  +
                           "Shared Written Blocks": 0,                                                                                                                  +
                           "Local Hit Blocks": 0,                                                                                                                       +
                           "Local Read Blocks": 0,                                                                                                                      +
                           "Local Dirtied Blocks": 0,                                                                                                                   +
                           "Local Written Blocks": 0,                                                                                                                   +
                           "Temp Read Blocks": 0,                                                                                                                       +
                           "Temp Written Blocks": 0,                                                                                                                    +
                           "Plans": [                                                                                                                                   +
                             {                                                                                                                                          +
                               "Node Type": "Seq Scan",                                                                                                                 +
                               "Parent Relationship": "Outer",                                                                                                          +
                               "Parallel Aware": false,                                                                                                                 +
                               "Relation Name": "info_type",                                                                                                            +
                               "Alias": "it",                                                                                                                           +
                               "Startup Cost": 0.00,                                                                                                                    +
                               "Total Cost": 0.05,                                                                                                                      +
                               "Plan Rows": 1,                                                                                                                          +
                               "Plan Width": 4,                                                                                                                         +
                               "Actual Startup Time": 0.070,                                                                                                            +
                               "Actual Total Time": 0.072,                                                                                                              +
                               "Actual Rows": 1,                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                       +
                               "Filter": "((info)::text = 'top 250 rank'::text)",                                                                                       +
                               "Rows Removed by Filter": 112,                                                                                                           +
                               "Shared Hit Blocks": 1,                                                                                                                  +
                               "Shared Read Blocks": 0,                                                                                                                 +
                               "Shared Dirtied Blocks": 0,                                                                                                              +
                               "Shared Written Blocks": 0,                                                                                                              +
                               "Local Hit Blocks": 0,                                                                                                                   +
                               "Local Read Blocks": 0,                                                                                                                  +
                               "Local Dirtied Blocks": 0,                                                                                                               +
                               "Local Written Blocks": 0,                                                                                                               +
                               "Temp Read Blocks": 0,                                                                                                                   +
                               "Temp Written Blocks": 0                                                                                                                 +
                             }                                                                                                                                          +
                           ]                                                                                                                                            +
                         }                                                                                                                                              +
                       ]                                                                                                                                                +
                     },                                                                                                                                                 +
                     {                                                                                                                                                  +
                       "Node Type": "Index Scan",                                                                                                                       +
                       "Parent Relationship": "Inner",                                                                                                                  +
                       "Parallel Aware": false,                                                                                                                         +
                       "Scan Direction": "Forward",                                                                                                                     +
                       "Index Name": "movie_id_movie_companies",                                                                                                        +
                       "Relation Name": "movie_companies",                                                                                                              +
                       "Alias": "mc",                                                                                                                                   +
                       "Startup Cost": 0.01,                                                                                                                            +
                       "Total Cost": 0.07,                                                                                                                              +
                       "Plan Rows": 1,                                                                                                                                  +
                       "Plan Width": 32,                                                                                                                                +
                       "Actual Startup Time": 25.358,                                                                                                                   +
                       "Actual Total Time": 25.486,                                                                                                                     +
                       "Actual Rows": 1,                                                                                                                                +
                       "Actual Loops": 250,                                                                                                                             +
                       "Index Cond": "(movie_id = mi_idx.movie_id)",                                                                                                    +
                       "Rows Removed by Index Recheck": 0,                                                                                                              +
                       "Filter": "((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))",+
                       "Rows Removed by Filter": 33,                                                                                                                    +
                       "Shared Hit Blocks": 520,                                                                                                                        +
                       "Shared Read Blocks": 812,                                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                                      +
                       "Shared Written Blocks": 0,                                                                                                                      +
                       "Local Hit Blocks": 0,                                                                                                                           +
                       "Local Read Blocks": 0,                                                                                                                          +
                       "Local Dirtied Blocks": 0,                                                                                                                       +
                       "Local Written Blocks": 0,                                                                                                                       +
                       "Temp Read Blocks": 0,                                                                                                                           +
                       "Temp Written Blocks": 0                                                                                                                         +
                     }                                                                                                                                                  +
                   ]                                                                                                                                                    +
                 },                                                                                                                                                     +
                 {                                                                                                                                                      +
                   "Node Type": "Materialize",                                                                                                                          +
                   "Parent Relationship": "Inner",                                                                                                                      +
                   "Parallel Aware": false,                                                                                                                             +
                   "Startup Cost": 0.00,                                                                                                                                +
                   "Total Cost": 0.03,                                                                                                                                  +
                   "Plan Rows": 1,                                                                                                                                      +
                   "Plan Width": 4,                                                                                                                                     +
                   "Actual Startup Time": 0.001,                                                                                                                        +
                   "Actual Total Time": 0.001,                                                                                                                          +
                   "Actual Rows": 1,                                                                                                                                    +
                   "Actual Loops": 147,                                                                                                                                 +
                   "Shared Hit Blocks": 1,                                                                                                                              +
                   "Shared Read Blocks": 0,                                                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                                                          +
                   "Shared Written Blocks": 0,                                                                                                                          +
                   "Local Hit Blocks": 0,                                                                                                                               +
                   "Local Read Blocks": 0,                                                                                                                              +
                   "Local Dirtied Blocks": 0,                                                                                                                           +
                   "Local Written Blocks": 0,                                                                                                                           +
                   "Temp Read Blocks": 0,                                                                                                                               +
                   "Temp Written Blocks": 0,                                                                                                                            +
                   "Plans": [                                                                                                                                           +
                     {                                                                                                                                                  +
                       "Node Type": "Seq Scan",                                                                                                                         +
                       "Parent Relationship": "Outer",                                                                                                                  +
                       "Parallel Aware": false,                                                                                                                         +
                       "Relation Name": "company_type",                                                                                                                 +
                       "Alias": "ct",                                                                                                                                   +
                       "Startup Cost": 0.00,                                                                                                                            +
                       "Total Cost": 0.03,                                                                                                                              +
                       "Plan Rows": 1,                                                                                                                                  +
                       "Plan Width": 4,                                                                                                                                 +
                       "Actual Startup Time": 0.017,                                                                                                                    +
                       "Actual Total Time": 0.023,                                                                                                                      +
                       "Actual Rows": 1,                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                               +
                       "Filter": "((kind)::text = 'production companies'::text)",                                                                                       +
                       "Rows Removed by Filter": 3,                                                                                                                     +
                       "Shared Hit Blocks": 1,                                                                                                                          +
                       "Shared Read Blocks": 0,                                                                                                                         +
                       "Shared Dirtied Blocks": 0,                                                                                                                      +
                       "Shared Written Blocks": 0,                                                                                                                      +
                       "Local Hit Blocks": 0,                                                                                                                           +
                       "Local Read Blocks": 0,                                                                                                                          +
                       "Local Dirtied Blocks": 0,                                                                                                                       +
                       "Local Written Blocks": 0,                                                                                                                       +
                       "Temp Read Blocks": 0,                                                                                                                           +
                       "Temp Written Blocks": 0                                                                                                                         +
                     }                                                                                                                                                  +
                   ]                                                                                                                                                    +
                 }                                                                                                                                                      +
               ]                                                                                                                                                        +
             },                                                                                                                                                         +
             {                                                                                                                                                          +
               "Node Type": "Index Scan",                                                                                                                               +
               "Parent Relationship": "Inner",                                                                                                                          +
               "Parallel Aware": false,                                                                                                                                 +
               "Scan Direction": "Forward",                                                                                                                             +
               "Index Name": "title_idx_id",                                                                                                                            +
               "Relation Name": "title",                                                                                                                                +
               "Alias": "t",                                                                                                                                            +
               "Startup Cost": 0.01,                                                                                                                                    +
               "Total Cost": 0.11,                                                                                                                                      +
               "Plan Rows": 1,                                                                                                                                          +
               "Plan Width": 25,                                                                                                                                        +
               "Actual Startup Time": 27.117,                                                                                                                           +
               "Actual Total Time": 27.117,                                                                                                                             +
               "Actual Rows": 1,                                                                                                                                        +
               "Actual Loops": 142,                                                                                                                                     +
               "Index Cond": "(id = mi_idx.movie_id)",                                                                                                                  +
               "Rows Removed by Index Recheck": 0,                                                                                                                      +
               "Shared Hit Blocks": 353,                                                                                                                                +
               "Shared Read Blocks": 215,                                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                              +
               "Shared Written Blocks": 0,                                                                                                                              +
               "Local Hit Blocks": 0,                                                                                                                                   +
               "Local Read Blocks": 0,                                                                                                                                  +
               "Local Dirtied Blocks": 0,                                                                                                                               +
               "Local Written Blocks": 0,                                                                                                                               +
               "Temp Read Blocks": 0,                                                                                                                                   +
               "Temp Written Blocks": 0                                                                                                                                 +
             }                                                                                                                                                          +
           ]                                                                                                                                                            +
         }                                                                                                                                                              +
       ]                                                                                                                                                                +
     },                                                                                                                                                                 +
     "Planning Time": 2385.572,                                                                                                                                         +
     "Triggers": [                                                                                                                                                      +
     ],                                                                                                                                                                 +
     "Execution Time": 10916.415                                                                                                                                        +
   }                                                                                                                                                                    +
 ]
(1 row)

