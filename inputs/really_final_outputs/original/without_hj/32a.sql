                                       QUERY PLAN                                        
-----------------------------------------------------------------------------------------
 [                                                                                      +
   {                                                                                    +
     "Plan": {                                                                          +
       "Node Type": "Aggregate",                                                        +
       "Strategy": "Plain",                                                             +
       "Partial Mode": "Simple",                                                        +
       "Parallel Aware": false,                                                         +
       "Startup Cost": 624.39,                                                          +
       "Total Cost": 624.39,                                                            +
       "Plan Rows": 1,                                                                  +
       "Plan Width": 96,                                                                +
       "Actual Startup Time": 44.460,                                                   +
       "Actual Total Time": 44.460,                                                     +
       "Actual Rows": 1,                                                                +
       "Actual Loops": 1,                                                               +
       "Shared Hit Blocks": 5,                                                          +
       "Shared Read Blocks": 6,                                                         +
       "Shared Dirtied Blocks": 0,                                                      +
       "Shared Written Blocks": 0,                                                      +
       "Local Hit Blocks": 0,                                                           +
       "Local Read Blocks": 0,                                                          +
       "Local Dirtied Blocks": 0,                                                       +
       "Local Written Blocks": 0,                                                       +
       "Temp Read Blocks": 0,                                                           +
       "Temp Written Blocks": 0,                                                        +
       "Plans": [                                                                       +
         {                                                                              +
           "Node Type": "Nested Loop",                                                  +
           "Parent Relationship": "Outer",                                              +
           "Parallel Aware": false,                                                     +
           "Join Type": "Inner",                                                        +
           "Startup Cost": 0.06,                                                        +
           "Total Cost": 624.39,                                                        +
           "Plan Rows": 2,                                                              +
           "Plan Width": 46,                                                            +
           "Actual Startup Time": 44.418,                                               +
           "Actual Total Time": 44.418,                                                 +
           "Actual Rows": 0,                                                            +
           "Actual Loops": 1,                                                           +
           "Inner Unique": true,                                                        +
           "Shared Hit Blocks": 5,                                                      +
           "Shared Read Blocks": 6,                                                     +
           "Shared Dirtied Blocks": 0,                                                  +
           "Shared Written Blocks": 0,                                                  +
           "Local Hit Blocks": 0,                                                       +
           "Local Read Blocks": 0,                                                      +
           "Local Dirtied Blocks": 0,                                                   +
           "Local Written Blocks": 0,                                                   +
           "Temp Read Blocks": 0,                                                       +
           "Temp Written Blocks": 0,                                                    +
           "Plans": [                                                                   +
             {                                                                          +
               "Node Type": "Nested Loop",                                              +
               "Parent Relationship": "Outer",                                          +
               "Parallel Aware": false,                                                 +
               "Join Type": "Inner",                                                    +
               "Startup Cost": 0.05,                                                    +
               "Total Cost": 618.63,                                                    +
               "Plan Rows": 2,                                                          +
               "Plan Width": 33,                                                        +
               "Actual Startup Time": 44.417,                                           +
               "Actual Total Time": 44.417,                                             +
               "Actual Rows": 0,                                                        +
               "Actual Loops": 1,                                                       +
               "Inner Unique": true,                                                    +
               "Shared Hit Blocks": 5,                                                  +
               "Shared Read Blocks": 6,                                                 +
               "Shared Dirtied Blocks": 0,                                              +
               "Shared Written Blocks": 0,                                              +
               "Local Hit Blocks": 0,                                                   +
               "Local Read Blocks": 0,                                                  +
               "Local Dirtied Blocks": 0,                                               +
               "Local Written Blocks": 0,                                               +
               "Temp Read Blocks": 0,                                                   +
               "Temp Written Blocks": 0,                                                +
               "Plans": [                                                               +
                 {                                                                      +
                   "Node Type": "Nested Loop",                                          +
                   "Parent Relationship": "Outer",                                      +
                   "Parallel Aware": false,                                             +
                   "Join Type": "Inner",                                                +
                   "Startup Cost": 0.04,                                                +
                   "Total Cost": 618.54,                                                +
                   "Plan Rows": 2,                                                      +
                   "Plan Width": 24,                                                    +
                   "Actual Startup Time": 44.416,                                       +
                   "Actual Total Time": 44.416,                                         +
                   "Actual Rows": 0,                                                    +
                   "Actual Loops": 1,                                                   +
                   "Inner Unique": false,                                               +
                   "Join Filter": "(ml.link_type_id = lt.id)",                          +
                   "Rows Removed by Join Filter": 0,                                    +
                   "Shared Hit Blocks": 5,                                              +
                   "Shared Read Blocks": 6,                                             +
                   "Shared Dirtied Blocks": 0,                                          +
                   "Shared Written Blocks": 0,                                          +
                   "Local Hit Blocks": 0,                                               +
                   "Local Read Blocks": 0,                                              +
                   "Local Dirtied Blocks": 0,                                           +
                   "Local Written Blocks": 0,                                           +
                   "Temp Read Blocks": 0,                                               +
                   "Temp Written Blocks": 0,                                            +
                   "Plans": [                                                           +
                     {                                                                  +
                       "Node Type": "Seq Scan",                                         +
                       "Parent Relationship": "Outer",                                  +
                       "Parallel Aware": false,                                         +
                       "Relation Name": "link_type",                                    +
                       "Alias": "lt",                                                   +
                       "Startup Cost": 0.00,                                            +
                       "Total Cost": 0.03,                                              +
                       "Plan Rows": 18,                                                 +
                       "Plan Width": 16,                                                +
                       "Actual Startup Time": 0.008,                                    +
                       "Actual Total Time": 0.015,                                      +
                       "Actual Rows": 18,                                               +
                       "Actual Loops": 1,                                               +
                       "Shared Hit Blocks": 1,                                          +
                       "Shared Read Blocks": 0,                                         +
                       "Shared Dirtied Blocks": 0,                                      +
                       "Shared Written Blocks": 0,                                      +
                       "Local Hit Blocks": 0,                                           +
                       "Local Read Blocks": 0,                                          +
                       "Local Dirtied Blocks": 0,                                       +
                       "Local Written Blocks": 0,                                       +
                       "Temp Read Blocks": 0,                                           +
                       "Temp Written Blocks": 0                                         +
                     },                                                                 +
                     {                                                                  +
                       "Node Type": "Materialize",                                      +
                       "Parent Relationship": "Inner",                                  +
                       "Parallel Aware": false,                                         +
                       "Startup Cost": 0.04,                                            +
                       "Total Cost": 618.50,                                            +
                       "Plan Rows": 2,                                                  +
                       "Plan Width": 16,                                                +
                       "Actual Startup Time": 2.466,                                    +
                       "Actual Total Time": 2.466,                                      +
                       "Actual Rows": 0,                                                +
                       "Actual Loops": 18,                                              +
                       "Shared Hit Blocks": 4,                                          +
                       "Shared Read Blocks": 6,                                         +
                       "Shared Dirtied Blocks": 0,                                      +
                       "Shared Written Blocks": 0,                                      +
                       "Local Hit Blocks": 0,                                           +
                       "Local Read Blocks": 0,                                          +
                       "Local Dirtied Blocks": 0,                                       +
                       "Local Written Blocks": 0,                                       +
                       "Temp Read Blocks": 0,                                           +
                       "Temp Written Blocks": 0,                                        +
                       "Plans": [                                                       +
                         {                                                              +
                           "Node Type": "Nested Loop",                                  +
                           "Parent Relationship": "Outer",                              +
                           "Parallel Aware": false,                                     +
                           "Join Type": "Inner",                                        +
                           "Startup Cost": 0.04,                                        +
                           "Total Cost": 618.50,                                        +
                           "Plan Rows": 2,                                              +
                           "Plan Width": 16,                                            +
                           "Actual Startup Time": 44.381,                               +
                           "Actual Total Time": 44.381,                                 +
                           "Actual Rows": 0,                                            +
                           "Actual Loops": 1,                                           +
                           "Inner Unique": false,                                       +
                           "Shared Hit Blocks": 4,                                      +
                           "Shared Read Blocks": 6,                                     +
                           "Shared Dirtied Blocks": 0,                                  +
                           "Shared Written Blocks": 0,                                  +
                           "Local Hit Blocks": 0,                                       +
                           "Local Read Blocks": 0,                                      +
                           "Local Dirtied Blocks": 0,                                   +
                           "Local Written Blocks": 0,                                   +
                           "Temp Read Blocks": 0,                                       +
                           "Temp Written Blocks": 0,                                    +
                           "Plans": [                                                   +
                             {                                                          +
                               "Node Type": "Nested Loop",                              +
                               "Parent Relationship": "Outer",                          +
                               "Parallel Aware": false,                                 +
                               "Join Type": "Inner",                                    +
                               "Startup Cost": 0.03,                                    +
                               "Total Cost": 618.15,                                    +
                               "Plan Rows": 34,                                         +
                               "Plan Width": 4,                                         +
                               "Actual Startup Time": 44.348,                           +
                               "Actual Total Time": 44.351,                             +
                               "Actual Rows": 1,                                        +
                               "Actual Loops": 1,                                       +
                               "Inner Unique": false,                                   +
                               "Shared Hit Blocks": 2,                                  +
                               "Shared Read Blocks": 6,                                 +
                               "Shared Dirtied Blocks": 0,                              +
                               "Shared Written Blocks": 0,                              +
                               "Local Hit Blocks": 0,                                   +
                               "Local Read Blocks": 0,                                  +
                               "Local Dirtied Blocks": 0,                               +
                               "Local Written Blocks": 0,                               +
                               "Temp Read Blocks": 0,                                   +
                               "Temp Written Blocks": 0,                                +
                               "Plans": [                                               +
                                 {                                                      +
                                   "Node Type": "Index Scan",                           +
                                   "Parent Relationship": "Outer",                      +
                                   "Parallel Aware": false,                             +
                                   "Scan Direction": "Forward",                         +
                                   "Index Name": "keyword_idx_keyword",                 +
                                   "Relation Name": "keyword",                          +
                                   "Alias": "k",                                        +
                                   "Startup Cost": 0.01,                                +
                                   "Total Cost": 6.13,                                  +
                                   "Plan Rows": 1,                                      +
                                   "Plan Width": 4,                                     +
                                   "Actual Startup Time": 12.191,                       +
                                   "Actual Total Time": 12.192,                         +
                                   "Actual Rows": 1,                                    +
                                   "Actual Loops": 1,                                   +
                                   "Index Cond": "(keyword = '10,000-mile-club'::text)",+
                                   "Rows Removed by Index Recheck": 0,                  +
                                   "Shared Hit Blocks": 0,                              +
                                   "Shared Read Blocks": 4,                             +
                                   "Shared Dirtied Blocks": 0,                          +
                                   "Shared Written Blocks": 0,                          +
                                   "Local Hit Blocks": 0,                               +
                                   "Local Read Blocks": 0,                              +
                                   "Local Dirtied Blocks": 0,                           +
                                   "Local Written Blocks": 0,                           +
                                   "Temp Read Blocks": 0,                               +
                                   "Temp Written Blocks": 0                             +
                                 },                                                     +
                                 {                                                      +
                                   "Node Type": "Index Scan",                           +
                                   "Parent Relationship": "Inner",                      +
                                   "Parallel Aware": false,                             +
                                   "Scan Direction": "Forward",                         +
                                   "Index Name": "keyword_id_movie_keyword",            +
                                   "Relation Name": "movie_keyword",                    +
                                   "Alias": "mk",                                       +
                                   "Startup Cost": 0.01,                                +
                                   "Total Cost": 122.40,                                +
                                   "Plan Rows": 39,                                     +
                                   "Plan Width": 8,                                     +
                                   "Actual Startup Time": 32.138,                       +
                                   "Actual Total Time": 32.140,                         +
                                   "Actual Rows": 1,                                    +
                                   "Actual Loops": 1,                                   +
                                   "Index Cond": "(keyword_id = k.id)",                 +
                                   "Rows Removed by Index Recheck": 0,                  +
                                   "Shared Hit Blocks": 2,                              +
                                   "Shared Read Blocks": 2,                             +
                                   "Shared Dirtied Blocks": 0,                          +
                                   "Shared Written Blocks": 0,                          +
                                   "Local Hit Blocks": 0,                               +
                                   "Local Read Blocks": 0,                              +
                                   "Local Dirtied Blocks": 0,                           +
                                   "Local Written Blocks": 0,                           +
                                   "Temp Read Blocks": 0,                               +
                                   "Temp Written Blocks": 0                             +
                                 }                                                      +
                               ]                                                        +
                             },                                                         +
                             {                                                          +
                               "Node Type": "Index Scan",                               +
                               "Parent Relationship": "Inner",                          +
                               "Parallel Aware": false,                                 +
                               "Scan Direction": "Forward",                             +
                               "Index Name": "movie_id_movie_link",                     +
                               "Relation Name": "movie_link",                           +
                               "Alias": "ml",                                           +
                               "Startup Cost": 0.01,                                    +
                               "Total Cost": 0.01,                                      +
                               "Plan Rows": 5,                                          +
                               "Plan Width": 12,                                        +
                               "Actual Startup Time": 0.024,                            +
                               "Actual Total Time": 0.024,                              +
                               "Actual Rows": 0,                                        +
                               "Actual Loops": 1,                                       +
                               "Index Cond": "(movie_id = mk.movie_id)",                +
                               "Rows Removed by Index Recheck": 0,                      +
                               "Shared Hit Blocks": 2,                                  +
                               "Shared Read Blocks": 0,                                 +
                               "Shared Dirtied Blocks": 0,                              +
                               "Shared Written Blocks": 0,                              +
                               "Local Hit Blocks": 0,                                   +
                               "Local Read Blocks": 0,                                  +
                               "Local Dirtied Blocks": 0,                               +
                               "Local Written Blocks": 0,                               +
                               "Temp Read Blocks": 0,                                   +
                               "Temp Written Blocks": 0                                 +
                             }                                                          +
                           ]                                                            +
                         }                                                              +
                       ]                                                                +
                     }                                                                  +
                   ]                                                                    +
                 },                                                                     +
                 {                                                                      +
                   "Node Type": "Index Scan",                                           +
                   "Parent Relationship": "Inner",                                      +
                   "Parallel Aware": false,                                             +
                   "Scan Direction": "Forward",                                         +
                   "Index Name": "title_idx_id",                                        +
                   "Relation Name": "title",                                            +
                   "Alias": "t1",                                                       +
                   "Startup Cost": 0.01,                                                +
                   "Total Cost": 0.04,                                                  +
                   "Plan Rows": 1,                                                      +
                   "Plan Width": 21,                                                    +
                   "Actual Startup Time": 0.000,                                        +
                   "Actual Total Time": 0.000,                                          +
                   "Actual Rows": 0,                                                    +
                   "Actual Loops": 0,                                                   +
                   "Index Cond": "(id = mk.movie_id)",                                  +
                   "Rows Removed by Index Recheck": 0,                                  +
                   "Shared Hit Blocks": 0,                                              +
                   "Shared Read Blocks": 0,                                             +
                   "Shared Dirtied Blocks": 0,                                          +
                   "Shared Written Blocks": 0,                                          +
                   "Local Hit Blocks": 0,                                               +
                   "Local Read Blocks": 0,                                              +
                   "Local Dirtied Blocks": 0,                                           +
                   "Local Written Blocks": 0,                                           +
                   "Temp Read Blocks": 0,                                               +
                   "Temp Written Blocks": 0                                             +
                 }                                                                      +
               ]                                                                        +
             },                                                                         +
             {                                                                          +
               "Node Type": "Index Scan",                                               +
               "Parent Relationship": "Inner",                                          +
               "Parallel Aware": false,                                                 +
               "Scan Direction": "Forward",                                             +
               "Index Name": "title_idx_id",                                            +
               "Relation Name": "title",                                                +
               "Alias": "t2",                                                           +
               "Startup Cost": 0.01,                                                    +
               "Total Cost": 2.88,                                                      +
               "Plan Rows": 1,                                                          +
               "Plan Width": 21,                                                        +
               "Actual Startup Time": 0.000,                                            +
               "Actual Total Time": 0.000,                                              +
               "Actual Rows": 0,                                                        +
               "Actual Loops": 0,                                                       +
               "Index Cond": "(id = ml.linked_movie_id)",                               +
               "Rows Removed by Index Recheck": 0,                                      +
               "Shared Hit Blocks": 0,                                                  +
               "Shared Read Blocks": 0,                                                 +
               "Shared Dirtied Blocks": 0,                                              +
               "Shared Written Blocks": 0,                                              +
               "Local Hit Blocks": 0,                                                   +
               "Local Read Blocks": 0,                                                  +
               "Local Dirtied Blocks": 0,                                               +
               "Local Written Blocks": 0,                                               +
               "Temp Read Blocks": 0,                                                   +
               "Temp Written Blocks": 0                                                 +
             }                                                                          +
           ]                                                                            +
         }                                                                              +
       ]                                                                                +
     },                                                                                 +
     "Planning Time": 1481.318,                                                         +
     "Triggers": [                                                                      +
     ],                                                                                 +
     "Execution Time": 48.553                                                           +
   }                                                                                    +
 ]
(1 row)

