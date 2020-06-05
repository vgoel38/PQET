                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                            +
   {                                                                                                                                                                          +
     "Plan": {                                                                                                                                                                +
       "Node Type": "Aggregate",                                                                                                                                              +
       "Strategy": "Plain",                                                                                                                                                   +
       "Partial Mode": "Simple",                                                                                                                                              +
       "Parallel Aware": false,                                                                                                                                               +
       "Startup Cost": 26710.98,                                                                                                                                              +
       "Total Cost": 26710.98,                                                                                                                                                +
       "Plan Rows": 1,                                                                                                                                                        +
       "Plan Width": 128,                                                                                                                                                     +
       "Actual Startup Time": 461842.018,                                                                                                                                     +
       "Actual Total Time": 461842.018,                                                                                                                                       +
       "Actual Rows": 1,                                                                                                                                                      +
       "Actual Loops": 1,                                                                                                                                                     +
       "Shared Hit Blocks": 9362666,                                                                                                                                          +
       "Shared Read Blocks": 376565,                                                                                                                                          +
       "Shared Dirtied Blocks": 0,                                                                                                                                            +
       "Shared Written Blocks": 0,                                                                                                                                            +
       "Local Hit Blocks": 0,                                                                                                                                                 +
       "Local Read Blocks": 0,                                                                                                                                                +
       "Local Dirtied Blocks": 0,                                                                                                                                             +
       "Local Written Blocks": 0,                                                                                                                                             +
       "Temp Read Blocks": 0,                                                                                                                                                 +
       "Temp Written Blocks": 0,                                                                                                                                              +
       "Plans": [                                                                                                                                                             +
         {                                                                                                                                                                    +
           "Node Type": "Nested Loop",                                                                                                                                        +
           "Parent Relationship": "Outer",                                                                                                                                    +
           "Parallel Aware": false,                                                                                                                                           +
           "Join Type": "Inner",                                                                                                                                              +
           "Startup Cost": 21759.25,                                                                                                                                          +
           "Total Cost": 26709.47,                                                                                                                                            +
           "Plan Rows": 4872,                                                                                                                                                 +
           "Plan Width": 64,                                                                                                                                                  +
           "Actual Startup Time": 15087.327,                                                                                                                                  +
           "Actual Total Time": 461276.656,                                                                                                                                   +
           "Actual Rows": 483082,                                                                                                                                             +
           "Actual Loops": 1,                                                                                                                                                 +
           "Inner Unique": true,                                                                                                                                              +
           "Join Filter": "(ci.movie_id = t.id)",                                                                                                                             +
           "Rows Removed by Join Filter": 0,                                                                                                                                  +
           "Shared Hit Blocks": 9362666,                                                                                                                                      +
           "Shared Read Blocks": 376565,                                                                                                                                      +
           "Shared Dirtied Blocks": 0,                                                                                                                                        +
           "Shared Written Blocks": 0,                                                                                                                                        +
           "Local Hit Blocks": 0,                                                                                                                                             +
           "Local Read Blocks": 0,                                                                                                                                            +
           "Local Dirtied Blocks": 0,                                                                                                                                         +
           "Local Written Blocks": 0,                                                                                                                                         +
           "Temp Read Blocks": 0,                                                                                                                                             +
           "Temp Written Blocks": 0,                                                                                                                                          +
           "Plans": [                                                                                                                                                         +
             {                                                                                                                                                                +
               "Node Type": "Nested Loop",                                                                                                                                    +
               "Parent Relationship": "Outer",                                                                                                                                +
               "Parallel Aware": false,                                                                                                                                       +
               "Join Type": "Inner",                                                                                                                                          +
               "Startup Cost": 21759.24,                                                                                                                                      +
               "Total Cost": 26397.45,                                                                                                                                        +
               "Plan Rows": 4872,                                                                                                                                             +
               "Plan Width": 55,                                                                                                                                              +
               "Actual Startup Time": 15038.429,                                                                                                                              +
               "Actual Total Time": 306437.313,                                                                                                                               +
               "Actual Rows": 483082,                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                             +
               "Inner Unique": true,                                                                                                                                          +
               "Shared Hit Blocks": 7445409,                                                                                                                                  +
               "Shared Read Blocks": 360387,                                                                                                                                  +
               "Shared Dirtied Blocks": 0,                                                                                                                                    +
               "Shared Written Blocks": 0,                                                                                                                                    +
               "Local Hit Blocks": 0,                                                                                                                                         +
               "Local Read Blocks": 0,                                                                                                                                        +
               "Local Dirtied Blocks": 0,                                                                                                                                     +
               "Local Written Blocks": 0,                                                                                                                                     +
               "Temp Read Blocks": 0,                                                                                                                                         +
               "Temp Written Blocks": 0,                                                                                                                                      +
               "Plans": [                                                                                                                                                     +
                 {                                                                                                                                                            +
                   "Node Type": "Nested Loop",                                                                                                                                +
                   "Parent Relationship": "Outer",                                                                                                                            +
                   "Parallel Aware": false,                                                                                                                                   +
                   "Join Type": "Inner",                                                                                                                                      +
                   "Startup Cost": 21759.23,                                                                                                                                  +
                   "Total Cost": 26157.06,                                                                                                                                    +
                   "Plan Rows": 13494,                                                                                                                                        +
                   "Plan Width": 59,                                                                                                                                          +
                   "Actual Startup Time": 15034.024,                                                                                                                          +
                   "Actual Total Time": 275981.174,                                                                                                                           +
                   "Actual Rows": 909946,                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                         +
                   "Inner Unique": false,                                                                                                                                     +
                   "Shared Hit Blocks": 3807962,                                                                                                                              +
                   "Shared Read Blocks": 356881,                                                                                                                              +
                   "Shared Dirtied Blocks": 0,                                                                                                                                +
                   "Shared Written Blocks": 0,                                                                                                                                +
                   "Local Hit Blocks": 0,                                                                                                                                     +
                   "Local Read Blocks": 0,                                                                                                                                    +
                   "Local Dirtied Blocks": 0,                                                                                                                                 +
                   "Local Written Blocks": 0,                                                                                                                                 +
                   "Temp Read Blocks": 0,                                                                                                                                     +
                   "Temp Written Blocks": 0,                                                                                                                                  +
                   "Plans": [                                                                                                                                                 +
                     {                                                                                                                                                        +
                       "Node Type": "Nested Loop",                                                                                                                            +
                       "Parent Relationship": "Outer",                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                               +
                       "Join Type": "Inner",                                                                                                                                  +
                       "Startup Cost": 21759.21,                                                                                                                              +
                       "Total Cost": 25415.17,                                                                                                                                +
                       "Plan Rows": 7026,                                                                                                                                     +
                       "Plan Width": 51,                                                                                                                                      +
                       "Actual Startup Time": 15001.904,                                                                                                                      +
                       "Actual Total Time": 130359.131,                                                                                                                       +
                       "Actual Rows": 482841,                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                     +
                       "Inner Unique": false,                                                                                                                                 +
                       "Shared Hit Blocks": 1961724,                                                                                                                          +
                       "Shared Read Blocks": 341846,                                                                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                                                                            +
                       "Shared Written Blocks": 0,                                                                                                                            +
                       "Local Hit Blocks": 0,                                                                                                                                 +
                       "Local Read Blocks": 0,                                                                                                                                +
                       "Local Dirtied Blocks": 0,                                                                                                                             +
                       "Local Written Blocks": 0,                                                                                                                             +
                       "Temp Read Blocks": 0,                                                                                                                                 +
                       "Temp Written Blocks": 0,                                                                                                                              +
                       "Plans": [                                                                                                                                             +
                         {                                                                                                                                                    +
                           "Node Type": "Nested Loop",                                                                                                                        +
                           "Parent Relationship": "Outer",                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                           +
                           "Join Type": "Inner",                                                                                                                              +
                           "Startup Cost": 21759.20,                                                                                                                          +
                           "Total Cost": 24947.86,                                                                                                                            +
                           "Plan Rows": 8081,                                                                                                                                 +
                           "Plan Width": 43,                                                                                                                                  +
                           "Actual Startup Time": 14895.774,                                                                                                                  +
                           "Actual Total Time": 125397.819,                                                                                                                   +
                           "Actual Rows": 255493,                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                                 +
                           "Inner Unique": true,                                                                                                                              +
                           "Shared Hit Blocks": 995799,                                                                                                                       +
                           "Shared Read Blocks": 335152,                                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                                        +
                           "Shared Written Blocks": 0,                                                                                                                        +
                           "Local Hit Blocks": 0,                                                                                                                             +
                           "Local Read Blocks": 0,                                                                                                                            +
                           "Local Dirtied Blocks": 0,                                                                                                                         +
                           "Local Written Blocks": 0,                                                                                                                         +
                           "Temp Read Blocks": 0,                                                                                                                             +
                           "Temp Written Blocks": 0,                                                                                                                          +
                           "Plans": [                                                                                                                                         +
                             {                                                                                                                                                +
                               "Node Type": "Merge Join",                                                                                                                     +
                               "Parent Relationship": "Outer",                                                                                                                +
                               "Parallel Aware": false,                                                                                                                       +
                               "Join Type": "Inner",                                                                                                                          +
                               "Startup Cost": 21759.19,                                                                                                                      +
                               "Total Cost": 21917.13,                                                                                                                        +
                               "Plan Rows": 16652,                                                                                                                            +
                               "Plan Width": 31,                                                                                                                              +
                               "Actual Startup Time": 14861.211,                                                                                                              +
                               "Actual Total Time": 15884.996,                                                                                                                +
                               "Actual Rows": 276005,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                             +
                               "Inner Unique": true,                                                                                                                          +
                               "Merge Cond": "(ci.person_id = n.id)",                                                                                                         +
                               "Shared Hit Blocks": 12,                                                                                                                       +
                               "Shared Read Blocks": 308260,                                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                                                    +
                               "Shared Written Blocks": 0,                                                                                                                    +
                               "Local Hit Blocks": 0,                                                                                                                         +
                               "Local Read Blocks": 0,                                                                                                                        +
                               "Local Dirtied Blocks": 0,                                                                                                                     +
                               "Local Written Blocks": 0,                                                                                                                     +
                               "Temp Read Blocks": 0,                                                                                                                         +
                               "Temp Written Blocks": 0,                                                                                                                      +
                               "Plans": [                                                                                                                                     +
                                 {                                                                                                                                            +
                                   "Node Type": "Sort",                                                                                                                       +
                                   "Parent Relationship": "Outer",                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                   +
                                   "Startup Cost": 16434.07,                                                                                                                  +
                                   "Total Cost": 16439.67,                                                                                                                    +
                                   "Plan Rows": 72136,                                                                                                                        +
                                   "Plan Width": 12,                                                                                                                          +
                                   "Actual Startup Time": 11975.988,                                                                                                          +
                                   "Actual Total Time": 12048.713,                                                                                                            +
                                   "Actual Rows": 276166,                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                         +
                                   "Sort Key": ["ci.person_id"],                                                                                                              +
                                   "Sort Method": "quicksort",                                                                                                                +
                                   "Sort Space Used": 25234,                                                                                                                  +
                                   "Sort Space Type": "Memory",                                                                                                               +
                                   "Shared Hit Blocks": 10,                                                                                                                   +
                                   "Shared Read Blocks": 252649,                                                                                                              +
                                   "Shared Dirtied Blocks": 0,                                                                                                                +
                                   "Shared Written Blocks": 0,                                                                                                                +
                                   "Local Hit Blocks": 0,                                                                                                                     +
                                   "Local Read Blocks": 0,                                                                                                                    +
                                   "Local Dirtied Blocks": 0,                                                                                                                 +
                                   "Local Written Blocks": 0,                                                                                                                 +
                                   "Temp Read Blocks": 0,                                                                                                                     +
                                   "Temp Written Blocks": 0,                                                                                                                  +
                                   "Plans": [                                                                                                                                 +
                                     {                                                                                                                                        +
                                       "Node Type": "Nested Loop",                                                                                                            +
                                       "Parent Relationship": "Outer",                                                                                                        +
                                       "Parallel Aware": false,                                                                                                               +
                                       "Join Type": "Inner",                                                                                                                  +
                                       "Startup Cost": 0.00,                                                                                                                  +
                                       "Total Cost": 16253.30,                                                                                                                +
                                       "Plan Rows": 72136,                                                                                                                    +
                                       "Plan Width": 12,                                                                                                                      +
                                       "Actual Startup Time": 3927.154,                                                                                                       +
                                       "Actual Total Time": 11868.474,                                                                                                        +
                                       "Actual Rows": 276166,                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                     +
                                       "Inner Unique": true,                                                                                                                  +
                                       "Join Filter": "(ci.role_id = rt.id)",                                                                                                 +
                                       "Rows Removed by Join Filter": 591311,                                                                                                 +
                                       "Shared Hit Blocks": 6,                                                                                                                +
                                       "Shared Read Blocks": 252649,                                                                                                          +
                                       "Shared Dirtied Blocks": 0,                                                                                                            +
                                       "Shared Written Blocks": 0,                                                                                                            +
                                       "Local Hit Blocks": 0,                                                                                                                 +
                                       "Local Read Blocks": 0,                                                                                                                +
                                       "Local Dirtied Blocks": 0,                                                                                                             +
                                       "Local Written Blocks": 0,                                                                                                             +
                                       "Temp Read Blocks": 0,                                                                                                                 +
                                       "Temp Written Blocks": 0,                                                                                                              +
                                       "Plans": [                                                                                                                             +
                                         {                                                                                                                                    +
                                           "Node Type": "Seq Scan",                                                                                                           +
                                           "Parent Relationship": "Outer",                                                                                                    +
                                           "Parallel Aware": false,                                                                                                           +
                                           "Relation Name": "cast_info",                                                                                                      +
                                           "Alias": "ci",                                                                                                                     +
                                           "Startup Cost": 0.00,                                                                                                              +
                                           "Total Cost": 16059.00,                                                                                                            +
                                           "Plan Rows": 865636,                                                                                                               +
                                           "Plan Width": 16,                                                                                                                  +
                                           "Actual Startup Time": 0.029,                                                                                                      +
                                           "Actual Total Time": 11428.766,                                                                                                    +
                                           "Actual Rows": 867477,                                                                                                             +
                                           "Actual Loops": 1,                                                                                                                 +
                                           "Filter": "(note = ANY ('{(voice),\"(voice: Japanese version)\",\"(voice) (uncredited)\",\"(voice: English version)\"}'::text[]))",+
                                           "Rows Removed by Filter": 35376867,                                                                                                +
                                           "Shared Hit Blocks": 5,                                                                                                            +
                                           "Shared Read Blocks": 252649,                                                                                                      +
                                           "Shared Dirtied Blocks": 0,                                                                                                        +
                                           "Shared Written Blocks": 0,                                                                                                        +
                                           "Local Hit Blocks": 0,                                                                                                             +
                                           "Local Read Blocks": 0,                                                                                                            +
                                           "Local Dirtied Blocks": 0,                                                                                                         +
                                           "Local Written Blocks": 0,                                                                                                         +
                                           "Temp Read Blocks": 0,                                                                                                             +
                                           "Temp Written Blocks": 0                                                                                                           +
                                         },                                                                                                                                   +
                                         {                                                                                                                                    +
                                           "Node Type": "Materialize",                                                                                                        +
                                           "Parent Relationship": "Inner",                                                                                                    +
                                           "Parallel Aware": false,                                                                                                           +
                                           "Startup Cost": 0.00,                                                                                                              +
                                           "Total Cost": 0.03,                                                                                                                +
                                           "Plan Rows": 1,                                                                                                                    +
                                           "Plan Width": 4,                                                                                                                   +
                                           "Actual Startup Time": 0.000,                                                                                                      +
                                           "Actual Total Time": 0.000,                                                                                                        +
                                           "Actual Rows": 1,                                                                                                                  +
                                           "Actual Loops": 867477,                                                                                                            +
                                           "Shared Hit Blocks": 1,                                                                                                            +
                                           "Shared Read Blocks": 0,                                                                                                           +
                                           "Shared Dirtied Blocks": 0,                                                                                                        +
                                           "Shared Written Blocks": 0,                                                                                                        +
                                           "Local Hit Blocks": 0,                                                                                                             +
                                           "Local Read Blocks": 0,                                                                                                            +
                                           "Local Dirtied Blocks": 0,                                                                                                         +
                                           "Local Written Blocks": 0,                                                                                                         +
                                           "Temp Read Blocks": 0,                                                                                                             +
                                           "Temp Written Blocks": 0,                                                                                                          +
                                           "Plans": [                                                                                                                         +
                                             {                                                                                                                                +
                                               "Node Type": "Seq Scan",                                                                                                       +
                                               "Parent Relationship": "Outer",                                                                                                +
                                               "Parallel Aware": false,                                                                                                       +
                                               "Relation Name": "role_type",                                                                                                  +
                                               "Alias": "rt",                                                                                                                 +
                                               "Startup Cost": 0.00,                                                                                                          +
                                               "Total Cost": 0.03,                                                                                                            +
                                               "Plan Rows": 1,                                                                                                                +
                                               "Plan Width": 4,                                                                                                               +
                                               "Actual Startup Time": 0.009,                                                                                                  +
                                               "Actual Total Time": 0.015,                                                                                                    +
                                               "Actual Rows": 1,                                                                                                              +
                                               "Actual Loops": 1,                                                                                                             +
                                               "Filter": "((role)::text = 'actress'::text)",                                                                                  +
                                               "Rows Removed by Filter": 11,                                                                                                  +
                                               "Shared Hit Blocks": 1,                                                                                                        +
                                               "Shared Read Blocks": 0,                                                                                                       +
                                               "Shared Dirtied Blocks": 0,                                                                                                    +
                                               "Shared Written Blocks": 0,                                                                                                    +
                                               "Local Hit Blocks": 0,                                                                                                         +
                                               "Local Read Blocks": 0,                                                                                                        +
                                               "Local Dirtied Blocks": 0,                                                                                                     +
                                               "Local Written Blocks": 0,                                                                                                     +
                                               "Temp Read Blocks": 0,                                                                                                         +
                                               "Temp Written Blocks": 0                                                                                                       +
                                             }                                                                                                                                +
                                           ]                                                                                                                                  +
                                         }                                                                                                                                    +
                                       ]                                                                                                                                      +
                                     }                                                                                                                                        +
                                   ]                                                                                                                                          +
                                 },                                                                                                                                           +
                                 {                                                                                                                                            +
                                   "Node Type": "Sort",                                                                                                                       +
                                   "Parent Relationship": "Inner",                                                                                                            +
                                   "Parallel Aware": false,                                                                                                                   +
                                   "Startup Cost": 5325.12,                                                                                                                   +
                                   "Total Cost": 5399.80,                                                                                                                     +
                                   "Plan Rows": 961996,                                                                                                                       +
                                   "Plan Width": 19,                                                                                                                          +
                                   "Actual Startup Time": 2885.158,                                                                                                           +
                                   "Actual Total Time": 3144.720,                                                                                                             +
                                   "Actual Rows": 961332,                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                         +
                                   "Sort Key": ["n.id"],                                                                                                                      +
                                   "Sort Method": "quicksort",                                                                                                                +
                                   "Sort Space Used": 95993,                                                                                                                  +
                                   "Sort Space Type": "Memory",                                                                                                               +
                                   "Shared Hit Blocks": 2,                                                                                                                    +
                                   "Shared Read Blocks": 55611,                                                                                                               +
                                   "Shared Dirtied Blocks": 0,                                                                                                                +
                                   "Shared Written Blocks": 0,                                                                                                                +
                                   "Local Hit Blocks": 0,                                                                                                                     +
                                   "Local Read Blocks": 0,                                                                                                                    +
                                   "Local Dirtied Blocks": 0,                                                                                                                 +
                                   "Local Written Blocks": 0,                                                                                                                 +
                                   "Temp Read Blocks": 0,                                                                                                                     +
                                   "Temp Written Blocks": 0,                                                                                                                  +
                                   "Plans": [                                                                                                                                 +
                                     {                                                                                                                                        +
                                       "Node Type": "Seq Scan",                                                                                                               +
                                       "Parent Relationship": "Outer",                                                                                                        +
                                       "Parallel Aware": false,                                                                                                               +
                                       "Relation Name": "name",                                                                                                               +
                                       "Alias": "n",                                                                                                                          +
                                       "Startup Cost": 0.00,                                                                                                                  +
                                       "Total Cost": 2356.12,                                                                                                                 +
                                       "Plan Rows": 961996,                                                                                                                   +
                                       "Plan Width": 19,                                                                                                                      +
                                       "Actual Startup Time": 1092.964,                                                                                                       +
                                       "Actual Total Time": 2474.715,                                                                                                         +
                                       "Actual Rows": 961555,                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                     +
                                       "Filter": "((gender)::text = 'f'::text)",                                                                                              +
                                       "Rows Removed by Filter": 3205936,                                                                                                     +
                                       "Shared Hit Blocks": 2,                                                                                                                +
                                       "Shared Read Blocks": 55611,                                                                                                           +
                                       "Shared Dirtied Blocks": 0,                                                                                                            +
                                       "Shared Written Blocks": 0,                                                                                                            +
                                       "Local Hit Blocks": 0,                                                                                                                 +
                                       "Local Read Blocks": 0,                                                                                                                +
                                       "Local Dirtied Blocks": 0,                                                                                                             +
                                       "Local Written Blocks": 0,                                                                                                             +
                                       "Temp Read Blocks": 0,                                                                                                                 +
                                       "Temp Written Blocks": 0                                                                                                               +
                                     }                                                                                                                                        +
                                   ]                                                                                                                                          +
                                 }                                                                                                                                            +
                               ]                                                                                                                                              +
                             },                                                                                                                                               +
                             {                                                                                                                                                +
                               "Node Type": "Index Scan",                                                                                                                     +
                               "Parent Relationship": "Inner",                                                                                                                +
                               "Parallel Aware": false,                                                                                                                       +
                               "Scan Direction": "Forward",                                                                                                                   +
                               "Index Name": "char_name_pkey",                                                                                                                +
                               "Relation Name": "char_name",                                                                                                                  +
                               "Alias": "chn",                                                                                                                                +
                               "Startup Cost": 0.01,                                                                                                                          +
                               "Total Cost": 0.18,                                                                                                                            +
                               "Plan Rows": 1,                                                                                                                                +
                               "Plan Width": 20,                                                                                                                              +
                               "Actual Startup Time": 0.395,                                                                                                                  +
                               "Actual Total Time": 0.395,                                                                                                                    +
                               "Actual Rows": 1,                                                                                                                              +
                               "Actual Loops": 276005,                                                                                                                        +
                               "Index Cond": "(id = ci.person_role_id)",                                                                                                      +
                               "Rows Removed by Index Recheck": 0,                                                                                                            +
                               "Shared Hit Blocks": 995787,                                                                                                                   +
                               "Shared Read Blocks": 26892,                                                                                                                   +
                               "Shared Dirtied Blocks": 0,                                                                                                                    +
                               "Shared Written Blocks": 0,                                                                                                                    +
                               "Local Hit Blocks": 0,                                                                                                                         +
                               "Local Read Blocks": 0,                                                                                                                        +
                               "Local Dirtied Blocks": 0,                                                                                                                     +
                               "Local Written Blocks": 0,                                                                                                                     +
                               "Temp Read Blocks": 0,                                                                                                                         +
                               "Temp Written Blocks": 0                                                                                                                       +
                             }                                                                                                                                                +
                           ]                                                                                                                                                  +
                         },                                                                                                                                                   +
                         {                                                                                                                                                    +
                           "Node Type": "Index Scan",                                                                                                                         +
                           "Parent Relationship": "Inner",                                                                                                                    +
                           "Parallel Aware": false,                                                                                                                           +
                           "Scan Direction": "Forward",                                                                                                                       +
                           "Index Name": "person_id_aka_name",                                                                                                                +
                           "Relation Name": "aka_name",                                                                                                                       +
                           "Alias": "an",                                                                                                                                     +
                           "Startup Cost": 0.01,                                                                                                                              +
                           "Total Cost": 0.06,                                                                                                                                +
                           "Plan Rows": 2,                                                                                                                                    +
                           "Plan Width": 20,                                                                                                                                  +
                           "Actual Startup Time": 0.016,                                                                                                                      +
                           "Actual Total Time": 0.017,                                                                                                                        +
                           "Actual Rows": 2,                                                                                                                                  +
                           "Actual Loops": 255493,                                                                                                                            +
                           "Index Cond": "(person_id = n.id)",                                                                                                                +
                           "Rows Removed by Index Recheck": 0,                                                                                                                +
                           "Shared Hit Blocks": 965925,                                                                                                                       +
                           "Shared Read Blocks": 6694,                                                                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                                                                        +
                           "Shared Written Blocks": 0,                                                                                                                        +
                           "Local Hit Blocks": 0,                                                                                                                             +
                           "Local Read Blocks": 0,                                                                                                                            +
                           "Local Dirtied Blocks": 0,                                                                                                                         +
                           "Local Written Blocks": 0,                                                                                                                         +
                           "Temp Read Blocks": 0,                                                                                                                             +
                           "Temp Written Blocks": 0                                                                                                                           +
                         }                                                                                                                                                    +
                       ]                                                                                                                                                      +
                     },                                                                                                                                                       +
                     {                                                                                                                                                        +
                       "Node Type": "Index Scan",                                                                                                                             +
                       "Parent Relationship": "Inner",                                                                                                                        +
                       "Parallel Aware": false,                                                                                                                               +
                       "Scan Direction": "Forward",                                                                                                                           +
                       "Index Name": "movie_id_movie_companies",                                                                                                              +
                       "Relation Name": "movie_companies",                                                                                                                    +
                       "Alias": "mc",                                                                                                                                         +
                       "Startup Cost": 0.01,                                                                                                                                  +
                       "Total Cost": 0.11,                                                                                                                                    +
                       "Plan Rows": 2,                                                                                                                                        +
                       "Plan Width": 8,                                                                                                                                       +
                       "Actual Startup Time": 0.245,                                                                                                                          +
                       "Actual Total Time": 0.300,                                                                                                                            +
                       "Actual Rows": 2,                                                                                                                                      +
                       "Actual Loops": 482841,                                                                                                                                +
                       "Index Cond": "(movie_id = ci.movie_id)",                                                                                                              +
                       "Rows Removed by Index Recheck": 0,                                                                                                                    +
                       "Shared Hit Blocks": 1846238,                                                                                                                          +
                       "Shared Read Blocks": 15035,                                                                                                                           +
                       "Shared Dirtied Blocks": 0,                                                                                                                            +
                       "Shared Written Blocks": 0,                                                                                                                            +
                       "Local Hit Blocks": 0,                                                                                                                                 +
                       "Local Read Blocks": 0,                                                                                                                                +
                       "Local Dirtied Blocks": 0,                                                                                                                             +
                       "Local Written Blocks": 0,                                                                                                                             +
                       "Temp Read Blocks": 0,                                                                                                                                 +
                       "Temp Written Blocks": 0                                                                                                                               +
                     }                                                                                                                                                        +
                   ]                                                                                                                                                          +
                 },                                                                                                                                                           +
                 {                                                                                                                                                            +
                   "Node Type": "Index Scan",                                                                                                                                 +
                   "Parent Relationship": "Inner",                                                                                                                            +
                   "Parallel Aware": false,                                                                                                                                   +
                   "Scan Direction": "Forward",                                                                                                                               +
                   "Index Name": "company_name_pkey",                                                                                                                         +
                   "Relation Name": "company_name",                                                                                                                           +
                   "Alias": "cn",                                                                                                                                             +
                   "Startup Cost": 0.01,                                                                                                                                      +
                   "Total Cost": 0.02,                                                                                                                                        +
                   "Plan Rows": 1,                                                                                                                                            +
                   "Plan Width": 4,                                                                                                                                           +
                   "Actual Startup Time": 0.032,                                                                                                                              +
                   "Actual Total Time": 0.032,                                                                                                                                +
                   "Actual Rows": 1,                                                                                                                                          +
                   "Actual Loops": 909946,                                                                                                                                    +
                   "Index Cond": "(id = mc.company_id)",                                                                                                                      +
                   "Rows Removed by Index Recheck": 0,                                                                                                                        +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                                                                         +
                   "Rows Removed by Filter": 0,                                                                                                                               +
                   "Shared Hit Blocks": 3637447,                                                                                                                              +
                   "Shared Read Blocks": 3506,                                                                                                                                +
                   "Shared Dirtied Blocks": 0,                                                                                                                                +
                   "Shared Written Blocks": 0,                                                                                                                                +
                   "Local Hit Blocks": 0,                                                                                                                                     +
                   "Local Read Blocks": 0,                                                                                                                                    +
                   "Local Dirtied Blocks": 0,                                                                                                                                 +
                   "Local Written Blocks": 0,                                                                                                                                 +
                   "Temp Read Blocks": 0,                                                                                                                                     +
                   "Temp Written Blocks": 0                                                                                                                                   +
                 }                                                                                                                                                            +
               ]                                                                                                                                                              +
             },                                                                                                                                                               +
             {                                                                                                                                                                +
               "Node Type": "Index Scan",                                                                                                                                     +
               "Parent Relationship": "Inner",                                                                                                                                +
               "Parallel Aware": false,                                                                                                                                       +
               "Scan Direction": "Forward",                                                                                                                                   +
               "Index Name": "title_idx_id",                                                                                                                                  +
               "Relation Name": "title",                                                                                                                                      +
               "Alias": "t",                                                                                                                                                  +
               "Startup Cost": 0.01,                                                                                                                                          +
               "Total Cost": 0.06,                                                                                                                                            +
               "Plan Rows": 1,                                                                                                                                                +
               "Plan Width": 21,                                                                                                                                              +
               "Actual Startup Time": 0.319,                                                                                                                                  +
               "Actual Total Time": 0.319,                                                                                                                                    +
               "Actual Rows": 1,                                                                                                                                              +
               "Actual Loops": 483082,                                                                                                                                        +
               "Index Cond": "(id = mc.movie_id)",                                                                                                                            +
               "Rows Removed by Index Recheck": 0,                                                                                                                            +
               "Shared Hit Blocks": 1917257,                                                                                                                                  +
               "Shared Read Blocks": 16178,                                                                                                                                   +
               "Shared Dirtied Blocks": 0,                                                                                                                                    +
               "Shared Written Blocks": 0,                                                                                                                                    +
               "Local Hit Blocks": 0,                                                                                                                                         +
               "Local Read Blocks": 0,                                                                                                                                        +
               "Local Dirtied Blocks": 0,                                                                                                                                     +
               "Local Written Blocks": 0,                                                                                                                                     +
               "Temp Read Blocks": 0,                                                                                                                                         +
               "Temp Written Blocks": 0                                                                                                                                       +
             }                                                                                                                                                                +
           ]                                                                                                                                                                  +
         }                                                                                                                                                                    +
       ]                                                                                                                                                                      +
     },                                                                                                                                                                       +
     "Planning Time": 4770.029,                                                                                                                                               +
     "Triggers": [                                                                                                                                                            +
     ],                                                                                                                                                                       +
     "Execution Time": 461893.213                                                                                                                                             +
   }                                                                                                                                                                          +
 ]
(1 row)

