                                                       QUERY PLAN                                                       
------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                     +
   {                                                                                                                   +
     "Plan": {                                                                                                         +
       "Node Type": "Aggregate",                                                                                       +
       "Strategy": "Plain",                                                                                            +
       "Partial Mode": "Simple",                                                                                       +
       "Parallel Aware": false,                                                                                        +
       "Startup Cost": 209658.51,                                                                                      +
       "Total Cost": 209658.51,                                                                                        +
       "Plan Rows": 1,                                                                                                 +
       "Plan Width": 64,                                                                                               +
       "Actual Startup Time": 38087.479,                                                                               +
       "Actual Total Time": 38087.479,                                                                                 +
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
           "Startup Cost": 208891.27,                                                                                  +
           "Total Cost": 209658.47,                                                                                    +
           "Plan Rows": 257,                                                                                           +
           "Plan Width": 33,                                                                                           +
           "Actual Startup Time": 36904.239,                                                                           +
           "Actual Total Time": 38001.465,                                                                             +
           "Actual Rows": 319932,                                                                                      +
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
               "Startup Cost": 192627.94,                                                                              +
               "Total Cost": 192747.97,                                                                                +
               "Plan Rows": 257,                                                                                       +
               "Plan Width": 41,                                                                                       +
               "Actual Startup Time": 33432.716,                                                                       +
               "Actual Total Time": 33744.941,                                                                         +
               "Actual Rows": 319932,                                                                                  +
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
                   "Startup Cost": 189439.54,                                                                          +
                   "Total Cost": 189439.57,                                                                            +
                   "Plan Rows": 295,                                                                                   +
                   "Plan Width": 21,                                                                                   +
                   "Actual Startup Time": 32672.798,                                                                   +
                   "Actual Total Time": 32704.875,                                                                     +
                   "Actual Rows": 221609,                                                                              +
                   "Actual Loops": 1,                                                                                  +
                   "Sort Key": ["ci.person_id"],                                                                       +
                   "Sort Method": "quicksort",                                                                         +
                   "Sort Space Used": 23303,                                                                           +
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
                       "Startup Cost": 183664.23,                                                                      +
                       "Total Cost": 189439.17,                                                                        +
                       "Plan Rows": 295,                                                                               +
                       "Plan Width": 21,                                                                               +
                       "Actual Startup Time": 27487.778,                                                               +
                       "Actual Total Time": 32580.552,                                                                 +
                       "Actual Rows": 221609,                                                                          +
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
                           "Startup Cost": 31907.10,                                                                   +
                           "Total Cost": 32054.01,                                                                     +
                           "Plan Rows": 25,                                                                            +
                           "Plan Width": 29,                                                                           +
                           "Actual Startup Time": 6438.019,                                                            +
                           "Actual Total Time": 6721.621,                                                              +
                           "Actual Rows": 8538,                                                                        +
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
                               "Actual Startup Time": 4516.411,                                                        +
                               "Actual Total Time": 4524.598,                                                          +
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
                                   "Actual Startup Time": 4430.095,                                                    +
                                   "Actual Total Time": 4492.616,                                                      +
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
                                       "Actual Startup Time": 4219.911,                                                +
                                       "Actual Total Time": 4236.787,                                                  +
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
                                           "Actual Startup Time": 3779.271,                                            +
                                           "Actual Total Time": 4171.853,                                              +
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
                                               "Actual Startup Time": 2320.935,                                        +
                                               "Actual Total Time": 2325.100,                                          +
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
                                                   "Actual Startup Time": 2293.340,                                    +
                                                   "Actual Total Time": 2306.777,                                      +
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
                                                       "Actual Startup Time": 30.245,                                  +
                                                       "Actual Total Time": 30.245,                                    +
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
                                                           "Actual Startup Time": 30.220,                              +
                                                           "Actual Total Time": 30.224,                                +
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
                                                       "Actual Startup Time": 2230.637,                                +
                                                       "Actual Total Time": 2254.173,                                  +
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
                                                           "Actual Total Time": 787.360,                               +
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
                                               "Actual Startup Time": 1458.227,                                        +
                                               "Actual Total Time": 1577.160,                                          +
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
                                                   "Actual Startup Time": 0.015,                                       +
                                                   "Actual Total Time": 540.610,                                       +
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
                                       "Actual Startup Time": 210.178,                                                 +
                                       "Actual Total Time": 219.197,                                                   +
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
                                           "Actual Startup Time": 8.838,                                               +
                                           "Actual Total Time": 169.943,                                               +
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
                               "Startup Cost": 4419.32,                                                                +
                               "Total Cost": 4492.84,                                                                  +
                               "Plan Rows": 946906,                                                                    +
                               "Plan Width": 21,                                                                       +
                               "Actual Startup Time": 1920.362,                                                        +
                               "Actual Total Time": 2050.024,                                                          +
                               "Actual Rows": 945974,                                                                  +
                               "Actual Loops": 1,                                                                      +
                               "Sort Key": ["t.id"],                                                                   +
                               "Sort Method": "quicksort",                                                             +
                               "Sort Space Used": 87357,                                                               +
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
                                   "Total Cost": 1500.26,                                                              +
                                   "Plan Rows": 946906,                                                                +
                                   "Plan Width": 21,                                                                   +
                                   "Actual Startup Time": 0.014,                                                       +
                                   "Actual Total Time": 1407.514,                                                      +
                                   "Actual Rows": 946906,                                                              +
                                   "Actual Loops": 1,                                                                  +
                                   "Filter": "(episode_nr < 100)",                                                     +
                                   "Rows Removed by Filter": 1581406,                                                  +
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
                           "Actual Startup Time": 21026.941,                                                           +
                           "Actual Total Time": 23165.675,                                                             +
                           "Actual Rows": 22339038,                                                                    +
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
                               "Actual Startup Time": 0.013,                                                           +
                               "Actual Total Time": 6884.785,                                                          +
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
                   "Actual Startup Time": 759.906,                                                                     +
                   "Actual Total Time": 848.071,                                                                       +
                   "Actual Rows": 1059402,                                                                             +
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
                       "Actual Total Time": 330.549,                                                                   +
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
               "Actual Startup Time": 3471.501,                                                                        +
               "Actual Total Time": 3794.488,                                                                          +
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
                   "Actual Startup Time": 5.502,                                                                       +
                   "Actual Total Time": 1629.482,                                                                      +
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
     "Planning Time": 7359.027,                                                                                        +
     "Triggers": [                                                                                                     +
     ],                                                                                                                +
     "Execution Time": 38225.434                                                                                       +
   }                                                                                                                   +
 ]
(1 row)

