                                                            QUERY PLAN                                                            
----------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                               +
   {                                                                                                                             +
     "Plan": {                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                 +
       "Strategy": "Plain",                                                                                                      +
       "Partial Mode": "Simple",                                                                                                 +
       "Parallel Aware": false,                                                                                                  +
       "Startup Cost": 5213.56,                                                                                                  +
       "Total Cost": 5213.56,                                                                                                    +
       "Plan Rows": 1,                                                                                                           +
       "Plan Width": 96,                                                                                                         +
       "Actual Startup Time": 1470216.951,                                                                                       +
       "Actual Total Time": 1470216.952,                                                                                         +
       "Actual Rows": 1,                                                                                                         +
       "Actual Loops": 1,                                                                                                        +
       "Shared Hit Blocks": 10843353,                                                                                            +
       "Shared Read Blocks": 512506,                                                                                             +
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
           "Node Type": "Nested Loop",                                                                                           +
           "Parent Relationship": "Outer",                                                                                       +
           "Parallel Aware": false,                                                                                              +
           "Join Type": "Inner",                                                                                                 +
           "Startup Cost": 0.06,                                                                                                 +
           "Total Cost": 5213.56,                                                                                                +
           "Plan Rows": 5,                                                                                                       +
           "Plan Width": 65,                                                                                                     +
           "Actual Startup Time": 9964.735,                                                                                      +
           "Actual Total Time": 1470072.768,                                                                                     +
           "Actual Rows": 28073,                                                                                                 +
           "Actual Loops": 1,                                                                                                    +
           "Inner Unique": true,                                                                                                 +
           "Shared Hit Blocks": 10843353,                                                                                        +
           "Shared Read Blocks": 512506,                                                                                         +
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
               "Node Type": "Nested Loop",                                                                                       +
               "Parent Relationship": "Outer",                                                                                   +
               "Parallel Aware": false,                                                                                          +
               "Join Type": "Inner",                                                                                             +
               "Startup Cost": 0.04,                                                                                             +
               "Total Cost": 5211.12,                                                                                            +
               "Plan Rows": 13,                                                                                                  +
               "Plan Width": 69,                                                                                                 +
               "Actual Startup Time": 5337.784,                                                                                  +
               "Actual Total Time": 1285447.434,                                                                                 +
               "Actual Rows": 54155,                                                                                             +
               "Actual Loops": 1,                                                                                                +
               "Inner Unique": false,                                                                                            +
               "Shared Hit Blocks": 10650077,                                                                                    +
               "Shared Read Blocks": 488909,                                                                                     +
               "Shared Dirtied Blocks": 0,                                                                                       +
               "Shared Written Blocks": 0,                                                                                       +
               "Local Hit Blocks": 0,                                                                                            +
               "Local Read Blocks": 0,                                                                                           +
               "Local Dirtied Blocks": 0,                                                                                        +
               "Local Written Blocks": 0,                                                                                        +
               "Temp Read Blocks": 0,                                                                                            +
               "Temp Written Blocks": 0,                                                                                         +
               "Plans": [                                                                                                        +
                 {                                                                                                               +
                   "Node Type": "Nested Loop",                                                                                   +
                   "Parent Relationship": "Outer",                                                                               +
                   "Parallel Aware": false,                                                                                      +
                   "Join Type": "Inner",                                                                                         +
                   "Startup Cost": 0.03,                                                                                         +
                   "Total Cost": 5205.24,                                                                                        +
                   "Plan Rows": 13,                                                                                              +
                   "Plan Width": 77,                                                                                             +
                   "Actual Startup Time": 311.273,                                                                               +
                   "Actual Total Time": 155677.003,                                                                              +
                   "Actual Rows": 102516,                                                                                        +
                   "Actual Loops": 1,                                                                                            +
                   "Inner Unique": true,                                                                                         +
                   "Join Filter": "(mi.info_type_id = it1.id)",                                                                  +
                   "Rows Removed by Join Filter": 2376,                                                                          +
                   "Shared Hit Blocks": 6572028,                                                                                 +
                   "Shared Read Blocks": 243897,                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                   +
                   "Shared Written Blocks": 0,                                                                                   +
                   "Local Hit Blocks": 0,                                                                                        +
                   "Local Read Blocks": 0,                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                    +
                   "Local Written Blocks": 0,                                                                                    +
                   "Temp Read Blocks": 0,                                                                                        +
                   "Temp Written Blocks": 0,                                                                                     +
                   "Plans": [                                                                                                    +
                     {                                                                                                           +
                       "Node Type": "Nested Loop",                                                                               +
                       "Parent Relationship": "Outer",                                                                           +
                       "Parallel Aware": false,                                                                                  +
                       "Join Type": "Inner",                                                                                     +
                       "Startup Cost": 0.03,                                                                                     +
                       "Total Cost": 5204.86,                                                                                    +
                       "Plan Rows": 1477,                                                                                        +
                       "Plan Width": 81,                                                                                         +
                       "Actual Startup Time": 311.240,                                                                           +
                       "Actual Total Time": 155468.349,                                                                          +
                       "Actual Rows": 104892,                                                                                    +
                       "Actual Loops": 1,                                                                                        +
                       "Inner Unique": false,                                                                                    +
                       "Shared Hit Blocks": 6572027,                                                                             +
                       "Shared Read Blocks": 243897,                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                               +
                       "Shared Written Blocks": 0,                                                                               +
                       "Local Hit Blocks": 0,                                                                                    +
                       "Local Read Blocks": 0,                                                                                   +
                       "Local Dirtied Blocks": 0,                                                                                +
                       "Local Written Blocks": 0,                                                                                +
                       "Temp Read Blocks": 0,                                                                                    +
                       "Temp Written Blocks": 0,                                                                                 +
                       "Plans": [                                                                                                +
                         {                                                                                                       +
                           "Node Type": "Nested Loop",                                                                           +
                           "Parent Relationship": "Outer",                                                                       +
                           "Parallel Aware": false,                                                                              +
                           "Join Type": "Inner",                                                                                 +
                           "Startup Cost": 0.01,                                                                                 +
                           "Total Cost": 1998.43,                                                                                +
                           "Plan Rows": 12213,                                                                                   +
                           "Plan Width": 31,                                                                                     +
                           "Actual Startup Time": 18.487,                                                                        +
                           "Actual Total Time": 66504.689,                                                                       +
                           "Actual Rows": 459925,                                                                                +
                           "Actual Loops": 1,                                                                                    +
                           "Inner Unique": true,                                                                                 +
                           "Shared Hit Blocks": 1798620,                                                                         +
                           "Shared Read Blocks": 50808,                                                                          +
                           "Shared Dirtied Blocks": 0,                                                                           +
                           "Shared Written Blocks": 0,                                                                           +
                           "Local Hit Blocks": 0,                                                                                +
                           "Local Read Blocks": 0,                                                                               +
                           "Local Dirtied Blocks": 0,                                                                            +
                           "Local Written Blocks": 0,                                                                            +
                           "Temp Read Blocks": 0,                                                                                +
                           "Temp Written Blocks": 0,                                                                             +
                           "Plans": [                                                                                            +
                             {                                                                                                   +
                               "Node Type": "Nested Loop",                                                                       +
                               "Parent Relationship": "Outer",                                                                   +
                               "Parallel Aware": false,                                                                          +
                               "Join Type": "Inner",                                                                             +
                               "Startup Cost": 0.00,                                                                             +
                               "Total Cost": 670.32,                                                                             +
                               "Plan Rows": 12213,                                                                               +
                               "Plan Width": 10,                                                                                 +
                               "Actual Startup Time": 0.086,                                                                     +
                               "Actual Total Time": 2560.400,                                                                    +
                               "Actual Rows": 459925,                                                                            +
                               "Actual Loops": 1,                                                                                +
                               "Inner Unique": true,                                                                             +
                               "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                  +
                               "Rows Removed by Join Filter": 920110,                                                            +
                               "Shared Hit Blocks": 3,                                                                           +
                               "Shared Read Blocks": 8451,                                                                       +
                               "Shared Dirtied Blocks": 0,                                                                       +
                               "Shared Written Blocks": 0,                                                                       +
                               "Local Hit Blocks": 0,                                                                            +
                               "Local Read Blocks": 0,                                                                           +
                               "Local Dirtied Blocks": 0,                                                                        +
                               "Local Written Blocks": 0,                                                                        +
                               "Temp Read Blocks": 0,                                                                            +
                               "Temp Written Blocks": 0,                                                                         +
                               "Plans": [                                                                                        +
                                 {                                                                                               +
                                   "Node Type": "Seq Scan",                                                                      +
                                   "Parent Relationship": "Outer",                                                               +
                                   "Parallel Aware": false,                                                                      +
                                   "Relation Name": "movie_info_idx",                                                            +
                                   "Alias": "mi_idx",                                                                            +
                                   "Startup Cost": 0.00,                                                                         +
                                   "Total Cost": 360.56,                                                                         +
                                   "Plan Rows": 1380035,                                                                         +
                                   "Plan Width": 14,                                                                             +
                                   "Actual Startup Time": 0.013,                                                                 +
                                   "Actual Total Time": 569.674,                                                                 +
                                   "Actual Rows": 1380035,                                                                       +
                                   "Actual Loops": 1,                                                                            +
                                   "Shared Hit Blocks": 2,                                                                       +
                                   "Shared Read Blocks": 8451,                                                                   +
                                   "Shared Dirtied Blocks": 0,                                                                   +
                                   "Shared Written Blocks": 0,                                                                   +
                                   "Local Hit Blocks": 0,                                                                        +
                                   "Local Read Blocks": 0,                                                                       +
                                   "Local Dirtied Blocks": 0,                                                                    +
                                   "Local Written Blocks": 0,                                                                    +
                                   "Temp Read Blocks": 0,                                                                        +
                                   "Temp Written Blocks": 0                                                                      +
                                 },                                                                                              +
                                 {                                                                                               +
                                   "Node Type": "Materialize",                                                                   +
                                   "Parent Relationship": "Inner",                                                               +
                                   "Parallel Aware": false,                                                                      +
                                   "Startup Cost": 0.00,                                                                         +
                                   "Total Cost": 0.05,                                                                           +
                                   "Plan Rows": 1,                                                                               +
                                   "Plan Width": 4,                                                                              +
                                   "Actual Startup Time": 0.000,                                                                 +
                                   "Actual Total Time": 0.000,                                                                   +
                                   "Actual Rows": 1,                                                                             +
                                   "Actual Loops": 1380035,                                                                      +
                                   "Shared Hit Blocks": 1,                                                                       +
                                   "Shared Read Blocks": 0,                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                   +
                                   "Shared Written Blocks": 0,                                                                   +
                                   "Local Hit Blocks": 0,                                                                        +
                                   "Local Read Blocks": 0,                                                                       +
                                   "Local Dirtied Blocks": 0,                                                                    +
                                   "Local Written Blocks": 0,                                                                    +
                                   "Temp Read Blocks": 0,                                                                        +
                                   "Temp Written Blocks": 0,                                                                     +
                                   "Plans": [                                                                                    +
                                     {                                                                                           +
                                       "Node Type": "Seq Scan",                                                                  +
                                       "Parent Relationship": "Outer",                                                           +
                                       "Parallel Aware": false,                                                                  +
                                       "Relation Name": "info_type",                                                             +
                                       "Alias": "it2",                                                                           +
                                       "Startup Cost": 0.00,                                                                     +
                                       "Total Cost": 0.05,                                                                       +
                                       "Plan Rows": 1,                                                                           +
                                       "Plan Width": 4,                                                                          +
                                       "Actual Startup Time": 0.048,                                                             +
                                       "Actual Total Time": 0.054,                                                               +
                                       "Actual Rows": 1,                                                                         +
                                       "Actual Loops": 1,                                                                        +
                                       "Filter": "((info)::text = 'votes'::text)",                                               +
                                       "Rows Removed by Filter": 112,                                                            +
                                       "Shared Hit Blocks": 1,                                                                   +
                                       "Shared Read Blocks": 0,                                                                  +
                                       "Shared Dirtied Blocks": 0,                                                               +
                                       "Shared Written Blocks": 0,                                                               +
                                       "Local Hit Blocks": 0,                                                                    +
                                       "Local Read Blocks": 0,                                                                   +
                                       "Local Dirtied Blocks": 0,                                                                +
                                       "Local Written Blocks": 0,                                                                +
                                       "Temp Read Blocks": 0,                                                                    +
                                       "Temp Written Blocks": 0                                                                  +
                                     }                                                                                           +
                                   ]                                                                                             +
                                 }                                                                                               +
                               ]                                                                                                 +
                             },                                                                                                  +
                             {                                                                                                   +
                               "Node Type": "Index Scan",                                                                        +
                               "Parent Relationship": "Inner",                                                                   +
                               "Parallel Aware": false,                                                                          +
                               "Scan Direction": "Forward",                                                                      +
                               "Index Name": "title_idx_id",                                                                     +
                               "Relation Name": "title",                                                                         +
                               "Alias": "t",                                                                                     +
                               "Startup Cost": 0.01,                                                                             +
                               "Total Cost": 0.11,                                                                               +
                               "Plan Rows": 1,                                                                                   +
                               "Plan Width": 21,                                                                                 +
                               "Actual Startup Time": 0.137,                                                                     +
                               "Actual Total Time": 0.137,                                                                       +
                               "Actual Rows": 1,                                                                                 +
                               "Actual Loops": 459925,                                                                           +
                               "Index Cond": "(id = mi_idx.movie_id)",                                                           +
                               "Rows Removed by Index Recheck": 0,                                                               +
                               "Shared Hit Blocks": 1798617,                                                                     +
                               "Shared Read Blocks": 42357,                                                                      +
                               "Shared Dirtied Blocks": 0,                                                                       +
                               "Shared Written Blocks": 0,                                                                       +
                               "Local Hit Blocks": 0,                                                                            +
                               "Local Read Blocks": 0,                                                                           +
                               "Local Dirtied Blocks": 0,                                                                        +
                               "Local Written Blocks": 0,                                                                        +
                               "Temp Read Blocks": 0,                                                                            +
                               "Temp Written Blocks": 0                                                                          +
                             }                                                                                                   +
                           ]                                                                                                     +
                         },                                                                                                      +
                         {                                                                                                       +
                           "Node Type": "Index Scan",                                                                            +
                           "Parent Relationship": "Inner",                                                                       +
                           "Parallel Aware": false,                                                                              +
                           "Scan Direction": "Forward",                                                                          +
                           "Index Name": "movie_id_movie_info",                                                                  +
                           "Relation Name": "movie_info",                                                                        +
                           "Alias": "mi",                                                                                        +
                           "Startup Cost": 0.01,                                                                                 +
                           "Total Cost": 0.26,                                                                                   +
                           "Plan Rows": 1,                                                                                       +
                           "Plan Width": 50,                                                                                     +
                           "Actual Startup Time": 0.191,                                                                         +
                           "Actual Total Time": 0.192,                                                                           +
                           "Actual Rows": 0,                                                                                     +
                           "Actual Loops": 459925,                                                                               +
                           "Index Cond": "(movie_id = t.id)",                                                                    +
                           "Rows Removed by Index Recheck": 0,                                                                   +
                           "Filter": "(info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))",                       +
                           "Rows Removed by Filter": 15,                                                                         +
                           "Shared Hit Blocks": 4773407,                                                                         +
                           "Shared Read Blocks": 193089,                                                                         +
                           "Shared Dirtied Blocks": 0,                                                                           +
                           "Shared Written Blocks": 0,                                                                           +
                           "Local Hit Blocks": 0,                                                                                +
                           "Local Read Blocks": 0,                                                                               +
                           "Local Dirtied Blocks": 0,                                                                            +
                           "Local Written Blocks": 0,                                                                            +
                           "Temp Read Blocks": 0,                                                                                +
                           "Temp Written Blocks": 0                                                                              +
                         }                                                                                                       +
                       ]                                                                                                         +
                     },                                                                                                          +
                     {                                                                                                           +
                       "Node Type": "Materialize",                                                                               +
                       "Parent Relationship": "Inner",                                                                           +
                       "Parallel Aware": false,                                                                                  +
                       "Startup Cost": 0.00,                                                                                     +
                       "Total Cost": 0.05,                                                                                       +
                       "Plan Rows": 1,                                                                                           +
                       "Plan Width": 4,                                                                                          +
                       "Actual Startup Time": 0.000,                                                                             +
                       "Actual Total Time": 0.000,                                                                               +
                       "Actual Rows": 1,                                                                                         +
                       "Actual Loops": 104892,                                                                                   +
                       "Shared Hit Blocks": 1,                                                                                   +
                       "Shared Read Blocks": 0,                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                               +
                       "Shared Written Blocks": 0,                                                                               +
                       "Local Hit Blocks": 0,                                                                                    +
                       "Local Read Blocks": 0,                                                                                   +
                       "Local Dirtied Blocks": 0,                                                                                +
                       "Local Written Blocks": 0,                                                                                +
                       "Temp Read Blocks": 0,                                                                                    +
                       "Temp Written Blocks": 0,                                                                                 +
                       "Plans": [                                                                                                +
                         {                                                                                                       +
                           "Node Type": "Seq Scan",                                                                              +
                           "Parent Relationship": "Outer",                                                                       +
                           "Parallel Aware": false,                                                                              +
                           "Relation Name": "info_type",                                                                         +
                           "Alias": "it1",                                                                                       +
                           "Startup Cost": 0.00,                                                                                 +
                           "Total Cost": 0.05,                                                                                   +
                           "Plan Rows": 1,                                                                                       +
                           "Plan Width": 4,                                                                                      +
                           "Actual Startup Time": 0.015,                                                                         +
                           "Actual Total Time": 0.073,                                                                           +
                           "Actual Rows": 1,                                                                                     +
                           "Actual Loops": 1,                                                                                    +
                           "Filter": "((info)::text = 'genres'::text)",                                                          +
                           "Rows Removed by Filter": 112,                                                                        +
                           "Shared Hit Blocks": 1,                                                                               +
                           "Shared Read Blocks": 0,                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                           +
                           "Shared Written Blocks": 0,                                                                           +
                           "Local Hit Blocks": 0,                                                                                +
                           "Local Read Blocks": 0,                                                                               +
                           "Local Dirtied Blocks": 0,                                                                            +
                           "Local Written Blocks": 0,                                                                            +
                           "Temp Read Blocks": 0,                                                                                +
                           "Temp Written Blocks": 0                                                                              +
                         }                                                                                                       +
                       ]                                                                                                         +
                     }                                                                                                           +
                   ]                                                                                                             +
                 },                                                                                                              +
                 {                                                                                                               +
                   "Node Type": "Index Scan",                                                                                    +
                   "Parent Relationship": "Inner",                                                                               +
                   "Parallel Aware": false,                                                                                      +
                   "Scan Direction": "Forward",                                                                                  +
                   "Index Name": "movie_id_cast_info",                                                                           +
                   "Relation Name": "cast_info",                                                                                 +
                   "Alias": "ci",                                                                                                +
                   "Startup Cost": 0.02,                                                                                         +
                   "Total Cost": 0.45,                                                                                           +
                   "Plan Rows": 1,                                                                                               +
                   "Plan Width": 8,                                                                                              +
                   "Actual Startup Time": 9.820,                                                                                 +
                   "Actual Total Time": 11.018,                                                                                  +
                   "Actual Rows": 1,                                                                                             +
                   "Actual Loops": 102516,                                                                                       +
                   "Index Cond": "(movie_id = t.id)",                                                                            +
                   "Rows Removed by Index Recheck": 0,                                                                           +
                   "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",+
                   "Rows Removed by Filter": 39,                                                                                 +
                   "Shared Hit Blocks": 4078049,                                                                                 +
                   "Shared Read Blocks": 245012,                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                   +
                   "Shared Written Blocks": 0,                                                                                   +
                   "Local Hit Blocks": 0,                                                                                        +
                   "Local Read Blocks": 0,                                                                                       +
                   "Local Dirtied Blocks": 0,                                                                                    +
                   "Local Written Blocks": 0,                                                                                    +
                   "Temp Read Blocks": 0,                                                                                        +
                   "Temp Written Blocks": 0                                                                                      +
                 }                                                                                                               +
               ]                                                                                                                 +
             },                                                                                                                  +
             {                                                                                                                   +
               "Node Type": "Index Scan",                                                                                        +
               "Parent Relationship": "Inner",                                                                                   +
               "Parallel Aware": false,                                                                                          +
               "Scan Direction": "Forward",                                                                                      +
               "Index Name": "name_pkey",                                                                                        +
               "Relation Name": "name",                                                                                          +
               "Alias": "n",                                                                                                     +
               "Startup Cost": 0.01,                                                                                             +
               "Total Cost": 0.19,                                                                                               +
               "Plan Rows": 1,                                                                                                   +
               "Plan Width": 4,                                                                                                  +
               "Actual Startup Time": 3.406,                                                                                     +
               "Actual Total Time": 3.406,                                                                                       +
               "Actual Rows": 1,                                                                                                 +
               "Actual Loops": 54155,                                                                                            +
               "Index Cond": "(id = ci.person_id)",                                                                              +
               "Rows Removed by Index Recheck": 0,                                                                               +
               "Filter": "((gender)::text = 'm'::text)",                                                                         +
               "Rows Removed by Filter": 0,                                                                                      +
               "Shared Hit Blocks": 193276,                                                                                      +
               "Shared Read Blocks": 23597,                                                                                      +
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
     "Planning Time": 5631.704,                                                                                                  +
     "Triggers": [                                                                                                               +
     ],                                                                                                                          +
     "Execution Time": 1470255.782                                                                                               +
   }                                                                                                                             +
 ]
(1 row)

