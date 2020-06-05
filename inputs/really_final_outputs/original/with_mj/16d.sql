                                                       QUERY PLAN                                                       
------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                     +
   {                                                                                                                   +
     "Plan": {                                                                                                         +
       "Node Type": "Aggregate",                                                                                       +
       "Strategy": "Plain",                                                                                            +
       "Partial Mode": "Simple",                                                                                       +
       "Parallel Aware": false,                                                                                        +
       "Startup Cost": 208982.56,                                                                                      +
       "Total Cost": 208982.56,                                                                                        +
       "Plan Rows": 1,                                                                                                 +
       "Plan Width": 64,                                                                                               +
       "Actual Startup Time": 37656.108,                                                                               +
       "Actual Total Time": 37656.108,                                                                                 +
       "Actual Rows": 1,                                                                                               +
       "Actual Loops": 1,                                                                                              +
       "Shared Hit Blocks": 22,                                                                                        +
       "Shared Read Blocks": 401883,                                                                                   +
       "Shared Dirtied Blocks": 0,                                                                                     +
       "Shared Written Blocks": 0,                                                                                     +
       "Local Hit Blocks": 0,                                                                                          +
       "Local Read Blocks": 0,                                                                                         +
       "Local Dirtied Blocks": 0,                                                                                      +
       "Local Written Blocks": 0,                                                                                      +
       "Temp Read Blocks": 0,                                                                                          +
       "Temp Written Blocks": 0,                                                                                       +
       "Plans": [                                                                                                      +
         {                                                                                                             +
           "Node Type": "Merge Join",                                                                                  +
           "Parent Relationship": "Outer",                                                                             +
           "Parallel Aware": false,                                                                                    +
           "Join Type": "Inner",                                                                                       +
           "Startup Cost": 208215.36,                                                                                  +
           "Total Cost": 208982.53,                                                                                    +
           "Plan Rows": 188,                                                                                           +
           "Plan Width": 33,                                                                                           +
           "Actual Startup Time": 36555.997,                                                                           +
           "Actual Total Time": 37586.803,                                                                             +
           "Actual Rows": 249455,                                                                                      +
           "Actual Loops": 1,                                                                                          +
           "Inner Unique": true,                                                                                       +
           "Merge Cond": "(an.person_id = n.id)",                                                                      +
           "Shared Hit Blocks": 22,                                                                                    +
           "Shared Read Blocks": 401883,                                                                               +
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
               "Startup Cost": 191952.03,                                                                              +
               "Total Cost": 192072.04,                                                                                +
               "Plan Rows": 188,                                                                                       +
               "Plan Width": 41,                                                                                       +
               "Actual Startup Time": 33062.409,                                                                       +
               "Actual Total Time": 33333.739,                                                                         +
               "Actual Rows": 249455,                                                                                  +
               "Actual Loops": 1,                                                                                      +
               "Inner Unique": false,                                                                                  +
               "Merge Cond": "(ci.person_id = an.person_id)",                                                          +
               "Shared Hit Blocks": 20,                                                                                +
               "Shared Read Blocks": 346272,                                                                           +
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
                   "Startup Cost": 188763.63,                                                                          +
                   "Total Cost": 188763.65,                                                                            +
                   "Plan Rows": 216,                                                                                   +
                   "Plan Width": 21,                                                                                   +
                   "Actual Startup Time": 32301.987,                                                                   +
                   "Actual Total Time": 32326.541,                                                                     +
                   "Actual Rows": 169273,                                                                              +
                   "Actual Loops": 1,                                                                                  +
                   "Sort Key": ["ci.person_id"],                                                                       +
                   "Sort Method": "quicksort",                                                                         +
                   "Sort Space Used": 19262,                                                                           +
                   "Sort Space Type": "Memory",                                                                        +
                   "Shared Hit Blocks": 18,                                                                            +
                   "Shared Read Blocks": 334879,                                                                       +
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
                       "Startup Cost": 183027.90,                                                                      +
                       "Total Cost": 188763.37,                                                                        +
                       "Plan Rows": 216,                                                                               +
                       "Plan Width": 21,                                                                               +
                       "Actual Startup Time": 27360.855,                                                               +
                       "Actual Total Time": 32227.235,                                                                 +
                       "Actual Rows": 169273,                                                                          +
                       "Actual Loops": 1,                                                                              +
                       "Inner Unique": false,                                                                          +
                       "Merge Cond": "(t.id = ci.movie_id)",                                                           +
                       "Shared Hit Blocks": 14,                                                                        +
                       "Shared Read Blocks": 334879,                                                                   +
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
                           "Startup Cost": 31270.77,                                                                   +
                           "Total Cost": 31378.22,                                                                     +
                           "Plan Rows": 19,                                                                            +
                           "Plan Width": 29,                                                                           +
                           "Actual Startup Time": 6396.668,                                                            +
                           "Actual Total Time": 6608.854,                                                              +
                           "Actual Rows": 6766,                                                                        +
                           "Actual Loops": 1,                                                                          +
                           "Inner Unique": true,                                                                       +
                           "Merge Cond": "(mk.movie_id = t.id)",                                                       +
                           "Shared Hit Blocks": 10,                                                                    +
                           "Shared Read Blocks": 82229,                                                                +
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
                               "Startup Cost": 27487.78,                                                               +
                               "Total Cost": 27487.78,                                                                 +
                               "Plan Rows": 68,                                                                        +
                               "Plan Width": 8,                                                                        +
                               "Actual Startup Time": 4531.619,                                                        +
                               "Actual Total Time": 4540.012,                                                          +
                               "Actual Rows": 68316,                                                                   +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["mc.movie_id"],                                                            +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 6275,                                                                +
                               "Sort Space Type": "Memory",                                                            +
                               "Shared Hit Blocks": 8,                                                                 +
                               "Shared Read Blocks": 46233,                                                            +
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
                                   "Startup Cost": 27474.50,                                                           +
                                   "Total Cost": 27487.71,                                                             +
                                   "Plan Rows": 68,                                                                    +
                                   "Plan Width": 8,                                                                    +
                                   "Actual Startup Time": 4447.132,                                                    +
                                   "Actual Total Time": 4507.999,                                                      +
                                   "Actual Rows": 68316,                                                               +
                                   "Actual Loops": 1,                                                                  +
                                   "Inner Unique": true,                                                               +
                                   "Merge Cond": "(mc.company_id = cn.id)",                                            +
                                   "Shared Hit Blocks": 8,                                                             +
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
                                       "Node Type": "Sort",                                                            +
                                       "Parent Relationship": "Outer",                                                 +
                                       "Parallel Aware": false,                                                        +
                                       "Startup Cost": 27130.40,                                                       +
                                       "Total Cost": 27130.41,                                                         +
                                       "Plan Rows": 190,                                                               +
                                       "Plan Width": 12,                                                               +
                                       "Actual Startup Time": 4240.578,                                                +
                                       "Actual Total Time": 4256.124,                                                  +
                                       "Actual Rows": 148552,                                                          +
                                       "Actual Loops": 1,                                                              +
                                       "Sort Key": ["mc.company_id"],                                                  +
                                       "Sort Method": "quicksort",                                                     +
                                       "Sort Space Used": 13108,                                                       +
                                       "Sort Space Type": "Memory",                                                    +
                                       "Shared Hit Blocks": 6,                                                         +
                                       "Shared Read Blocks": 43241,                                                    +
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
                                           "Startup Cost": 26725.01,                                                   +
                                           "Total Cost": 27130.18,                                                     +
                                           "Plan Rows": 190,                                                           +
                                           "Plan Width": 12,                                                           +
                                           "Actual Startup Time": 3791.330,                                            +
                                           "Actual Total Time": 4192.131,                                              +
                                           "Actual Rows": 148552,                                                      +
                                           "Actual Loops": 1,                                                          +
                                           "Inner Unique": false,                                                      +
                                           "Merge Cond": "(mk.movie_id = mc.movie_id)",                                +
                                           "Shared Hit Blocks": 6,                                                     +
                                           "Shared Read Blocks": 43241,                                                +
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
                                               "Actual Startup Time": 2319.548,                                        +
                                               "Actual Total Time": 2323.755,                                          +
                                               "Actual Rows": 41839,                                                   +
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
                                                   "Actual Startup Time": 2292.774,                                    +
                                                   "Actual Total Time": 2305.695,                                      +
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
                                                       "Actual Startup Time": 20.716,                                  +
                                                       "Actual Total Time": 20.716,                                    +
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
                                                           "Actual Startup Time": 20.685,                              +
                                                           "Actual Total Time": 20.687,                                +
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
                                                       "Actual Startup Time": 2239.368,                                +
                                                       "Actual Total Time": 2262.901,                                  +
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
                                                           "Actual Startup Time": 0.017,                               +
                                                           "Actual Total Time": 794.265,                               +
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
                                               "Startup Cost": 9405.45,                                                +
                                               "Total Cost": 9608.03,                                                  +
                                               "Plan Rows": 2609129,                                                   +
                                               "Plan Width": 8,                                                        +
                                               "Actual Startup Time": 1471.670,                                        +
                                               "Actual Total Time": 1593.157,                                          +
                                               "Actual Rows": 2609194,                                                 +
                                               "Actual Loops": 1,                                                      +
                                               "Sort Key": ["mc.movie_id"],                                            +
                                               "Sort Method": "quicksort",                                             +
                                               "Sort Space Used": 220607,                                              +
                                               "Sort Space Type": "Memory",                                            +
                                               "Shared Hit Blocks": 3,                                                 +
                                               "Shared Read Blocks": 18786,                                            +
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
                                                   "Relation Name": "movie_companies",                                 +
                                                   "Alias": "mc",                                                      +
                                                   "Startup Cost": 0.00,                                               +
                                                   "Total Cost": 769.75,                                               +
                                                   "Plan Rows": 2609129,                                               +
                                                   "Plan Width": 8,                                                    +
                                                   "Actual Startup Time": 0.018,                                       +
                                                   "Actual Total Time": 549.136,                                       +
                                                   "Actual Rows": 2609129,                                             +
                                                   "Actual Loops": 1,                                                  +
                                                   "Shared Hit Blocks": 3,                                             +
                                                   "Shared Read Blocks": 18786,                                        +
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
                                       "Startup Cost": 344.10,                                                         +
                                       "Total Cost": 350.69,                                                           +
                                       "Plan Rows": 84843,                                                             +
                                       "Plan Width": 4,                                                                +
                                       "Actual Startup Time": 206.546,                                                 +
                                       "Actual Total Time": 215.515,                                                   +
                                       "Actual Rows": 84843,                                                           +
                                       "Actual Loops": 1,                                                              +
                                       "Sort Key": ["cn.id"],                                                          +
                                       "Sort Method": "quicksort",                                                     +
                                       "Sort Space Used": 7050,                                                        +
                                       "Sort Space Type": "Memory",                                                    +
                                       "Shared Hit Blocks": 2,                                                         +
                                       "Shared Read Blocks": 2992,                                                     +
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
                                           "Relation Name": "company_name",                                            +
                                           "Alias": "cn",                                                              +
                                           "Startup Cost": 0.00,                                                       +
                                           "Total Cost": 128.41,                                                       +
                                           "Plan Rows": 84843,                                                         +
                                           "Plan Width": 4,                                                            +
                                           "Actual Startup Time": 4.813,                                               +
                                           "Actual Total Time": 167.450,                                               +
                                           "Actual Rows": 84843,                                                       +
                                           "Actual Loops": 1,                                                          +
                                           "Filter": "((country_code)::text = '[us]'::text)",                          +
                                           "Rows Removed by Filter": 150154,                                           +
                                           "Shared Hit Blocks": 2,                                                     +
                                           "Shared Read Blocks": 2992,                                                 +
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
                               "Startup Cost": 3783.00,                                                                +
                               "Total Cost": 3836.77,                                                                  +
                               "Plan Rows": 692556,                                                                    +
                               "Plan Width": 21,                                                                       +
                               "Actual Startup Time": 1864.198,                                                        +
                               "Actual Total Time": 1958.744,                                                          +
                               "Actual Rows": 691903,                                                                  +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["t.id"],                                                                   +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 70620,                                                               +
                               "Sort Space Type": "Memory",                                                            +
                               "Shared Hit Blocks": 2,                                                                 +
                               "Shared Read Blocks": 35996,                                                            +
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
                                   "Total Cost": 1696.56,                                                              +
                                   "Plan Rows": 692556,                                                                +
                                   "Plan Width": 21,                                                                   +
                                   "Actual Startup Time": 0.015,                                                       +
                                   "Actual Total Time": 1466.140,                                                      +
                                   "Actual Rows": 692556,                                                              +
                                   "Actual Loops": 1,                                                                  +
                                   "Filter": "((episode_nr >= 5) AND (episode_nr < 100))",                             +
                                   "Rows Removed by Filter": 1835756,                                                  +
                                   "Shared Hit Blocks": 2,                                                             +
                                   "Shared Read Blocks": 35996,                                                        +
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
                           "Startup Cost": 151757.13,                                                                  +
                           "Total Cost": 154571.13,                                                                    +
                           "Plan Rows": 36244344,                                                                      +
                           "Plan Width": 8,                                                                            +
                           "Actual Startup Time": 20942.281,                                                           +
                           "Actual Total Time": 22918.157,                                                             +
                           "Actual Rows": 22308308,                                                                    +
                           "Actual Loops": 1,                                                                          +
                           "Sort Key": ["ci.movie_id"],                                                                +
                           "Sort Method": "quicksort",                                                                 +
                           "Sort Space Used": 3271818,                                                                 +
                           "Sort Space Type": "Memory",                                                                +
                           "Shared Hit Blocks": 4,                                                                     +
                           "Shared Read Blocks": 252650,                                                               +
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
                               "Relation Name": "cast_info",                                                           +
                               "Alias": "ci",                                                                          +
                               "Startup Cost": 0.00,                                                                   +
                               "Total Cost": 10431.00,                                                                 +
                               "Plan Rows": 36244344,                                                                  +
                               "Plan Width": 8,                                                                        +
                               "Actual Startup Time": 0.012,                                                           +
                               "Actual Total Time": 6827.566,                                                          +
                               "Actual Rows": 36244344,                                                                +
                               "Actual Loops": 1,                                                                      +
                               "Shared Hit Blocks": 4,                                                                 +
                               "Shared Read Blocks": 252650,                                                           +
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
                   "Startup Cost": 3188.40,                                                                            +
                   "Total Cost": 3258.38,                                                                              +
                   "Plan Rows": 901343,                                                                                +
                   "Plan Width": 20,                                                                                   +
                   "Actual Startup Time": 760.409,                                                                     +
                   "Actual Total Time": 841.265,                                                                       +
                   "Actual Rows": 994715,                                                                              +
                   "Actual Loops": 1,                                                                                  +
                   "Sort Key": ["an.person_id"],                                                                       +
                   "Sort Method": "quicksort",                                                                         +
                   "Sort Space Used": 89763,                                                                           +
                   "Sort Space Type": "Memory",                                                                        +
                   "Shared Hit Blocks": 2,                                                                             +
                   "Shared Read Blocks": 11393,                                                                        +
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
                       "Relation Name": "aka_name",                                                                    +
                       "Alias": "an",                                                                                  +
                       "Startup Cost": 0.00,                                                                           +
                       "Total Cost": 419.75,                                                                           +
                       "Plan Rows": 901343,                                                                            +
                       "Plan Width": 20,                                                                               +
                       "Actual Startup Time": 0.016,                                                                   +
                       "Actual Total Time": 325.313,                                                                   +
                       "Actual Rows": 901343,                                                                          +
                       "Actual Loops": 1,                                                                              +
                       "Shared Hit Blocks": 2,                                                                         +
                       "Shared Read Blocks": 11393,                                                                    +
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
             },                                                                                                        +
             {                                                                                                         +
               "Node Type": "Sort",                                                                                    +
               "Parent Relationship": "Inner",                                                                         +
               "Parallel Aware": false,                                                                                +
               "Startup Cost": 16263.33,                                                                               +
               "Total Cost": 16586.90,                                                                                 +
               "Plan Rows": 4167491,                                                                                   +
               "Plan Width": 4,                                                                                        +
               "Actual Startup Time": 3493.565,                                                                        +
               "Actual Total Time": 3805.390,                                                                          +
               "Actual Rows": 4061471,                                                                                 +
               "Actual Loops": 1,                                                                                      +
               "Sort Key": ["n.id"],                                                                                   +
               "Sort Method": "quicksort",                                                                             +
               "Sort Space Used": 293656,                                                                              +
               "Sort Space Type": "Memory",                                                                            +
               "Shared Hit Blocks": 2,                                                                                 +
               "Shared Read Blocks": 55611,                                                                            +
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
                   "Node Type": "Seq Scan",                                                                            +
                   "Parent Relationship": "Outer",                                                                     +
                   "Parallel Aware": false,                                                                            +
                   "Relation Name": "name",                                                                            +
                   "Alias": "n",                                                                                       +
                   "Startup Cost": 0.00,                                                                               +
                   "Total Cost": 2032.56,                                                                              +
                   "Plan Rows": 4167491,                                                                               +
                   "Plan Width": 4,                                                                                    +
                   "Actual Startup Time": 9.178,                                                                       +
                   "Actual Total Time": 1646.045,                                                                      +
                   "Actual Rows": 4167491,                                                                             +
                   "Actual Loops": 1,                                                                                  +
                   "Shared Hit Blocks": 2,                                                                             +
                   "Shared Read Blocks": 55611,                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                         +
                   "Shared Written Blocks": 0,                                                                         +
                   "Local Hit Blocks": 0,                                                                              +
                   "Local Read Blocks": 0,                                                                             +
                   "Local Dirtied Blocks": 0,                                                                          +
                   "Local Written Blocks": 0,                                                                          +
                   "Temp Read Blocks": 0,                                                                              +
                   "Temp Written Blocks": 0                                                                            +
                 }                                                                                                     +
               ]                                                                                                       +
             }                                                                                                         +
           ]                                                                                                           +
         }                                                                                                             +
       ]                                                                                                               +
     },                                                                                                                +
     "Planning Time": 7570.763,                                                                                        +
     "Triggers": [                                                                                                     +
     ],                                                                                                                +
     "Execution Time": 37797.226                                                                                       +
   }                                                                                                                   +
 ]
(1 row)

