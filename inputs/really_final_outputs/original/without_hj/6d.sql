                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                           +
   {                                                                                                                                                         +
     "Plan": {                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                             +
       "Parallel Aware": false,                                                                                                                              +
       "Startup Cost": 1173.16,                                                                                                                              +
       "Total Cost": 1173.16,                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                       +
       "Plan Width": 96,                                                                                                                                     +
       "Actual Startup Time": 1404848.823,                                                                                                                   +
       "Actual Total Time": 1404848.823,                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                    +
       "Shared Hit Blocks": 3856805,                                                                                                                         +
       "Shared Read Blocks": 266080,                                                                                                                         +
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
           "Startup Cost": 0.07,                                                                                                                             +
           "Total Cost": 1173.16,                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                   +
           "Plan Width": 48,                                                                                                                                 +
           "Actual Startup Time": 202648.327,                                                                                                                +
           "Actual Total Time": 1404848.043,                                                                                                                 +
           "Actual Rows": 88,                                                                                                                                +
           "Actual Loops": 1,                                                                                                                                +
           "Inner Unique": true,                                                                                                                             +
           "Shared Hit Blocks": 3856805,                                                                                                                     +
           "Shared Read Blocks": 266080,                                                                                                                     +
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
               "Startup Cost": 0.06,                                                                                                                         +
               "Total Cost": 1075.72,                                                                                                                        +
               "Plan Rows": 4974,                                                                                                                            +
               "Plan Width": 37,                                                                                                                             +
               "Actual Startup Time": 103.159,                                                                                                               +
               "Actual Total Time": 1081777.909,                                                                                                             +
               "Actual Rows": 785477,                                                                                                                        +
               "Actual Loops": 1,                                                                                                                            +
               "Inner Unique": false,                                                                                                                        +
               "Join Filter": "(t.id = ci.movie_id)",                                                                                                        +
               "Rows Removed by Join Filter": 0,                                                                                                             +
               "Shared Hit Blocks": 777230,                                                                                                                  +
               "Shared Read Blocks": 198126,                                                                                                                 +
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
                   "Total Cost": 1036.75,                                                                                                                    +
                   "Plan Rows": 148,                                                                                                                         +
                   "Plan Width": 41,                                                                                                                         +
                   "Actual Startup Time": 72.390,                                                                                                            +
                   "Actual Total Time": 105116.919,                                                                                                          +
                   "Actual Rows": 14165,                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                        +
                   "Inner Unique": true,                                                                                                                     +
                   "Shared Hit Blocks": 133520,                                                                                                              +
                   "Shared Read Blocks": 32456,                                                                                                              +
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
                       "Total Cost": 1025.23,                                                                                                                +
                       "Plan Rows": 270,                                                                                                                     +
                       "Plan Width": 20,                                                                                                                     +
                       "Actual Startup Time": 54.445,                                                                                                        +
                       "Actual Total Time": 22445.902,                                                                                                       +
                       "Actual Rows": 35548,                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                    +
                       "Inner Unique": false,                                                                                                                +
                       "Shared Hit Blocks": 8737,                                                                                                            +
                       "Shared Read Blocks": 14908,                                                                                                          +
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
                           "Node Type": "Index Scan",                                                                                                        +
                           "Parent Relationship": "Outer",                                                                                                   +
                           "Parallel Aware": false,                                                                                                          +
                           "Scan Direction": "Forward",                                                                                                      +
                           "Index Name": "keyword_idx_keyword",                                                                                              +
                           "Relation Name": "keyword",                                                                                                       +
                           "Alias": "k",                                                                                                                     +
                           "Startup Cost": 0.01,                                                                                                             +
                           "Total Cost": 49.06,                                                                                                              +
                           "Plan Rows": 8,                                                                                                                   +
                           "Plan Width": 20,                                                                                                                 +
                           "Actual Startup Time": 28.569,                                                                                                    +
                           "Actual Total Time": 245.874,                                                                                                     +
                           "Actual Rows": 8,                                                                                                                 +
                           "Actual Loops": 1,                                                                                                                +
                           "Index Cond": "(keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))",+
                           "Rows Removed by Index Recheck": 0,                                                                                               +
                           "Shared Hit Blocks": 15,                                                                                                          +
                           "Shared Read Blocks": 20,                                                                                                         +
                           "Shared Dirtied Blocks": 0,                                                                                                       +
                           "Shared Written Blocks": 0,                                                                                                       +
                           "Local Hit Blocks": 0,                                                                                                            +
                           "Local Read Blocks": 0,                                                                                                           +
                           "Local Dirtied Blocks": 0,                                                                                                        +
                           "Local Written Blocks": 0,                                                                                                        +
                           "Temp Read Blocks": 0,                                                                                                            +
                           "Temp Written Blocks": 0                                                                                                          +
                         },                                                                                                                                  +
                         {                                                                                                                                   +
                           "Node Type": "Index Scan",                                                                                                        +
                           "Parent Relationship": "Inner",                                                                                                   +
                           "Parallel Aware": false,                                                                                                          +
                           "Scan Direction": "Forward",                                                                                                      +
                           "Index Name": "keyword_id_movie_keyword",                                                                                         +
                           "Relation Name": "movie_keyword",                                                                                                 +
                           "Alias": "mk",                                                                                                                    +
                           "Startup Cost": 0.01,                                                                                                             +
                           "Total Cost": 122.02,                                                                                                             +
                           "Plan Rows": 39,                                                                                                                  +
                           "Plan Width": 8,                                                                                                                  +
                           "Actual Startup Time": 29.589,                                                                                                    +
                           "Actual Total Time": 2769.331,                                                                                                    +
                           "Actual Rows": 4444,                                                                                                              +
                           "Actual Loops": 8,                                                                                                                +
                           "Index Cond": "(keyword_id = k.id)",                                                                                              +
                           "Rows Removed by Index Recheck": 0,                                                                                               +
                           "Shared Hit Blocks": 8722,                                                                                                        +
                           "Shared Read Blocks": 14888,                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                       +
                           "Shared Written Blocks": 0,                                                                                                       +
                           "Local Hit Blocks": 0,                                                                                                            +
                           "Local Read Blocks": 0,                                                                                                           +
                           "Local Dirtied Blocks": 0,                                                                                                        +
                           "Local Written Blocks": 0,                                                                                                        +
                           "Temp Read Blocks": 0,                                                                                                            +
                           "Temp Written Blocks": 0                                                                                                          +
                         }                                                                                                                                   +
                       ]                                                                                                                                     +
                     },                                                                                                                                      +
                     {                                                                                                                                       +
                       "Node Type": "Index Scan",                                                                                                            +
                       "Parent Relationship": "Inner",                                                                                                       +
                       "Parallel Aware": false,                                                                                                              +
                       "Scan Direction": "Forward",                                                                                                          +
                       "Index Name": "title_idx_id",                                                                                                         +
                       "Relation Name": "title",                                                                                                             +
                       "Alias": "t",                                                                                                                         +
                       "Startup Cost": 0.01,                                                                                                                 +
                       "Total Cost": 0.04,                                                                                                                   +
                       "Plan Rows": 1,                                                                                                                       +
                       "Plan Width": 21,                                                                                                                     +
                       "Actual Startup Time": 2.322,                                                                                                         +
                       "Actual Total Time": 2.322,                                                                                                           +
                       "Actual Rows": 0,                                                                                                                     +
                       "Actual Loops": 35548,                                                                                                                +
                       "Index Cond": "(id = mk.movie_id)",                                                                                                   +
                       "Rows Removed by Index Recheck": 0,                                                                                                   +
                       "Filter": "(production_year > 2000)",                                                                                                 +
                       "Rows Removed by Filter": 1,                                                                                                          +
                       "Shared Hit Blocks": 124783,                                                                                                          +
                       "Shared Read Blocks": 17548,                                                                                                          +
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
                   "Index Name": "movie_id_cast_info",                                                                                                       +
                   "Relation Name": "cast_info",                                                                                                             +
                   "Alias": "ci",                                                                                                                            +
                   "Startup Cost": 0.02,                                                                                                                     +
                   "Total Cost": 0.26,                                                                                                                       +
                   "Plan Rows": 23,                                                                                                                          +
                   "Plan Width": 8,                                                                                                                          +
                   "Actual Startup Time": 6.708,                                                                                                             +
                   "Actual Total Time": 68.866,                                                                                                              +
                   "Actual Rows": 55,                                                                                                                        +
                   "Actual Loops": 14165,                                                                                                                    +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                                       +
                   "Shared Hit Blocks": 643710,                                                                                                              +
                   "Shared Read Blocks": 165670,                                                                                                             +
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
               "Node Type": "Index Scan",                                                                                                                    +
               "Parent Relationship": "Inner",                                                                                                               +
               "Parallel Aware": false,                                                                                                                      +
               "Scan Direction": "Forward",                                                                                                                  +
               "Index Name": "name_pkey",                                                                                                                    +
               "Relation Name": "name",                                                                                                                      +
               "Alias": "n",                                                                                                                                 +
               "Startup Cost": 0.01,                                                                                                                         +
               "Total Cost": 0.02,                                                                                                                           +
               "Plan Rows": 1,                                                                                                                               +
               "Plan Width": 19,                                                                                                                             +
               "Actual Startup Time": 0.409,                                                                                                                 +
               "Actual Total Time": 0.409,                                                                                                                   +
               "Actual Rows": 0,                                                                                                                             +
               "Actual Loops": 785477,                                                                                                                       +
               "Index Cond": "(id = ci.person_id)",                                                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                                                           +
               "Filter": "(name ~~ '%Downey%Robert%'::text)",                                                                                                +
               "Rows Removed by Filter": 1,                                                                                                                  +
               "Shared Hit Blocks": 3079575,                                                                                                                 +
               "Shared Read Blocks": 67954,                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                   +
               "Shared Written Blocks": 0,                                                                                                                   +
               "Local Hit Blocks": 0,                                                                                                                        +
               "Local Read Blocks": 0,                                                                                                                       +
               "Local Dirtied Blocks": 0,                                                                                                                    +
               "Local Written Blocks": 0,                                                                                                                    +
               "Temp Read Blocks": 0,                                                                                                                        +
               "Temp Written Blocks": 0                                                                                                                      +
             }                                                                                                                                               +
           ]                                                                                                                                                 +
         }                                                                                                                                                   +
       ]                                                                                                                                                     +
     },                                                                                                                                                      +
     "Planning Time": 2580.868,                                                                                                                              +
     "Triggers": [                                                                                                                                           +
     ],                                                                                                                                                      +
     "Execution Time": 1404879.167                                                                                                                           +
   }                                                                                                                                                         +
 ]
(1 row)
