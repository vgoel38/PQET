                                             QUERY PLAN                                             
----------------------------------------------------------------------------------------------------
 [                                                                                                 +
   {                                                                                               +
     "Plan": {                                                                                     +
       "Node Type": "Aggregate",                                                                   +
       "Strategy": "Plain",                                                                        +
       "Partial Mode": "Simple",                                                                   +
       "Parallel Aware": false,                                                                    +
       "Startup Cost": 37309.84,                                                                   +
       "Total Cost": 37309.84,                                                                     +
       "Plan Rows": 1,                                                                             +
       "Plan Width": 32,                                                                           +
       "Actual Startup Time": 7736.596,                                                            +
       "Actual Total Time": 7736.596,                                                              +
       "Actual Rows": 1,                                                                           +
       "Actual Loops": 1,                                                                          +
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
           "Node Type": "Merge Join",                                                              +
           "Parent Relationship": "Outer",                                                         +
           "Parallel Aware": false,                                                                +
           "Join Type": "Inner",                                                                   +
           "Startup Cost": 37309.45,                                                               +
           "Total Cost": 37309.84,                                                                 +
           "Plan Rows": 2,                                                                         +
           "Plan Width": 17,                                                                       +
           "Actual Startup Time": 7673.878,                                                        +
           "Actual Total Time": 7724.592,                                                          +
           "Actual Rows": 5228,                                                                    +
           "Actual Loops": 1,                                                                      +
           "Inner Unique": true,                                                                   +
           "Merge Cond": "(mc.company_id = cn.id)",                                                +
           "Shared Hit Blocks": 13,                                                                +
           "Shared Read Blocks": 82230,                                                            +
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
               "Node Type": "Sort",                                                                +
               "Parent Relationship": "Outer",                                                     +
               "Parallel Aware": false,                                                            +
               "Startup Cost": 37176.97,                                                           +
               "Total Cost": 37176.99,                                                             +
               "Plan Rows": 190,                                                                   +
               "Plan Width": 21,                                                                   +
               "Actual Startup Time": 7469.682,                                                    +
               "Actual Total Time": 7494.480,                                                      +
               "Actual Rows": 148547,                                                              +
               "Actual Loops": 1,                                                                  +
               "Sort Key": ["mc.company_id"],                                                      +
               "Sort Method": "quicksort",                                                         +
               "Sort Space Used": 17038,                                                           +
               "Sort Space Type": "Memory",                                                        +
               "Shared Hit Blocks": 11,                                                            +
               "Shared Read Blocks": 79238,                                                        +
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
                   "Plan Width": 21,                                                               +
                   "Actual Startup Time": 6241.847,                                                +
                   "Actual Total Time": 7402.700,                                                  +
                   "Actual Rows": 148552,                                                          +
                   "Actual Loops": 1,                                                              +
                   "Inner Unique": true,                                                           +
                   "Merge Cond": "(mc.movie_id = t.id)",                                           +
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
                       "Startup Cost": 26725.01,                                                   +
                       "Total Cost": 27130.18,                                                     +
                       "Plan Rows": 190,                                                           +
                       "Plan Width": 12,                                                           +
                       "Actual Startup Time": 3927.701,                                            +
                       "Actual Total Time": 4384.009,                                              +
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
                           "Actual Startup Time": 2318.270,                                        +
                           "Actual Total Time": 2324.177,                                          +
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
                               "Actual Startup Time": 2290.860,                                    +
                               "Actual Total Time": 2304.236,                                      +
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
                                   "Actual Startup Time": 20.777,                                  +
                                   "Actual Total Time": 20.778,                                    +
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
                                       "Actual Startup Time": 20.749,                              +
                                       "Actual Total Time": 20.751,                                +
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
                                   "Actual Startup Time": 2235.768,                                +
                                   "Actual Total Time": 2260.679,                                  +
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
                                       "Actual Total Time": 789.419,                               +
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
                           "Actual Startup Time": 1609.312,                                        +
                           "Actual Total Time": 1762.931,                                          +
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
                               "Actual Startup Time": 0.017,                                       +
                               "Actual Total Time": 671.576,                                       +
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
                     },                                                                            +
                     {                                                                             +
                       "Node Type": "Sort",                                                        +
                       "Parent Relationship": "Inner",                                             +
                       "Parallel Aware": false,                                                    +
                       "Startup Cost": 9654.35,                                                    +
                       "Total Cost": 9850.65,                                                      +
                       "Plan Rows": 2528312,                                                       +
                       "Plan Width": 21,                                                           +
                       "Actual Startup Time": 2313.867,                                            +
                       "Actual Total Time": 2634.204,                                              +
                       "Actual Rows": 2525672,                                                     +
                       "Actual Loops": 1,                                                          +
                       "Sort Key": ["t.id"],                                                       +
                       "Sort Method": "quicksort",                                                 +
                       "Sort Space Used": 275055,                                                  +
                       "Sort Space Type": "Memory",                                                +
                       "Shared Hit Blocks": 1,                                                     +
                       "Shared Read Blocks": 35997,                                                +
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
                           "Relation Name": "title",                                               +
                           "Alias": "t",                                                           +
                           "Startup Cost": 0.00,                                                   +
                           "Total Cost": 1303.96,                                                  +
                           "Plan Rows": 2528312,                                                   +
                           "Plan Width": 21,                                                       +
                           "Actual Startup Time": 9.654,                                           +
                           "Actual Total Time": 999.250,                                           +
                           "Actual Rows": 2528312,                                                 +
                           "Actual Loops": 1,                                                      +
                           "Shared Hit Blocks": 1,                                                 +
                           "Shared Read Blocks": 35997,                                            +
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
                 }                                                                                 +
               ]                                                                                   +
             },                                                                                    +
             {                                                                                     +
               "Node Type": "Sort",                                                                +
               "Parent Relationship": "Inner",                                                     +
               "Parallel Aware": false,                                                            +
               "Startup Cost": 132.47,                                                             +
               "Total Cost": 132.65,                                                               +
               "Plan Rows": 2340,                                                                  +
               "Plan Width": 4,                                                                    +
               "Actual Startup Time": 203.390,                                                     +
               "Actual Total Time": 203.675,                                                       +
               "Actual Rows": 2340,                                                                +
               "Actual Loops": 1,                                                                  +
               "Sort Key": ["cn.id"],                                                              +
               "Sort Method": "quicksort",                                                         +
               "Sort Space Used": 206,                                                             +
               "Sort Space Type": "Memory",                                                        +
               "Shared Hit Blocks": 2,                                                             +
               "Shared Read Blocks": 2992,                                                         +
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
                   "Node Type": "Seq Scan",                                                        +
                   "Parent Relationship": "Outer",                                                 +
                   "Parallel Aware": false,                                                        +
                   "Relation Name": "company_name",                                                +
                   "Alias": "cn",                                                                  +
                   "Startup Cost": 0.00,                                                           +
                   "Total Cost": 128.41,                                                           +
                   "Plan Rows": 2340,                                                              +
                   "Plan Width": 4,                                                                +
                   "Actual Startup Time": 17.934,                                                  +
                   "Actual Total Time": 201.982,                                                   +
                   "Actual Rows": 2340,                                                            +
                   "Actual Loops": 1,                                                              +
                   "Filter": "((country_code)::text = '[nl]'::text)",                              +
                   "Rows Removed by Filter": 232657,                                               +
                   "Shared Hit Blocks": 2,                                                         +
                   "Shared Read Blocks": 2992,                                                     +
                   "Shared Dirtied Blocks": 0,                                                     +
                   "Shared Written Blocks": 0,                                                     +
                   "Local Hit Blocks": 0,                                                          +
                   "Local Read Blocks": 0,                                                         +
                   "Local Dirtied Blocks": 0,                                                      +
                   "Local Written Blocks": 0,                                                      +
                   "Temp Read Blocks": 0,                                                          +
                   "Temp Written Blocks": 0                                                        +
                 }                                                                                 +
               ]                                                                                   +
             }                                                                                     +
           ]                                                                                       +
         }                                                                                         +
       ]                                                                                           +
     },                                                                                            +
     "Planning Time": 2352.631,                                                                    +
     "Triggers": [                                                                                 +
     ],                                                                                            +
     "Execution Time": 7799.044                                                                    +
   }                                                                                               +
 ]
(1 row)

