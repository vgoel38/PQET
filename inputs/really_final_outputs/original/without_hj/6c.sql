                                        QUERY PLAN                                        
------------------------------------------------------------------------------------------
 [                                                                                       +
   {                                                                                     +
     "Plan": {                                                                           +
       "Node Type": "Aggregate",                                                         +
       "Strategy": "Plain",                                                              +
       "Partial Mode": "Simple",                                                         +
       "Parallel Aware": false,                                                          +
       "Startup Cost": 621.02,                                                           +
       "Total Cost": 621.02,                                                             +
       "Plan Rows": 1,                                                                   +
       "Plan Width": 96,                                                                 +
       "Actual Startup Time": 1181.293,                                                  +
       "Actual Total Time": 1181.293,                                                    +
       "Actual Rows": 1,                                                                 +
       "Actual Loops": 1,                                                                +
       "Shared Hit Blocks": 109,                                                         +
       "Shared Read Blocks": 133,                                                        +
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
           "Total Cost": 621.02,                                                         +
           "Plan Rows": 1,                                                               +
           "Plan Width": 48,                                                             +
           "Actual Startup Time": 800.409,                                               +
           "Actual Total Time": 1181.218,                                                +
           "Actual Rows": 2,                                                             +
           "Actual Loops": 1,                                                            +
           "Inner Unique": true,                                                         +
           "Shared Hit Blocks": 109,                                                     +
           "Shared Read Blocks": 133,                                                    +
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
               "Total Cost": 620.92,                                                     +
               "Plan Rows": 1,                                                           +
               "Plan Width": 37,                                                         +
               "Actual Startup Time": 185.398,                                           +
               "Actual Total Time": 870.959,                                             +
               "Actual Rows": 33,                                                        +
               "Actual Loops": 1,                                                        +
               "Inner Unique": false,                                                    +
               "Join Filter": "(t.id = ci.movie_id)",                                    +
               "Rows Removed by Join Filter": 0,                                         +
               "Shared Hit Blocks": 30,                                                  +
               "Shared Read Blocks": 80,                                                 +
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
                   "Plan Rows": 1,                                                       +
                   "Plan Width": 41,                                                     +
                   "Actual Startup Time": 146.652,                                       +
                   "Actual Total Time": 637.177,                                         +
                   "Actual Rows": 2,                                                     +
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
                       "Actual Startup Time": 56.701,                                    +
                       "Actual Total Time": 132.107,                                     +
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
                           "Actual Startup Time": 20.000,                                +
                           "Actual Total Time": 20.001,                                  +
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
                           "Actual Startup Time": 36.667,                                +
                           "Actual Total Time": 112.029,                                 +
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
                       "Actual Startup Time": 36.069,                                    +
                       "Actual Total Time": 36.069,                                      +
                       "Actual Rows": 0,                                                 +
                       "Actual Loops": 14,                                               +
                       "Index Cond": "(id = mk.movie_id)",                               +
                       "Rows Removed by Index Recheck": 0,                               +
                       "Filter": "(production_year > 2014)",                             +
                       "Rows Removed by Filter": 1,                                      +
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
                   "Actual Startup Time": 35.431,                                        +
                   "Actual Total Time": 116.807,                                         +
                   "Actual Rows": 16,                                                    +
                   "Actual Loops": 2,                                                    +
                   "Index Cond": "(movie_id = mk.movie_id)",                             +
                   "Rows Removed by Index Recheck": 0,                                   +
                   "Shared Hit Blocks": 5,                                               +
                   "Shared Read Blocks": 30,                                             +
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
               "Actual Startup Time": 9.395,                                             +
               "Actual Total Time": 9.395,                                               +
               "Actual Rows": 0,                                                         +
               "Actual Loops": 33,                                                       +
               "Index Cond": "(id = ci.person_id)",                                      +
               "Rows Removed by Index Recheck": 0,                                       +
               "Filter": "(name ~~ '%Downey%Robert%'::text)",                            +
               "Rows Removed by Filter": 1,                                              +
               "Shared Hit Blocks": 79,                                                  +
               "Shared Read Blocks": 53,                                                 +
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
     "Planning Time": 2608.643,                                                          +
     "Triggers": [                                                                       +
     ],                                                                                  +
     "Execution Time": 1234.488                                                          +
   }                                                                                     +
 ]
(1 row)

