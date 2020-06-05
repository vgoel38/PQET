                                                     QUERY PLAN                                                     
--------------------------------------------------------------------------------------------------------------------
 [                                                                                                                 +
   {                                                                                                               +
     "Plan": {                                                                                                     +
       "Node Type": "Aggregate",                                                                                   +
       "Strategy": "Plain",                                                                                        +
       "Partial Mode": "Simple",                                                                                   +
       "Parallel Aware": false,                                                                                    +
       "Startup Cost": 206968.85,                                                                                  +
       "Total Cost": 206968.85,                                                                                    +
       "Plan Rows": 1,                                                                                             +
       "Plan Width": 64,                                                                                           +
       "Actual Startup Time": 36841.223,                                                                           +
       "Actual Total Time": 36841.223,                                                                             +
       "Actual Rows": 1,                                                                                           +
       "Actual Loops": 1,                                                                                          +
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
           "Startup Cost": 206955.66,                                                                              +
           "Total Cost": 206968.84,                                                                                +
           "Plan Rows": 19,                                                                                        +
           "Plan Width": 33,                                                                                       +
           "Actual Startup Time": 36833.935,                                                                       +
           "Actual Total Time": 36841.074,                                                                         +
           "Actual Rows": 385,                                                                                     +
           "Actual Loops": 1,                                                                                      +
           "Inner Unique": true,                                                                                   +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                +
           "Shared Hit Blocks": 22,                                                                                +
           "Shared Read Blocks": 401883,                                                                           +
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
               "Startup Cost": 206611.56,                                                                          +
               "Total Cost": 206611.56,                                                                            +
               "Plan Rows": 51,                                                                                    +
               "Plan Width": 37,                                                                                   +
               "Actual Startup Time": 36674.142,                                                                   +
               "Actual Total Time": 36674.258,                                                                     +
               "Actual Rows": 898,                                                                                 +
               "Actual Loops": 1,                                                                                  +
               "Sort Key": ["mc.company_id"],                                                                      +
               "Sort Method": "quicksort",                                                                         +
               "Sort Space Used": 114,                                                                             +
               "Sort Space Type": "Memory",                                                                        +
               "Shared Hit Blocks": 20,                                                                            +
               "Shared Read Blocks": 398891,                                                                       +
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
                   "Startup Cost": 205844.40,                                                                      +
                   "Total Cost": 206611.51,                                                                        +
                   "Plan Rows": 51,                                                                                +
                   "Plan Width": 37,                                                                               +
                   "Actual Startup Time": 35849.075,                                                               +
                   "Actual Total Time": 36656.478,                                                                 +
                   "Actual Rows": 898,                                                                             +
                   "Actual Loops": 1,                                                                              +
                   "Inner Unique": true,                                                                           +
                   "Merge Cond": "(an.person_id = n.id)",                                                          +
                   "Shared Hit Blocks": 16,                                                                        +
                   "Shared Read Blocks": 398891,                                                                   +
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
                       "Startup Cost": 189581.06,                                                                  +
                       "Total Cost": 189701.04,                                                                    +
                       "Plan Rows": 51,                                                                            +
                       "Plan Width": 45,                                                                           +
                       "Actual Startup Time": 32366.162,                                                           +
                       "Actual Total Time": 32516.506,                                                             +
                       "Actual Rows": 898,                                                                         +
                       "Actual Loops": 1,                                                                          +
                       "Inner Unique": false,                                                                      +
                       "Merge Cond": "(ci.person_id = an.person_id)",                                              +
                       "Shared Hit Blocks": 14,                                                                    +
                       "Shared Read Blocks": 343280,                                                               +
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
                           "Startup Cost": 186392.67,                                                              +
                           "Total Cost": 186392.67,                                                                +
                           "Plan Rows": 59,                                                                        +
                           "Plan Width": 25,                                                                       +
                           "Actual Startup Time": 31602.163,                                                       +
                           "Actual Total Time": 31602.341,                                                         +
                           "Actual Rows": 1089,                                                                    +
                           "Actual Loops": 1,                                                                      +
                           "Sort Key": ["ci.person_id"],                                                           +
                           "Sort Method": "quicksort",                                                             +
                           "Sort Space Used": 138,                                                                 +
                           "Sort Space Type": "Memory",                                                            +
                           "Shared Hit Blocks": 12,                                                                +
                           "Shared Read Blocks": 331887,                                                           +
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
                               "Startup Cost": 180348.87,                                                          +
                               "Total Cost": 186392.61,                                                            +
                               "Plan Rows": 59,                                                                    +
                               "Plan Width": 25,                                                                   +
                               "Actual Startup Time": 27012.061,                                                   +
                               "Actual Total Time": 31601.771,                                                     +
                               "Actual Rows": 1089,                                                                +
                               "Actual Loops": 1,                                                                  +
                               "Inner Unique": false,                                                              +
                               "Merge Cond": "(t.id = ci.movie_id)",                                               +
                               "Shared Hit Blocks": 12,                                                            +
                               "Shared Read Blocks": 331887,                                                       +
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
                                   "Startup Cost": 28591.74,                                                       +
                                   "Total Cost": 29007.48,                                                         +
                                   "Plan Rows": 5,                                                                 +
                                   "Plan Width": 33,                                                               +
                                   "Actual Startup Time": 5656.269,                                                +
                                   "Actual Total Time": 5803.666,                                                  +
                                   "Actual Rows": 54,                                                              +
                                   "Actual Loops": 1,                                                              +
                                   "Inner Unique": false,                                                          +
                                   "Merge Cond": "(t.id = mc.movie_id)",                                           +
                                   "Shared Hit Blocks": 8,                                                         +
                                   "Shared Read Blocks": 79237,                                                    +
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
                                       "Startup Cost": 19186.29,                                                   +
                                       "Total Cost": 19196.88,                                                     +
                                       "Plan Rows": 1,                                                             +
                                       "Plan Width": 25,                                                           +
                                       "Actual Startup Time": 4186.462,                                            +
                                       "Actual Total Time": 4210.887,                                              +
                                       "Actual Rows": 146,                                                         +
                                       "Actual Loops": 1,                                                          +
                                       "Inner Unique": true,                                                       +
                                       "Merge Cond": "(mk.movie_id = t.id)",                                       +
                                       "Shared Hit Blocks": 5,                                                     +
                                       "Shared Read Blocks": 60451,                                                +
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
                                           "Actual Startup Time": 2392.693,                                        +
                                           "Actual Total Time": 2396.926,                                          +
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
                                               "Actual Startup Time": 2365.907,                                    +
                                               "Actual Total Time": 2378.878,                                      +
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
                                                   "Actual Startup Time": 30.259,                                  +
                                                   "Actual Total Time": 30.259,                                    +
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
                                                       "Actual Startup Time": 30.232,                              +
                                                       "Actual Total Time": 30.235,                                +
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
                                                   "Actual Startup Time": 2301.523,                                +
                                                   "Actual Total Time": 2326.585,                                  +
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
                                                       "Actual Total Time": 829.555,                               +
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
                                           "Startup Cost": 1866.73,                                                +
                                           "Total Cost": 1872.03,                                                  +
                                           "Plan Rows": 68245,                                                     +
                                           "Plan Width": 21,                                                       +
                                           "Actual Startup Time": 1792.438,                                        +
                                           "Actual Total Time": 1800.166,                                          +
                                           "Actual Rows": 68188,                                                   +
                                           "Actual Loops": 1,                                                      +
                                           "Sort Key": ["t.id"],                                                   +
                                           "Sort Method": "quicksort",                                             +
                                           "Sort Space Used": 7253,                                                +
                                           "Sort Space Type": "Memory",                                            +
                                           "Shared Hit Blocks": 2,                                                 +
                                           "Shared Read Blocks": 35996,                                            +
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
                                               "Relation Name": "title",                                           +
                                               "Alias": "t",                                                       +
                                               "Startup Cost": 0.00,                                               +
                                               "Total Cost": 1696.56,                                              +
                                               "Plan Rows": 68245,                                                 +
                                               "Plan Width": 21,                                                   +
                                               "Actual Startup Time": 0.051,                                       +
                                               "Actual Total Time": 1729.603,                                      +
                                               "Actual Rows": 68245,                                               +
                                               "Actual Loops": 1,                                                  +
                                               "Filter": "((episode_nr >= 50) AND (episode_nr < 100))",            +
                                               "Rows Removed by Filter": 2460067,                                  +
                                               "Shared Hit Blocks": 2,                                             +
                                               "Shared Read Blocks": 35996,                                        +
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
                                     },                                                                            +
                                     {                                                                             +
                                       "Node Type": "Sort",                                                        +
                                       "Parent Relationship": "Inner",                                             +
                                       "Parallel Aware": false,                                                    +
                                       "Startup Cost": 9405.45,                                                    +
                                       "Total Cost": 9608.03,                                                      +
                                       "Plan Rows": 2609129,                                                       +
                                       "Plan Width": 8,                                                            +
                                       "Actual Startup Time": 1462.593,                                            +
                                       "Actual Total Time": 1507.643,                                              +
                                       "Actual Rows": 899454,                                                      +
                                       "Actual Loops": 1,                                                          +
                                       "Sort Key": ["mc.movie_id"],                                                +
                                       "Sort Method": "quicksort",                                                 +
                                       "Sort Space Used": 220607,                                                  +
                                       "Sort Space Type": "Memory",                                                +
                                       "Shared Hit Blocks": 3,                                                     +
                                       "Shared Read Blocks": 18786,                                                +
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
                                           "Relation Name": "movie_companies",                                     +
                                           "Alias": "mc",                                                          +
                                           "Startup Cost": 0.00,                                                   +
                                           "Total Cost": 769.75,                                                   +
                                           "Plan Rows": 2609129,                                                   +
                                           "Plan Width": 8,                                                        +
                                           "Actual Startup Time": 0.014,                                           +
                                           "Actual Total Time": 531.086,                                           +
                                           "Actual Rows": 2609129,                                                 +
                                           "Actual Loops": 1,                                                      +
                                           "Shared Hit Blocks": 3,                                                 +
                                           "Shared Read Blocks": 18786,                                            +
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
                                 },                                                                                +
                                 {                                                                                 +
                                   "Node Type": "Sort",                                                            +
                                   "Parent Relationship": "Inner",                                                 +
                                   "Parallel Aware": false,                                                        +
                                   "Startup Cost": 151757.13,                                                      +
                                   "Total Cost": 154571.13,                                                        +
                                   "Plan Rows": 36244344,                                                          +
                                   "Plan Width": 8,                                                                +
                                   "Actual Startup Time": 21052.626,                                               +
                                   "Actual Total Time": 23166.456,                                                 +
                                   "Actual Rows": 21924854,                                                        +
                                   "Actual Loops": 1,                                                              +
                                   "Sort Key": ["ci.movie_id"],                                                    +
                                   "Sort Method": "quicksort",                                                     +
                                   "Sort Space Used": 3271818,                                                     +
                                   "Sort Space Type": "Memory",                                                    +
                                   "Shared Hit Blocks": 4,                                                         +
                                   "Shared Read Blocks": 252650,                                                   +
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
                                       "Relation Name": "cast_info",                                               +
                                       "Alias": "ci",                                                              +
                                       "Startup Cost": 0.00,                                                       +
                                       "Total Cost": 10431.00,                                                     +
                                       "Plan Rows": 36244344,                                                      +
                                       "Plan Width": 8,                                                            +
                                       "Actual Startup Time": 0.018,                                               +
                                       "Actual Total Time": 6909.626,                                              +
                                       "Actual Rows": 36244344,                                                    +
                                       "Actual Loops": 1,                                                          +
                                       "Shared Hit Blocks": 4,                                                     +
                                       "Shared Read Blocks": 252650,                                               +
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
                           "Startup Cost": 3188.40,                                                                +
                           "Total Cost": 3258.38,                                                                  +
                           "Plan Rows": 901343,                                                                    +
                           "Plan Width": 20,                                                                       +
                           "Actual Startup Time": 763.656,                                                         +
                           "Actual Total Time": 824.464,                                                           +
                           "Actual Rows": 772669,                                                                  +
                           "Actual Loops": 1,                                                                      +
                           "Sort Key": ["an.person_id"],                                                           +
                           "Sort Method": "quicksort",                                                             +
                           "Sort Space Used": 89763,                                                               +
                           "Sort Space Type": "Memory",                                                            +
                           "Shared Hit Blocks": 2,                                                                 +
                           "Shared Read Blocks": 11393,                                                            +
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
                               "Relation Name": "aka_name",                                                        +
                               "Alias": "an",                                                                      +
                               "Startup Cost": 0.00,                                                               +
                               "Total Cost": 419.75,                                                               +
                               "Plan Rows": 901343,                                                                +
                               "Plan Width": 20,                                                                   +
                               "Actual Startup Time": 0.019,                                                       +
                               "Actual Total Time": 330.259,                                                       +
                               "Actual Rows": 901343,                                                              +
                               "Actual Loops": 1,                                                                  +
                               "Shared Hit Blocks": 2,                                                             +
                               "Shared Read Blocks": 11393,                                                        +
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
                       "Startup Cost": 16263.33,                                                                   +
                       "Total Cost": 16586.90,                                                                     +
                       "Plan Rows": 4167491,                                                                       +
                       "Plan Width": 4,                                                                            +
                       "Actual Startup Time": 3481.240,                                                            +
                       "Actual Total Time": 3751.784,                                                              +
                       "Actual Rows": 4059774,                                                                     +
                       "Actual Loops": 1,                                                                          +
                       "Sort Key": ["n.id"],                                                                       +
                       "Sort Method": "quicksort",                                                                 +
                       "Sort Space Used": 293656,                                                                  +
                       "Sort Space Type": "Memory",                                                                +
                       "Shared Hit Blocks": 2,                                                                     +
                       "Shared Read Blocks": 55611,                                                                +
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
                           "Relation Name": "name",                                                                +
                           "Alias": "n",                                                                           +
                           "Startup Cost": 0.00,                                                                   +
                           "Total Cost": 2032.56,                                                                  +
                           "Plan Rows": 4167491,                                                                   +
                           "Plan Width": 4,                                                                        +
                           "Actual Startup Time": 4.772,                                                           +
                           "Actual Total Time": 1620.773,                                                          +
                           "Actual Rows": 4167491,                                                                 +
                           "Actual Loops": 1,                                                                      +
                           "Shared Hit Blocks": 2,                                                                 +
                           "Shared Read Blocks": 55611,                                                            +
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
               "Startup Cost": 344.10,                                                                             +
               "Total Cost": 350.69,                                                                               +
               "Plan Rows": 84843,                                                                                 +
               "Plan Width": 4,                                                                                    +
               "Actual Startup Time": 159.785,                                                                     +
               "Actual Total Time": 163.192,                                                                       +
               "Actual Rows": 31528,                                                                               +
               "Actual Loops": 1,                                                                                  +
               "Sort Key": ["cn.id"],                                                                              +
               "Sort Method": "quicksort",                                                                         +
               "Sort Space Used": 7050,                                                                            +
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
                   "Total Cost": 128.41,                                                                           +
                   "Plan Rows": 84843,                                                                             +
                   "Plan Width": 4,                                                                                +
                   "Actual Startup Time": 3.324,                                                                   +
                   "Actual Total Time": 115.583,                                                                   +
                   "Actual Rows": 84843,                                                                           +
                   "Actual Loops": 1,                                                                              +
                   "Filter": "((country_code)::text = '[us]'::text)",                                              +
                   "Rows Removed by Filter": 150154,                                                               +
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
     "Planning Time": 7727.509,                                                                                    +
     "Triggers": [                                                                                                 +
     ],                                                                                                            +
     "Execution Time": 36999.087                                                                                   +
   }                                                                                                               +
 ]
(1 row)
