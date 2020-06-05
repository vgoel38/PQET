                                               QUERY PLAN                                               
--------------------------------------------------------------------------------------------------------
 [                                                                                                     +
   {                                                                                                   +
     "Plan": {                                                                                         +
       "Node Type": "Aggregate",                                                                       +
       "Strategy": "Plain",                                                                            +
       "Partial Mode": "Simple",                                                                       +
       "Parallel Aware": false,                                                                        +
       "Startup Cost": 37534.34,                                                                       +
       "Total Cost": 37534.34,                                                                         +
       "Plan Rows": 1,                                                                                 +
       "Plan Width": 32,                                                                               +
       "Actual Startup Time": 7711.272,                                                                +
       "Actual Total Time": 7711.272,                                                                  +
       "Actual Rows": 1,                                                                               +
       "Actual Loops": 1,                                                                              +
       "Shared Hit Blocks": 13,                                                                        +
       "Shared Read Blocks": 82230,                                                                    +
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
           "Total Cost": 37534.34,                                                                     +
           "Plan Rows": 68,                                                                            +
           "Plan Width": 17,                                                                           +
           "Actual Startup Time": 6979.323,                                                            +
           "Actual Total Time": 7679.567,                                                              +
           "Actual Rows": 68316,                                                                       +
           "Actual Loops": 1,                                                                          +
           "Inner Unique": true,                                                                       +
           "Merge Cond": "(mc.movie_id = t.id)",                                                       +
           "Shared Hit Blocks": 13,                                                                    +
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
               "Actual Startup Time": 4663.985,                                                        +
               "Actual Total Time": 4673.157,                                                          +
               "Actual Rows": 68316,                                                                   +
               "Actual Loops": 1,                                                                      +
               "Sort Key": ["mc.movie_id"],                                                            +
               "Sort Method": "quicksort",                                                             +
               "Sort Space Used": 6275,                                                                +
               "Sort Space Type": "Memory",                                                            +
               "Shared Hit Blocks": 12,                                                                +
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
                   "Actual Startup Time": 4555.838,                                                    +
                   "Actual Total Time": 4619.121,                                                      +
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
                       "Actual Startup Time": 4351.943,                                                +
                       "Actual Total Time": 4369.581,                                                  +
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
                           "Actual Startup Time": 3894.153,                                            +
                           "Actual Total Time": 4303.729,                                              +
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
                               "Actual Startup Time": 2408.602,                                        +
                               "Actual Total Time": 2412.728,                                          +
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
                                   "Actual Startup Time": 2381.734,                                    +
                                   "Actual Total Time": 2394.904,                                      +
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
                                       "Actual Startup Time": 20.822,                                  +
                                       "Actual Total Time": 20.823,                                    +
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
                                           "Actual Startup Time": 20.799,                              +
                                           "Actual Total Time": 20.801,                                +
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
                                       "Actual Startup Time": 2327.142,                                +
                                       "Actual Total Time": 2351.688,                                  +
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
                                           "Actual Startup Time": 0.031,                               +
                                           "Actual Total Time": 849.708,                               +
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
                               "Actual Startup Time": 1485.436,                                        +
                               "Actual Total Time": 1605.371,                                          +
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
                                   "Actual Total Time": 547.984,                                       +
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
                       "Actual Startup Time": 203.886,                                                 +
                       "Actual Total Time": 212.865,                                                   +
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
                           "Actual Startup Time": 1.864,                                               +
                           "Actual Total Time": 160.875,                                               +
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
               "Actual Startup Time": 2315.013,                                                        +
               "Actual Total Time": 2629.674,                                                          +
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
                   "Actual Startup Time": 11.030,                                                      +
                   "Actual Total Time": 1012.680,                                                      +
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
         }                                                                                             +
       ]                                                                                               +
     },                                                                                                +
     "Planning Time": 2465.796,                                                                        +
     "Triggers": [                                                                                     +
     ],                                                                                                +
     "Execution Time": 7754.520                                                                        +
   }                                                                                                   +
 ]
(1 row)

