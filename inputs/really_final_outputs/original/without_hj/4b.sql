                                 QUERY PLAN                                 
----------------------------------------------------------------------------
 [                                                                         +
   {                                                                       +
     "Plan": {                                                             +
       "Node Type": "Aggregate",                                           +
       "Strategy": "Plain",                                                +
       "Partial Mode": "Simple",                                           +
       "Parallel Aware": false,                                            +
       "Startup Cost": 801.18,                                             +
       "Total Cost": 801.18,                                               +
       "Plan Rows": 1,                                                     +
       "Plan Width": 64,                                                   +
       "Actual Startup Time": 8636.720,                                    +
       "Actual Total Time": 8636.721,                                      +
       "Actual Rows": 1,                                                   +
       "Actual Loops": 1,                                                  +
       "Shared Hit Blocks": 4727,                                          +
       "Shared Read Blocks": 9501,                                         +
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
           "Startup Cost": 0.04,                                           +
           "Total Cost": 801.18,                                           +
           "Plan Rows": 1,                                                 +
           "Plan Width": 23,                                               +
           "Actual Startup Time": 4302.564,                                +
           "Actual Total Time": 8636.623,                                  +
           "Actual Rows": 6,                                               +
           "Actual Loops": 1,                                              +
           "Inner Unique": true,                                           +
           "Shared Hit Blocks": 4727,                                      +
           "Shared Read Blocks": 9501,                                     +
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
               "Node Type": "Nested Loop",                                 +
               "Parent Relationship": "Outer",                             +
               "Parallel Aware": false,                                    +
               "Join Type": "Inner",                                       +
               "Startup Cost": 0.03,                                       +
               "Total Cost": 799.68,                                       +
               "Plan Rows": 105,                                           +
               "Plan Width": 27,                                           +
               "Actual Startup Time": 290.975,                             +
               "Actual Total Time": 7882.279,                              +
               "Actual Rows": 1070,                                        +
               "Actual Loops": 1,                                          +
               "Inner Unique": false,                                      +
               "Shared Hit Blocks": 869,                                   +
               "Shared Read Blocks": 9068,                                 +
               "Shared Dirtied Blocks": 0,                                 +
               "Shared Written Blocks": 0,                                 +
               "Local Hit Blocks": 0,                                      +
               "Local Read Blocks": 0,                                     +
               "Local Dirtied Blocks": 0,                                  +
               "Local Written Blocks": 0,                                  +
               "Temp Read Blocks": 0,                                      +
               "Temp Written Blocks": 0,                                   +
               "Plans": [                                                  +
                 {                                                         +
                   "Node Type": "Nested Loop",                             +
                   "Parent Relationship": "Outer",                         +
                   "Parallel Aware": false,                                +
                   "Join Type": "Inner",                                   +
                   "Startup Cost": 0.01,                                   +
                   "Total Cost": 796.33,                                   +
                   "Plan Rows": 11,                                        +
                   "Plan Width": 31,                                       +
                   "Actual Startup Time": 49.139,                          +
                   "Actual Total Time": 6771.842,                          +
                   "Actual Rows": 72,                                      +
                   "Actual Loops": 1,                                      +
                   "Inner Unique": true,                                   +
                   "Shared Hit Blocks": 734,                               +
                   "Shared Read Blocks": 8943,                             +
                   "Shared Dirtied Blocks": 0,                             +
                   "Shared Written Blocks": 0,                             +
                   "Local Hit Blocks": 0,                                  +
                   "Local Read Blocks": 0,                                 +
                   "Local Dirtied Blocks": 0,                              +
                   "Local Written Blocks": 0,                              +
                   "Temp Read Blocks": 0,                                  +
                   "Temp Written Blocks": 0,                               +
                   "Plans": [                                              +
                     {                                                     +
                       "Node Type": "Nested Loop",                         +
                       "Parent Relationship": "Outer",                     +
                       "Parallel Aware": false,                            +
                       "Join Type": "Inner",                               +
                       "Startup Cost": 0.00,                               +
                       "Total Cost": 469.50,                               +
                       "Plan Rows": 69,                                    +
                       "Plan Width": 10,                                   +
                       "Actual Startup Time": 20.685,                      +
                       "Actual Total Time": 2082.194,                      +
                       "Actual Rows": 305,                                 +
                       "Actual Loops": 1,                                  +
                       "Inner Unique": true,                               +
                       "Join Filter": "(it.id = mi_idx.info_type_id)",     +
                       "Rows Removed by Join Filter": 7488,                +
                       "Shared Hit Blocks": 3,                             +
                       "Shared Read Blocks": 8451,                         +
                       "Shared Dirtied Blocks": 0,                         +
                       "Shared Written Blocks": 0,                         +
                       "Local Hit Blocks": 0,                              +
                       "Local Read Blocks": 0,                             +
                       "Local Dirtied Blocks": 0,                          +
                       "Local Written Blocks": 0,                          +
                       "Temp Read Blocks": 0,                              +
                       "Temp Written Blocks": 0,                           +
                       "Plans": [                                          +
                         {                                                 +
                           "Node Type": "Seq Scan",                        +
                           "Parent Relationship": "Outer",                 +
                           "Parallel Aware": false,                        +
                           "Relation Name": "movie_info_idx",              +
                           "Alias": "mi_idx",                              +
                           "Startup Cost": 0.00,                           +
                           "Total Cost": 467.71,                           +
                           "Plan Rows": 7778,                              +
                           "Plan Width": 14,                               +
                           "Actual Startup Time": 0.523,                   +
                           "Actual Total Time": 2071.909,                  +
                           "Actual Rows": 7793,                            +
                           "Actual Loops": 1,                              +
                           "Filter": "(info > '9.0'::text)",               +
                           "Rows Removed by Filter": 1372242,              +
                           "Shared Hit Blocks": 2,                         +
                           "Shared Read Blocks": 8451,                     +
                           "Shared Dirtied Blocks": 0,                     +
                           "Shared Written Blocks": 0,                     +
                           "Local Hit Blocks": 0,                          +
                           "Local Read Blocks": 0,                         +
                           "Local Dirtied Blocks": 0,                      +
                           "Local Written Blocks": 0,                      +
                           "Temp Read Blocks": 0,                          +
                           "Temp Written Blocks": 0                        +
                         },                                                +
                         {                                                 +
                           "Node Type": "Materialize",                     +
                           "Parent Relationship": "Inner",                 +
                           "Parallel Aware": false,                        +
                           "Startup Cost": 0.00,                           +
                           "Total Cost": 0.05,                             +
                           "Plan Rows": 1,                                 +
                           "Plan Width": 4,                                +
                           "Actual Startup Time": 0.000,                   +
                           "Actual Total Time": 0.000,                     +
                           "Actual Rows": 1,                               +
                           "Actual Loops": 7793,                           +
                           "Shared Hit Blocks": 1,                         +
                           "Shared Read Blocks": 0,                        +
                           "Shared Dirtied Blocks": 0,                     +
                           "Shared Written Blocks": 0,                     +
                           "Local Hit Blocks": 0,                          +
                           "Local Read Blocks": 0,                         +
                           "Local Dirtied Blocks": 0,                      +
                           "Local Written Blocks": 0,                      +
                           "Temp Read Blocks": 0,                          +
                           "Temp Written Blocks": 0,                       +
                           "Plans": [                                      +
                             {                                             +
                               "Node Type": "Seq Scan",                    +
                               "Parent Relationship": "Outer",             +
                               "Parallel Aware": false,                    +
                               "Relation Name": "info_type",               +
                               "Alias": "it",                              +
                               "Startup Cost": 0.00,                       +
                               "Total Cost": 0.05,                         +
                               "Plan Rows": 1,                             +
                               "Plan Width": 4,                            +
                               "Actual Startup Time": 0.046,               +
                               "Actual Total Time": 0.051,                 +
                               "Actual Rows": 1,                           +
                               "Actual Loops": 1,                          +
                               "Filter": "((info)::text = 'rating'::text)",+
                               "Rows Removed by Filter": 112,              +
                               "Shared Hit Blocks": 1,                     +
                               "Shared Read Blocks": 0,                    +
                               "Shared Dirtied Blocks": 0,                 +
                               "Shared Written Blocks": 0,                 +
                               "Local Hit Blocks": 0,                      +
                               "Local Read Blocks": 0,                     +
                               "Local Dirtied Blocks": 0,                  +
                               "Local Written Blocks": 0,                  +
                               "Temp Read Blocks": 0,                      +
                               "Temp Written Blocks": 0                    +
                             }                                             +
                           ]                                               +
                         }                                                 +
                       ]                                                   +
                     },                                                    +
                     {                                                     +
                       "Node Type": "Index Scan",                          +
                       "Parent Relationship": "Inner",                     +
                       "Parallel Aware": false,                            +
                       "Scan Direction": "Forward",                        +
                       "Index Name": "title_idx_id",                       +
                       "Relation Name": "title",                           +
                       "Alias": "t",                                       +
                       "Startup Cost": 0.01,                               +
                       "Total Cost": 4.74,                                 +
                       "Plan Rows": 1,                                     +
                       "Plan Width": 21,                                   +
                       "Actual Startup Time": 15.370,                      +
                       "Actual Total Time": 15.370,                        +
                       "Actual Rows": 0,                                   +
                       "Actual Loops": 305,                                +
                       "Index Cond": "(id = mi_idx.movie_id)",             +
                       "Rows Removed by Index Recheck": 0,                 +
                       "Filter": "(production_year > 2010)",               +
                       "Rows Removed by Filter": 1,                        +
                       "Shared Hit Blocks": 731,                           +
                       "Shared Read Blocks": 492,                          +
                       "Shared Dirtied Blocks": 0,                         +
                       "Shared Written Blocks": 0,                         +
                       "Local Hit Blocks": 0,                              +
                       "Local Read Blocks": 0,                             +
                       "Local Dirtied Blocks": 0,                          +
                       "Local Written Blocks": 0,                          +
                       "Temp Read Blocks": 0,                              +
                       "Temp Written Blocks": 0                            +
                     }                                                     +
                   ]                                                       +
                 },                                                        +
                 {                                                         +
                   "Node Type": "Index Scan",                              +
                   "Parent Relationship": "Inner",                         +
                   "Parallel Aware": false,                                +
                   "Scan Direction": "Forward",                            +
                   "Index Name": "movie_id_movie_keyword",                 +
                   "Relation Name": "movie_keyword",                       +
                   "Alias": "mk",                                          +
                   "Startup Cost": 0.01,                                   +
                   "Total Cost": 0.30,                                     +
                   "Plan Rows": 11,                                        +
                   "Plan Width": 8,                                        +
                   "Actual Startup Time": 15.383,                          +
                   "Actual Total Time": 15.406,                            +
                   "Actual Rows": 15,                                      +
                   "Actual Loops": 72,                                     +
                   "Index Cond": "(movie_id = t.id)",                      +
                   "Rows Removed by Index Recheck": 0,                     +
                   "Shared Hit Blocks": 135,                               +
                   "Shared Read Blocks": 125,                              +
                   "Shared Dirtied Blocks": 0,                             +
                   "Shared Written Blocks": 0,                             +
                   "Local Hit Blocks": 0,                                  +
                   "Local Read Blocks": 0,                                 +
                   "Local Dirtied Blocks": 0,                              +
                   "Local Written Blocks": 0,                              +
                   "Temp Read Blocks": 0,                                  +
                   "Temp Written Blocks": 0                                +
                 }                                                         +
               ]                                                           +
             },                                                            +
             {                                                             +
               "Node Type": "Index Scan",                                  +
               "Parent Relationship": "Inner",                             +
               "Parallel Aware": false,                                    +
               "Scan Direction": "Forward",                                +
               "Index Name": "keyword_pkey",                               +
               "Relation Name": "keyword",                                 +
               "Alias": "k",                                               +
               "Startup Cost": 0.01,                                       +
               "Total Cost": 0.01,                                         +
               "Plan Rows": 1,                                             +
               "Plan Width": 4,                                            +
               "Actual Startup Time": 0.704,                               +
               "Actual Total Time": 0.704,                                 +
               "Actual Rows": 0,                                           +
               "Actual Loops": 1070,                                       +
               "Index Cond": "(id = mk.keyword_id)",                       +
               "Rows Removed by Index Recheck": 0,                         +
               "Filter": "(keyword ~~ '%sequel%'::text)",                  +
               "Rows Removed by Filter": 1,                                +
               "Shared Hit Blocks": 3858,                                  +
               "Shared Read Blocks": 433,                                  +
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
         }                                                                 +
       ]                                                                   +
     },                                                                    +
     "Planning Time": 2551.630,                                            +
     "Triggers": [                                                         +
     ],                                                                    +
     "Execution Time": 8658.009                                            +
   }                                                                       +
 ]
(1 row)

