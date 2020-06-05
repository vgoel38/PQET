                                   QUERY PLAN                                   
--------------------------------------------------------------------------------
 [                                                                             +
   {                                                                           +
     "Plan": {                                                                 +
       "Node Type": "Aggregate",                                               +
       "Strategy": "Plain",                                                    +
       "Partial Mode": "Simple",                                               +
       "Parallel Aware": false,                                                +
       "Startup Cost": 2031.31,                                                +
       "Total Cost": 2031.31,                                                  +
       "Plan Rows": 1,                                                         +
       "Plan Width": 64,                                                       +
       "Actual Startup Time": 71208.601,                                       +
       "Actual Total Time": 71208.602,                                         +
       "Actual Rows": 1,                                                       +
       "Actual Loops": 1,                                                      +
       "Shared Hit Blocks": 1595900,                                           +
       "Shared Read Blocks": 52507,                                            +
       "Shared Dirtied Blocks": 0,                                             +
       "Shared Written Blocks": 0,                                             +
       "Local Hit Blocks": 0,                                                  +
       "Local Read Blocks": 0,                                                 +
       "Local Dirtied Blocks": 0,                                              +
       "Local Written Blocks": 0,                                              +
       "Temp Read Blocks": 0,                                                  +
       "Temp Written Blocks": 0,                                               +
       "Plans": [                                                              +
         {                                                                     +
           "Node Type": "Nested Loop",                                         +
           "Parent Relationship": "Outer",                                     +
           "Parallel Aware": false,                                            +
           "Join Type": "Inner",                                               +
           "Startup Cost": 2018.13,                                            +
           "Total Cost": 2031.31,                                              +
           "Plan Rows": 26,                                                    +
           "Plan Width": 23,                                                   +
           "Actual Startup Time": 7234.513,                                    +
           "Actual Total Time": 71173.978,                                     +
           "Actual Rows": 4700,                                                +
           "Actual Loops": 1,                                                  +
           "Inner Unique": true,                                               +
           "Join Filter": "(mi_idx.movie_id = t.id)",                          +
           "Rows Removed by Join Filter": 0,                                   +
           "Shared Hit Blocks": 1595900,                                       +
           "Shared Read Blocks": 52507,                                        +
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
               "Node Type": "Merge Join",                                      +
               "Parent Relationship": "Outer",                                 +
               "Parallel Aware": false,                                        +
               "Join Type": "Inner",                                           +
               "Startup Cost": 2018.12,                                        +
               "Total Cost": 2029.72,                                          +
               "Plan Rows": 37,                                                +
               "Plan Width": 14,                                               +
               "Actual Startup Time": 7146.077,                                +
               "Actual Total Time": 8241.126,                                  +
               "Actual Rows": 8092,                                            +
               "Actual Loops": 1,                                              +
               "Inner Unique": true,                                           +
               "Merge Cond": "(mk.keyword_id = k.id)",                         +
               "Shared Hit Blocks": 1570927,                                   +
               "Shared Read Blocks": 45078,                                    +
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
                   "Node Type": "Sort",                                        +
                   "Parent Relationship": "Outer",                             +
                   "Parallel Aware": false,                                    +
                   "Startup Cost": 1968.60,                                    +
                   "Total Cost": 1974.39,                                      +
                   "Plan Rows": 74654,                                         +
                   "Plan Width": 18,                                           +
                   "Actual Startup Time": 6938.471,                            +
                   "Actual Total Time": 7517.833,                              +
                   "Actual Rows": 3431234,                                     +
                   "Actual Loops": 1,                                          +
                   "Sort Key": ["mk.keyword_id"],                              +
                   "Sort Method": "quicksort",                                 +
                   "Sort Space Used": 259363,                                  +
                   "Sort Space Type": "Memory",                                +
                   "Shared Hit Blocks": 1570925,                               +
                   "Shared Read Blocks": 44131,                                +
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
                       "Total Cost": 1780.94,                                  +
                       "Plan Rows": 74654,                                     +
                       "Plan Width": 18,                                       +
                       "Actual Startup Time": 0.168,                           +
                       "Actual Total Time": 5336.981,                          +
                       "Actual Rows": 3435922,                                 +
                       "Actual Loops": 1,                                      +
                       "Inner Unique": false,                                  +
                       "Shared Hit Blocks": 1570921,                           +
                       "Shared Read Blocks": 44131,                            +
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
                           "Total Cost": 659.72,                               +
                           "Plan Rows": 7570,                                  +
                           "Plan Width": 10,                                   +
                           "Actual Startup Time": 0.141,                       +
                           "Actual Total Time": 867.615,                       +
                           "Actual Rows": 448969,                              +
                           "Actual Loops": 1,                                  +
                           "Inner Unique": true,                               +
                           "Join Filter": "(it.id = mi_idx.info_type_id)",     +
                           "Rows Removed by Join Filter": 406443,              +
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
                               "Plan Rows": 855391,                            +
                               "Plan Width": 14,                               +
                               "Actual Startup Time": 0.070,                   +
                               "Actual Total Time": 463.474,                   +
                               "Actual Rows": 855412,                          +
                               "Actual Loops": 1,                              +
                               "Filter": "(info > '2.0'::text)",               +
                               "Rows Removed by Filter": 524623,               +
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
                               "Actual Loops": 855412,                         +
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
                                   "Actual Startup Time": 0.047,               +
                                   "Actual Total Time": 0.053,                 +
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
                           "Index Name": "movie_id_movie_keyword",             +
                           "Relation Name": "movie_keyword",                   +
                           "Alias": "mk",                                      +
                           "Startup Cost": 0.01,                               +
                           "Total Cost": 0.15,                                 +
                           "Plan Rows": 11,                                    +
                           "Plan Width": 8,                                    +
                           "Actual Startup Time": 0.005,                       +
                           "Actual Total Time": 0.008,                         +
                           "Actual Rows": 8,                                   +
                           "Actual Loops": 448969,                             +
                           "Index Cond": "(movie_id = mi_idx.movie_id)",       +
                           "Rows Removed by Index Recheck": 0,                 +
                           "Shared Hit Blocks": 1570918,                       +
                           "Shared Read Blocks": 35680,                        +
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
                     }                                                         +
                   ]                                                           +
                 },                                                            +
                 {                                                             +
                   "Node Type": "Sort",                                        +
                   "Parent Relationship": "Inner",                             +
                   "Parallel Aware": false,                                    +
                   "Startup Cost": 49.52,                                      +
                   "Total Cost": 49.53,                                        +
                   "Plan Rows": 67,                                            +
                   "Plan Width": 4,                                            +
                   "Actual Startup Time": 88.684,                              +
                   "Actual Total Time": 88.699,                                +
                   "Actual Rows": 30,                                          +
                   "Actual Loops": 1,                                          +
                   "Sort Key": ["k.id"],                                       +
                   "Sort Method": "quicksort",                                 +
                   "Sort Space Used": 26,                                      +
                   "Sort Space Type": "Memory",                                +
                   "Shared Hit Blocks": 2,                                     +
                   "Shared Read Blocks": 947,                                  +
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
                       "Node Type": "Seq Scan",                                +
                       "Parent Relationship": "Outer",                         +
                       "Parallel Aware": false,                                +
                       "Relation Name": "keyword",                             +
                       "Alias": "k",                                           +
                       "Startup Cost": 0.00,                                   +
                       "Total Cost": 49.46,                                    +
                       "Plan Rows": 67,                                        +
                       "Plan Width": 4,                                        +
                       "Actual Startup Time": 27.456,                          +
                       "Actual Total Time": 88.633,                            +
                       "Actual Rows": 30,                                      +
                       "Actual Loops": 1,                                      +
                       "Filter": "(keyword ~~ '%sequel%'::text)",              +
                       "Rows Removed by Filter": 134140,                       +
                       "Shared Hit Blocks": 2,                                 +
                       "Shared Read Blocks": 947,                              +
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
                 }                                                             +
               ]                                                               +
             },                                                                +
             {                                                                 +
               "Node Type": "Index Scan",                                      +
               "Parent Relationship": "Inner",                                 +
               "Parallel Aware": false,                                        +
               "Scan Direction": "Forward",                                    +
               "Index Name": "title_idx_id",                                   +
               "Relation Name": "title",                                       +
               "Alias": "t",                                                   +
               "Startup Cost": 0.01,                                           +
               "Total Cost": 0.04,                                             +
               "Plan Rows": 1,                                                 +
               "Plan Width": 21,                                               +
               "Actual Startup Time": 7.772,                                   +
               "Actual Total Time": 7.772,                                     +
               "Actual Rows": 1,                                               +
               "Actual Loops": 8092,                                           +
               "Index Cond": "(id = mk.movie_id)",                             +
               "Rows Removed by Index Recheck": 0,                             +
               "Filter": "(production_year > 1990)",                           +
               "Rows Removed by Filter": 0,                                    +
               "Shared Hit Blocks": 24973,                                     +
               "Shared Read Blocks": 7429,                                     +
               "Shared Dirtied Blocks": 0,                                     +
               "Shared Written Blocks": 0,                                     +
               "Local Hit Blocks": 0,                                          +
               "Local Read Blocks": 0,                                         +
               "Local Dirtied Blocks": 0,                                      +
               "Local Written Blocks": 0,                                      +
               "Temp Read Blocks": 0,                                          +
               "Temp Written Blocks": 0                                        +
             }                                                                 +
           ]                                                                   +
         }                                                                     +
       ]                                                                       +
     },                                                                        +
     "Planning Time": 2365.528,                                                +
     "Triggers": [                                                             +
     ],                                                                        +
     "Execution Time": 71248.755                                               +
   }                                                                           +
 ]
(1 row)

