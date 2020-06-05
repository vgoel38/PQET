                                               QUERY PLAN                                               
--------------------------------------------------------------------------------------------------------
 [                                                                                                     +
   {                                                                                                   +
     "Plan": {                                                                                         +
       "Node Type": "Aggregate",                                                                       +
       "Strategy": "Plain",                                                                            +
       "Partial Mode": "Simple",                                                                       +
       "Parallel Aware": false,                                                                        +
       "Startup Cost": 37327.03,                                                                       +
       "Total Cost": 37327.03,                                                                         +
       "Plan Rows": 1,                                                                                 +
       "Plan Width": 32,                                                                               +
       "Actual Startup Time": 7686.073,                                                                +
       "Actual Total Time": 7686.073,                                                                  +
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
           "Startup Cost": 36934.83,                                                                   +
           "Total Cost": 37327.03,                                                                     +
           "Plan Rows": 8,                                                                             +
           "Plan Width": 17,                                                                           +
           "Actual Startup Time": 7008.319,                                                            +
           "Actual Total Time": 7665.760,                                                              +
           "Actual Rows": 7834,                                                                        +
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
               "Startup Cost": 27280.48,                                                               +
               "Total Cost": 27280.48,                                                                 +
               "Plan Rows": 8,                                                                         +
               "Plan Width": 8,                                                                        +
               "Actual Startup Time": 4699.827,                                                        +
               "Actual Total Time": 4700.981,                                                          +
               "Actual Rows": 7834,                                                                    +
               "Actual Loops": 1,                                                                      +
               "Sort Key": ["mc.movie_id"],                                                            +
               "Sort Method": "quicksort",                                                             +
               "Sort Space Used": 560,                                                                 +
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
                   "Startup Cost": 27278.92,                                                           +
                   "Total Cost": 27280.47,                                                             +
                   "Plan Rows": 8,                                                                     +
                   "Plan Width": 8,                                                                    +
                   "Actual Startup Time": 4642.383,                                                    +
                   "Actual Total Time": 4679.852,                                                      +
                   "Actual Rows": 7834,                                                                +
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
                       "Actual Startup Time": 4417.732,                                                +
                       "Actual Total Time": 4435.955,                                                  +
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
                           "Actual Startup Time": 3958.151,                                            +
                           "Actual Total Time": 4369.336,                                              +
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
                               "Actual Startup Time": 2330.536,                                        +
                               "Actual Total Time": 2334.664,                                          +
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
                                   "Actual Startup Time": 2303.599,                                    +
                                   "Actual Total Time": 2316.682,                                      +
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
                                       "Actual Startup Time": 20.756,                                  +
                                       "Actual Total Time": 20.757,                                    +
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
                                           "Actual Startup Time": 20.734,                              +
                                           "Actual Total Time": 20.736,                                +
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
                                       "Actual Startup Time": 2249.337,                                +
                                       "Actual Total Time": 2273.888,                                  +
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
                                           "Actual Startup Time": 0.033,                               +
                                           "Actual Total Time": 799.111,                               +
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
                               "Actual Startup Time": 1627.501,                                        +
                               "Actual Total Time": 1747.323,                                          +
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
                                   "Actual Startup Time": 0.014,                                       +
                                   "Actual Total Time": 687.792,                                       +
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
                       "Startup Cost": 148.53,                                                         +
                       "Total Cost": 149.28,                                                           +
                       "Plan Rows": 9775,                                                              +
                       "Plan Width": 4,                                                                +
                       "Actual Startup Time": 222.676,                                                 +
                       "Actual Total Time": 223.755,                                                   +
                       "Actual Rows": 9766,                                                            +
                       "Actual Loops": 1,                                                              +
                       "Sort Key": ["cn.id"],                                                          +
                       "Sort Method": "quicksort",                                                     +
                       "Sort Space Used": 843,                                                         +
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
                           "Plan Rows": 9775,                                                          +
                           "Plan Width": 4,                                                            +
                           "Actual Startup Time": 36.013,                                              +
                           "Actual Total Time": 217.092,                                               +
                           "Actual Rows": 9775,                                                        +
                           "Actual Loops": 1,                                                          +
                           "Filter": "((country_code)::text = '[de]'::text)",                          +
                           "Rows Removed by Filter": 225222,                                           +
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
               "Actual Startup Time": 2305.269,                                                        +
               "Actual Total Time": 2614.034,                                                          +
               "Actual Rows": 2525432,                                                                 +
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
                   "Actual Startup Time": 4.810,                                                       +
                   "Actual Total Time": 996.909,                                                       +
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
     "Planning Time": 2443.595,                                                                        +
     "Triggers": [                                                                                     +
     ],                                                                                                +
     "Execution Time": 7747.284                                                                        +
   }                                                                                                   +
 ]
(1 row)
