                                        QUERY PLAN                                        
------------------------------------------------------------------------------------------
 [                                                                                       +
   {                                                                                     +
     "Plan": {                                                                           +
       "Node Type": "Aggregate",                                                         +
       "Strategy": "Plain",                                                              +
       "Partial Mode": "Simple",                                                         +
       "Parallel Aware": false,                                                          +
       "Startup Cost": 636.79,                                                           +
       "Total Cost": 636.79,                                                             +
       "Plan Rows": 1,                                                                   +
       "Plan Width": 96,                                                                 +
       "Actual Startup Time": 17205.380,                                                 +
       "Actual Total Time": 17205.380,                                                   +
       "Actual Rows": 1,                                                                 +
       "Actual Loops": 1,                                                                +
       "Shared Hit Blocks": 3185,                                                        +
       "Shared Read Blocks": 3003,                                                       +
       "Shared Dirtied Blocks": 0,                                                       +
       "Shared Written Blocks": 0,                                                       +
       "Local Hit Blocks": 0,                                                            +
       "Local Read Blocks": 0,                                                           +
       "Local Dirtied Blocks": 0,                                                        +
       "Local Written Blocks": 0,                                                        +
       "Temp Read Blocks": 0,                                                            +
       "Temp Written Blocks": 0,                                                         +
       "Plans": [                                                                        +
         {                                                                               +
           "Node Type": "Nested Loop",                                                   +
           "Parent Relationship": "Outer",                                               +
           "Parallel Aware": false,                                                      +
           "Join Type": "Inner",                                                         +
           "Startup Cost": 0.07,                                                         +
           "Total Cost": 636.79,                                                         +
           "Plan Rows": 1,                                                               +
           "Plan Width": 48,                                                             +
           "Actual Startup Time": 3975.223,                                              +
           "Actual Total Time": 17205.270,                                               +
           "Actual Rows": 6,                                                             +
           "Actual Loops": 1,                                                            +
           "Inner Unique": true,                                                         +
           "Shared Hit Blocks": 3185,                                                    +
           "Shared Read Blocks": 3003,                                                   +
           "Shared Dirtied Blocks": 0,                                                   +
           "Shared Written Blocks": 0,                                                   +
           "Local Hit Blocks": 0,                                                        +
           "Local Read Blocks": 0,                                                       +
           "Local Dirtied Blocks": 0,                                                    +
           "Local Written Blocks": 0,                                                    +
           "Temp Read Blocks": 0,                                                        +
           "Temp Written Blocks": 0,                                                     +
           "Plans": [                                                                    +
             {                                                                           +
               "Node Type": "Nested Loop",                                               +
               "Parent Relationship": "Outer",                                           +
               "Parallel Aware": false,                                                  +
               "Join Type": "Inner",                                                     +
               "Startup Cost": 0.06,                                                     +
               "Total Cost": 624.60,                                                     +
               "Plan Rows": 622,                                                         +
               "Plan Width": 37,                                                         +
               "Actual Startup Time": 142.301,                                           +
               "Actual Total Time": 7325.167,                                            +
               "Actual Rows": 1224,                                                      +
               "Actual Loops": 1,                                                        +
               "Inner Unique": false,                                                    +
               "Join Filter": "(t.id = ci.movie_id)",                                    +
               "Rows Removed by Join Filter": 0,                                         +
               "Shared Hit Blocks": 225,                                                 +
               "Shared Read Blocks": 1062,                                               +
               "Shared Dirtied Blocks": 0,                                               +
               "Shared Written Blocks": 0,                                               +
               "Local Hit Blocks": 0,                                                    +
               "Local Read Blocks": 0,                                                   +
               "Local Dirtied Blocks": 0,                                                +
               "Local Written Blocks": 0,                                                +
               "Temp Read Blocks": 0,                                                    +
               "Temp Written Blocks": 0,                                                 +
               "Plans": [                                                                +
                 {                                                                       +
                   "Node Type": "Nested Loop",                                           +
                   "Parent Relationship": "Outer",                                       +
                   "Parallel Aware": false,                                              +
                   "Join Type": "Inner",                                                 +
                   "Startup Cost": 0.04,                                                 +
                   "Total Cost": 619.60,                                                 +
                   "Plan Rows": 19,                                                      +
                   "Plan Width": 41,                                                     +
                   "Actual Startup Time": 104.962,                                       +
                   "Actual Total Time": 656.762,                                         +
                   "Actual Rows": 11,                                                    +
                   "Actual Loops": 1,                                                    +
                   "Inner Unique": true,                                                 +
                   "Shared Hit Blocks": 25,                                              +
                   "Shared Read Blocks": 50,                                             +
                   "Shared Dirtied Blocks": 0,                                           +
                   "Shared Written Blocks": 0,                                           +
                   "Local Hit Blocks": 0,                                                +
                   "Local Read Blocks": 0,                                               +
                   "Local Dirtied Blocks": 0,                                            +
                   "Local Written Blocks": 0,                                            +
                   "Temp Read Blocks": 0,                                                +
                   "Temp Written Blocks": 0,                                             +
                   "Plans": [                                                            +
                     {                                                                   +
                       "Node Type": "Nested Loop",                                       +
                       "Parent Relationship": "Outer",                                   +
                       "Parallel Aware": false,                                          +
                       "Join Type": "Inner",                                             +
                       "Startup Cost": 0.03,                                             +
                       "Total Cost": 618.15,                                             +
                       "Plan Rows": 34,                                                  +
                       "Plan Width": 20,                                                 +
                       "Actual Startup Time": 65.039,                                    +
                       "Actual Total Time": 128.135,                                     +
                       "Actual Rows": 14,                                                +
                       "Actual Loops": 1,                                                +
                       "Inner Unique": false,                                            +
                       "Shared Hit Blocks": 1,                                           +
                       "Shared Read Blocks": 18,                                         +
                       "Shared Dirtied Blocks": 0,                                       +
                       "Shared Written Blocks": 0,                                       +
                       "Local Hit Blocks": 0,                                            +
                       "Local Read Blocks": 0,                                           +
                       "Local Dirtied Blocks": 0,                                        +
                       "Local Written Blocks": 0,                                        +
                       "Temp Read Blocks": 0,                                            +
                       "Temp Written Blocks": 0,                                         +
                       "Plans": [                                                        +
                         {                                                               +
                           "Node Type": "Index Scan",                                    +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Scan Direction": "Forward",                                  +
                           "Index Name": "keyword_idx_keyword",                          +
                           "Relation Name": "keyword",                                   +
                           "Alias": "k",                                                 +
                           "Startup Cost": 0.01,                                         +
                           "Total Cost": 6.13,                                           +
                           "Plan Rows": 1,                                               +
                           "Plan Width": 20,                                             +
                           "Actual Startup Time": 28.315,                                +
                           "Actual Total Time": 28.317,                                  +
                           "Actual Rows": 1,                                             +
                           "Actual Loops": 1,                                            +
                           "Index Cond": "(keyword = 'marvel-cinematic-universe'::text)",+
                           "Rows Removed by Index Recheck": 0,                           +
                           "Shared Hit Blocks": 0,                                       +
                           "Shared Read Blocks": 4,                                      +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0                                      +
                         },                                                              +
                         {                                                               +
                           "Node Type": "Index Scan",                                    +
                           "Parent Relationship": "Inner",                               +
                           "Parallel Aware": false,                                      +
                           "Scan Direction": "Forward",                                  +
                           "Index Name": "keyword_id_movie_keyword",                     +
                           "Relation Name": "movie_keyword",                             +
                           "Alias": "mk",                                                +
                           "Startup Cost": 0.01,                                         +
                           "Total Cost": 122.40,                                         +
                           "Plan Rows": 39,                                              +
                           "Plan Width": 8,                                              +
                           "Actual Startup Time": 36.685,                                +
                           "Actual Total Time": 99.732,                                  +
                           "Actual Rows": 14,                                            +
                           "Actual Loops": 1,                                            +
                           "Index Cond": "(keyword_id = k.id)",                          +
                           "Rows Removed by Index Recheck": 0,                           +
                           "Shared Hit Blocks": 1,                                       +
                           "Shared Read Blocks": 14,                                     +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0                                      +
                         }                                                               +
                       ]                                                                 +
                     },                                                                  +
                     {                                                                   +
                       "Node Type": "Index Scan",                                        +
                       "Parent Relationship": "Inner",                                   +
                       "Parallel Aware": false,                                          +
                       "Scan Direction": "Forward",                                      +
                       "Index Name": "title_idx_id",                                     +
                       "Relation Name": "title",                                         +
                       "Alias": "t",                                                     +
                       "Startup Cost": 0.01,                                             +
                       "Total Cost": 0.04,                                               +
                       "Plan Rows": 1,                                                   +
                       "Plan Width": 21,                                                 +
                       "Actual Startup Time": 37.750,                                    +
                       "Actual Total Time": 37.750,                                      +
                       "Actual Rows": 1,                                                 +
                       "Actual Loops": 14,                                               +
                       "Index Cond": "(id = mk.movie_id)",                               +
                       "Rows Removed by Index Recheck": 0,                               +
                       "Filter": "(production_year > 2000)",                             +
                       "Rows Removed by Filter": 0,                                      +
                       "Shared Hit Blocks": 24,                                          +
                       "Shared Read Blocks": 32,                                         +
                       "Shared Dirtied Blocks": 0,                                       +
                       "Shared Written Blocks": 0,                                       +
                       "Local Hit Blocks": 0,                                            +
                       "Local Read Blocks": 0,                                           +
                       "Local Dirtied Blocks": 0,                                        +
                       "Local Written Blocks": 0,                                        +
                       "Temp Read Blocks": 0,                                            +
                       "Temp Written Blocks": 0                                          +
                     }                                                                   +
                   ]                                                                     +
                 },                                                                      +
                 {                                                                       +
                   "Node Type": "Index Scan",                                            +
                   "Parent Relationship": "Inner",                                       +
                   "Parallel Aware": false,                                              +
                   "Scan Direction": "Forward",                                          +
                   "Index Name": "movie_id_cast_info",                                   +
                   "Relation Name": "cast_info",                                         +
                   "Alias": "ci",                                                        +
                   "Startup Cost": 0.02,                                                 +
                   "Total Cost": 0.26,                                                   +
                   "Plan Rows": 23,                                                      +
                   "Plan Width": 8,                                                      +
                   "Actual Startup Time": 25.610,                                        +
                   "Actual Total Time": 605.762,                                         +
                   "Actual Rows": 111,                                                   +
                   "Actual Loops": 11,                                                   +
                   "Index Cond": "(movie_id = mk.movie_id)",                             +
                   "Rows Removed by Index Recheck": 0,                                   +
                   "Shared Hit Blocks": 200,                                             +
                   "Shared Read Blocks": 1012,                                           +
                   "Shared Dirtied Blocks": 0,                                           +
                   "Shared Written Blocks": 0,                                           +
                   "Local Hit Blocks": 0,                                                +
                   "Local Read Blocks": 0,                                               +
                   "Local Dirtied Blocks": 0,                                            +
                   "Local Written Blocks": 0,                                            +
                   "Temp Read Blocks": 0,                                                +
                   "Temp Written Blocks": 0                                              +
                 }                                                                       +
               ]                                                                         +
             },                                                                          +
             {                                                                           +
               "Node Type": "Index Scan",                                                +
               "Parent Relationship": "Inner",                                           +
               "Parallel Aware": false,                                                  +
               "Scan Direction": "Forward",                                              +
               "Index Name": "name_pkey",                                                +
               "Relation Name": "name",                                                  +
               "Alias": "n",                                                             +
               "Startup Cost": 0.01,                                                     +
               "Total Cost": 0.02,                                                       +
               "Plan Rows": 1,                                                           +
               "Plan Width": 19,                                                         +
               "Actual Startup Time": 8.065,                                             +
               "Actual Total Time": 8.065,                                               +
               "Actual Rows": 0,                                                         +
               "Actual Loops": 1224,                                                     +
               "Index Cond": "(id = ci.person_id)",                                      +
               "Rows Removed by Index Recheck": 0,                                       +
               "Filter": "(name ~~ '%Downey%Robert%'::text)",                            +
               "Rows Removed by Filter": 1,                                              +
               "Shared Hit Blocks": 2960,                                                +
               "Shared Read Blocks": 1941,                                               +
               "Shared Dirtied Blocks": 0,                                               +
               "Shared Written Blocks": 0,                                               +
               "Local Hit Blocks": 0,                                                    +
               "Local Read Blocks": 0,                                                   +
               "Local Dirtied Blocks": 0,                                                +
               "Local Written Blocks": 0,                                                +
               "Temp Read Blocks": 0,                                                    +
               "Temp Written Blocks": 0                                                  +
             }                                                                           +
           ]                                                                             +
         }                                                                               +
       ]                                                                                 +
     },                                                                                  +
     "Planning Time": 2710.312,                                                          +
     "Triggers": [                                                                       +
     ],                                                                                  +
     "Execution Time": 17223.570                                                         +
   }                                                                                     +
 ]
(1 row)

