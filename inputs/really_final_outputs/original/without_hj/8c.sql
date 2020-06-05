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
       "Actual Startup Time": 39770.447,                                                 +
       "Actual Total Time": 39770.447,                                                   +
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
           "Actual Startup Time": 37282.449,                                             +
           "Actual Total Time": 39155.240,                                               +
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
               "Actual Startup Time": 5249.014,                                          +
               "Actual Total Time": 6158.680,                                            +
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
                   "Actual Startup Time": 930.007,                                       +
                   "Actual Total Time": 1000.874,                                        +
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
                       "Actual Startup Time": 0.015,                                     +
                       "Actual Total Time": 473.370,                                     +
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
                   "Actual Startup Time": 4318.994,                                      +
                   "Actual Total Time": 4608.241,                                        +
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
                       "Actual Startup Time": 10.052,                                    +
                       "Actual Total Time": 2458.805,                                    +
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
               "Actual Startup Time": 32033.414,                                         +
               "Actual Total Time": 32351.893,                                           +
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
                   "Startup Cost": 51451.06,                                             +
                   "Total Cost": 52673.97,                                               +
                   "Plan Rows": 2094450,                                                 +
                   "Plan Width": 21,                                                     +
                   "Actual Startup Time": 29068.369,                                     +
                   "Actual Total Time": 31354.352,                                       +
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
                       "Actual Startup Time": 9916.307,                                  +
                       "Actual Total Time": 11106.481,                                   +
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
                           "Actual Startup Time": 7574.152,                              +
                           "Actual Total Time": 7728.295,                                +
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
                               "Actual Startup Time": 6418.410,                          +
                               "Actual Total Time": 7148.112,                            +
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
                                   "Actual Startup Time": 476.872,                       +
                                   "Actual Total Time": 488.983,                         +
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
                                       "Actual Startup Time": 30.335,                    +
                                       "Actual Total Time": 412.003,                     +
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
                                   "Actual Startup Time": 5941.528,                      +
                                   "Actual Total Time": 6260.707,                        +
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
                                       "Actual Startup Time": 0.017,                     +
                                       "Actual Total Time": 4528.908,                    +
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
                           "Actual Startup Time": 2342.145,                              +
                           "Actual Total Time": 2682.815,                                +
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
                               "Actual Startup Time": 47.662,                            +
                               "Actual Total Time": 1033.239,                            +
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
                       "Actual Startup Time": 19152.043,                                 +
                       "Actual Total Time": 19481.520,                                   +
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
                           "Node Type": "Nested Loop",                                   +
                           "Parent Relationship": "Outer",                               +
                           "Parallel Aware": false,                                      +
                           "Join Type": "Inner",                                         +
                           "Startup Cost": 0.00,                                         +
                           "Total Cost": 18565.03,                                       +
                           "Plan Rows": 3020362,                                         +
                           "Plan Width": 8,                                              +
                           "Actual Startup Time": 12150.825,                             +
                           "Actual Total Time": 18067.932,                               +
                           "Actual Rows": 2728943,                                       +
                           "Actual Loops": 1,                                            +
                           "Inner Unique": true,                                         +
                           "Join Filter": "(ci.role_id = rt.id)",                        +
                           "Rows Removed by Join Filter": 33515401,                      +
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
                               "Actual Startup Time": 0.013,                             +
                               "Actual Total Time": 4325.534,                            +
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
                                   "Actual Startup Time": 0.006,                         +
                                   "Actual Total Time": 0.008,                           +
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
     "Planning Time": 4495.974,                                                          +
     "Triggers": [                                                                       +
     ],                                                                                  +
     "Execution Time": 39853.847                                                         +
   }                                                                                     +
 ]
(1 row)

