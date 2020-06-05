                                        QUERY PLAN                                        
------------------------------------------------------------------------------------------
 [                                                                                       +
   {                                                                                     +
     "Plan": {                                                                           +
       "Node Type": "Aggregate",                                                         +
       "Strategy": "Plain",                                                              +
       "Partial Mode": "Simple",                                                         +
       "Parallel Aware": false,                                                          +
       "Startup Cost": 80476.77,                                                         +
       "Total Cost": 80476.77,                                                           +
       "Plan Rows": 1,                                                                   +
       "Plan Width": 64,                                                                 +
       "Actual Startup Time": 30253.871,                                                 +
       "Actual Total Time": 30253.871,                                                   +
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
           "Startup Cost": 78954.82,                                                     +
           "Total Cost": 80194.02,                                                       +
           "Plan Rows": 1820954,                                                         +
           "Plan Width": 33,                                                             +
           "Actual Startup Time": 29088.018,                                             +
           "Actual Total Time": 30144.978,                                               +
           "Actual Rows": 323005,                                                        +
           "Actual Loops": 1,                                                            +
           "Inner Unique": false,                                                        +
           "Merge Cond": "(an1.person_id = ci.person_id)",                               +
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
               "Actual Startup Time": 4292.736,                                          +
               "Actual Total Time": 5179.877,                                            +
               "Actual Rows": 688852,                                                    +
               "Actual Loops": 1,                                                        +
               "Inner Unique": true,                                                     +
               "Merge Cond": "(an1.person_id = n1.id)",                                  +
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
                   "Actual Startup Time": 803.416,                                       +
                   "Actual Total Time": 862.578,                                         +
                   "Actual Rows": 688852,                                                +
                   "Actual Loops": 1,                                                    +
                   "Sort Key": ["an1.person_id"],                                        +
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
                       "Alias": "an1",                                                   +
                       "Startup Cost": 0.00,                                             +
                       "Total Cost": 419.75,                                             +
                       "Plan Rows": 901343,                                              +
                       "Plan Width": 20,                                                 +
                       "Actual Startup Time": 0.015,                                     +
                       "Actual Total Time": 341.739,                                     +
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
                   "Actual Startup Time": 3489.308,                                      +
                   "Actual Total Time": 3757.831,                                        +
                   "Actual Rows": 3441946,                                               +
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
                       "Actual Startup Time": 19.984,                                    +
                       "Actual Total Time": 1641.374,                                    +
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
               "Startup Cost": 59503.09,                                                 +
               "Total Cost": 59665.70,                                                   +
               "Plan Rows": 2094450,                                                     +
               "Plan Width": 21,                                                         +
               "Actual Startup Time": 24795.204,                                         +
               "Actual Total Time": 24831.227,                                           +
               "Actual Rows": 445950,                                                    +
               "Actual Loops": 1,                                                        +
               "Sort Key": ["ci.person_id"],                                             +
               "Sort Method": "quicksort",                                               +
               "Sort Space Used": 31926,                                                 +
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
                   "Startup Cost": 51451.06,                                             +
                   "Total Cost": 52673.97,                                               +
                   "Plan Rows": 2094450,                                                 +
                   "Plan Width": 21,                                                     +
                   "Actual Startup Time": 23336.394,                                     +
                   "Actual Total Time": 24708.615,                                       +
                   "Actual Rows": 285538,                                                +
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
                       "Actual Startup Time": 5128.681,                                  +
                       "Actual Total Time": 6273.587,                                    +
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
                           "Actual Startup Time": 2804.158,                              +
                           "Actual Total Time": 2949.568,                                +
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
                               "Actual Startup Time": 1639.369,                          +
                               "Actual Total Time": 2377.374,                            +
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
                                   "Actual Startup Time": 263.008,                       +
                                   "Actual Total Time": 275.095,                         +
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
                                       "Actual Startup Time": 61.685,                    +
                                       "Actual Total Time": 223.092,                     +
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
                                   "Actual Startup Time": 1376.351,                      +
                                   "Actual Total Time": 1702.344,                        +
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
                                       "Actual Startup Time": 0.008,                     +
                                       "Actual Total Time": 531.090,                     +
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
                           "Actual Startup Time": 2324.511,                              +
                           "Actual Total Time": 2652.433,                                +
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
                               "Actual Startup Time": 15.936,                            +
                               "Actual Total Time": 1014.246,                            +
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
                       "Startup Cost": 28660.86,                                         +
                       "Total Cost": 28895.36,                                           +
                       "Plan Rows": 3020362,                                             +
                       "Plan Width": 8,                                                  +
                       "Actual Startup Time": 18207.705,                                 +
                       "Actual Total Time": 18245.781,                                   +
                       "Actual Rows": 461760,                                            +
                       "Actual Loops": 1,                                                +
                       "Sort Key": ["ci.movie_id"],                                      +
                       "Sort Method": "quicksort",                                       +
                       "Sort Space Used": 25245,                                         +
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
                           "Node Type": "Nested Loop",                                   +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Join Type": "Inner",                                         +
                           "Startup Cost": 0.00,                                         +
                           "Total Cost": 18565.03,                                       +
                           "Plan Rows": 3020362,                                         +
                           "Plan Width": 8,                                              +
                           "Actual Startup Time": 14281.109,                             +
                           "Actual Total Time": 18107.561,                               +
                           "Actual Rows": 276403,                                        +
                           "Actual Loops": 1,                                            +
                           "Inner Unique": true,                                         +
                           "Join Filter": "(ci.role_id = rt.id)",                        +
                           "Rows Removed by Join Filter": 35967941,                      +
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
                               "Node Type": "Seq Scan",                                  +
                               "Parent Relationship": "Outer",                           +
                               "Parallel Aware": false,                                  +
                               "Relation Name": "cast_info",                             +
                               "Alias": "ci",                                            +
                               "Startup Cost": 0.00,                                     +
                               "Total Cost": 10431.00,                                   +
                               "Plan Rows": 36244344,                                    +
                               "Plan Width": 12,                                         +
                               "Actual Startup Time": 0.014,                             +
                               "Actual Total Time": 4258.501,                            +
                               "Actual Rows": 36244344,                                  +
                               "Actual Loops": 1,                                        +
                               "Shared Hit Blocks": 4,                                   +
                               "Shared Read Blocks": 252650,                             +
                               "Shared Dirtied Blocks": 0,                               +
                               "Shared Written Blocks": 0,                               +
                               "Local Hit Blocks": 0,                                    +
                               "Local Read Blocks": 0,                                   +
                               "Local Dirtied Blocks": 0,                                +
                               "Local Written Blocks": 0,                                +
                               "Temp Read Blocks": 0,                                    +
                               "Temp Written Blocks": 0                                  +
                             },                                                          +
                             {                                                           +
                               "Node Type": "Materialize",                               +
                               "Parent Relationship": "Inner",                           +
                               "Parallel Aware": false,                                  +
                               "Startup Cost": 0.00,                                     +
                               "Total Cost": 0.03,                                       +
                               "Plan Rows": 1,                                           +
                               "Plan Width": 4,                                          +
                               "Actual Startup Time": 0.000,                             +
                               "Actual Total Time": 0.000,                               +
                               "Actual Rows": 1,                                         +
                               "Actual Loops": 36244344,                                 +
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
                                   "Actual Startup Time": 0.008,                         +
                                   "Actual Total Time": 0.009,                           +
                                   "Actual Rows": 1,                                     +
                                   "Actual Loops": 1,                                    +
                                   "Filter": "((role)::text = 'costume designer'::text)",+
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
     "Planning Time": 4573.076,                                                          +
     "Triggers": [                                                                       +
     ],                                                                                  +
     "Execution Time": 30323.676                                                         +
   }                                                                                     +
 ]
(1 row)

