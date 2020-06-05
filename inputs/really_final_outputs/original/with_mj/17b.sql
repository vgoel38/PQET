                                                   QUERY PLAN                                                   
----------------------------------------------------------------------------------------------------------------
 [                                                                                                             +
   {                                                                                                           +
     "Plan": {                                                                                                 +
       "Node Type": "Aggregate",                                                                               +
       "Strategy": "Plain",                                                                                    +
       "Partial Mode": "Simple",                                                                               +
       "Parallel Aware": false,                                                                                +
       "Startup Cost": 197810.31,                                                                              +
       "Total Cost": 197810.31,                                                                                +
       "Plan Rows": 1,                                                                                         +
       "Plan Width": 64,                                                                                       +
       "Actual Startup Time": 46580.344,                                                                       +
       "Actual Total Time": 46580.344,                                                                         +
       "Actual Rows": 1,                                                                                       +
       "Actual Loops": 1,                                                                                      +
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
           "Node Type": "Merge Join",                                                                          +
           "Parent Relationship": "Outer",                                                                     +
           "Parallel Aware": false,                                                                            +
           "Join Type": "Inner",                                                                               +
           "Startup Cost": 197773.81,                                                                          +
           "Total Cost": 197810.30,                                                                            +
           "Plan Rows": 19,                                                                                    +
           "Plan Width": 15,                                                                                   +
           "Actual Startup Time": 46471.176,                                                                   +
           "Actual Total Time": 46553.912,                                                                     +
           "Actual Rows": 52306,                                                                               +
           "Actual Loops": 1,                                                                                  +
           "Inner Unique": true,                                                                               +
           "Merge Cond": "(mc.company_id = cn.id)",                                                            +
           "Shared Hit Blocks": 18,                                                                            +
           "Shared Read Blocks": 390492,                                                                       +
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
               "Node Type": "Sort",                                                                            +
               "Parent Relationship": "Outer",                                                                 +
               "Parallel Aware": false,                                                                        +
               "Startup Cost": 197012.58,                                                                      +
               "Total Cost": 197012.58,                                                                        +
               "Plan Rows": 19,                                                                                +
               "Plan Width": 19,                                                                               +
               "Actual Startup Time": 46275.866,                                                               +
               "Actual Total Time": 46284.979,                                                                 +
               "Actual Rows": 52306,                                                                           +
               "Actual Loops": 1,                                                                              +
               "Sort Key": ["mc.company_id"],                                                                  +
               "Sort Method": "quicksort",                                                                     +
               "Sort Space Used": 5396,                                                                        +
               "Sort Space Type": "Memory",                                                                    +
               "Shared Hit Blocks": 16,                                                                        +
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
                   "Startup Cost": 197006.77,                                                                  +
                   "Total Cost": 197012.57,                                                                    +
                   "Plan Rows": 19,                                                                            +
                   "Plan Width": 19,                                                                           +
                   "Actual Startup Time": 45219.477,                                                           +
                   "Actual Total Time": 46242.131,                                                             +
                   "Actual Rows": 52306,                                                                       +
                   "Actual Loops": 1,                                                                          +
                   "Inner Unique": true,                                                                       +
                   "Merge Cond": "(ci.person_id = n.id)",                                                      +
                   "Shared Hit Blocks": 12,                                                                    +
                   "Shared Read Blocks": 387500,                                                               +
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
                       "Startup Cost": 194565.85,                                                              +
                       "Total Cost": 194566.02,                                                                +
                       "Plan Rows": 2186,                                                                      +
                       "Plan Width": 8,                                                                        +
                       "Actual Startup Time": 41481.773,                                                       +
                       "Actual Total Time": 42634.379,                                                         +
                       "Actual Rows": 7796926,                                                                 +
                       "Actual Loops": 1,                                                                      +
                       "Sort Key": ["ci.person_id"],                                                           +
                       "Sort Method": "quicksort",                                                             +
                       "Sort Space Used": 562089,                                                              +
                       "Sort Space Type": "Memory",                                                            +
                       "Shared Hit Blocks": 11,                                                                +
                       "Shared Read Blocks": 331888,                                                           +
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
                           "Startup Cost": 188136.50,                                                          +
                           "Total Cost": 194562.09,                                                            +
                           "Plan Rows": 2186,                                                                  +
                           "Plan Width": 8,                                                                    +
                           "Actual Startup Time": 26938.361,                                                   +
                           "Actual Total Time": 38621.934,                                                     +
                           "Actual Rows": 7796926,                                                             +
                           "Actual Loops": 1,                                                                  +
                           "Inner Unique": false,                                                              +
                           "Merge Cond": "(t.id = ci.movie_id)",                                               +
                           "Shared Hit Blocks": 11,                                                            +
                           "Shared Read Blocks": 331888,                                                       +
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
                               "Startup Cost": 36379.37,                                                       +
                               "Total Cost": 37176.75,                                                         +
                               "Plan Rows": 190,                                                               +
                               "Plan Width": 16,                                                               +
                               "Actual Startup Time": 6088.425,                                                +
                               "Actual Total Time": 7204.057,                                                  +
                               "Actual Rows": 148552,                                                          +
                               "Actual Loops": 1,                                                              +
                               "Inner Unique": false,                                                          +
                               "Merge Cond": "(t.id = mc.movie_id)",                                           +
                               "Shared Hit Blocks": 7,                                                         +
                               "Shared Read Blocks": 79238,                                                    +
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
                                   "Startup Cost": 26973.91,                                                   +
                                   "Total Cost": 27366.15,                                                     +
                                   "Plan Rows": 34,                                                            +
                                   "Plan Width": 8,                                                            +
                                   "Actual Startup Time": 4627.137,                                            +
                                   "Actual Total Time": 5298.078,                                              +
                                   "Actual Rows": 41839,                                                       +
                                   "Actual Loops": 1,                                                          +
                                   "Inner Unique": true,                                                       +
                                   "Merge Cond": "(mk.movie_id = t.id)",                                       +
                                   "Shared Hit Blocks": 4,                                                     +
                                   "Shared Read Blocks": 60452,                                                +
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
                                       "Actual Startup Time": 2309.867,                                        +
                                       "Actual Total Time": 2316.503,                                          +
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
                                           "Actual Startup Time": 2283.149,                                    +
                                           "Actual Total Time": 2296.113,                                      +
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
                                               "Actual Startup Time": 30.327,                                  +
                                               "Actual Total Time": 30.327,                                    +
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
                                                   "Actual Startup Time": 30.306,                              +
                                                   "Actual Total Time": 30.309,                                +
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
                                               "Actual Startup Time": 2219.141,                                +
                                               "Actual Total Time": 2243.843,                                  +
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
                                                   "Actual Startup Time": 0.021,                               +
                                                   "Actual Total Time": 781.901,                               +
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
                                       "Startup Cost": 9654.35,                                                +
                                       "Total Cost": 9850.65,                                                  +
                                       "Plan Rows": 2528312,                                                   +
                                       "Plan Width": 4,                                                        +
                                       "Actual Startup Time": 2317.159,                                        +
                                       "Actual Total Time": 2679.703,                                          +
                                       "Actual Rows": 2525756,                                                 +
                                       "Actual Loops": 1,                                                      +
                                       "Sort Key": ["t.id"],                                                   +
                                       "Sort Method": "quicksort",                                             +
                                       "Sort Space Used": 216819,                                              +
                                       "Sort Space Type": "Memory",                                            +
                                       "Shared Hit Blocks": 1,                                                 +
                                       "Shared Read Blocks": 35997,                                            +
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
                                           "Total Cost": 1303.96,                                              +
                                           "Plan Rows": 2528312,                                               +
                                           "Plan Width": 4,                                                    +
                                           "Actual Startup Time": 10.965,                                      +
                                           "Actual Total Time": 1094.380,                                      +
                                           "Actual Rows": 2528312,                                             +
                                           "Actual Loops": 1,                                                  +
                                           "Shared Hit Blocks": 1,                                             +
                                           "Shared Read Blocks": 35997,                                        +
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
                                   "Actual Startup Time": 1461.022,                                            +
                                   "Actual Total Time": 1622.114,                                              +
                                   "Actual Rows": 2609194,                                                     +
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
                                       "Actual Total Time": 535.259,                                           +
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
                               "Actual Startup Time": 20845.623,                                               +
                               "Actual Total Time": 25707.799,                                                 +
                               "Actual Rows": 43063011,                                                        +
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
                                   "Actual Startup Time": 0.014,                                               +
                                   "Actual Total Time": 6789.617,                                              +
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
                       "Startup Cost": 2440.92,                                                                +
                       "Total Cost": 2443.72,                                                                  +
                       "Plan Rows": 36071,                                                                     +
                       "Plan Width": 19,                                                                       +
                       "Actual Startup Time": 2700.963,                                                        +
                       "Actual Total Time": 2705.130,                                                          +
                       "Actual Rows": 35320,                                                                   +
                       "Actual Loops": 1,                                                                      +
                       "Sort Key": ["n.id"],                                                                   +
                       "Sort Method": "quicksort",                                                             +
                       "Sort Space Used": 4182,                                                                +
                       "Sort Space Type": "Memory",                                                            +
                       "Shared Hit Blocks": 1,                                                                 +
                       "Shared Read Blocks": 55612,                                                            +
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
                           "Relation Name": "name",                                                            +
                           "Alias": "n",                                                                       +
                           "Startup Cost": 0.00,                                                               +
                           "Total Cost": 2356.12,                                                              +
                           "Plan Rows": 36071,                                                                 +
                           "Plan Width": 19,                                                                   +
                           "Actual Startup Time": 1149.160,                                                    +
                           "Actual Total Time": 2684.011,                                                      +
                           "Actual Rows": 36174,                                                               +
                           "Actual Loops": 1,                                                                  +
                           "Filter": "(name ~~ 'Z%'::text)",                                                   +
                           "Rows Removed by Filter": 4131317,                                                  +
                           "Shared Hit Blocks": 1,                                                             +
                           "Shared Read Blocks": 55612,                                                        +
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
                 }                                                                                             +
               ]                                                                                               +
             },                                                                                                +
             {                                                                                                 +
               "Node Type": "Sort",                                                                            +
               "Parent Relationship": "Inner",                                                                 +
               "Parallel Aware": false,                                                                        +
               "Startup Cost": 761.23,                                                                         +
               "Total Cost": 779.47,                                                                           +
               "Plan Rows": 234997,                                                                            +
               "Plan Width": 4,                                                                                +
               "Actual Startup Time": 195.302,                                                                 +
               "Actual Total Time": 221.145,                                                                   +
               "Actual Rows": 234505,                                                                          +
               "Actual Loops": 1,                                                                              +
               "Sort Key": ["cn.id"],                                                                          +
               "Sort Method": "quicksort",                                                                     +
               "Sort Space Used": 17160,                                                                       +
               "Sort Space Type": "Memory",                                                                    +
               "Shared Hit Blocks": 2,                                                                         +
               "Shared Read Blocks": 2992,                                                                     +
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
                   "Node Type": "Seq Scan",                                                                    +
                   "Parent Relationship": "Outer",                                                             +
                   "Parallel Aware": false,                                                                    +
                   "Relation Name": "company_name",                                                            +
                   "Alias": "cn",                                                                              +
                   "Startup Cost": 0.00,                                                                       +
                   "Total Cost": 110.16,                                                                       +
                   "Plan Rows": 234997,                                                                        +
                   "Plan Width": 4,                                                                            +
                   "Actual Startup Time": 9.474,                                                               +
                   "Actual Total Time": 87.967,                                                                +
                   "Actual Rows": 234997,                                                                      +
                   "Actual Loops": 1,                                                                          +
                   "Shared Hit Blocks": 2,                                                                     +
                   "Shared Read Blocks": 2992,                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                 +
                   "Shared Written Blocks": 0,                                                                 +
                   "Local Hit Blocks": 0,                                                                      +
                   "Local Read Blocks": 0,                                                                     +
                   "Local Dirtied Blocks": 0,                                                                  +
                   "Local Written Blocks": 0,                                                                  +
                   "Temp Read Blocks": 0,                                                                      +
                   "Temp Written Blocks": 0                                                                    +
                 }                                                                                             +
               ]                                                                                               +
             }                                                                                                 +
           ]                                                                                                   +
         }                                                                                                     +
       ]                                                                                                       +
     },                                                                                                        +
     "Planning Time": 5852.242,                                                                                +
     "Triggers": [                                                                                             +
     ],                                                                                                        +
     "Execution Time": 46724.732                                                                               +
   }                                                                                                           +
 ]
(1 row)
