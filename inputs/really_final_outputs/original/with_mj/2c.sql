                                         QUERY PLAN                                         
--------------------------------------------------------------------------------------------
 [                                                                                         +
   {                                                                                       +
     "Plan": {                                                                             +
       "Node Type": "Aggregate",                                                           +
       "Strategy": "Plain",                                                                +
       "Partial Mode": "Simple",                                                           +
       "Parallel Aware": false,                                                            +
       "Startup Cost": 37305.13,                                                           +
       "Total Cost": 37305.13,                                                             +
       "Plan Rows": 1,                                                                     +
       "Plan Width": 32,                                                                   +
       "Actual Startup Time": 4452.753,                                                    +
       "Actual Total Time": 4452.753,                                                      +
       "Actual Rows": 1,                                                                   +
       "Actual Loops": 1,                                                                  +
       "Shared Hit Blocks": 12,                                                            +
       "Shared Read Blocks": 46233,                                                        +
       "Shared Dirtied Blocks": 0,                                                         +
       "Shared Written Blocks": 0,                                                         +
       "Local Hit Blocks": 0,                                                              +
       "Local Read Blocks": 0,                                                             +
       "Local Dirtied Blocks": 0,                                                          +
       "Local Written Blocks": 0,                                                          +
       "Temp Read Blocks": 0,                                                              +
       "Temp Written Blocks": 0,                                                           +
       "Plans": [                                                                          +
         {                                                                                 +
           "Node Type": "Merge Join",                                                      +
           "Parent Relationship": "Outer",                                                 +
           "Parallel Aware": false,                                                        +
           "Join Type": "Inner",                                                           +
           "Startup Cost": 36912.92,                                                       +
           "Total Cost": 37305.13,                                                         +
           "Plan Rows": 1,                                                                 +
           "Plan Width": 17,                                                               +
           "Actual Startup Time": 4452.713,                                                +
           "Actual Total Time": 4452.713,                                                  +
           "Actual Rows": 0,                                                               +
           "Actual Loops": 1,                                                              +
           "Inner Unique": true,                                                           +
           "Merge Cond": "(mc.movie_id = t.id)",                                           +
           "Shared Hit Blocks": 12,                                                        +
           "Shared Read Blocks": 46233,                                                    +
           "Shared Dirtied Blocks": 0,                                                     +
           "Shared Written Blocks": 0,                                                     +
           "Local Hit Blocks": 0,                                                          +
           "Local Read Blocks": 0,                                                         +
           "Local Dirtied Blocks": 0,                                                      +
           "Local Written Blocks": 0,                                                      +
           "Temp Read Blocks": 0,                                                          +
           "Temp Written Blocks": 0,                                                       +
           "Plans": [                                                                      +
             {                                                                             +
               "Node Type": "Merge Join",                                                  +
               "Parent Relationship": "Outer",                                             +
               "Parallel Aware": false,                                                    +
               "Join Type": "Inner",                                                       +
               "Startup Cost": 27258.57,                                                   +
               "Total Cost": 27258.58,                                                     +
               "Plan Rows": 1,                                                             +
               "Plan Width": 8,                                                            +
               "Actual Startup Time": 4452.712,                                            +
               "Actual Total Time": 4452.712,                                              +
               "Actual Rows": 0,                                                           +
               "Actual Loops": 1,                                                          +
               "Inner Unique": false,                                                      +
               "Merge Cond": "(mc.movie_id = mk.movie_id)",                                +
               "Shared Hit Blocks": 12,                                                    +
               "Shared Read Blocks": 46233,                                                +
               "Shared Dirtied Blocks": 0,                                                 +
               "Shared Written Blocks": 0,                                                 +
               "Local Hit Blocks": 0,                                                      +
               "Local Read Blocks": 0,                                                     +
               "Local Dirtied Blocks": 0,                                                  +
               "Local Written Blocks": 0,                                                  +
               "Temp Read Blocks": 0,                                                      +
               "Temp Written Blocks": 0,                                                   +
               "Plans": [                                                                  +
                 {                                                                         +
                   "Node Type": "Sort",                                                    +
                   "Parent Relationship": "Outer",                                         +
                   "Parallel Aware": false,                                                +
                   "Startup Cost": 9939.01,                                                +
                   "Total Cost": 9939.01,                                                  +
                   "Plan Rows": 11,                                                        +
                   "Plan Width": 4,                                                        +
                   "Actual Startup Time": 2035.606,                                        +
                   "Actual Total Time": 2035.607,                                          +
                   "Actual Rows": 2,                                                       +
                   "Actual Loops": 1,                                                      +
                   "Sort Key": ["mc.movie_id"],                                            +
                   "Sort Method": "quicksort",                                             +
                   "Sort Space Used": 25,                                                  +
                   "Sort Space Type": "Memory",                                            +
                   "Shared Hit Blocks": 9,                                                 +
                   "Shared Read Blocks": 21778,                                            +
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
                       "Node Type": "Merge Join",                                          +
                       "Parent Relationship": "Outer",                                     +
                       "Parallel Aware": false,                                            +
                       "Join Type": "Inner",                                               +
                       "Startup Cost": 9533.86,                                            +
                       "Total Cost": 9939.01,                                              +
                       "Plan Rows": 11,                                                    +
                       "Plan Width": 4,                                                    +
                       "Actual Startup Time": 2018.245,                                    +
                       "Actual Total Time": 2018.247,                                      +
                       "Actual Rows": 2,                                                   +
                       "Actual Loops": 1,                                                  +
                       "Inner Unique": false,                                              +
                       "Merge Cond": "(cn.id = mc.company_id)",                            +
                       "Shared Hit Blocks": 5,                                             +
                       "Shared Read Blocks": 21778,                                        +
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
                           "Node Type": "Sort",                                            +
                           "Parent Relationship": "Outer",                                 +
                           "Parallel Aware": false,                                        +
                           "Startup Cost": 128.41,                                         +
                           "Total Cost": 128.41,                                           +
                           "Plan Rows": 1,                                                 +
                           "Plan Width": 4,                                                +
                           "Actual Startup Time": 164.464,                                 +
                           "Actual Total Time": 164.465,                                   +
                           "Actual Rows": 1,                                               +
                           "Actual Loops": 1,                                              +
                           "Sort Key": ["cn.id"],                                          +
                           "Sort Method": "quicksort",                                     +
                           "Sort Space Used": 25,                                          +
                           "Sort Space Type": "Memory",                                    +
                           "Shared Hit Blocks": 2,                                         +
                           "Shared Read Blocks": 2992,                                     +
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
                               "Node Type": "Seq Scan",                                    +
                               "Parent Relationship": "Outer",                             +
                               "Parallel Aware": false,                                    +
                               "Relation Name": "company_name",                            +
                               "Alias": "cn",                                              +
                               "Startup Cost": 0.00,                                       +
                               "Total Cost": 128.41,                                       +
                               "Plan Rows": 1,                                             +
                               "Plan Width": 4,                                            +
                               "Actual Startup Time": 55.159,                              +
                               "Actual Total Time": 164.440,                               +
                               "Actual Rows": 1,                                           +
                               "Actual Loops": 1,                                          +
                               "Filter": "((country_code)::text = '[sm]'::text)",          +
                               "Rows Removed by Filter": 234996,                           +
                               "Shared Hit Blocks": 2,                                     +
                               "Shared Read Blocks": 2992,                                 +
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
                         },                                                                +
                         {                                                                 +
                           "Node Type": "Sort",                                            +
                           "Parent Relationship": "Inner",                                 +
                           "Parallel Aware": false,                                        +
                           "Startup Cost": 9405.45,                                        +
                           "Total Cost": 9608.03,                                          +
                           "Plan Rows": 2609129,                                           +
                           "Plan Width": 8,                                                +
                           "Actual Startup Time": 1405.747,                                +
                           "Actual Total Time": 1640.172,                                  +
                           "Actual Rows": 1970794,                                         +
                           "Actual Loops": 1,                                              +
                           "Sort Key": ["mc.company_id"],                                  +
                           "Sort Method": "quicksort",                                     +
                           "Sort Space Used": 220607,                                      +
                           "Sort Space Type": "Memory",                                    +
                           "Shared Hit Blocks": 3,                                         +
                           "Shared Read Blocks": 18786,                                    +
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
                               "Node Type": "Seq Scan",                                    +
                               "Parent Relationship": "Outer",                             +
                               "Parallel Aware": false,                                    +
                               "Relation Name": "movie_companies",                         +
                               "Alias": "mc",                                              +
                               "Startup Cost": 0.00,                                       +
                               "Total Cost": 769.75,                                       +
                               "Plan Rows": 2609129,                                       +
                               "Plan Width": 8,                                            +
                               "Actual Startup Time": 0.009,                               +
                               "Actual Total Time": 538.296,                               +
                               "Actual Rows": 2609129,                                     +
                               "Actual Loops": 1,                                          +
                               "Shared Hit Blocks": 3,                                     +
                               "Shared Read Blocks": 18786,                                +
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
                     }                                                                     +
                   ]                                                                       +
                 },                                                                        +
                 {                                                                         +
                   "Node Type": "Sort",                                                    +
                   "Parent Relationship": "Inner",                                         +
                   "Parallel Aware": false,                                                +
                   "Startup Cost": 17319.56,                                               +
                   "Total Cost": 17319.56,                                                 +
                   "Plan Rows": 34,                                                        +
                   "Plan Width": 4,                                                        +
                   "Actual Startup Time": 2410.847,                                        +
                   "Actual Total Time": 2413.252,                                          +
                   "Actual Rows": 40430,                                                   +
                   "Actual Loops": 1,                                                      +
                   "Sort Key": ["mk.movie_id"],                                            +
                   "Sort Method": "quicksort",                                             +
                   "Sort Space Used": 3498,                                                +
                   "Sort Space Type": "Memory",                                            +
                   "Shared Hit Blocks": 3,                                                 +
                   "Shared Read Blocks": 24455,                                            +
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
                       "Node Type": "Merge Join",                                          +
                       "Parent Relationship": "Outer",                                     +
                       "Parallel Aware": false,                                            +
                       "Join Type": "Inner",                                               +
                       "Startup Cost": 16617.06,                                           +
                       "Total Cost": 17319.53,                                             +
                       "Plan Rows": 34,                                                    +
                       "Plan Width": 4,                                                    +
                       "Actual Startup Time": 2383.814,                                    +
                       "Actual Total Time": 2396.872,                                      +
                       "Actual Rows": 41840,                                               +
                       "Actual Loops": 1,                                                  +
                       "Inner Unique": false,                                              +
                       "Merge Cond": "(k.id = mk.keyword_id)",                             +
                       "Shared Hit Blocks": 3,                                             +
                       "Shared Read Blocks": 24455,                                        +
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
                           "Node Type": "Sort",                                            +
                           "Parent Relationship": "Outer",                                 +
                           "Parallel Aware": false,                                        +
                           "Startup Cost": 6.13,                                           +
                           "Total Cost": 6.13,                                             +
                           "Plan Rows": 1,                                                 +
                           "Plan Width": 4,                                                +
                           "Actual Startup Time": 45.271,                                  +
                           "Actual Total Time": 45.271,                                    +
                           "Actual Rows": 1,                                               +
                           "Actual Loops": 1,                                              +
                           "Sort Key": ["k.id"],                                           +
                           "Sort Method": "quicksort",                                     +
                           "Sort Space Used": 25,                                          +
                           "Sort Space Type": "Memory",                                    +
                           "Shared Hit Blocks": 0,                                         +
                           "Shared Read Blocks": 4,                                        +
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
                               "Node Type": "Index Scan",                                  +
                               "Parent Relationship": "Outer",                             +
                               "Parallel Aware": false,                                    +
                               "Scan Direction": "Forward",                                +
                               "Index Name": "keyword_idx_keyword",                        +
                               "Relation Name": "keyword",                                 +
                               "Alias": "k",                                               +
                               "Startup Cost": 0.01,                                       +
                               "Total Cost": 6.13,                                         +
                               "Plan Rows": 1,                                             +
                               "Plan Width": 4,                                            +
                               "Actual Startup Time": 45.261,                              +
                               "Actual Total Time": 45.264,                                +
                               "Actual Rows": 1,                                           +
                               "Actual Loops": 1,                                          +
                               "Index Cond": "(keyword = 'character-name-in-title'::text)",+
                               "Rows Removed by Index Recheck": 0,                         +
                               "Shared Hit Blocks": 0,                                     +
                               "Shared Read Blocks": 4,                                    +
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
                         },                                                                +
                         {                                                                 +
                           "Node Type": "Sort",                                            +
                           "Parent Relationship": "Inner",                                 +
                           "Parallel Aware": false,                                        +
                           "Startup Cost": 16610.92,                                       +
                           "Total Cost": 16962.16,                                         +
                           "Plan Rows": 4523930,                                           +
                           "Plan Width": 8,                                                +
                           "Actual Startup Time": 2305.608,                                +
                           "Actual Total Time": 2329.550,                                  +
                           "Actual Rows": 163762,                                          +
                           "Actual Loops": 1,                                              +
                           "Sort Key": ["mk.keyword_id"],                                  +
                           "Sort Method": "quicksort",                                     +
                           "Sort Space Used": 408668,                                      +
                           "Sort Space Type": "Memory",                                    +
                           "Shared Hit Blocks": 3,                                         +
                           "Shared Read Blocks": 24451,                                    +
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
                               "Node Type": "Seq Scan",                                    +
                               "Parent Relationship": "Outer",                             +
                               "Parallel Aware": false,                                    +
                               "Relation Name": "movie_keyword",                           +
                               "Alias": "mk",                                              +
                               "Startup Cost": 0.00,                                       +
                               "Total Cost": 1079.84,                                      +
                               "Plan Rows": 4523930,                                       +
                               "Plan Width": 8,                                            +
                               "Actual Startup Time": 0.020,                               +
                               "Actual Total Time": 842.649,                               +
                               "Actual Rows": 4523930,                                     +
                               "Actual Loops": 1,                                          +
                               "Shared Hit Blocks": 3,                                     +
                               "Shared Read Blocks": 24451,                                +
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
                     }                                                                     +
                   ]                                                                       +
                 }                                                                         +
               ]                                                                           +
             },                                                                            +
             {                                                                             +
               "Node Type": "Sort",                                                        +
               "Parent Relationship": "Inner",                                             +
               "Parallel Aware": false,                                                    +
               "Startup Cost": 9654.35,                                                    +
               "Total Cost": 9850.65,                                                      +
               "Plan Rows": 2528312,                                                       +
               "Plan Width": 21,                                                           +
               "Actual Startup Time": 0.000,                                               +
               "Actual Total Time": 0.000,                                                 +
               "Actual Rows": 0,                                                           +
               "Actual Loops": 0,                                                          +
               "Sort Key": ["t.id"],                                                       +
               "Shared Hit Blocks": 0,                                                     +
               "Shared Read Blocks": 0,                                                    +
               "Shared Dirtied Blocks": 0,                                                 +
               "Shared Written Blocks": 0,                                                 +
               "Local Hit Blocks": 0,                                                      +
               "Local Read Blocks": 0,                                                     +
               "Local Dirtied Blocks": 0,                                                  +
               "Local Written Blocks": 0,                                                  +
               "Temp Read Blocks": 0,                                                      +
               "Temp Written Blocks": 0,                                                   +
               "Plans": [                                                                  +
                 {                                                                         +
                   "Node Type": "Seq Scan",                                                +
                   "Parent Relationship": "Outer",                                         +
                   "Parallel Aware": false,                                                +
                   "Relation Name": "title",                                               +
                   "Alias": "t",                                                           +
                   "Startup Cost": 0.00,                                                   +
                   "Total Cost": 1303.96,                                                  +
                   "Plan Rows": 2528312,                                                   +
                   "Plan Width": 21,                                                       +
                   "Actual Startup Time": 0.000,                                           +
                   "Actual Total Time": 0.000,                                             +
                   "Actual Rows": 0,                                                       +
                   "Actual Loops": 0,                                                      +
                   "Shared Hit Blocks": 0,                                                 +
                   "Shared Read Blocks": 0,                                                +
                   "Shared Dirtied Blocks": 0,                                             +
                   "Shared Written Blocks": 0,                                             +
                   "Local Hit Blocks": 0,                                                  +
                   "Local Read Blocks": 0,                                                 +
                   "Local Dirtied Blocks": 0,                                              +
                   "Local Written Blocks": 0,                                              +
                   "Temp Read Blocks": 0,                                                  +
                   "Temp Written Blocks": 0                                                +
                 }                                                                         +
               ]                                                                           +
             }                                                                             +
           ]                                                                               +
         }                                                                                 +
       ]                                                                                   +
     },                                                                                    +
     "Planning Time": 2423.405,                                                            +
     "Triggers": [                                                                         +
     ],                                                                                    +
     "Execution Time": 4573.044                                                            +
   }                                                                                       +
 ]
(1 row)

