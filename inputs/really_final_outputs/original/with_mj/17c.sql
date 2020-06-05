                                                   QUERY PLAN                                                   
----------------------------------------------------------------------------------------------------------------
 [                                                                                                             +
   {                                                                                                           +
     "Plan": {                                                                                                 +
       "Node Type": "Aggregate",                                                                               +
       "Strategy": "Plain",                                                                                    +
       "Partial Mode": "Simple",                                                                               +
       "Parallel Aware": false,                                                                                +
       "Startup Cost": 197724.64,                                                                              +
       "Total Cost": 197724.64,                                                                                +
       "Plan Rows": 1,                                                                                         +
       "Plan Width": 64,                                                                                       +
       "Actual Startup Time": 46276.945,                                                                       +
       "Actual Total Time": 46276.945,                                                                         +
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
           "Startup Cost": 197688.14,                                                                          +
           "Total Cost": 197724.64,                                                                            +
           "Plan Rows": 1,                                                                                     +
           "Plan Width": 15,                                                                                   +
           "Actual Startup Time": 46227.265,                                                                   +
           "Actual Total Time": 46276.556,                                                                     +
           "Actual Rows": 1918,                                                                                +
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
               "Startup Cost": 196926.92,                                                                      +
               "Total Cost": 196926.92,                                                                        +
               "Plan Rows": 1,                                                                                 +
               "Plan Width": 19,                                                                               +
               "Actual Startup Time": 46040.003,                                                               +
               "Actual Total Time": 46040.257,                                                                 +
               "Actual Rows": 1918,                                                                            +
               "Actual Loops": 1,                                                                              +
               "Sort Key": ["mc.company_id"],                                                                  +
               "Sort Method": "quicksort",                                                                     +
               "Sort Space Used": 175,                                                                         +
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
                   "Startup Cost": 196926.21,                                                                  +
                   "Total Cost": 196926.92,                                                                    +
                   "Plan Rows": 1,                                                                             +
                   "Plan Width": 19,                                                                           +
                   "Actual Startup Time": 45005.552,                                                           +
                   "Actual Total Time": 46022.084,                                                             +
                   "Actual Rows": 1918,                                                                        +
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
                       "Actual Startup Time": 41310.079,                                                       +
                       "Actual Total Time": 42464.965,                                                         +
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
                           "Actual Startup Time": 27011.880,                                                   +
                           "Actual Total Time": 38442.651,                                                     +
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
                               "Actual Startup Time": 6095.675,                                                +
                               "Actual Total Time": 7217.092,                                                  +
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
                                   "Actual Startup Time": 4625.554,                                            +
                                   "Actual Total Time": 5295.919,                                              +
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
                                       "Actual Startup Time": 2310.651,                                        +
                                       "Actual Total Time": 2317.289,                                          +
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
                                           "Actual Startup Time": 2283.922,                                    +
                                           "Actual Total Time": 2296.816,                                      +
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
                                               "Actual Startup Time": 30.330,                                  +
                                               "Actual Total Time": 30.331,                                    +
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
                                                   "Actual Startup Time": 30.309,                              +
                                                   "Actual Total Time": 30.312,                                +
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
                                               "Actual Startup Time": 2219.770,                                +
                                               "Actual Total Time": 2244.422,                                  +
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
                                                   "Actual Startup Time": 0.022,                               +
                                                   "Actual Total Time": 781.267,                               +
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
                                       "Actual Startup Time": 2314.796,                                        +
                                       "Actual Total Time": 2677.307,                                          +
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
                                           "Actual Startup Time": 10.184,                                      +
                                           "Actual Total Time": 1097.542,                                      +
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
                                   "Actual Startup Time": 1469.849,                                            +
                                   "Actual Total Time": 1631.486,                                              +
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
                                       "Actual Total Time": 532.602,                                           +
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
                               "Actual Startup Time": 20911.995,                                               +
                               "Actual Total Time": 25619.706,                                                 +
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
                                   "Actual Total Time": 6846.741,                                              +
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
                       "Startup Cost": 2360.36,                                                                +
                       "Total Cost": 2360.55,                                                                  +
                       "Plan Rows": 2425,                                                                      +
                       "Plan Width": 19,                                                                       +
                       "Actual Startup Time": 2665.612,                                                        +
                       "Actual Total Time": 2665.870,                                                          +
                       "Actual Rows": 2609,                                                                    +
                       "Actual Loops": 1,                                                                      +
                       "Sort Key": ["n.id"],                                                                   +
                       "Sort Method": "quicksort",                                                             +
                       "Sort Space Used": 265,                                                                 +
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
                           "Plan Rows": 2425,                                                                  +
                           "Plan Width": 19,                                                                   +
                           "Actual Startup Time": 1127.636,                                                    +
                           "Actual Total Time": 2664.122,                                                      +
                           "Actual Rows": 2664,                                                                +
                           "Actual Loops": 1,                                                                  +
                           "Filter": "(name ~~ 'X%'::text)",                                                   +
                           "Rows Removed by Filter": 4164827,                                                  +
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
               "Actual Startup Time": 187.251,                                                                 +
               "Actual Total Time": 211.245,                                                                   +
               "Actual Rows": 233280,                                                                          +
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
                   "Actual Startup Time": 3.677,                                                               +
                   "Actual Total Time": 85.749,                                                                +
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
     "Planning Time": 6073.253,                                                                                +
     "Triggers": [                                                                                             +
     ],                                                                                                        +
     "Execution Time": 46427.148                                                                               +
   }                                                                                                           +
 ]
(1 row)

