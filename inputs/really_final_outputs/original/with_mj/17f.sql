                                                     QUERY PLAN                                                     
--------------------------------------------------------------------------------------------------------------------
 [                                                                                                                 +
   {                                                                                                               +
     "Plan": {                                                                                                     +
       "Node Type": "Aggregate",                                                                                   +
       "Strategy": "Plain",                                                                                        +
       "Partial Mode": "Simple",                                                                                   +
       "Parallel Aware": false,                                                                                    +
       "Startup Cost": 199362.95,                                                                                  +
       "Total Cost": 199362.95,                                                                                    +
       "Plan Rows": 1,                                                                                             +
       "Plan Width": 32,                                                                                           +
       "Actual Startup Time": 42139.837,                                                                           +
       "Actual Total Time": 42139.837,                                                                             +
       "Actual Rows": 1,                                                                                           +
       "Actual Loops": 1,                                                                                          +
       "Shared Hit Blocks": 18,                                                                                    +
       "Shared Read Blocks": 390492,                                                                               +
       "Shared Dirtied Blocks": 0,                                                                                 +
       "Shared Written Blocks": 0,                                                                                 +
       "Local Hit Blocks": 0,                                                                                      +
       "Local Read Blocks": 0,                                                                                     +
       "Local Dirtied Blocks": 0,                                                                                  +
       "Local Written Blocks": 0,                                                                                  +
       "Temp Read Blocks": 0,                                                                                      +
       "Temp Written Blocks": 0,                                                                                   +
       "Plans": [                                                                                                  +
         {                                                                                                         +
           "Node Type": "Merge Join",                                                                              +
           "Parent Relationship": "Outer",                                                                         +
           "Parallel Aware": false,                                                                                +
           "Join Type": "Inner",                                                                                   +
           "Startup Cost": 199326.38,                                                                              +
           "Total Cost": 199362.93,                                                                                +
           "Plan Rows": 278,                                                                                       +
           "Plan Width": 15,                                                                                       +
           "Actual Startup Time": 41494.363,                                                                       +
           "Actual Total Time": 41949.543,                                                                         +
           "Actual Rows": 1113120,                                                                                 +
           "Actual Loops": 1,                                                                                      +
           "Inner Unique": true,                                                                                   +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                +
           "Shared Hit Blocks": 18,                                                                                +
           "Shared Read Blocks": 390492,                                                                           +
           "Shared Dirtied Blocks": 0,                                                                             +
           "Shared Written Blocks": 0,                                                                             +
           "Local Hit Blocks": 0,                                                                                  +
           "Local Read Blocks": 0,                                                                                 +
           "Local Dirtied Blocks": 0,                                                                              +
           "Local Written Blocks": 0,                                                                              +
           "Temp Read Blocks": 0,                                                                                  +
           "Temp Written Blocks": 0,                                                                               +
           "Plans": [                                                                                              +
             {                                                                                                     +
               "Node Type": "Sort",                                                                                +
               "Parent Relationship": "Outer",                                                                     +
               "Parallel Aware": false,                                                                            +
               "Startup Cost": 198565.15,                                                                          +
               "Total Cost": 198565.17,                                                                            +
               "Plan Rows": 278,                                                                                   +
               "Plan Width": 19,                                                                                   +
               "Actual Startup Time": 41304.593,                                                                   +
               "Actual Total Time": 41454.096,                                                                     +
               "Actual Rows": 1113120,                                                                             +
               "Actual Loops": 1,                                                                                  +
               "Sort Key": ["mc.company_id"],                                                                      +
               "Sort Method": "quicksort",                                                                         +
               "Sort Space Used": 131201,                                                                          +
               "Sort Space Type": "Memory",                                                                        +
               "Shared Hit Blocks": 16,                                                                            +
               "Shared Read Blocks": 387500,                                                                       +
               "Shared Dirtied Blocks": 0,                                                                         +
               "Shared Written Blocks": 0,                                                                         +
               "Local Hit Blocks": 0,                                                                              +
               "Local Read Blocks": 0,                                                                             +
               "Local Dirtied Blocks": 0,                                                                          +
               "Local Written Blocks": 0,                                                                          +
               "Temp Read Blocks": 0,                                                                              +
               "Temp Written Blocks": 0,                                                                           +
               "Plans": [                                                                                          +
                 {                                                                                                 +
                   "Node Type": "Merge Join",                                                                      +
                   "Parent Relationship": "Outer",                                                                 +
                   "Parallel Aware": false,                                                                        +
                   "Join Type": "Inner",                                                                           +
                   "Startup Cost": 197767.36,                                                                      +
                   "Total Cost": 198564.80,                                                                        +
                   "Plan Rows": 278,                                                                               +
                   "Plan Width": 19,                                                                               +
                   "Actual Startup Time": 39616.314,                                                               +
                   "Actual Total Time": 40945.257,                                                                 +
                   "Actual Rows": 1113120,                                                                         +
                   "Actual Loops": 1,                                                                              +
                   "Inner Unique": false,                                                                          +
                   "Merge Cond": "(ci.movie_id = mc.movie_id)",                                                    +
                   "Shared Hit Blocks": 12,                                                                        +
                   "Shared Read Blocks": 387500,                                                                   +
                   "Shared Dirtied Blocks": 0,                                                                     +
                   "Shared Written Blocks": 0,                                                                     +
                   "Local Hit Blocks": 0,                                                                          +
                   "Local Read Blocks": 0,                                                                         +
                   "Local Dirtied Blocks": 0,                                                                      +
                   "Local Written Blocks": 0,                                                                      +
                   "Temp Read Blocks": 0,                                                                          +
                   "Temp Written Blocks": 0,                                                                       +
                   "Plans": [                                                                                      +
                     {                                                                                             +
                       "Node Type": "Merge Join",                                                                  +
                       "Parent Relationship": "Outer",                                                             +
                       "Parallel Aware": false,                                                                    +
                       "Join Type": "Inner",                                                                       +
                       "Startup Cost": 188361.90,                                                                  +
                       "Total Cost": 188754.17,                                                                    +
                       "Plan Rows": 145,                                                                           +
                       "Plan Width": 27,                                                                           +
                       "Actual Startup Time": 38139.173,                                                           +
                       "Actual Total Time": 38802.758,                                                             +
                       "Actual Rows": 149493,                                                                      +
                       "Actual Loops": 1,                                                                          +
                       "Inner Unique": true,                                                                       +
                       "Merge Cond": "(ci.movie_id = t.id)",                                                       +
                       "Shared Hit Blocks": 9,                                                                     +
                       "Shared Read Blocks": 368714,                                                               +
                       "Shared Dirtied Blocks": 0,                                                                 +
                       "Shared Written Blocks": 0,                                                                 +
                       "Local Hit Blocks": 0,                                                                      +
                       "Local Read Blocks": 0,                                                                     +
                       "Local Dirtied Blocks": 0,                                                                  +
                       "Local Written Blocks": 0,                                                                  +
                       "Temp Read Blocks": 0,                                                                      +
                       "Temp Written Blocks": 0,                                                                   +
                       "Plans": [                                                                                  +
                         {                                                                                         +
                           "Node Type": "Sort",                                                                    +
                           "Parent Relationship": "Outer",                                                         +
                           "Parallel Aware": false,                                                                +
                           "Startup Cost": 178707.55,                                                              +
                           "Total Cost": 178707.56,                                                                +
                           "Plan Rows": 145,                                                                       +
                           "Plan Width": 23,                                                                       +
                           "Actual Startup Time": 35834.659,                                                       +
                           "Actual Total Time": 35857.386,                                                         +
                           "Actual Rows": 149493,                                                                  +
                           "Actual Loops": 1,                                                                      +
                           "Sort Key": ["ci.movie_id"],                                                            +
                           "Sort Method": "quicksort",                                                             +
                           "Sort Space Used": 17811,                                                               +
                           "Sort Space Type": "Memory",                                                            +
                           "Shared Hit Blocks": 8,                                                                 +
                           "Shared Read Blocks": 332717,                                                           +
                           "Shared Dirtied Blocks": 0,                                                             +
                           "Shared Written Blocks": 0,                                                             +
                           "Local Hit Blocks": 0,                                                                  +
                           "Local Read Blocks": 0,                                                                 +
                           "Local Dirtied Blocks": 0,                                                              +
                           "Local Written Blocks": 0,                                                              +
                           "Temp Read Blocks": 0,                                                                  +
                           "Temp Written Blocks": 0,                                                               +
                           "Plans": [                                                                              +
                             {                                                                                     +
                               "Node Type": "Merge Join",                                                          +
                               "Parent Relationship": "Outer",                                                     +
                               "Parallel Aware": false,                                                            +
                               "Join Type": "Inner",                                                               +
                               "Startup Cost": 178627.02,                                                          +
                               "Total Cost": 178707.39,                                                            +
                               "Plan Rows": 145,                                                                   +
                               "Plan Width": 23,                                                                   +
                               "Actual Startup Time": 35346.561,                                                   +
                               "Actual Total Time": 35778.151,                                                     +
                               "Actual Rows": 149494,                                                              +
                               "Actual Loops": 1,                                                                  +
                               "Inner Unique": true,                                                               +
                               "Merge Cond": "(ci.person_id = n.id)",                                              +
                               "Shared Hit Blocks": 8,                                                             +
                               "Shared Read Blocks": 332717,                                                       +
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
                                   "Node Type": "Sort",                                                            +
                                   "Parent Relationship": "Outer",                                                 +
                                   "Parallel Aware": false,                                                        +
                                   "Startup Cost": 174706.56,                                                      +
                                   "Total Cost": 174706.65,                                                        +
                                   "Plan Rows": 1138,                                                              +
                                   "Plan Width": 12,                                                               +
                                   "Actual Startup Time": 32565.184,                                               +
                                   "Actual Total Time": 32715.179,                                                 +
                                   "Actual Rows": 1038393,                                                         +
                                   "Actual Loops": 1,                                                              +
                                   "Sort Key": ["ci.person_id"],                                                   +
                                   "Sort Method": "quicksort",                                                     +
                                   "Sort Space Used": 73251,                                                       +
                                   "Sort Space Type": "Memory",                                                    +
                                   "Shared Hit Blocks": 7,                                                         +
                                   "Shared Read Blocks": 277105,                                                   +
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
                                       "Startup Cost": 169076.72,                                                  +
                                       "Total Cost": 174704.77,                                                    +
                                       "Plan Rows": 1138,                                                          +
                                       "Plan Width": 12,                                                           +
                                       "Actual Startup Time": 23397.937,                                           +
                                       "Actual Total Time": 32149.359,                                             +
                                       "Actual Rows": 1038393,                                                     +
                                       "Actual Loops": 1,                                                          +
                                       "Inner Unique": false,                                                      +
                                       "Merge Cond": "(mk.movie_id = ci.movie_id)",                                +
                                       "Shared Hit Blocks": 7,                                                     +
                                       "Shared Read Blocks": 277105,                                               +
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
                                           "Startup Cost": 17319.56,                                               +
                                           "Total Cost": 17319.56,                                                 +
                                           "Plan Rows": 34,                                                        +
                                           "Plan Width": 4,                                                        +
                                           "Actual Startup Time": 2376.903,                                        +
                                           "Actual Total Time": 2383.542,                                          +
                                           "Actual Rows": 41840,                                                   +
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
                                               "Actual Startup Time": 2349.998,                                    +
                                               "Actual Total Time": 2363.091,                                      +
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
                                                   "Actual Startup Time": 30.313,                                  +
                                                   "Actual Total Time": 30.314,                                    +
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
                                                       "Actual Startup Time": 30.292,                              +
                                                       "Actual Total Time": 30.296,                                +
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
                                                   "Actual Startup Time": 2286.699,                                +
                                                   "Actual Total Time": 2310.362,                                  +
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
                                                       "Actual Startup Time": 0.019,                               +
                                                       "Actual Total Time": 826.303,                               +
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
                                         },                                                                        +
                                         {                                                                         +
                                           "Node Type": "Sort",                                                    +
                                           "Parent Relationship": "Inner",                                         +
                                           "Parallel Aware": false,                                                +
                                           "Startup Cost": 151757.13,                                              +
                                           "Total Cost": 154571.13,                                                +
                                           "Plan Rows": 36244344,                                                  +
                                           "Plan Width": 8,                                                        +
                                           "Actual Startup Time": 21020.165,                                       +
                                           "Actual Total Time": 25333.058,                                         +
                                           "Actual Rows": 36243485,                                                +
                                           "Actual Loops": 1,                                                      +
                                           "Sort Key": ["ci.movie_id"],                                            +
                                           "Sort Method": "quicksort",                                             +
                                           "Sort Space Used": 3271818,                                             +
                                           "Sort Space Type": "Memory",                                            +
                                           "Shared Hit Blocks": 4,                                                 +
                                           "Shared Read Blocks": 252650,                                           +
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
                                               "Node Type": "Seq Scan",                                            +
                                               "Parent Relationship": "Outer",                                     +
                                               "Parallel Aware": false,                                            +
                                               "Relation Name": "cast_info",                                       +
                                               "Alias": "ci",                                                      +
                                               "Startup Cost": 0.00,                                               +
                                               "Total Cost": 10431.00,                                             +
                                               "Plan Rows": 36244344,                                              +
                                               "Plan Width": 8,                                                    +
                                               "Actual Startup Time": 0.014,                                       +
                                               "Actual Total Time": 6871.128,                                      +
                                               "Actual Rows": 36244344,                                            +
                                               "Actual Loops": 1,                                                  +
                                               "Shared Hit Blocks": 4,                                             +
                                               "Shared Read Blocks": 252650,                                       +
                                               "Shared Dirtied Blocks": 0,                                         +
                                               "Shared Written Blocks": 0,                                         +
                                               "Local Hit Blocks": 0,                                              +
                                               "Local Read Blocks": 0,                                             +
                                               "Local Dirtied Blocks": 0,                                          +
                                               "Local Written Blocks": 0,                                          +
                                               "Temp Read Blocks": 0,                                              +
                                               "Temp Written Blocks": 0                                            +
                                             }                                                                     +
                                           ]                                                                       +
                                         }                                                                         +
                                       ]                                                                           +
                                     }                                                                             +
                                   ]                                                                               +
                                 },                                                                                +
                                 {                                                                                 +
                                   "Node Type": "Sort",                                                            +
                                   "Parent Relationship": "Inner",                                                 +
                                   "Parallel Aware": false,                                                        +
                                   "Startup Cost": 3920.46,                                                        +
                                   "Total Cost": 3961.60,                                                          +
                                   "Plan Rows": 529807,                                                            +
                                   "Plan Width": 19,                                                               +
                                   "Actual Startup Time": 2781.362,                                                +
                                   "Actual Total Time": 2840.958,                                                  +
                                   "Actual Rows": 522512,                                                          +
                                   "Actual Loops": 1,                                                              +
                                   "Sort Key": ["n.id"],                                                           +
                                   "Sort Method": "quicksort",                                                     +
                                   "Sort Space Used": 64291,                                                       +
                                   "Sort Space Type": "Memory",                                                    +
                                   "Shared Hit Blocks": 1,                                                         +
                                   "Shared Read Blocks": 55612,                                                    +
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
                                       "Node Type": "Seq Scan",                                                    +
                                       "Parent Relationship": "Outer",                                             +
                                       "Parallel Aware": false,                                                    +
                                       "Relation Name": "name",                                                    +
                                       "Alias": "n",                                                               +
                                       "Startup Cost": 0.00,                                                       +
                                       "Total Cost": 2356.12,                                                      +
                                       "Plan Rows": 529807,                                                        +
                                       "Plan Width": 19,                                                           +
                                       "Actual Startup Time": 22.504,                                              +
                                       "Actual Total Time": 2480.197,                                              +
                                       "Actual Rows": 536716,                                                      +
                                       "Actual Loops": 1,                                                          +
                                       "Filter": "(name ~~ '%B%'::text)",                                          +
                                       "Rows Removed by Filter": 3630775,                                          +
                                       "Shared Hit Blocks": 1,                                                     +
                                       "Shared Read Blocks": 55612,                                                +
                                       "Shared Dirtied Blocks": 0,                                                 +
                                       "Shared Written Blocks": 0,                                                 +
                                       "Local Hit Blocks": 0,                                                      +
                                       "Local Read Blocks": 0,                                                     +
                                       "Local Dirtied Blocks": 0,                                                  +
                                       "Local Written Blocks": 0,                                                  +
                                       "Temp Read Blocks": 0,                                                      +
                                       "Temp Written Blocks": 0                                                    +
                                     }                                                                             +
                                   ]                                                                               +
                                 }                                                                                 +
                               ]                                                                                   +
                             }                                                                                     +
                           ]                                                                                       +
                         },                                                                                        +
                         {                                                                                         +
                           "Node Type": "Sort",                                                                    +
                           "Parent Relationship": "Inner",                                                         +
                           "Parallel Aware": false,                                                                +
                           "Startup Cost": 9654.35,                                                                +
                           "Total Cost": 9850.65,                                                                  +
                           "Plan Rows": 2528312,                                                                   +
                           "Plan Width": 4,                                                                        +
                           "Actual Startup Time": 2304.405,                                                        +
                           "Actual Total Time": 2624.940,                                                          +
                           "Actual Rows": 2525756,                                                                 +
                           "Actual Loops": 1,                                                                      +
                           "Sort Key": ["t.id"],                                                                   +
                           "Sort Method": "quicksort",                                                             +
                           "Sort Space Used": 216819,                                                              +
                           "Sort Space Type": "Memory",                                                            +
                           "Shared Hit Blocks": 1,                                                                 +
                           "Shared Read Blocks": 35997,                                                            +
                           "Shared Dirtied Blocks": 0,                                                             +
                           "Shared Written Blocks": 0,                                                             +
                           "Local Hit Blocks": 0,                                                                  +
                           "Local Read Blocks": 0,                                                                 +
                           "Local Dirtied Blocks": 0,                                                              +
                           "Local Written Blocks": 0,                                                              +
                           "Temp Read Blocks": 0,                                                                  +
                           "Temp Written Blocks": 0,                                                               +
                           "Plans": [                                                                              +
                             {                                                                                     +
                               "Node Type": "Seq Scan",                                                            +
                               "Parent Relationship": "Outer",                                                     +
                               "Parallel Aware": false,                                                            +
                               "Relation Name": "title",                                                           +
                               "Alias": "t",                                                                       +
                               "Startup Cost": 0.00,                                                               +
                               "Total Cost": 1303.96,                                                              +
                               "Plan Rows": 2528312,                                                               +
                               "Plan Width": 4,                                                                    +
                               "Actual Startup Time": 9.272,                                                       +
                               "Actual Total Time": 1075.196,                                                      +
                               "Actual Rows": 2528312,                                                             +
                               "Actual Loops": 1,                                                                  +
                               "Shared Hit Blocks": 1,                                                             +
                               "Shared Read Blocks": 35997,                                                        +
                               "Shared Dirtied Blocks": 0,                                                         +
                               "Shared Written Blocks": 0,                                                         +
                               "Local Hit Blocks": 0,                                                              +
                               "Local Read Blocks": 0,                                                             +
                               "Local Dirtied Blocks": 0,                                                          +
                               "Local Written Blocks": 0,                                                          +
                               "Temp Read Blocks": 0,                                                              +
                               "Temp Written Blocks": 0                                                            +
                             }                                                                                     +
                           ]                                                                                       +
                         }                                                                                         +
                       ]                                                                                           +
                     },                                                                                            +
                     {                                                                                             +
                       "Node Type": "Sort",                                                                        +
                       "Parent Relationship": "Inner",                                                             +
                       "Parallel Aware": false,                                                                    +
                       "Startup Cost": 9405.45,                                                                    +
                       "Total Cost": 9608.03,                                                                      +
                       "Plan Rows": 2609129,                                                                       +
                       "Plan Width": 8,                                                                            +
                       "Actual Startup Time": 1476.768,                                                            +
                       "Actual Total Time": 1674.657,                                                              +
                       "Actual Rows": 3595354,                                                                     +
                       "Actual Loops": 1,                                                                          +
                       "Sort Key": ["mc.movie_id"],                                                                +
                       "Sort Method": "quicksort",                                                                 +
                       "Sort Space Used": 220607,                                                                  +
                       "Sort Space Type": "Memory",                                                                +
                       "Shared Hit Blocks": 3,                                                                     +
                       "Shared Read Blocks": 18786,                                                                +
                       "Shared Dirtied Blocks": 0,                                                                 +
                       "Shared Written Blocks": 0,                                                                 +
                       "Local Hit Blocks": 0,                                                                      +
                       "Local Read Blocks": 0,                                                                     +
                       "Local Dirtied Blocks": 0,                                                                  +
                       "Local Written Blocks": 0,                                                                  +
                       "Temp Read Blocks": 0,                                                                      +
                       "Temp Written Blocks": 0,                                                                   +
                       "Plans": [                                                                                  +
                         {                                                                                         +
                           "Node Type": "Seq Scan",                                                                +
                           "Parent Relationship": "Outer",                                                         +
                           "Parallel Aware": false,                                                                +
                           "Relation Name": "movie_companies",                                                     +
                           "Alias": "mc",                                                                          +
                           "Startup Cost": 0.00,                                                                   +
                           "Total Cost": 769.75,                                                                   +
                           "Plan Rows": 2609129,                                                                   +
                           "Plan Width": 8,                                                                        +
                           "Actual Startup Time": 0.015,                                                           +
                           "Actual Total Time": 544.730,                                                           +
                           "Actual Rows": 2609129,                                                                 +
                           "Actual Loops": 1,                                                                      +
                           "Shared Hit Blocks": 3,                                                                 +
                           "Shared Read Blocks": 18786,                                                            +
                           "Shared Dirtied Blocks": 0,                                                             +
                           "Shared Written Blocks": 0,                                                             +
                           "Local Hit Blocks": 0,                                                                  +
                           "Local Read Blocks": 0,                                                                 +
                           "Local Dirtied Blocks": 0,                                                              +
                           "Local Written Blocks": 0,                                                              +
                           "Temp Read Blocks": 0,                                                                  +
                           "Temp Written Blocks": 0                                                                +
                         }                                                                                         +
                       ]                                                                                           +
                     }                                                                                             +
                   ]                                                                                               +
                 }                                                                                                 +
               ]                                                                                                   +
             },                                                                                                    +
             {                                                                                                     +
               "Node Type": "Sort",                                                                                +
               "Parent Relationship": "Inner",                                                                     +
               "Parallel Aware": false,                                                                            +
               "Startup Cost": 761.23,                                                                             +
               "Total Cost": 779.47,                                                                               +
               "Plan Rows": 234997,                                                                                +
               "Plan Width": 4,                                                                                    +
               "Actual Startup Time": 189.763,                                                                     +
               "Actual Total Time": 219.020,                                                                       +
               "Actual Rows": 234933,                                                                              +
               "Actual Loops": 1,                                                                                  +
               "Sort Key": ["cn.id"],                                                                              +
               "Sort Method": "quicksort",                                                                         +
               "Sort Space Used": 17160,                                                                           +
               "Sort Space Type": "Memory",                                                                        +
               "Shared Hit Blocks": 2,                                                                             +
               "Shared Read Blocks": 2992,                                                                         +
               "Shared Dirtied Blocks": 0,                                                                         +
               "Shared Written Blocks": 0,                                                                         +
               "Local Hit Blocks": 0,                                                                              +
               "Local Read Blocks": 0,                                                                             +
               "Local Dirtied Blocks": 0,                                                                          +
               "Local Written Blocks": 0,                                                                          +
               "Temp Read Blocks": 0,                                                                              +
               "Temp Written Blocks": 0,                                                                           +
               "Plans": [                                                                                          +
                 {                                                                                                 +
                   "Node Type": "Seq Scan",                                                                        +
                   "Parent Relationship": "Outer",                                                                 +
                   "Parallel Aware": false,                                                                        +
                   "Relation Name": "company_name",                                                                +
                   "Alias": "cn",                                                                                  +
                   "Startup Cost": 0.00,                                                                           +
                   "Total Cost": 110.16,                                                                           +
                   "Plan Rows": 234997,                                                                            +
                   "Plan Width": 4,                                                                                +
                   "Actual Startup Time": 6.094,                                                                   +
                   "Actual Total Time": 85.575,                                                                    +
                   "Actual Rows": 234997,                                                                          +
                   "Actual Loops": 1,                                                                              +
                   "Shared Hit Blocks": 2,                                                                         +
                   "Shared Read Blocks": 2992,                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                     +
                   "Shared Written Blocks": 0,                                                                     +
                   "Local Hit Blocks": 0,                                                                          +
                   "Local Read Blocks": 0,                                                                         +
                   "Local Dirtied Blocks": 0,                                                                      +
                   "Local Written Blocks": 0,                                                                      +
                   "Temp Read Blocks": 0,                                                                          +
                   "Temp Written Blocks": 0                                                                        +
                 }                                                                                                 +
               ]                                                                                                   +
             }                                                                                                     +
           ]                                                                                                       +
         }                                                                                                         +
       ]                                                                                                           +
     },                                                                                                            +
     "Planning Time": 6069.496,                                                                                    +
     "Triggers": [                                                                                                 +
     ],                                                                                                            +
     "Execution Time": 42313.955                                                                                   +
   }                                                                                                               +
 ]
(1 row)
