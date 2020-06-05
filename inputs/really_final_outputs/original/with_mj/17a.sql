                                                     QUERY PLAN                                                     
--------------------------------------------------------------------------------------------------------------------
 [                                                                                                                 +
   {                                                                                                               +
     "Plan": {                                                                                                     +
       "Node Type": "Aggregate",                                                                                   +
       "Strategy": "Plain",                                                                                        +
       "Partial Mode": "Simple",                                                                                   +
       "Parallel Aware": false,                                                                                    +
       "Startup Cost": 198311.48,                                                                                  +
       "Total Cost": 198311.48,                                                                                    +
       "Plan Rows": 1,                                                                                             +
       "Plan Width": 64,                                                                                           +
       "Actual Startup Time": 43066.809,                                                                           +
       "Actual Total Time": 43066.809,                                                                             +
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
           "Startup Cost": 198259.28,                                                                              +
           "Total Cost": 198311.47,                                                                                +
           "Plan Rows": 65,                                                                                        +
           "Plan Width": 15,                                                                                       +
           "Actual Startup Time": 42172.327,                                                                       +
           "Actual Total Time": 43014.115,                                                                         +
           "Actual Rows": 258289,                                                                                  +
           "Actual Loops": 1,                                                                                      +
           "Inner Unique": true,                                                                                   +
           "Merge Cond": "(ci.person_id = n.id)",                                                                  +
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
               "Startup Cost": 194920.75,                                                                          +
               "Total Cost": 194920.82,                                                                            +
               "Plan Rows": 789,                                                                                   +
               "Plan Width": 4,                                                                                    +
               "Actual Startup Time": 39393.639,                                                                   +
               "Actual Total Time": 39810.046,                                                                     +
               "Actual Rows": 2832555,                                                                             +
               "Actual Loops": 1,                                                                                  +
               "Sort Key": ["ci.person_id"],                                                                       +
               "Sort Method": "quicksort",                                                                         +
               "Sort Space Used": 231081,                                                                          +
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
                   "Plan Width": 4,                                                                                +
                   "Actual Startup Time": 28380.837,                                                               +
                   "Actual Total Time": 38380.258,                                                                 +
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
                       "Plan Width": 12,                                                                           +
                       "Actual Startup Time": 6833.360,                                                            +
                       "Actual Total Time": 7526.900,                                                              +
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
                           "Actual Startup Time": 4533.606,                                                        +
                           "Actual Total Time": 4544.810,                                                          +
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
                               "Actual Startup Time": 4447.012,                                                    +
                               "Actual Total Time": 4509.786,                                                      +
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
                                   "Actual Startup Time": 4237.997,                                                +
                                   "Actual Total Time": 4254.442,                                                  +
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
                                       "Actual Startup Time": 3796.317,                                            +
                                       "Actual Total Time": 4189.703,                                              +
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
                                           "Actual Startup Time": 2306.941,                                        +
                                           "Actual Total Time": 2311.109,                                          +
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
                                               "Actual Startup Time": 2279.960,                                    +
                                               "Actual Total Time": 2293.050,                                      +
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
                                                   "Actual Startup Time": 20.816,                                  +
                                                   "Actual Total Time": 20.816,                                    +
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
                                                       "Actual Startup Time": 20.793,                              +
                                                       "Actual Total Time": 20.795,                                +
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
                                                   "Actual Startup Time": 2225.424,                                +
                                                   "Actual Total Time": 2249.884,                                  +
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
                                                       "Actual Startup Time": 0.016,                               +
                                                       "Actual Total Time": 785.241,                               +
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
                                           "Actual Startup Time": 1489.261,                                        +
                                           "Actual Total Time": 1609.090,                                          +
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
                                               "Actual Startup Time": 0.016,                                       +
                                               "Actual Total Time": 555.303,                                       +
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
                                   "Actual Startup Time": 209.007,                                                 +
                                   "Actual Total Time": 218.041,                                                   +
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
                                       "Actual Startup Time": 7.465,                                               +
                                       "Actual Total Time": 168.191,                                               +
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
                           "Plan Width": 4,                                                                        +
                           "Actual Startup Time": 2299.436,                                                        +
                           "Actual Total Time": 2663.141,                                                          +
                           "Actual Rows": 2524891,                                                                 +
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
                               "Actual Startup Time": 3.705,                                                       +
                               "Actual Total Time": 1072.537,                                                      +
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
                       "Actual Startup Time": 21537.019,                                                           +
                       "Actual Total Time": 26041.122,                                                             +
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
                           "Actual Startup Time": 0.015,                                                           +
                           "Actual Total Time": 7376.641,                                                          +
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
               "Startup Cost": 3338.53,                                                                            +
               "Total Cost": 3365.24,                                                                              +
               "Plan Rows": 343991,                                                                                +
               "Plan Width": 19,                                                                                   +
               "Actual Startup Time": 2762.997,                                                                    +
               "Actual Total Time": 2800.944,                                                                      +
               "Actual Rows": 334765,                                                                              +
               "Actual Loops": 1,                                                                                  +
               "Sort Key": ["n.id"],                                                                               +
               "Sort Method": "quicksort",                                                                         +
               "Sort Space Used": 37686,                                                                           +
               "Sort Space Type": "Memory",                                                                        +
               "Shared Hit Blocks": 1,                                                                             +
               "Shared Read Blocks": 55612,                                                                        +
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
                   "Relation Name": "name",                                                                        +
                   "Alias": "n",                                                                                   +
                   "Startup Cost": 0.00,                                                                           +
                   "Total Cost": 2356.12,                                                                          +
                   "Plan Rows": 343991,                                                                            +
                   "Plan Width": 19,                                                                               +
                   "Actual Startup Time": 56.885,                                                                  +
                   "Actual Total Time": 2594.098,                                                                  +
                   "Actual Rows": 343399,                                                                          +
                   "Actual Loops": 1,                                                                              +
                   "Filter": "(name ~~ 'B%'::text)",                                                               +
                   "Rows Removed by Filter": 3824092,                                                              +
                   "Shared Hit Blocks": 1,                                                                         +
                   "Shared Read Blocks": 55612,                                                                    +
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
     "Planning Time": 5673.385,                                                                                    +
     "Triggers": [                                                                                                 +
     ],                                                                                                            +
     "Execution Time": 43260.510                                                                                   +
   }                                                                                                               +
 ]
(1 row)

