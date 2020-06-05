                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                           +
   {                                                                                                                                                         +
     "Plan": {                                                                                                                                               +
       "Node Type": "Aggregate",                                                                                                                             +
       "Strategy": "Plain",                                                                                                                                  +
       "Partial Mode": "Simple",                                                                                                                             +
       "Parallel Aware": false,                                                                                                                              +
       "Startup Cost": 1038.10,                                                                                                                              +
       "Total Cost": 1038.10,                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                       +
       "Plan Width": 96,                                                                                                                                     +
       "Actual Startup Time": 58747.689,                                                                                                                     +
       "Actual Total Time": 58747.689,                                                                                                                       +
       "Actual Rows": 1,                                                                                                                                     +
       "Actual Loops": 1,                                                                                                                                    +
       "Shared Hit Blocks": 134982,                                                                                                                          +
       "Shared Read Blocks": 33049,                                                                                                                          +
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
           "Total Cost": 1038.10,                                                                                                                            +
           "Plan Rows": 1,                                                                                                                                   +
           "Plan Width": 48,                                                                                                                                 +
           "Actual Startup Time": 12141.990,                                                                                                                 +
           "Actual Total Time": 58747.564,                                                                                                                   +
           "Actual Rows": 12,                                                                                                                                +
           "Actual Loops": 1,                                                                                                                                +
           "Inner Unique": true,                                                                                                                             +
           "Shared Hit Blocks": 134982,                                                                                                                      +
           "Shared Read Blocks": 33049,                                                                                                                      +
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
               "Total Cost": 1038.06,                                                                                                                        +
               "Plan Rows": 2,                                                                                                                               +
               "Plan Width": 37,                                                                                                                             +
               "Actual Startup Time": 6052.312,                                                                                                              +
               "Actual Total Time": 56289.371,                                                                                                               +
               "Actual Rows": 383,                                                                                                                           +
               "Actual Loops": 1,                                                                                                                            +
               "Inner Unique": false,                                                                                                                        +
               "Join Filter": "(t.id = ci.movie_id)",                                                                                                        +
               "Rows Removed by Join Filter": 0,                                                                                                             +
               "Shared Hit Blocks": 133813,                                                                                                                  +
               "Shared Read Blocks": 32684,                                                                                                                  +
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
                   "Plan Rows": 1,                                                                                                                           +
                   "Plan Width": 41,                                                                                                                         +
                   "Actual Startup Time": 6017.133,                                                                                                          +
                   "Actual Total Time": 54192.609,                                                                                                           +
                   "Actual Rows": 36,                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                        +
                   "Inner Unique": true,                                                                                                                     +
                   "Shared Hit Blocks": 133555,                                                                                                              +
                   "Shared Read Blocks": 32457,                                                                                                              +
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
                       "Actual Startup Time": 54.357,                                                                                                        +
                       "Actual Total Time": 13924.848,                                                                                                       +
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
                           "Actual Startup Time": 28.501,                                                                                                    +
                           "Actual Total Time": 267.417,                                                                                                     +
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
                           "Actual Startup Time": 28.537,                                                                                                    +
                           "Actual Total Time": 1703.200,                                                                                                    +
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
                       "Actual Startup Time": 1.131,                                                                                                         +
                       "Actual Total Time": 1.131,                                                                                                           +
                       "Actual Rows": 0,                                                                                                                     +
                       "Actual Loops": 35548,                                                                                                                +
                       "Index Cond": "(id = mk.movie_id)",                                                                                                   +
                       "Rows Removed by Index Recheck": 0,                                                                                                   +
                       "Filter": "(production_year > 2014)",                                                                                                 +
                       "Rows Removed by Filter": 1,                                                                                                          +
                       "Shared Hit Blocks": 124818,                                                                                                          +
                       "Shared Read Blocks": 17549,                                                                                                          +
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
                   "Actual Startup Time": 21.057,                                                                                                            +
                   "Actual Total Time": 58.211,                                                                                                              +
                   "Actual Rows": 11,                                                                                                                        +
                   "Actual Loops": 36,                                                                                                                       +
                   "Index Cond": "(movie_id = mk.movie_id)",                                                                                                 +
                   "Rows Removed by Index Recheck": 0,                                                                                                       +
                   "Shared Hit Blocks": 258,                                                                                                                 +
                   "Shared Read Blocks": 227,                                                                                                                +
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
               "Actual Startup Time": 6.414,                                                                                                                 +
               "Actual Total Time": 6.414,                                                                                                                   +
               "Actual Rows": 0,                                                                                                                             +
               "Actual Loops": 383,                                                                                                                          +
               "Index Cond": "(id = ci.person_id)",                                                                                                          +
               "Rows Removed by Index Recheck": 0,                                                                                                           +
               "Filter": "(name ~~ '%Downey%Robert%'::text)",                                                                                                +
               "Rows Removed by Filter": 1,                                                                                                                  +
               "Shared Hit Blocks": 1169,                                                                                                                    +
               "Shared Read Blocks": 365,                                                                                                                    +
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
     "Planning Time": 3033.772,                                                                                                                              +
     "Triggers": [                                                                                                                                           +
     ],                                                                                                                                                      +
     "Execution Time": 58775.181                                                                                                                             +
   }                                                                                                                                                         +
 ]
(1 row)

