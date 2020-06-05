                                                     QUERY PLAN                                                      
---------------------------------------------------------------------------------------------------------------------
 [                                                                                                                  +
   {                                                                                                                +
     "Plan": {                                                                                                      +
       "Node Type": "Aggregate",                                                                                    +
       "Strategy": "Plain",                                                                                         +
       "Partial Mode": "Simple",                                                                                    +
       "Parallel Aware": false,                                                                                     +
       "Startup Cost": 8083.46,                                                                                     +
       "Total Cost": 8083.46,                                                                                       +
       "Plan Rows": 1,                                                                                              +
       "Plan Width": 32,                                                                                            +
       "Actual Startup Time": 68620.839,                                                                            +
       "Actual Total Time": 68620.839,                                                                              +
       "Actual Rows": 1,                                                                                            +
       "Actual Loops": 1,                                                                                           +
       "Shared Hit Blocks": 61259,                                                                                  +
       "Shared Read Blocks": 28777,                                                                                 +
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
           "Startup Cost": 0.04,                                                                                    +
           "Total Cost": 8083.43,                                                                                   +
           "Plan Rows": 364,                                                                                        +
           "Plan Width": 17,                                                                                        +
           "Actual Startup Time": 2872.319,                                                                         +
           "Actual Total Time": 68619.900,                                                                          +
           "Actual Rows": 206,                                                                                      +
           "Actual Loops": 1,                                                                                       +
           "Inner Unique": false,                                                                                   +
           "Join Filter": "(t.id = mi.movie_id)",                                                                   +
           "Rows Removed by Join Filter": 0,                                                                        +
           "Shared Hit Blocks": 61259,                                                                              +
           "Shared Read Blocks": 28777,                                                                             +
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
               "Node Type": "Nested Loop",                                                                          +
               "Parent Relationship": "Outer",                                                                      +
               "Parallel Aware": false,                                                                             +
               "Join Type": "Inner",                                                                                +
               "Startup Cost": 0.03,                                                                                +
               "Total Cost": 7943.01,                                                                               +
               "Plan Rows": 905,                                                                                    +
               "Plan Width": 25,                                                                                    +
               "Actual Startup Time": 1158.298,                                                                     +
               "Actual Total Time": 26413.408,                                                                      +
               "Actual Rows": 2235,                                                                                 +
               "Actual Loops": 1,                                                                                   +
               "Inner Unique": true,                                                                                +
               "Shared Hit Blocks": 43503,                                                                          +
               "Shared Read Blocks": 16427,                                                                         +
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
                   "Node Type": "Nested Loop",                                                                      +
                   "Parent Relationship": "Outer",                                                                  +
                   "Parallel Aware": false,                                                                         +
                   "Join Type": "Inner",                                                                            +
                   "Startup Cost": 0.01,                                                                            +
                   "Total Cost": 7846.64,                                                                           +
                   "Plan Rows": 2259,                                                                               +
                   "Plan Width": 4,                                                                                 +
                   "Actual Startup Time": 47.404,                                                                   +
                   "Actual Total Time": 6781.925,                                                                   +
                   "Actual Rows": 12951,                                                                            +
                   "Actual Loops": 1,                                                                               +
                   "Inner Unique": false,                                                                           +
                   "Shared Hit Blocks": 1329,                                                                       +
                   "Shared Read Blocks": 6728,                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                      +
                   "Shared Written Blocks": 0,                                                                      +
                   "Local Hit Blocks": 0,                                                                           +
                   "Local Read Blocks": 0,                                                                          +
                   "Local Dirtied Blocks": 0,                                                                       +
                   "Local Written Blocks": 0,                                                                       +
                   "Temp Read Blocks": 0,                                                                           +
                   "Temp Written Blocks": 0,                                                                        +
                   "Plans": [                                                                                       +
                     {                                                                                              +
                       "Node Type": "Seq Scan",                                                                     +
                       "Parent Relationship": "Outer",                                                              +
                       "Parallel Aware": false,                                                                     +
                       "Relation Name": "keyword",                                                                  +
                       "Alias": "k",                                                                                +
                       "Startup Cost": 0.00,                                                                        +
                       "Total Cost": 49.46,                                                                         +
                       "Plan Rows": 67,                                                                             +
                       "Plan Width": 4,                                                                             +
                       "Actual Startup Time": 16.609,                                                               +
                       "Actual Total Time": 245.703,                                                                +
                       "Actual Rows": 30,                                                                           +
                       "Actual Loops": 1,                                                                           +
                       "Filter": "(keyword ~~ '%sequel%'::text)",                                                   +
                       "Rows Removed by Filter": 134140,                                                            +
                       "Shared Hit Blocks": 2,                                                                      +
                       "Shared Read Blocks": 947,                                                                   +
                       "Shared Dirtied Blocks": 0,                                                                  +
                       "Shared Written Blocks": 0,                                                                  +
                       "Local Hit Blocks": 0,                                                                       +
                       "Local Read Blocks": 0,                                                                      +
                       "Local Dirtied Blocks": 0,                                                                   +
                       "Local Written Blocks": 0,                                                                   +
                       "Temp Read Blocks": 0,                                                                       +
                       "Temp Written Blocks": 0                                                                     +
                     },                                                                                             +
                     {                                                                                              +
                       "Node Type": "Index Scan",                                                                   +
                       "Parent Relationship": "Inner",                                                              +
                       "Parallel Aware": false,                                                                     +
                       "Scan Direction": "Forward",                                                                 +
                       "Index Name": "keyword_id_movie_keyword",                                                    +
                       "Relation Name": "movie_keyword",                                                            +
                       "Alias": "mk",                                                                               +
                       "Startup Cost": 0.01,                                                                        +
                       "Total Cost": 116.37,                                                                        +
                       "Plan Rows": 39,                                                                             +
                       "Plan Width": 8,                                                                             +
                       "Actual Startup Time": 13.229,                                                               +
                       "Actual Total Time": 217.455,                                                                +
                       "Actual Rows": 432,                                                                          +
                       "Actual Loops": 30,                                                                          +
                       "Index Cond": "(keyword_id = k.id)",                                                         +
                       "Rows Removed by Index Recheck": 0,                                                          +
                       "Shared Hit Blocks": 1327,                                                                   +
                       "Shared Read Blocks": 5781,                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                  +
                       "Shared Written Blocks": 0,                                                                  +
                       "Local Hit Blocks": 0,                                                                       +
                       "Local Read Blocks": 0,                                                                      +
                       "Local Dirtied Blocks": 0,                                                                   +
                       "Local Written Blocks": 0,                                                                   +
                       "Temp Read Blocks": 0,                                                                       +
                       "Temp Written Blocks": 0                                                                     +
                     }                                                                                              +
                   ]                                                                                                +
                 },                                                                                                 +
                 {                                                                                                  +
                   "Node Type": "Index Scan",                                                                       +
                   "Parent Relationship": "Inner",                                                                  +
                   "Parallel Aware": false,                                                                         +
                   "Scan Direction": "Forward",                                                                     +
                   "Index Name": "title_idx_id",                                                                    +
                   "Relation Name": "title",                                                                        +
                   "Alias": "t",                                                                                    +
                   "Startup Cost": 0.01,                                                                            +
                   "Total Cost": 0.04,                                                                              +
                   "Plan Rows": 1,                                                                                  +
                   "Plan Width": 21,                                                                                +
                   "Actual Startup Time": 1.513,                                                                    +
                   "Actual Total Time": 1.513,                                                                      +
                   "Actual Rows": 0,                                                                                +
                   "Actual Loops": 12951,                                                                           +
                   "Index Cond": "(id = mk.movie_id)",                                                              +
                   "Rows Removed by Index Recheck": 0,                                                              +
                   "Filter": "(production_year > 2005)",                                                            +
                   "Rows Removed by Filter": 1,                                                                     +
                   "Shared Hit Blocks": 42174,                                                                      +
                   "Shared Read Blocks": 9699,                                                                      +
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
             },                                                                                                     +
             {                                                                                                      +
               "Node Type": "Index Scan",                                                                           +
               "Parent Relationship": "Inner",                                                                      +
               "Parallel Aware": false,                                                                             +
               "Scan Direction": "Forward",                                                                         +
               "Index Name": "movie_id_movie_info",                                                                 +
               "Relation Name": "movie_info",                                                                       +
               "Alias": "mi",                                                                                       +
               "Startup Cost": 0.01,                                                                                +
               "Total Cost": 0.16,                                                                                  +
               "Plan Rows": 1,                                                                                      +
               "Plan Width": 4,                                                                                     +
               "Actual Startup Time": 18.070,                                                                       +
               "Actual Total Time": 18.881,                                                                         +
               "Actual Rows": 0,                                                                                    +
               "Actual Loops": 2235,                                                                                +
               "Index Cond": "(movie_id = mk.movie_id)",                                                            +
               "Rows Removed by Index Recheck": 0,                                                                  +
               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))",+
               "Rows Removed by Filter": 45,                                                                        +
               "Shared Hit Blocks": 17756,                                                                          +
               "Shared Read Blocks": 12350,                                                                         +
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
     "Planning Time": 2098.217,                                                                                     +
     "Triggers": [                                                                                                  +
     ],                                                                                                             +
     "Execution Time": 68645.083                                                                                    +
   }                                                                                                                +
 ]
(1 row)

