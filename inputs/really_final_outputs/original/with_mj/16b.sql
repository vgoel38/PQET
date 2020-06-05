                                                       QUERY PLAN                                                       
------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                     +
   {                                                                                                                   +
     "Plan": {                                                                                                         +
       "Node Type": "Aggregate",                                                                                       +
       "Strategy": "Plain",                                                                                            +
       "Partial Mode": "Simple",                                                                                       +
       "Parallel Aware": false,                                                                                        +
       "Startup Cost": 215139.96,                                                                                      +
       "Total Cost": 215139.96,                                                                                        +
       "Plan Rows": 1,                                                                                                 +
       "Plan Width": 64,                                                                                               +
       "Actual Startup Time": 47446.854,                                                                               +
       "Actual Total Time": 47446.854,                                                                                 +
       "Actual Rows": 1,                                                                                               +
       "Actual Loops": 1,                                                                                              +
       "Shared Hit Blocks": 21,                                                                                        +
       "Shared Read Blocks": 401884,                                                                                   +
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
           "Startup Cost": 214372.49,                                                                                  +
           "Total Cost": 215139.85,                                                                                    +
           "Plan Rows": 686,                                                                                           +
           "Plan Width": 33,                                                                                           +
           "Actual Startup Time": 43261.351,                                                                           +
           "Actual Total Time": 46618.156,                                                                             +
           "Actual Rows": 3710592,                                                                                     +
           "Actual Loops": 1,                                                                                          +
           "Inner Unique": true,                                                                                       +
           "Merge Cond": "(an.person_id = n.id)",                                                                      +
           "Shared Hit Blocks": 21,                                                                                    +
           "Shared Read Blocks": 401884,                                                                               +
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
               "Startup Cost": 198109.15,                                                                              +
               "Total Cost": 198229.29,                                                                                +
               "Plan Rows": 686,                                                                                       +
               "Plan Width": 41,                                                                                       +
               "Actual Startup Time": 39791.847,                                                                       +
               "Actual Total Time": 41686.352,                                                                         +
               "Actual Rows": 3710592,                                                                                 +
               "Actual Loops": 1,                                                                                      +
               "Inner Unique": false,                                                                                  +
               "Merge Cond": "(ci.person_id = an.person_id)",                                                          +
               "Shared Hit Blocks": 19,                                                                                +
               "Shared Read Blocks": 346273,                                                                           +
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
                   "Startup Cost": 194920.75,                                                                          +
                   "Total Cost": 194920.82,                                                                            +
                   "Plan Rows": 789,                                                                                   +
                   "Plan Width": 21,                                                                                   +
                   "Actual Startup Time": 39027.195,                                                                   +
                   "Actual Total Time": 39462.849,                                                                     +
                   "Actual Rows": 2832555,                                                                             +
                   "Actual Loops": 1,                                                                                  +
                   "Sort Key": ["ci.person_id"],                                                                       +
                   "Sort Method": "quicksort",                                                                         +
                   "Sort Space Used": 302846,                                                                          +
                   "Sort Space Type": "Memory",                                                                        +
                   "Shared Hit Blocks": 17,                                                                            +
                   "Shared Read Blocks": 334880,                                                                       +
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
                       "Startup Cost": 188899.26,                                                                      +
                       "Total Cost": 194919.58,                                                                        +
                       "Plan Rows": 789,                                                                               +
                       "Plan Width": 21,                                                                               +
                       "Actual Startup Time": 27776.035,                                                               +
                       "Actual Total Time": 37934.163,                                                                 +
                       "Actual Rows": 2832555,                                                                         +
                       "Actual Loops": 1,                                                                              +
                       "Inner Unique": false,                                                                          +
                       "Merge Cond": "(t.id = ci.movie_id)",                                                           +
                       "Shared Hit Blocks": 13,                                                                        +
                       "Shared Read Blocks": 334880,                                                                   +
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
                           "Startup Cost": 37142.13,                                                                   +
                           "Total Cost": 37534.37,                                                                     +
                           "Plan Rows": 68,                                                                            +
                           "Plan Width": 29,                                                                           +
                           "Actual Startup Time": 6828.868,                                                            +
                           "Actual Total Time": 7594.259,                                                              +
                           "Actual Rows": 68316,                                                                       +
                           "Actual Loops": 1,                                                                          +
                           "Inner Unique": true,                                                                       +
                           "Merge Cond": "(mk.movie_id = t.id)",                                                       +
                           "Shared Hit Blocks": 9,                                                                     +
                           "Shared Read Blocks": 82230,                                                                +
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
                               "Actual Startup Time": 4523.663,                                                        +
                               "Actual Total Time": 4534.937,                                                          +
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
                                   "Actual Startup Time": 4438.815,                                                    +
                                   "Actual Total Time": 4500.065,                                                      +
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
                                       "Actual Startup Time": 4233.281,                                                +
                                       "Actual Total Time": 4249.304,                                                  +
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
                                           "Actual Startup Time": 3792.997,                                            +
                                           "Actual Total Time": 4184.822,                                              +
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
                                               "Actual Startup Time": 2323.233,                                        +
                                               "Actual Total Time": 2327.421,                                          +
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
                                                   "Actual Startup Time": 2295.870,                                    +
                                                   "Actual Total Time": 2309.270,                                      +
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
                                                       "Actual Startup Time": 30.306,                                  +
                                                       "Actual Total Time": 30.307,                                    +
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
                                                           "Actual Startup Time": 30.282,                              +
                                                           "Actual Total Time": 30.285,                                +
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
                                                       "Actual Startup Time": 2231.568,                                +
                                                       "Actual Total Time": 2256.482,                                  +
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
                                                           "Actual Total Time": 786.472,                               +
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
                                               "Actual Startup Time": 1469.653,                                        +
                                               "Actual Total Time": 1588.685,                                          +
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
                                                   "Actual Startup Time": 0.013,                                       +
                                                   "Actual Total Time": 529.983,                                       +
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
                                       "Actual Startup Time": 205.526,                                                 +
                                       "Actual Total Time": 214.039,                                                   +
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
                                           "Actual Startup Time": 3.829,                                               +
                                           "Actual Total Time": 165.126,                                               +
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
                               "Startup Cost": 9654.35,                                                                +
                               "Total Cost": 9850.65,                                                                  +
                               "Plan Rows": 2528312,                                                                   +
                               "Plan Width": 21,                                                                       +
                               "Actual Startup Time": 2304.886,                                                        +
                               "Actual Total Time": 2665.107,                                                          +
                               "Actual Rows": 2524891,                                                                 +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["t.id"],                                                                   +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 275055,                                                              +
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
                                   "Plan Width": 21,                                                                   +
                                   "Actual Startup Time": 5.373,                                                       +
                                   "Actual Total Time": 994.860,                                                       +
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
                           "Startup Cost": 151757.13,                                                                  +
                           "Total Cost": 154571.13,                                                                    +
                           "Plan Rows": 36244344,                                                                      +
                           "Plan Width": 8,                                                                            +
                           "Actual Startup Time": 20936.294,                                                           +
                           "Actual Total Time": 25455.448,                                                             +
                           "Actual Rows": 38314797,                                                                    +
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
                               "Actual Startup Time": 0.022,                                                           +
                               "Actual Total Time": 6781.758,                                                          +
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
                   "Actual Startup Time": 764.640,                                                                     +
                   "Actual Total Time": 1018.171,                                                                      +
                   "Actual Rows": 4256007,                                                                             +
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
                       "Actual Startup Time": 0.015,                                                                   +
                       "Actual Total Time": 336.996,                                                                   +
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
               "Actual Startup Time": 3469.492,                                                                        +
               "Actual Total Time": 3872.621,                                                                          +
               "Actual Rows": 4061913,                                                                                 +
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
                   "Actual Startup Time": 4.350,                                                                       +
                   "Actual Total Time": 1661.074,                                                                      +
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
     "Planning Time": 7600.843,                                                                                        +
     "Triggers": [                                                                                                     +
     ],                                                                                                                +
     "Execution Time": 47606.192                                                                                       +
   }                                                                                                                   +
 ]
(1 row)

