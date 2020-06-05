                                                            QUERY PLAN                                                            
----------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                               +
   {                                                                                                                             +
     "Plan": {                                                                                                                   +
       "Node Type": "Aggregate",                                                                                                 +
       "Strategy": "Plain",                                                                                                      +
       "Partial Mode": "Simple",                                                                                                 +
       "Parallel Aware": false,                                                                                                  +
       "Startup Cost": 1624.68,                                                                                                  +
       "Total Cost": 1624.68,                                                                                                    +
       "Plan Rows": 1,                                                                                                           +
       "Plan Width": 96,                                                                                                         +
       "Actual Startup Time": 160705.437,                                                                                        +
       "Actual Total Time": 160705.437,                                                                                          +
       "Actual Rows": 1,                                                                                                         +
       "Actual Loops": 1,                                                                                                        +
       "Shared Hit Blocks": 100609,                                                                                              +
       "Shared Read Blocks": 56409,                                                                                              +
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
           "Total Cost": 1624.68,                                                                                                +
           "Plan Rows": 1,                                                                                                       +
           "Plan Width": 65,                                                                                                     +
           "Actual Startup Time": 41875.282,                                                                                     +
           "Actual Total Time": 160705.271,                                                                                      +
           "Actual Rows": 11,                                                                                                    +
           "Actual Loops": 1,                                                                                                    +
           "Inner Unique": true,                                                                                                 +
           "Shared Hit Blocks": 100609,                                                                                          +
           "Shared Read Blocks": 56409,                                                                                          +
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
               "Total Cost": 1623.74,                                                                                            +
               "Plan Rows": 1,                                                                                                   +
               "Plan Width": 69,                                                                                                 +
               "Actual Startup Time": 11373.074,                                                                                 +
               "Actual Total Time": 157944.179,                                                                                  +
               "Actual Rows": 268,                                                                                               +
               "Actual Loops": 1,                                                                                                +
               "Inner Unique": false,                                                                                            +
               "Shared Hit Blocks": 99979,                                                                                       +
               "Shared Read Blocks": 55965,                                                                                      +
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
                   "Total Cost": 1616.74,                                                                                        +
                   "Plan Rows": 1,                                                                                               +
                   "Plan Width": 77,                                                                                             +
                   "Actual Startup Time": 1566.833,                                                                              +
                   "Actual Total Time": 100152.009,                                                                              +
                   "Actual Rows": 358,                                                                                           +
                   "Actual Loops": 1,                                                                                            +
                   "Inner Unique": true,                                                                                         +
                   "Join Filter": "(mi.info_type_id = it1.id)",                                                                  +
                   "Rows Removed by Join Filter": 0,                                                                             +
                   "Shared Hit Blocks": 96916,                                                                                   +
                   "Shared Read Blocks": 46128,                                                                                  +
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
                       "Total Cost": 1616.69,                                                                                    +
                       "Plan Rows": 6,                                                                                           +
                       "Plan Width": 81,                                                                                         +
                       "Actual Startup Time": 1566.789,                                                                          +
                       "Actual Total Time": 100150.201,                                                                          +
                       "Actual Rows": 358,                                                                                       +
                       "Actual Loops": 1,                                                                                        +
                       "Inner Unique": false,                                                                                    +
                       "Shared Hit Blocks": 96915,                                                                               +
                       "Shared Read Blocks": 46128,                                                                              +
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
                           "Total Cost": 1499.79,                                                                                +
                           "Plan Rows": 145,                                                                                     +
                           "Plan Width": 31,                                                                                     +
                           "Actual Startup Time": 289.421,                                                                       +
                           "Actual Total Time": 38431.016,                                                                       +
                           "Actual Rows": 6152,                                                                                  +
                           "Actual Loops": 1,                                                                                    +
                           "Inner Unique": true,                                                                                 +
                           "Shared Hit Blocks": 48045,                                                                           +
                           "Shared Read Blocks": 23878,                                                                          +
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
                               "Total Cost": 479.62,                                                                             +
                               "Plan Rows": 468,                                                                                 +
                               "Plan Width": 10,                                                                                 +
                               "Actual Startup Time": 0.140,                                                                     +
                               "Actual Total Time": 923.246,                                                                     +
                               "Actual Rows": 15849,                                                                             +
                               "Actual Loops": 1,                                                                                +
                               "Inner Unique": true,                                                                             +
                               "Join Filter": "(it2.id = mi_idx.info_type_id)",                                                  +
                               "Rows Removed by Join Filter": 37013,                                                             +
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
                                   "Total Cost": 467.71,                                                                         +
                                   "Plan Rows": 52860,                                                                           +
                                   "Plan Width": 14,                                                                             +
                                   "Actual Startup Time": 0.076,                                                                 +
                                   "Actual Total Time": 847.095,                                                                 +
                                   "Actual Rows": 52862,                                                                         +
                                   "Actual Loops": 1,                                                                            +
                                   "Filter": "(info > '8.0'::text)",                                                             +
                                   "Rows Removed by Filter": 1327173,                                                            +
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
                                   "Actual Loops": 52862,                                                                        +
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
                                       "Actual Startup Time": 0.045,                                                             +
                                       "Actual Total Time": 0.052,                                                               +
                                       "Actual Rows": 1,                                                                         +
                                       "Actual Loops": 1,                                                                        +
                                       "Filter": "((info)::text = 'rating'::text)",                                              +
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
                               "Total Cost": 2.18,                                                                               +
                               "Plan Rows": 1,                                                                                   +
                               "Plan Width": 21,                                                                                 +
                               "Actual Startup Time": 2.364,                                                                     +
                               "Actual Total Time": 2.364,                                                                       +
                               "Actual Rows": 0,                                                                                 +
                               "Actual Loops": 15849,                                                                            +
                               "Index Cond": "(id = mi_idx.movie_id)",                                                           +
                               "Rows Removed by Index Recheck": 0,                                                               +
                               "Filter": "((production_year >= 2008) AND (production_year <= 2014))",                            +
                               "Rows Removed by Filter": 1,                                                                      +
                               "Shared Hit Blocks": 48042,                                                                       +
                               "Shared Read Blocks": 15427,                                                                      +
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
                           "Total Cost": 0.81,                                                                                   +
                           "Plan Rows": 1,                                                                                       +
                           "Plan Width": 50,                                                                                     +
                           "Actual Startup Time": 10.024,                                                                        +
                           "Actual Total Time": 10.029,                                                                          +
                           "Actual Rows": 0,                                                                                     +
                           "Actual Loops": 6152,                                                                                 +
                           "Index Cond": "(movie_id = t.id)",                                                                    +
                           "Rows Removed by Index Recheck": 0,                                                                   +
                           "Filter": "((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))",                          +
                           "Rows Removed by Filter": 18,                                                                         +
                           "Shared Hit Blocks": 48870,                                                                           +
                           "Shared Read Blocks": 22250,                                                                          +
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
                       "Actual Startup Time": 0.001,                                                                             +
                       "Actual Total Time": 0.001,                                                                               +
                       "Actual Rows": 1,                                                                                         +
                       "Actual Loops": 358,                                                                                      +
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
                           "Actual Startup Time": 0.021,                                                                         +
                           "Actual Total Time": 0.021,                                                                           +
                           "Actual Rows": 1,                                                                                     +
                           "Actual Loops": 1,                                                                                    +
                           "Filter": "((info)::text = 'genres'::text)",                                                          +
                           "Rows Removed by Filter": 2,                                                                          +
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
                   "Total Cost": 1.40,                                                                                           +
                   "Plan Rows": 1,                                                                                               +
                   "Plan Width": 8,                                                                                              +
                   "Actual Startup Time": 130.591,                                                                               +
                   "Actual Total Time": 161.423,                                                                                 +
                   "Actual Rows": 1,                                                                                             +
                   "Actual Loops": 358,                                                                                          +
                   "Index Cond": "(movie_id = t.id)",                                                                            +
                   "Rows Removed by Index Recheck": 0,                                                                           +
                   "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",+
                   "Rows Removed by Filter": 34,                                                                                 +
                   "Shared Hit Blocks": 3063,                                                                                    +
                   "Shared Read Blocks": 9837,                                                                                   +
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
               "Actual Startup Time": 10.295,                                                                                    +
               "Actual Total Time": 10.295,                                                                                      +
               "Actual Rows": 0,                                                                                                 +
               "Actual Loops": 268,                                                                                              +
               "Index Cond": "(id = ci.person_id)",                                                                              +
               "Rows Removed by Index Recheck": 0,                                                                               +
               "Filter": "((gender IS NOT NULL) AND ((gender)::text = 'f'::text))",                                              +
               "Rows Removed by Filter": 1,                                                                                      +
               "Shared Hit Blocks": 630,                                                                                         +
               "Shared Read Blocks": 444,                                                                                        +
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
     "Planning Time": 5776.267,                                                                                                  +
     "Triggers": [                                                                                                               +
     ],                                                                                                                          +
     "Execution Time": 160741.285                                                                                                +
   }                                                                                                                             +
 ]
(1 row)
