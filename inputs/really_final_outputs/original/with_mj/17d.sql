                                                   QUERY PLAN                                                   
----------------------------------------------------------------------------------------------------------------
 [                                                                                                             +
   {                                                                                                           +
     "Plan": {                                                                                                 +
       "Node Type": "Aggregate",                                                                               +
       "Strategy": "Plain",                                                                                    +
       "Partial Mode": "Simple",                                                                               +
       "Parallel Aware": false,                                                                                +
       "Startup Cost": 197728.97,                                                                              +
       "Total Cost": 197728.97,                                                                                +
       "Plan Rows": 1,                                                                                         +
       "Plan Width": 32,                                                                                       +
       "Actual Startup Time": 46554.569,                                                                       +
       "Actual Total Time": 46554.569,                                                                         +
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
           "Startup Cost": 197692.47,                                                                          +
           "Total Cost": 197728.97,                                                                            +
           "Plan Rows": 2,                                                                                     +
           "Plan Width": 15,                                                                                   +
           "Actual Startup Time": 46498.577,                                                                   +
           "Actual Total Time": 46552.752,                                                                     +
           "Actual Rows": 11538,                                                                               +
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
               "Startup Cost": 196931.25,                                                                      +
               "Total Cost": 196931.25,                                                                        +
               "Plan Rows": 2,                                                                                 +
               "Plan Width": 19,                                                                               +
               "Actual Startup Time": 46296.301,                                                               +
               "Actual Total Time": 46297.776,                                                                 +
               "Actual Rows": 11538,                                                                           +
               "Actual Loops": 1,                                                                              +
               "Sort Key": ["mc.company_id"],                                                                  +
               "Sort Method": "quicksort",                                                                     +
               "Sort Space Used": 1254,                                                                        +
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
                   "Startup Cost": 196930.24,                                                                  +
                   "Total Cost": 196931.25,                                                                    +
                   "Plan Rows": 2,                                                                             +
                   "Plan Width": 19,                                                                           +
                   "Actual Startup Time": 44247.241,                                                           +
                   "Actual Total Time": 46275.046,                                                             +
                   "Actual Rows": 11538,                                                                       +
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
                       "Actual Startup Time": 41579.603,                                                       +
                       "Actual Total Time": 42718.884,                                                         +
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
                           "Actual Startup Time": 27168.421,                                                   +
                           "Actual Total Time": 38702.701,                                                     +
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
                               "Actual Startup Time": 6211.717,                                                +
                               "Actual Total Time": 7331.622,                                                  +
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
                                   "Actual Startup Time": 4736.420,                                            +
                                   "Actual Total Time": 5411.056,                                              +
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
                                       "Actual Startup Time": 2414.067,                                        +
                                       "Actual Total Time": 2420.801,                                          +
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
                                           "Actual Startup Time": 2386.870,                                    +
                                           "Actual Total Time": 2400.020,                                      +
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
                                               "Actual Startup Time": 30.287,                                  +
                                               "Actual Total Time": 30.288,                                    +
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
                                                   "Actual Startup Time": 30.265,                              +
                                                   "Actual Total Time": 30.268,                                +
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
                                               "Actual Startup Time": 2322.251,                                +
                                               "Actual Total Time": 2347.407,                                  +
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
                                                   "Actual Total Time": 855.597,                               +
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
                                       "Actual Startup Time": 2322.241,                                        +
                                       "Actual Total Time": 2687.874,                                          +
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
                                           "Actual Startup Time": 15.031,                                      +
                                           "Actual Total Time": 1103.179,                                      +
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
                                   "Actual Startup Time": 1475.026,                                            +
                                   "Actual Total Time": 1636.140,                                              +
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
                                       "Actual Startup Time": 0.017,                                           +
                                       "Actual Total Time": 544.826,                                           +
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
                               "Actual Startup Time": 20952.462,                                               +
                               "Actual Total Time": 25743.982,                                                 +
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
                                   "Actual Startup Time": 0.015,                                               +
                                   "Actual Total Time": 6845.429,                                              +
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
                       "Startup Cost": 2364.39,                                                                +
                       "Total Cost": 2364.73,                                                                  +
                       "Plan Rows": 4398,                                                                      +
                       "Plan Width": 19,                                                                       +
                       "Actual Startup Time": 2663.072,                                                        +
                       "Actual Total Time": 2663.738,                                                          +
                       "Actual Rows": 5082,                                                                    +
                       "Actual Loops": 1,                                                                      +
                       "Sort Key": ["n.id"],                                                                   +
                       "Sort Method": "quicksort",                                                             +
                       "Sort Space Used": 587,                                                                 +
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
                           "Plan Rows": 4398,                                                                  +
                           "Plan Width": 19,                                                                   +
                           "Actual Startup Time": 69.925,                                                      +
                           "Actual Total Time": 2658.347,                                                      +
                           "Actual Rows": 5216,                                                                +
                           "Actual Loops": 1,                                                                  +
                           "Filter": "(name ~~ '%Bert%'::text)",                                               +
                           "Rows Removed by Filter": 4162275,                                                  +
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
               "Actual Startup Time": 202.268,                                                                 +
               "Actual Total Time": 226.760,                                                                   +
               "Actual Rows": 234893,                                                                          +
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
                   "Actual Startup Time": 5.681,                                                               +
                   "Actual Total Time": 95.863,                                                                +
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
     "Planning Time": 5900.309,                                                                                +
     "Triggers": [                                                                                             +
     ],                                                                                                        +
     "Execution Time": 46700.953                                                                               +
   }                                                                                                           +
 ]
(1 row)

