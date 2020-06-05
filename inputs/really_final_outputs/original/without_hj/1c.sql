                                                             QUERY PLAN                                                              
-------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                  +
   {                                                                                                                                +
     "Plan": {                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                    +
       "Strategy": "Plain",                                                                                                         +
       "Partial Mode": "Simple",                                                                                                    +
       "Parallel Aware": false,                                                                                                     +
       "Startup Cost": 1548.17,                                                                                                     +
       "Total Cost": 1548.17,                                                                                                       +
       "Plan Rows": 1,                                                                                                              +
       "Plan Width": 68,                                                                                                            +
       "Actual Startup Time": 6650.547,                                                                                             +
       "Actual Total Time": 6650.547,                                                                                               +
       "Actual Rows": 1,                                                                                                            +
       "Actual Loops": 1,                                                                                                           +
       "Shared Hit Blocks": 596,                                                                                                    +
       "Shared Read Blocks": 9283,                                                                                                  +
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
           "Total Cost": 1548.17,                                                                                                   +
           "Plan Rows": 4,                                                                                                          +
           "Plan Width": 45,                                                                                                        +
           "Actual Startup Time": 2312.317,                                                                                         +
           "Actual Total Time": 6650.470,                                                                                           +
           "Actual Rows": 3,                                                                                                        +
           "Actual Loops": 1,                                                                                                       +
           "Inner Unique": true,                                                                                                    +
           "Join Filter": "(mc.movie_id = t.id)",                                                                                   +
           "Rows Removed by Join Filter": 0,                                                                                        +
           "Shared Hit Blocks": 596,                                                                                                +
           "Shared Read Blocks": 9283,                                                                                              +
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
               "Node Type": "Nested Loop",                                                                                          +
               "Parent Relationship": "Outer",                                                                                      +
               "Parallel Aware": false,                                                                                             +
               "Join Type": "Inner",                                                                                                +
               "Startup Cost": 0.01,                                                                                                +
               "Total Cost": 1545.34,                                                                                               +
               "Plan Rows": 26,                                                                                                     +
               "Plan Width": 32,                                                                                                    +
               "Actual Startup Time": 826.740,                                                                                      +
               "Actual Total Time": 6224.558,                                                                                       +
               "Actual Rows": 23,                                                                                                   +
               "Actual Loops": 1,                                                                                                   +
               "Inner Unique": true,                                                                                                +
               "Join Filter": "(mc.company_type_id = ct.id)",                                                                       +
               "Rows Removed by Join Filter": 0,                                                                                    +
               "Shared Hit Blocks": 524,                                                                                            +
               "Shared Read Blocks": 9263,                                                                                          +
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
                   "Startup Cost": 0.01,                                                                                            +
                   "Total Cost": 1545.28,                                                                                           +
                   "Plan Rows": 103,                                                                                                +
                   "Plan Width": 36,                                                                                                +
                   "Actual Startup Time": 826.709,                                                                                  +
                   "Actual Total Time": 6224.448,                                                                                   +
                   "Actual Rows": 23,                                                                                               +
                   "Actual Loops": 1,                                                                                               +
                   "Inner Unique": false,                                                                                           +
                   "Shared Hit Blocks": 523,                                                                                        +
                   "Shared Read Blocks": 9263,                                                                                      +
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
                       "Startup Cost": 0.00,                                                                                        +
                       "Total Cost": 670.32,                                                                                        +
                       "Plan Rows": 12213,                                                                                          +
                       "Plan Width": 4,                                                                                             +
                       "Actual Startup Time": 668.089,                                                                              +
                       "Actual Total Time": 669.604,                                                                                +
                       "Actual Rows": 250,                                                                                          +
                       "Actual Loops": 1,                                                                                           +
                       "Inner Unique": true,                                                                                        +
                       "Join Filter": "(it.id = mi_idx.info_type_id)",                                                              +
                       "Rows Removed by Join Filter": 1379785,                                                                      +
                       "Shared Hit Blocks": 3,                                                                                      +
                       "Shared Read Blocks": 8451,                                                                                  +
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
                           "Node Type": "Seq Scan",                                                                                 +
                           "Parent Relationship": "Outer",                                                                          +
                           "Parallel Aware": false,                                                                                 +
                           "Relation Name": "movie_info_idx",                                                                       +
                           "Alias": "mi_idx",                                                                                       +
                           "Startup Cost": 0.00,                                                                                    +
                           "Total Cost": 360.56,                                                                                    +
                           "Plan Rows": 1380035,                                                                                    +
                           "Plan Width": 8,                                                                                         +
                           "Actual Startup Time": 0.013,                                                                            +
                           "Actual Total Time": 162.475,                                                                            +
                           "Actual Rows": 1380035,                                                                                  +
                           "Actual Loops": 1,                                                                                       +
                           "Shared Hit Blocks": 2,                                                                                  +
                           "Shared Read Blocks": 8451,                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                              +
                           "Shared Written Blocks": 0,                                                                              +
                           "Local Hit Blocks": 0,                                                                                   +
                           "Local Read Blocks": 0,                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                               +
                           "Local Written Blocks": 0,                                                                               +
                           "Temp Read Blocks": 0,                                                                                   +
                           "Temp Written Blocks": 0                                                                                 +
                         },                                                                                                         +
                         {                                                                                                          +
                           "Node Type": "Materialize",                                                                              +
                           "Parent Relationship": "Inner",                                                                          +
                           "Parallel Aware": false,                                                                                 +
                           "Startup Cost": 0.00,                                                                                    +
                           "Total Cost": 0.05,                                                                                      +
                           "Plan Rows": 1,                                                                                          +
                           "Plan Width": 4,                                                                                         +
                           "Actual Startup Time": 0.000,                                                                            +
                           "Actual Total Time": 0.000,                                                                              +
                           "Actual Rows": 1,                                                                                        +
                           "Actual Loops": 1380035,                                                                                 +
                           "Shared Hit Blocks": 1,                                                                                  +
                           "Shared Read Blocks": 0,                                                                                 +
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
                               "Relation Name": "info_type",                                                                        +
                               "Alias": "it",                                                                                       +
                               "Startup Cost": 0.00,                                                                                +
                               "Total Cost": 0.05,                                                                                  +
                               "Plan Rows": 1,                                                                                      +
                               "Plan Width": 4,                                                                                     +
                               "Actual Startup Time": 0.084,                                                                        +
                               "Actual Total Time": 0.086,                                                                          +
                               "Actual Rows": 1,                                                                                    +
                               "Actual Loops": 1,                                                                                   +
                               "Filter": "((info)::text = 'top 250 rank'::text)",                                                   +
                               "Rows Removed by Filter": 112,                                                                       +
                               "Shared Hit Blocks": 1,                                                                              +
                               "Shared Read Blocks": 0,                                                                             +
                               "Shared Dirtied Blocks": 0,                                                                          +
                               "Shared Written Blocks": 0,                                                                          +
                               "Local Hit Blocks": 0,                                                                               +
                               "Local Read Blocks": 0,                                                                              +
                               "Local Dirtied Blocks": 0,                                                                           +
                               "Local Written Blocks": 0,                                                                           +
                               "Temp Read Blocks": 0,                                                                               +
                               "Temp Written Blocks": 0                                                                             +
                             }                                                                                                      +
                           ]                                                                                                        +
                         }                                                                                                          +
                       ]                                                                                                            +
                     },                                                                                                             +
                     {                                                                                                              +
                       "Node Type": "Index Scan",                                                                                   +
                       "Parent Relationship": "Inner",                                                                              +
                       "Parallel Aware": false,                                                                                     +
                       "Scan Direction": "Forward",                                                                                 +
                       "Index Name": "movie_id_movie_companies",                                                                    +
                       "Relation Name": "movie_companies",                                                                          +
                       "Alias": "mc",                                                                                               +
                       "Startup Cost": 0.01,                                                                                        +
                       "Total Cost": 0.07,                                                                                          +
                       "Plan Rows": 1,                                                                                              +
                       "Plan Width": 32,                                                                                            +
                       "Actual Startup Time": 22.214,                                                                               +
                       "Actual Total Time": 22.214,                                                                                 +
                       "Actual Rows": 0,                                                                                            +
                       "Actual Loops": 250,                                                                                         +
                       "Index Cond": "(movie_id = mi_idx.movie_id)",                                                                +
                       "Rows Removed by Index Recheck": 0,                                                                          +
                       "Filter": "((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))",+
                       "Rows Removed by Filter": 33,                                                                                +
                       "Shared Hit Blocks": 520,                                                                                    +
                       "Shared Read Blocks": 812,                                                                                   +
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
                 },                                                                                                                 +
                 {                                                                                                                  +
                   "Node Type": "Materialize",                                                                                      +
                   "Parent Relationship": "Inner",                                                                                  +
                   "Parallel Aware": false,                                                                                         +
                   "Startup Cost": 0.00,                                                                                            +
                   "Total Cost": 0.03,                                                                                              +
                   "Plan Rows": 1,                                                                                                  +
                   "Plan Width": 4,                                                                                                 +
                   "Actual Startup Time": 0.002,                                                                                    +
                   "Actual Total Time": 0.002,                                                                                      +
                   "Actual Rows": 1,                                                                                                +
                   "Actual Loops": 23,                                                                                              +
                   "Shared Hit Blocks": 1,                                                                                          +
                   "Shared Read Blocks": 0,                                                                                         +
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
                       "Node Type": "Seq Scan",                                                                                     +
                       "Parent Relationship": "Outer",                                                                              +
                       "Parallel Aware": false,                                                                                     +
                       "Relation Name": "company_type",                                                                             +
                       "Alias": "ct",                                                                                               +
                       "Startup Cost": 0.00,                                                                                        +
                       "Total Cost": 0.03,                                                                                          +
                       "Plan Rows": 1,                                                                                              +
                       "Plan Width": 4,                                                                                             +
                       "Actual Startup Time": 0.017,                                                                                +
                       "Actual Total Time": 0.017,                                                                                  +
                       "Actual Rows": 1,                                                                                            +
                       "Actual Loops": 1,                                                                                           +
                       "Filter": "((kind)::text = 'production companies'::text)",                                                   +
                       "Rows Removed by Filter": 1,                                                                                 +
                       "Shared Hit Blocks": 1,                                                                                      +
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
             },                                                                                                                     +
             {                                                                                                                      +
               "Node Type": "Index Scan",                                                                                           +
               "Parent Relationship": "Inner",                                                                                      +
               "Parallel Aware": false,                                                                                             +
               "Scan Direction": "Forward",                                                                                         +
               "Index Name": "title_idx_id",                                                                                        +
               "Relation Name": "title",                                                                                            +
               "Alias": "t",                                                                                                        +
               "Startup Cost": 0.01,                                                                                                +
               "Total Cost": 0.11,                                                                                                  +
               "Plan Rows": 1,                                                                                                      +
               "Plan Width": 25,                                                                                                    +
               "Actual Startup Time": 18.513,                                                                                       +
               "Actual Total Time": 18.513,                                                                                         +
               "Actual Rows": 0,                                                                                                    +
               "Actual Loops": 23,                                                                                                  +
               "Index Cond": "(id = mi_idx.movie_id)",                                                                              +
               "Rows Removed by Index Recheck": 0,                                                                                  +
               "Filter": "(production_year > 2010)",                                                                                +
               "Rows Removed by Filter": 1,                                                                                         +
               "Shared Hit Blocks": 72,                                                                                             +
               "Shared Read Blocks": 20,                                                                                            +
               "Shared Dirtied Blocks": 0,                                                                                          +
               "Shared Written Blocks": 0,                                                                                          +
               "Local Hit Blocks": 0,                                                                                               +
               "Local Read Blocks": 0,                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                           +
               "Local Written Blocks": 0,                                                                                           +
               "Temp Read Blocks": 0,                                                                                               +
               "Temp Written Blocks": 0                                                                                             +
             }                                                                                                                      +
           ]                                                                                                                        +
         }                                                                                                                          +
       ]                                                                                                                            +
     },                                                                                                                             +
     "Planning Time": 2346.568,                                                                                                     +
     "Triggers": [                                                                                                                  +
     ],                                                                                                                             +
     "Execution Time": 6674.207                                                                                                     +
   }                                                                                                                                +
 ]
(1 row)

