                                                 QUERY PLAN                                                  
-------------------------------------------------------------------------------------------------------------
 [                                                                                                          +
   {                                                                                                        +
     "Plan": {                                                                                              +
       "Node Type": "Aggregate",                                                                            +
       "Strategy": "Plain",                                                                                 +
       "Partial Mode": "Simple",                                                                            +
       "Parallel Aware": false,                                                                             +
       "Startup Cost": 30941.33,                                                                            +
       "Total Cost": 30941.33,                                                                              +
       "Plan Rows": 1,                                                                                      +
       "Plan Width": 64,                                                                                    +
       "Actual Startup Time": 19849.470,                                                                    +
       "Actual Total Time": 19849.470,                                                                      +
       "Actual Rows": 1,                                                                                    +
       "Actual Loops": 1,                                                                                   +
       "Shared Hit Blocks": 19,                                                                             +
       "Shared Read Blocks": 377429,                                                                        +
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
           "Node Type": "Merge Join",                                                                       +
           "Parent Relationship": "Outer",                                                                  +
           "Parallel Aware": false,                                                                         +
           "Join Type": "Inner",                                                                            +
           "Startup Cost": 30549.02,                                                                        +
           "Total Cost": 30941.33,                                                                          +
           "Plan Rows": 1,                                                                                  +
           "Plan Width": 33,                                                                                +
           "Actual Startup Time": 19314.517,                                                                +
           "Actual Total Time": 19849.386,                                                                  +
           "Actual Rows": 62,                                                                               +
           "Actual Loops": 1,                                                                               +
           "Inner Unique": true,                                                                            +
           "Merge Cond": "(ci.movie_id = t.id)",                                                            +
           "Shared Hit Blocks": 19,                                                                         +
           "Shared Read Blocks": 377429,                                                                    +
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
               "Node Type": "Merge Join",                                                                   +
               "Parent Relationship": "Outer",                                                              +
               "Parallel Aware": false,                                                                     +
               "Join Type": "Inner",                                                                        +
               "Startup Cost": 20894.67,                                                                    +
               "Total Cost": 20894.74,                                                                      +
               "Plan Rows": 1,                                                                              +
               "Plan Width": 24,                                                                            +
               "Actual Startup Time": 16892.973,                                                            +
               "Actual Total Time": 16902.679,                                                              +
               "Actual Rows": 62,                                                                           +
               "Actual Loops": 1,                                                                           +
               "Inner Unique": false,                                                                       +
               "Merge Cond": "(mc.movie_id = ci.movie_id)",                                                 +
               "Shared Hit Blocks": 18,                                                                     +
               "Shared Read Blocks": 341432,                                                                +
               "Shared Dirtied Blocks": 0,                                                                  +
               "Shared Written Blocks": 0,                                                                  +
               "Local Hit Blocks": 0,                                                                       +
               "Local Read Blocks": 0,                                                                      +
               "Local Dirtied Blocks": 0,                                                                   +
               "Local Written Blocks": 0,                                                                   +
               "Temp Read Blocks": 0,                                                                       +
               "Temp Written Blocks": 0,                                                                    +
               "Plans": [                                                                                   +
                 {                                                                                          +
                   "Node Type": "Sort",                                                                     +
                   "Parent Relationship": "Outer",                                                          +
                   "Parallel Aware": false,                                                                 +
                   "Startup Cost": 1355.35,                                                                 +
                   "Total Cost": 1355.38,                                                                   +
                   "Plan Rows": 458,                                                                        +
                   "Plan Width": 4,                                                                         +
                   "Actual Startup Time": 1201.643,                                                         +
                   "Actual Total Time": 1206.974,                                                           +
                   "Actual Rows": 46669,                                                                    +
                   "Actual Loops": 1,                                                                       +
                   "Sort Key": ["mc.movie_id"],                                                             +
                   "Sort Method": "quicksort",                                                              +
                   "Sort Space Used": 3802,                                                                 +
                   "Sort Space Type": "Memory",                                                             +
                   "Shared Hit Blocks": 9,                                                                  +
                   "Shared Read Blocks": 21778,                                                             +
                   "Shared Dirtied Blocks": 0,                                                              +
                   "Shared Written Blocks": 0,                                                              +
                   "Local Hit Blocks": 0,                                                                   +
                   "Local Read Blocks": 0,                                                                  +
                   "Local Dirtied Blocks": 0,                                                               +
                   "Local Written Blocks": 0,                                                               +
                   "Temp Read Blocks": 0,                                                                   +
                   "Temp Written Blocks": 0,                                                                +
                   "Plans": [                                                                               +
                     {                                                                                      +
                       "Node Type": "Merge Join",                                                           +
                       "Parent Relationship": "Outer",                                                      +
                       "Parallel Aware": false,                                                             +
                       "Join Type": "Inner",                                                                +
                       "Startup Cost": 1351.17,                                                             +
                       "Total Cost": 1354.72,                                                               +
                       "Plan Rows": 458,                                                                    +
                       "Plan Width": 4,                                                                     +
                       "Actual Startup Time": 1170.933,                                                     +
                       "Actual Total Time": 1185.441,                                                       +
                       "Actual Rows": 48328,                                                                +
                       "Actual Loops": 1,                                                                   +
                       "Inner Unique": false,                                                               +
                       "Merge Cond": "(cn.id = mc.company_id)",                                             +
                       "Shared Hit Blocks": 5,                                                              +
                       "Shared Read Blocks": 21778,                                                         +
                       "Shared Dirtied Blocks": 0,                                                          +
                       "Shared Written Blocks": 0,                                                          +
                       "Local Hit Blocks": 0,                                                               +
                       "Local Read Blocks": 0,                                                              +
                       "Local Dirtied Blocks": 0,                                                           +
                       "Local Written Blocks": 0,                                                           +
                       "Temp Read Blocks": 0,                                                               +
                       "Temp Written Blocks": 0,                                                            +
                       "Plans": [                                                                           +
                         {                                                                                  +
                           "Node Type": "Sort",                                                             +
                           "Parent Relationship": "Outer",                                                  +
                           "Parallel Aware": false,                                                         +
                           "Startup Cost": 141.74,                                                          +
                           "Total Cost": 142.27,                                                            +
                           "Plan Rows": 6752,                                                               +
                           "Plan Width": 4,                                                                 +
                           "Actual Startup Time": 148.633,                                                  +
                           "Actual Total Time": 148.922,                                                    +
                           "Actual Rows": 2418,                                                             +
                           "Actual Loops": 1,                                                               +
                           "Sort Key": ["cn.id"],                                                           +
                           "Sort Method": "quicksort",                                                      +
                           "Sort Space Used": 509,                                                          +
                           "Sort Space Type": "Memory",                                                     +
                           "Shared Hit Blocks": 2,                                                          +
                           "Shared Read Blocks": 2992,                                                      +
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
                               "Node Type": "Seq Scan",                                                     +
                               "Parent Relationship": "Outer",                                              +
                               "Parallel Aware": false,                                                     +
                               "Relation Name": "company_name",                                             +
                               "Alias": "cn",                                                               +
                               "Startup Cost": 0.00,                                                        +
                               "Total Cost": 128.41,                                                        +
                               "Plan Rows": 6752,                                                           +
                               "Plan Width": 4,                                                             +
                               "Actual Startup Time": 12.323,                                               +
                               "Actual Total Time": 144.694,                                                +
                               "Actual Rows": 6752,                                                         +
                               "Actual Loops": 1,                                                           +
                               "Filter": "((country_code)::text = '[jp]'::text)",                           +
                               "Rows Removed by Filter": 228245,                                            +
                               "Shared Hit Blocks": 2,                                                      +
                               "Shared Read Blocks": 2992,                                                  +
                               "Shared Dirtied Blocks": 0,                                                  +
                               "Shared Written Blocks": 0,                                                  +
                               "Local Hit Blocks": 0,                                                       +
                               "Local Read Blocks": 0,                                                      +
                               "Local Dirtied Blocks": 0,                                                   +
                               "Local Written Blocks": 0,                                                   +
                               "Temp Read Blocks": 0,                                                       +
                               "Temp Written Blocks": 0                                                     +
                             }                                                                              +
                           ]                                                                                +
                         },                                                                                 +
                         {                                                                                  +
                           "Node Type": "Sort",                                                             +
                           "Parent Relationship": "Inner",                                                  +
                           "Parallel Aware": false,                                                         +
                           "Startup Cost": 1209.42,                                                         +
                           "Total Cost": 1210.66,                                                           +
                           "Plan Rows": 15927,                                                              +
                           "Plan Width": 8,                                                                 +
                           "Actual Startup Time": 1022.282,                                                 +
                           "Actual Total Time": 1027.122,                                                   +
                           "Actual Rows": 48897,                                                            +
                           "Actual Loops": 1,                                                               +
                           "Sort Key": ["mc.company_id"],                                                   +
                           "Sort Method": "quicksort",                                                      +
                           "Sort Space Used": 3829,                                                         +
                           "Sort Space Type": "Memory",                                                     +
                           "Shared Hit Blocks": 3,                                                          +
                           "Shared Read Blocks": 18786,                                                     +
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
                               "Node Type": "Seq Scan",                                                     +
                               "Parent Relationship": "Outer",                                              +
                               "Parallel Aware": false,                                                     +
                               "Relation Name": "movie_companies",                                          +
                               "Alias": "mc",                                                               +
                               "Startup Cost": 0.00,                                                        +
                               "Total Cost": 1174.90,                                                       +
                               "Plan Rows": 15927,                                                          +
                               "Plan Width": 8,                                                             +
                               "Actual Startup Time": 2.326,                                                +
                               "Actual Total Time": 1002.255,                                               +
                               "Actual Rows": 48897,                                                        +
                               "Actual Loops": 1,                                                           +
                               "Filter": "((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))",    +
                               "Rows Removed by Filter": 2560232,                                           +
                               "Shared Hit Blocks": 3,                                                      +
                               "Shared Read Blocks": 18786,                                                 +
                               "Shared Dirtied Blocks": 0,                                                  +
                               "Shared Written Blocks": 0,                                                  +
                               "Local Hit Blocks": 0,                                                       +
                               "Local Read Blocks": 0,                                                      +
                               "Local Dirtied Blocks": 0,                                                   +
                               "Local Written Blocks": 0,                                                   +
                               "Temp Read Blocks": 0,                                                       +
                               "Temp Written Blocks": 0                                                     +
                             }                                                                              +
                           ]                                                                                +
                         }                                                                                  +
                       ]                                                                                    +
                     }                                                                                      +
                   ]                                                                                        +
                 },                                                                                         +
                 {                                                                                          +
                   "Node Type": "Sort",                                                                     +
                   "Parent Relationship": "Inner",                                                          +
                   "Parallel Aware": false,                                                                 +
                   "Startup Cost": 19539.32,                                                                +
                   "Total Cost": 19539.32,                                                                  +
                   "Plan Rows": 35,                                                                         +
                   "Plan Width": 20,                                                                        +
                   "Actual Startup Time": 15690.384,                                                        +
                   "Actual Total Time": 15690.435,                                                          +
                   "Actual Rows": 681,                                                                      +
                   "Actual Loops": 1,                                                                       +
                   "Sort Key": ["ci.movie_id"],                                                             +
                   "Sort Method": "quicksort",                                                              +
                   "Sort Space Used": 76,                                                                   +
                   "Sort Space Type": "Memory",                                                             +
                   "Shared Hit Blocks": 9,                                                                  +
                   "Shared Read Blocks": 319654,                                                            +
                   "Shared Dirtied Blocks": 0,                                                              +
                   "Shared Written Blocks": 0,                                                              +
                   "Local Hit Blocks": 0,                                                                   +
                   "Local Read Blocks": 0,                                                                  +
                   "Local Dirtied Blocks": 0,                                                               +
                   "Local Written Blocks": 0,                                                               +
                   "Temp Read Blocks": 0,                                                                   +
                   "Temp Written Blocks": 0,                                                                +
                   "Plans": [                                                                               +
                     {                                                                                      +
                       "Node Type": "Merge Join",                                                           +
                       "Parent Relationship": "Outer",                                                      +
                       "Parallel Aware": false,                                                             +
                       "Join Type": "Inner",                                                                +
                       "Startup Cost": 19539.23,                                                            +
                       "Total Cost": 19539.29,                                                              +
                       "Plan Rows": 35,                                                                     +
                       "Plan Width": 20,                                                                    +
                       "Actual Startup Time": 15690.048,                                                    +
                       "Actual Total Time": 15690.208,                                                      +
                       "Actual Rows": 659,                                                                  +
                       "Actual Loops": 1,                                                                   +
                       "Inner Unique": true,                                                                +
                       "Merge Cond": "(ci.role_id = rt.id)",                                                +
                       "Shared Hit Blocks": 9,                                                              +
                       "Shared Read Blocks": 319654,                                                        +
                       "Shared Dirtied Blocks": 0,                                                          +
                       "Shared Written Blocks": 0,                                                          +
                       "Local Hit Blocks": 0,                                                               +
                       "Local Read Blocks": 0,                                                              +
                       "Local Dirtied Blocks": 0,                                                           +
                       "Local Written Blocks": 0,                                                           +
                       "Temp Read Blocks": 0,                                                               +
                       "Temp Written Blocks": 0,                                                            +
                       "Plans": [                                                                           +
                         {                                                                                  +
                           "Node Type": "Sort",                                                             +
                           "Parent Relationship": "Outer",                                                  +
                           "Parallel Aware": false,                                                         +
                           "Startup Cost": 19539.19,                                                        +
                           "Total Cost": 19539.22,                                                          +
                           "Plan Rows": 422,                                                                +
                           "Plan Width": 24,                                                                +
                           "Actual Startup Time": 15689.712,                                                +
                           "Actual Total Time": 15689.838,                                                  +
                           "Actual Rows": 2575,                                                             +
                           "Actual Loops": 1,                                                               +
                           "Sort Key": ["ci.role_id"],                                                      +
                           "Sort Method": "quicksort",                                                      +
                           "Sort Space Used": 298,                                                          +
                           "Sort Space Type": "Memory",                                                     +
                           "Shared Hit Blocks": 8,                                                          +
                           "Shared Read Blocks": 319654,                                                    +
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
                               "Node Type": "Merge Join",                                                   +
                               "Parent Relationship": "Outer",                                              +
                               "Parallel Aware": false,                                                     +
                               "Join Type": "Inner",                                                        +
                               "Startup Cost": 19400.67,                                                    +
                               "Total Cost": 19538.62,                                                      +
                               "Plan Rows": 422,                                                            +
                               "Plan Width": 24,                                                            +
                               "Actual Startup Time": 15578.561,                                            +
                               "Actual Total Time": 15689.189,                                              +
                               "Actual Rows": 2575,                                                         +
                               "Actual Loops": 1,                                                           +
                               "Inner Unique": false,                                                       +
                               "Merge Cond": "(an1.person_id = ci.person_id)",                              +
                               "Shared Hit Blocks": 8,                                                      +
                               "Shared Read Blocks": 319654,                                                +
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
                                   "Node Type": "Merge Join",                                               +
                                   "Parent Relationship": "Outer",                                          +
                                   "Parallel Aware": false,                                                 +
                                   "Join Type": "Inner",                                                    +
                                   "Startup Cost": 5916.57,                                                 +
                                   "Total Cost": 6060.22,                                                   +
                                   "Plan Rows": 4689,                                                       +
                                   "Plan Width": 24,                                                        +
                                   "Actual Startup Time": 3475.669,                                         +
                                   "Actual Total Time": 3579.446,                                           +
                                   "Actual Rows": 2154,                                                     +
                                   "Actual Loops": 1,                                                       +
                                   "Inner Unique": true,                                                    +
                                   "Merge Cond": "(an1.person_id = n1.id)",                                 +
                                   "Shared Hit Blocks": 4,                                                  +
                                   "Shared Read Blocks": 67004,                                             +
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
                                       "Node Type": "Sort",                                                 +
                                       "Parent Relationship": "Outer",                                      +
                                       "Parallel Aware": false,                                             +
                                       "Startup Cost": 3188.40,                                             +
                                       "Total Cost": 3258.38,                                               +
                                       "Plan Rows": 901343,                                                 +
                                       "Plan Width": 20,                                                    +
                                       "Actual Startup Time": 750.207,                                      +
                                       "Actual Total Time": 787.299,                                        +
                                       "Actual Rows": 578753,                                               +
                                       "Actual Loops": 1,                                                   +
                                       "Sort Key": ["an1.person_id"],                                       +
                                       "Sort Method": "quicksort",                                          +
                                       "Sort Space Used": 89763,                                            +
                                       "Sort Space Type": "Memory",                                         +
                                       "Shared Hit Blocks": 2,                                              +
                                       "Shared Read Blocks": 11393,                                         +
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
                                           "Relation Name": "aka_name",                                     +
                                           "Alias": "an1",                                                  +
                                           "Startup Cost": 0.00,                                            +
                                           "Total Cost": 419.75,                                            +
                                           "Plan Rows": 901343,                                             +
                                           "Plan Width": 20,                                                +
                                           "Actual Startup Time": 0.008,                                    +
                                           "Actual Total Time": 325.238,                                    +
                                           "Actual Rows": 901343,                                           +
                                           "Actual Loops": 1,                                               +
                                           "Shared Hit Blocks": 2,                                          +
                                           "Shared Read Blocks": 11393,                                     +
                                           "Shared Dirtied Blocks": 0,                                      +
                                           "Shared Written Blocks": 0,                                      +
                                           "Local Hit Blocks": 0,                                           +
                                           "Local Read Blocks": 0,                                          +
                                           "Local Dirtied Blocks": 0,                                       +
                                           "Local Written Blocks": 0,                                       +
                                           "Temp Read Blocks": 0,                                           +
                                           "Temp Written Blocks": 0                                         +
                                         }                                                                  +
                                       ]                                                                    +
                                     },                                                                     +
                                     {                                                                      +
                                       "Node Type": "Sort",                                                 +
                                       "Parent Relationship": "Inner",                                      +
                                       "Parallel Aware": false,                                             +
                                       "Startup Cost": 2728.18,                                             +
                                       "Total Cost": 2729.86,                                               +
                                       "Plan Rows": 21680,                                                  +
                                       "Plan Width": 4,                                                     +
                                       "Actual Startup Time": 2725.293,                                     +
                                       "Actual Total Time": 2726.107,                                       +
                                       "Actual Rows": 11996,                                                +
                                       "Actual Loops": 1,                                                   +
                                       "Sort Key": ["n1.id"],                                               +
                                       "Sort Method": "quicksort",                                          +
                                       "Sort Space Used": 1749,                                             +
                                       "Sort Space Type": "Memory",                                         +
                                       "Shared Hit Blocks": 2,                                              +
                                       "Shared Read Blocks": 55611,                                         +
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
                                           "Relation Name": "name",                                         +
                                           "Alias": "n1",                                                   +
                                           "Startup Cost": 0.00,                                            +
                                           "Total Cost": 2679.69,                                           +
                                           "Plan Rows": 21680,                                              +
                                           "Plan Width": 4,                                                 +
                                           "Actual Startup Time": 4.333,                                    +
                                           "Actual Total Time": 2709.060,                                   +
                                           "Actual Rows": 20911,                                            +
                                           "Actual Loops": 1,                                               +
                                           "Filter": "((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))",+
                                           "Rows Removed by Filter": 4146580,                               +
                                           "Shared Hit Blocks": 2,                                          +
                                           "Shared Read Blocks": 55611,                                     +
                                           "Shared Dirtied Blocks": 0,                                      +
                                           "Shared Written Blocks": 0,                                      +
                                           "Local Hit Blocks": 0,                                           +
                                           "Local Read Blocks": 0,                                          +
                                           "Local Dirtied Blocks": 0,                                       +
                                           "Local Written Blocks": 0,                                       +
                                           "Temp Read Blocks": 0,                                           +
                                           "Temp Written Blocks": 0                                         +
                                         }                                                                  +
                                       ]                                                                    +
                                     }                                                                      +
                                   ]                                                                        +
                                 },                                                                         +
                                 {                                                                          +
                                   "Node Type": "Sort",                                                     +
                                   "Parent Relationship": "Inner",                                          +
                                   "Parallel Aware": false,                                                 +
                                   "Startup Cost": 13484.10,                                                +
                                   "Total Cost": 13491.34,                                                  +
                                   "Plan Rows": 93269,                                                      +
                                   "Plan Width": 12,                                                        +
                                   "Actual Startup Time": 12095.921,                                        +
                                   "Actual Total Time": 12100.282,                                          +
                                   "Actual Rows": 94805,                                                    +
                                   "Actual Loops": 1,                                                       +
                                   "Sort Key": ["ci.person_id"],                                            +
                                   "Sort Method": "quicksort",                                              +
                                   "Sort Space Used": 7436,                                                 +
                                   "Sort Space Type": "Memory",                                             +
                                   "Shared Hit Blocks": 4,                                                  +
                                   "Shared Read Blocks": 252650,                                            +
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
                                       "Node Type": "Seq Scan",                                             +
                                       "Parent Relationship": "Outer",                                      +
                                       "Parallel Aware": false,                                             +
                                       "Relation Name": "cast_info",                                        +
                                       "Alias": "ci",                                                       +
                                       "Startup Cost": 0.00,                                                +
                                       "Total Cost": 13245.00,                                              +
                                       "Plan Rows": 93269,                                                  +
                                       "Plan Width": 12,                                                    +
                                       "Actual Startup Time": 9.735,                                        +
                                       "Actual Total Time": 12052.220,                                      +
                                       "Actual Rows": 93095,                                                +
                                       "Actual Loops": 1,                                                   +
                                       "Filter": "(note = '(voice: English version)'::text)",               +
                                       "Rows Removed by Filter": 36151249,                                  +
                                       "Shared Hit Blocks": 4,                                              +
                                       "Shared Read Blocks": 252650,                                        +
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
                                 }                                                                          +
                               ]                                                                            +
                             }                                                                              +
                           ]                                                                                +
                         },                                                                                 +
                         {                                                                                  +
                           "Node Type": "Sort",                                                             +
                           "Parent Relationship": "Inner",                                                  +
                           "Parallel Aware": false,                                                         +
                           "Startup Cost": 0.03,                                                            +
                           "Total Cost": 0.03,                                                              +
                           "Plan Rows": 1,                                                                  +
                           "Plan Width": 4,                                                                 +
                           "Actual Startup Time": 0.018,                                                    +
                           "Actual Total Time": 0.018,                                                      +
                           "Actual Rows": 1,                                                                +
                           "Actual Loops": 1,                                                               +
                           "Sort Key": ["rt.id"],                                                           +
                           "Sort Method": "quicksort",                                                      +
                           "Sort Space Used": 25,                                                           +
                           "Sort Space Type": "Memory",                                                     +
                           "Shared Hit Blocks": 1,                                                          +
                           "Shared Read Blocks": 0,                                                         +
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
                               "Node Type": "Seq Scan",                                                     +
                               "Parent Relationship": "Outer",                                              +
                               "Parallel Aware": false,                                                     +
                               "Relation Name": "role_type",                                                +
                               "Alias": "rt",                                                               +
                               "Startup Cost": 0.00,                                                        +
                               "Total Cost": 0.03,                                                          +
                               "Plan Rows": 1,                                                              +
                               "Plan Width": 4,                                                             +
                               "Actual Startup Time": 0.009,                                                +
                               "Actual Total Time": 0.012,                                                  +
                               "Actual Rows": 1,                                                            +
                               "Actual Loops": 1,                                                           +
                               "Filter": "((role)::text = 'actress'::text)",                                +
                               "Rows Removed by Filter": 11,                                                +
                               "Shared Hit Blocks": 1,                                                      +
                               "Shared Read Blocks": 0,                                                     +
                               "Shared Dirtied Blocks": 0,                                                  +
                               "Shared Written Blocks": 0,                                                  +
                               "Local Hit Blocks": 0,                                                       +
                               "Local Read Blocks": 0,                                                      +
                               "Local Dirtied Blocks": 0,                                                   +
                               "Local Written Blocks": 0,                                                   +
                               "Temp Read Blocks": 0,                                                       +
                               "Temp Written Blocks": 0                                                     +
                             }                                                                              +
                           ]                                                                                +
                         }                                                                                  +
                       ]                                                                                    +
                     }                                                                                      +
                   ]                                                                                        +
                 }                                                                                          +
               ]                                                                                            +
             },                                                                                             +
             {                                                                                              +
               "Node Type": "Sort",                                                                         +
               "Parent Relationship": "Inner",                                                              +
               "Parallel Aware": false,                                                                     +
               "Startup Cost": 9654.35,                                                                     +
               "Total Cost": 9850.65,                                                                       +
               "Plan Rows": 2528312,                                                                        +
               "Plan Width": 21,                                                                            +
               "Actual Startup Time": 2306.339,                                                             +
               "Actual Total Time": 2603.829,                                                               +
               "Actual Rows": 2487182,                                                                      +
               "Actual Loops": 1,                                                                           +
               "Sort Key": ["t.id"],                                                                        +
               "Sort Method": "quicksort",                                                                  +
               "Sort Space Used": 275055,                                                                   +
               "Sort Space Type": "Memory",                                                                 +
               "Shared Hit Blocks": 1,                                                                      +
               "Shared Read Blocks": 35997,                                                                 +
               "Shared Dirtied Blocks": 0,                                                                  +
               "Shared Written Blocks": 0,                                                                  +
               "Local Hit Blocks": 0,                                                                       +
               "Local Read Blocks": 0,                                                                      +
               "Local Dirtied Blocks": 0,                                                                   +
               "Local Written Blocks": 0,                                                                   +
               "Temp Read Blocks": 0,                                                                       +
               "Temp Written Blocks": 0,                                                                    +
               "Plans": [                                                                                   +
                 {                                                                                          +
                   "Node Type": "Seq Scan",                                                                 +
                   "Parent Relationship": "Outer",                                                          +
                   "Parallel Aware": false,                                                                 +
                   "Relation Name": "title",                                                                +
                   "Alias": "t",                                                                            +
                   "Startup Cost": 0.00,                                                                    +
                   "Total Cost": 1303.96,                                                                   +
                   "Plan Rows": 2528312,                                                                    +
                   "Plan Width": 21,                                                                        +
                   "Actual Startup Time": 10.370,                                                           +
                   "Actual Total Time": 1010.756,                                                           +
                   "Actual Rows": 2528312,                                                                  +
                   "Actual Loops": 1,                                                                       +
                   "Shared Hit Blocks": 1,                                                                  +
                   "Shared Read Blocks": 35997,                                                             +
                   "Shared Dirtied Blocks": 0,                                                              +
                   "Shared Written Blocks": 0,                                                              +
                   "Local Hit Blocks": 0,                                                                   +
                   "Local Read Blocks": 0,                                                                  +
                   "Local Dirtied Blocks": 0,                                                               +
                   "Local Written Blocks": 0,                                                               +
                   "Temp Read Blocks": 0,                                                                   +
                   "Temp Written Blocks": 0                                                                 +
                 }                                                                                          +
               ]                                                                                            +
             }                                                                                              +
           ]                                                                                                +
         }                                                                                                  +
       ]                                                                                                    +
     },                                                                                                     +
     "Planning Time": 4511.504,                                                                             +
     "Triggers": [                                                                                          +
     ],                                                                                                     +
     "Execution Time": 19873.981                                                                            +
   }                                                                                                        +
 ]
(1 row)
