                                        QUERY PLAN                                        
------------------------------------------------------------------------------------------
 [                                                                                       +
   {                                                                                     +
     "Plan": {                                                                           +
       "Node Type": "Aggregate",                                                         +
       "Strategy": "Plain",                                                              +
       "Partial Mode": "Simple",                                                         +
       "Parallel Aware": false,                                                          +
       "Startup Cost": 219505.74,                                                        +
       "Total Cost": 219505.74,                                                          +
       "Plan Rows": 1,                                                                   +
       "Plan Width": 64,                                                                 +
       "Actual Startup Time": 35530.583,                                                 +
       "Actual Total Time": 35530.583,                                                   +
       "Actual Rows": 1,                                                                 +
       "Actual Loops": 1,                                                                +
       "Shared Hit Blocks": 19,                                                          +
       "Shared Read Blocks": 377429,                                                     +
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
           "Node Type": "Merge Join",                                                    +
           "Parent Relationship": "Outer",                                               +
           "Parallel Aware": false,                                                      +
           "Join Type": "Inner",                                                         +
           "Startup Cost": 217983.79,                                                    +
           "Total Cost": 219222.98,                                                      +
           "Plan Rows": 1820954,                                                         +
           "Plan Width": 33,                                                             +
           "Actual Startup Time": 33061.521,                                             +
           "Actual Total Time": 34951.490,                                               +
           "Actual Rows": 2487611,                                                       +
           "Actual Loops": 1,                                                            +
           "Inner Unique": false,                                                        +
           "Merge Cond": "(a1.person_id = ci.person_id)",                                +
           "Shared Hit Blocks": 19,                                                      +
           "Shared Read Blocks": 377429,                                                 +
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
               "Node Type": "Merge Join",                                                +
               "Parent Relationship": "Outer",                                           +
               "Parallel Aware": false,                                                  +
               "Join Type": "Inner",                                                     +
               "Startup Cost": 19451.73,                                                 +
               "Total Cost": 20301.14,                                                   +
               "Plan Rows": 901343,                                                      +
               "Plan Width": 24,                                                         +
               "Actual Startup Time": 4242.539,                                          +
               "Actual Total Time": 5170.704,                                            +
               "Actual Rows": 656209,                                                    +
               "Actual Loops": 1,                                                        +
               "Inner Unique": true,                                                     +
               "Merge Cond": "(a1.person_id = n1.id)",                                   +
               "Shared Hit Blocks": 8,                                                   +
               "Shared Read Blocks": 67004,                                              +
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
                   "Node Type": "Sort",                                                  +
                   "Parent Relationship": "Outer",                                       +
                   "Parallel Aware": false,                                              +
                   "Startup Cost": 3188.40,                                              +
                   "Total Cost": 3258.38,                                                +
                   "Plan Rows": 901343,                                                  +
                   "Plan Width": 20,                                                     +
                   "Actual Startup Time": 769.350,                                       +
                   "Actual Total Time": 840.454,                                         +
                   "Actual Rows": 656209,                                                +
                   "Actual Loops": 1,                                                    +
                   "Sort Key": ["a1.person_id"],                                         +
                   "Sort Method": "quicksort",                                           +
                   "Sort Space Used": 89763,                                             +
                   "Sort Space Type": "Memory",                                          +
                   "Shared Hit Blocks": 6,                                               +
                   "Shared Read Blocks": 11393,                                          +
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
                       "Node Type": "Seq Scan",                                          +
                       "Parent Relationship": "Outer",                                   +
                       "Parallel Aware": false,                                          +
                       "Relation Name": "aka_name",                                      +
                       "Alias": "a1",                                                    +
                       "Startup Cost": 0.00,                                             +
                       "Total Cost": 419.75,                                             +
                       "Plan Rows": 901343,                                              +
                       "Plan Width": 20,                                                 +
                       "Actual Startup Time": 0.014,                                     +
                       "Actual Total Time": 327.334,                                     +
                       "Actual Rows": 901343,                                            +
                       "Actual Loops": 1,                                                +
                       "Shared Hit Blocks": 2,                                           +
                       "Shared Read Blocks": 11393,                                      +
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
                   "Node Type": "Sort",                                                  +
                   "Parent Relationship": "Inner",                                       +
                   "Parallel Aware": false,                                              +
                   "Startup Cost": 16263.33,                                             +
                   "Total Cost": 16586.90,                                               +
                   "Plan Rows": 4167491,                                                 +
                   "Plan Width": 4,                                                      +
                   "Actual Startup Time": 3473.175,                                      +
                   "Actual Total Time": 3778.438,                                        +
                   "Actual Rows": 3228374,                                               +
                   "Actual Loops": 1,                                                    +
                   "Sort Key": ["n1.id"],                                                +
                   "Sort Method": "quicksort",                                           +
                   "Sort Space Used": 293656,                                            +
                   "Sort Space Type": "Memory",                                          +
                   "Shared Hit Blocks": 2,                                               +
                   "Shared Read Blocks": 55611,                                          +
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
                       "Node Type": "Seq Scan",                                          +
                       "Parent Relationship": "Outer",                                   +
                       "Parallel Aware": false,                                          +
                       "Relation Name": "name",                                          +
                       "Alias": "n1",                                                    +
                       "Startup Cost": 0.00,                                             +
                       "Total Cost": 2032.56,                                            +
                       "Plan Rows": 4167491,                                             +
                       "Plan Width": 4,                                                  +
                       "Actual Startup Time": 4.080,                                     +
                       "Actual Total Time": 1627.173,                                    +
                       "Actual Rows": 4167491,                                           +
                       "Actual Loops": 1,                                                +
                       "Shared Hit Blocks": 2,                                           +
                       "Shared Read Blocks": 55611,                                      +
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
                 }                                                                       +
               ]                                                                         +
             },                                                                          +
             {                                                                           +
               "Node Type": "Sort",                                                      +
               "Parent Relationship": "Inner",                                           +
               "Parallel Aware": false,                                                  +
               "Startup Cost": 198532.05,                                                +
               "Total Cost": 198694.67,                                                  +
               "Plan Rows": 2094450,                                                     +
               "Plan Width": 21,                                                         +
               "Actual Startup Time": 28818.964,                                         +
               "Actual Total Time": 29138.634,                                           +
               "Actual Rows": 3411048,                                                   +
               "Actual Loops": 1,                                                        +
               "Sort Key": ["ci.person_id"],                                             +
               "Sort Method": "quicksort",                                               +
               "Sort Space Used": 189325,                                                +
               "Sort Space Type": "Memory",                                              +
               "Shared Hit Blocks": 11,                                                  +
               "Shared Read Blocks": 310425,                                             +
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
                   "Node Type": "Merge Join",                                            +
                   "Parent Relationship": "Outer",                                       +
                   "Parallel Aware": false,                                              +
                   "Join Type": "Inner",                                                 +
                   "Startup Cost": 190480.02,                                            +
                   "Total Cost": 191702.94,                                              +
                   "Plan Rows": 2094450,                                                 +
                   "Plan Width": 21,                                                     +
                   "Actual Startup Time": 25847.766,                                     +
                   "Actual Total Time": 28139.640,                                       +
                   "Actual Rows": 1970658,                                               +
                   "Actual Loops": 1,                                                    +
                   "Inner Unique": false,                                                +
                   "Merge Cond": "(t.id = ci.movie_id)",                                 +
                   "Shared Hit Blocks": 11,                                              +
                   "Shared Read Blocks": 310425,                                         +
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
                       "Node Type": "Merge Join",                                        +
                       "Parent Relationship": "Outer",                                   +
                       "Parallel Aware": false,                                          +
                       "Join Type": "Inner",                                             +
                       "Startup Cost": 22790.19,                                         +
                       "Total Cost": 23393.79,                                           +
                       "Plan Rows": 941996,                                              +
                       "Plan Width": 25,                                                 +
                       "Actual Startup Time": 5080.996,                                  +
                       "Actual Total Time": 6274.269,                                    +
                       "Actual Rows": 1153798,                                           +
                       "Actual Loops": 1,                                                +
                       "Inner Unique": true,                                             +
                       "Merge Cond": "(mc.movie_id = t.id)",                             +
                       "Shared Hit Blocks": 6,                                           +
                       "Shared Read Blocks": 57775,                                      +
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
                           "Node Type": "Sort",                                          +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Startup Cost": 13135.84,                                     +
                           "Total Cost": 13208.98,                                       +
                           "Plan Rows": 941996,                                          +
                           "Plan Width": 4,                                              +
                           "Actual Startup Time": 2750.738,                              +
                           "Actual Total Time": 2905.753,                                +
                           "Actual Rows": 1153798,                                       +
                           "Actual Loops": 1,                                            +
                           "Sort Key": ["mc.movie_id"],                                  +
                           "Sort Method": "quicksort",                                   +
                           "Sort Space Used": 103237,                                    +
                           "Sort Space Type": "Memory",                                  +
                           "Shared Hit Blocks": 5,                                       +
                           "Shared Read Blocks": 21778,                                  +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0,                                     +
                           "Plans": [                                                    +
                             {                                                           +
                               "Node Type": "Merge Join",                                +
                               "Parent Relationship": "Outer",                           +
                               "Parallel Aware": false,                                  +
                               "Join Type": "Inner",                                     +
                               "Startup Cost": 9749.56,                                  +
                               "Total Cost": 10233.01,                                   +
                               "Plan Rows": 941996,                                      +
                               "Plan Width": 4,                                          +
                               "Actual Startup Time": 1588.945,                          +
                               "Actual Total Time": 2324.078,                            +
                               "Actual Rows": 1153798,                                   +
                               "Actual Loops": 1,                                        +
                               "Inner Unique": false,                                    +
                               "Merge Cond": "(cn.id = mc.company_id)",                  +
                               "Shared Hit Blocks": 5,                                   +
                               "Shared Read Blocks": 21778,                              +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0,                                 +
                               "Plans": [                                                +
                                 {                                                       +
                                   "Node Type": "Sort",                                  +
                                   "Parent Relationship": "Outer",                       +
                                   "Parallel Aware": false,                              +
                                   "Startup Cost": 344.10,                               +
                                   "Total Cost": 350.69,                                 +
                                   "Plan Rows": 84843,                                   +
                                   "Plan Width": 4,                                      +
                                   "Actual Startup Time": 213.598,                       +
                                   "Actual Total Time": 225.595,                         +
                                   "Actual Rows": 84843,                                 +
                                   "Actual Loops": 1,                                    +
                                   "Sort Key": ["cn.id"],                                +
                                   "Sort Method": "quicksort",                           +
                                   "Sort Space Used": 7050,                              +
                                   "Sort Space Type": "Memory",                          +
                                   "Shared Hit Blocks": 2,                               +
                                   "Shared Read Blocks": 2992,                           +
                                   "Shared Dirtied Blocks": 0,                           +
                                   "Shared Written Blocks": 0,                           +
                                   "Local Hit Blocks": 0,                                +
                                   "Local Read Blocks": 0,                               +
                                   "Local Dirtied Blocks": 0,                            +
                                   "Local Written Blocks": 0,                            +
                                   "Temp Read Blocks": 0,                                +
                                   "Temp Written Blocks": 0,                             +
                                   "Plans": [                                            +
                                     {                                                   +
                                       "Node Type": "Seq Scan",                          +
                                       "Parent Relationship": "Outer",                   +
                                       "Parallel Aware": false,                          +
                                       "Relation Name": "company_name",                  +
                                       "Alias": "cn",                                    +
                                       "Startup Cost": 0.00,                             +
                                       "Total Cost": 128.41,                             +
                                       "Plan Rows": 84843,                               +
                                       "Plan Width": 4,                                  +
                                       "Actual Startup Time": 3.577,                     +
                                       "Actual Total Time": 164.853,                     +
                                       "Actual Rows": 84843,                             +
                                       "Actual Loops": 1,                                +
                                       "Filter": "((country_code)::text = '[us]'::text)",+
                                       "Rows Removed by Filter": 150154,                 +
                                       "Shared Hit Blocks": 2,                           +
                                       "Shared Read Blocks": 2992,                       +
                                       "Shared Dirtied Blocks": 0,                       +
                                       "Shared Written Blocks": 0,                       +
                                       "Local Hit Blocks": 0,                            +
                                       "Local Read Blocks": 0,                           +
                                       "Local Dirtied Blocks": 0,                        +
                                       "Local Written Blocks": 0,                        +
                                       "Temp Read Blocks": 0,                            +
                                       "Temp Written Blocks": 0                          +
                                     }                                                   +
                                   ]                                                     +
                                 },                                                      +
                                 {                                                       +
                                   "Node Type": "Sort",                                  +
                                   "Parent Relationship": "Inner",                       +
                                   "Parallel Aware": false,                              +
                                   "Startup Cost": 9405.45,                              +
                                   "Total Cost": 9608.03,                                +
                                   "Plan Rows": 2609129,                                 +
                                   "Plan Width": 8,                                      +
                                   "Actual Startup Time": 1375.337,                      +
                                   "Actual Total Time": 1698.890,                        +
                                   "Actual Rows": 2609129,                               +
                                   "Actual Loops": 1,                                    +
                                   "Sort Key": ["mc.company_id"],                        +
                                   "Sort Method": "quicksort",                           +
                                   "Sort Space Used": 220607,                            +
                                   "Sort Space Type": "Memory",                          +
                                   "Shared Hit Blocks": 3,                               +
                                   "Shared Read Blocks": 18786,                          +
                                   "Shared Dirtied Blocks": 0,                           +
                                   "Shared Written Blocks": 0,                           +
                                   "Local Hit Blocks": 0,                                +
                                   "Local Read Blocks": 0,                               +
                                   "Local Dirtied Blocks": 0,                            +
                                   "Local Written Blocks": 0,                            +
                                   "Temp Read Blocks": 0,                                +
                                   "Temp Written Blocks": 0,                             +
                                   "Plans": [                                            +
                                     {                                                   +
                                       "Node Type": "Seq Scan",                          +
                                       "Parent Relationship": "Outer",                   +
                                       "Parallel Aware": false,                          +
                                       "Relation Name": "movie_companies",               +
                                       "Alias": "mc",                                    +
                                       "Startup Cost": 0.00,                             +
                                       "Total Cost": 769.75,                             +
                                       "Plan Rows": 2609129,                             +
                                       "Plan Width": 8,                                  +
                                       "Actual Startup Time": 0.011,                     +
                                       "Actual Total Time": 516.023,                     +
                                       "Actual Rows": 2609129,                           +
                                       "Actual Loops": 1,                                +
                                       "Shared Hit Blocks": 3,                           +
                                       "Shared Read Blocks": 18786,                      +
                                       "Shared Dirtied Blocks": 0,                       +
                                       "Shared Written Blocks": 0,                       +
                                       "Local Hit Blocks": 0,                            +
                                       "Local Read Blocks": 0,                           +
                                       "Local Dirtied Blocks": 0,                        +
                                       "Local Written Blocks": 0,                        +
                                       "Temp Read Blocks": 0,                            +
                                       "Temp Written Blocks": 0                          +
                                     }                                                   +
                                   ]                                                     +
                                 }                                                       +
                               ]                                                         +
                             }                                                           +
                           ]                                                             +
                         },                                                              +
                         {                                                               +
                           "Node Type": "Sort",                                          +
                           "Parent Relationship": "Inner",                               +
                           "Parallel Aware": false,                                      +
                           "Startup Cost": 9654.35,                                      +
                           "Total Cost": 9850.65,                                        +
                           "Plan Rows": 2528312,                                         +
                           "Plan Width": 21,                                             +
                           "Actual Startup Time": 2330.247,                              +
                           "Actual Total Time": 2674.518,                                +
                           "Actual Rows": 2525744,                                       +
                           "Actual Loops": 1,                                            +
                           "Sort Key": ["t.id"],                                         +
                           "Sort Method": "quicksort",                                   +
                           "Sort Space Used": 275055,                                    +
                           "Sort Space Type": "Memory",                                  +
                           "Shared Hit Blocks": 1,                                       +
                           "Shared Read Blocks": 35997,                                  +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0,                                     +
                           "Plans": [                                                    +
                             {                                                           +
                               "Node Type": "Seq Scan",                                  +
                               "Parent Relationship": "Outer",                           +
                               "Parallel Aware": false,                                  +
                               "Relation Name": "title",                                 +
                               "Alias": "t",                                             +
                               "Startup Cost": 0.00,                                     +
                               "Total Cost": 1303.96,                                    +
                               "Plan Rows": 2528312,                                     +
                               "Plan Width": 21,                                         +
                               "Actual Startup Time": 19.580,                            +
                               "Actual Total Time": 1026.476,                            +
                               "Actual Rows": 2528312,                                   +
                               "Actual Loops": 1,                                        +
                               "Shared Hit Blocks": 1,                                   +
                               "Shared Read Blocks": 35997,                              +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0                                  +
                             }                                                           +
                           ]                                                             +
                         }                                                               +
                       ]                                                                 +
                     },                                                                  +
                     {                                                                   +
                       "Node Type": "Sort",                                              +
                       "Parent Relationship": "Inner",                                   +
                       "Parallel Aware": false,                                          +
                       "Startup Cost": 167689.83,                                        +
                       "Total Cost": 167924.33,                                          +
                       "Plan Rows": 3020362,                                             +
                       "Plan Width": 8,                                                  +
                       "Actual Startup Time": 20766.751,                                 +
                       "Actual Total Time": 21101.711,                                   +
                       "Actual Rows": 3863824,                                           +
                       "Actual Loops": 1,                                                +
                       "Sort Key": ["ci.movie_id"],                                      +
                       "Sort Method": "quicksort",                                       +
                       "Sort Space Used": 226224,                                        +
                       "Sort Space Type": "Memory",                                      +
                       "Shared Hit Blocks": 5,                                           +
                       "Shared Read Blocks": 252650,                                     +
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
                           "Node Type": "Merge Join",                                    +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Join Type": "Inner",                                         +
                           "Startup Cost": 151757.16,                                    +
                           "Total Cost": 157594.00,                                      +
                           "Plan Rows": 3020362,                                         +
                           "Plan Width": 8,                                              +
                           "Actual Startup Time": 19049.084,                             +
                           "Actual Total Time": 19716.732,                               +
                           "Actual Rows": 2728943,                                       +
                           "Actual Loops": 1,                                            +
                           "Inner Unique": true,                                         +
                           "Merge Cond": "(ci.role_id = rt.id)",                         +
                           "Shared Hit Blocks": 5,                                       +
                           "Shared Read Blocks": 252650,                                 +
                           "Shared Dirtied Blocks": 0,                                   +
                           "Shared Written Blocks": 0,                                   +
                           "Local Hit Blocks": 0,                                        +
                           "Local Read Blocks": 0,                                       +
                           "Local Dirtied Blocks": 0,                                    +
                           "Local Written Blocks": 0,                                    +
                           "Temp Read Blocks": 0,                                        +
                           "Temp Written Blocks": 0,                                     +
                           "Plans": [                                                    +
                             {                                                           +
                               "Node Type": "Sort",                                      +
                               "Parent Relationship": "Outer",                           +
                               "Parallel Aware": false,                                  +
                               "Startup Cost": 151757.13,                                +
                               "Total Cost": 154571.13,                                  +
                               "Plan Rows": 36244344,                                    +
                               "Plan Width": 12,                                         +
                               "Actual Startup Time": 15381.966,                         +
                               "Actual Total Time": 16562.324,                           +
                               "Actual Rows": 26859642,                                  +
                               "Actual Loops": 1,                                        +
                               "Sort Key": ["ci.role_id"],                               +
                               "Sort Method": "quicksort",                               +
                               "Sort Space Used": 3271818,                               +
                               "Sort Space Type": "Memory",                              +
                               "Shared Hit Blocks": 4,                                   +
                               "Shared Read Blocks": 252650,                             +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0,                                 +
                               "Plans": [                                                +
                                 {                                                       +
                                   "Node Type": "Seq Scan",                              +
                                   "Parent Relationship": "Outer",                       +
                                   "Parallel Aware": false,                              +
                                   "Relation Name": "cast_info",                         +
                                   "Alias": "ci",                                        +
                                   "Startup Cost": 0.00,                                 +
                                   "Total Cost": 10431.00,                               +
                                   "Plan Rows": 36244344,                                +
                                   "Plan Width": 12,                                     +
                                   "Actual Startup Time": 0.015,                         +
                                   "Actual Total Time": 7562.542,                        +
                                   "Actual Rows": 36244344,                              +
                                   "Actual Loops": 1,                                    +
                                   "Shared Hit Blocks": 4,                               +
                                   "Shared Read Blocks": 252650,                         +
                                   "Shared Dirtied Blocks": 0,                           +
                                   "Shared Written Blocks": 0,                           +
                                   "Local Hit Blocks": 0,                                +
                                   "Local Read Blocks": 0,                               +
                                   "Local Dirtied Blocks": 0,                            +
                                   "Local Written Blocks": 0,                            +
                                   "Temp Read Blocks": 0,                                +
                                   "Temp Written Blocks": 0                              +
                                 }                                                       +
                               ]                                                         +
                             },                                                          +
                             {                                                           +
                               "Node Type": "Sort",                                      +
                               "Parent Relationship": "Inner",                           +
                               "Parallel Aware": false,                                  +
                               "Startup Cost": 0.03,                                     +
                               "Total Cost": 0.03,                                       +
                               "Plan Rows": 1,                                           +
                               "Plan Width": 4,                                          +
                               "Actual Startup Time": 0.025,                             +
                               "Actual Total Time": 0.026,                               +
                               "Actual Rows": 1,                                         +
                               "Actual Loops": 1,                                        +
                               "Sort Key": ["rt.id"],                                    +
                               "Sort Method": "quicksort",                               +
                               "Sort Space Used": 25,                                    +
                               "Sort Space Type": "Memory",                              +
                               "Shared Hit Blocks": 1,                                   +
                               "Shared Read Blocks": 0,                                  +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0,                                 +
                               "Plans": [                                                +
                                 {                                                       +
                                   "Node Type": "Seq Scan",                              +
                                   "Parent Relationship": "Outer",                       +
                                   "Parallel Aware": false,                              +
                                   "Relation Name": "role_type",                         +
                                   "Alias": "rt",                                        +
                                   "Startup Cost": 0.00,                                 +
                                   "Total Cost": 0.03,                                   +
                                   "Plan Rows": 1,                                       +
                                   "Plan Width": 4,                                      +
                                   "Actual Startup Time": 0.014,                         +
                                   "Actual Total Time": 0.016,                           +
                                   "Actual Rows": 1,                                     +
                                   "Actual Loops": 1,                                    +
                                   "Filter": "((role)::text = 'writer'::text)",          +
                                   "Rows Removed by Filter": 11,                         +
                                   "Shared Hit Blocks": 1,                               +
                                   "Shared Read Blocks": 0,                              +
                                   "Shared Dirtied Blocks": 0,                           +
                                   "Shared Written Blocks": 0,                           +
                                   "Local Hit Blocks": 0,                                +
                                   "Local Read Blocks": 0,                               +
                                   "Local Dirtied Blocks": 0,                            +
                                   "Local Written Blocks": 0,                            +
                                   "Temp Read Blocks": 0,                                +
                                   "Temp Written Blocks": 0                              +
                                 }                                                       +
                               ]                                                         +
                             }                                                           +
                           ]                                                             +
                         }                                                               +
                       ]                                                                 +
                     }                                                                   +
                   ]                                                                     +
                 }                                                                       +
               ]                                                                         +
             }                                                                           +
           ]                                                                             +
         }                                                                               +
       ]                                                                                 +
     },                                                                                  +
     "Planning Time": 4678.380,                                                          +
     "Triggers": [                                                                       +
     ],                                                                                  +
     "Execution Time": 35676.246                                                         +
   }                                                                                     +
 ]
(1 row)
