                                               QUERY PLAN                                               
--------------------------------------------------------------------------------------------------------
 [                                                                                                     +
   {                                                                                                   +
     "Plan": {                                                                                         +
       "Node Type": "Aggregate",                                                                       +
       "Strategy": "Plain",                                                                            +
       "Partial Mode": "Simple",                                                                       +
       "Parallel Aware": false,                                                                        +
       "Startup Cost": 21997.15,                                                                       +
       "Total Cost": 21997.15,                                                                         +
       "Plan Rows": 1,                                                                                 +
       "Plan Width": 96,                                                                               +
       "Actual Startup Time": 5038.537,                                                                +
       "Actual Total Time": 5038.537,                                                                  +
       "Actual Rows": 1,                                                                               +
       "Actual Loops": 1,                                                                              +
       "Shared Hit Blocks": 36312,                                                                     +
       "Shared Read Blocks": 36958,                                                                    +
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
           "Startup Cost": 21604.92,                                                                   +
           "Total Cost": 21997.15,                                                                     +
           "Plan Rows": 2,                                                                             +
           "Plan Width": 46,                                                                           +
           "Actual Startup Time": 4930.487,                                                            +
           "Actual Total Time": 4991.361,                                                              +
           "Actual Rows": 4388,                                                                        +
           "Actual Loops": 1,                                                                          +
           "Inner Unique": true,                                                                       +
           "Merge Cond": "(mk.movie_id = t1.id)",                                                      +
           "Shared Hit Blocks": 36312,                                                                 +
           "Shared Read Blocks": 36958,                                                                +
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
               "Startup Cost": 11950.57,                                                               +
               "Total Cost": 11950.57,                                                                 +
               "Plan Rows": 2,                                                                         +
               "Plan Width": 37,                                                                       +
               "Actual Startup Time": 3448.943,                                                        +
               "Actual Total Time": 3449.602,                                                          +
               "Actual Rows": 4388,                                                                    +
               "Actual Loops": 1,                                                                      +
               "Sort Key": ["mk.movie_id"],                                                            +
               "Sort Method": "quicksort",                                                             +
               "Sort Space Used": 585,                                                                 +
               "Sort Space Type": "Memory",                                                            +
               "Shared Hit Blocks": 314,                                                               +
               "Shared Read Blocks": 36958,                                                            +
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
                   "Startup Cost": 11558.53,                                                           +
                   "Total Cost": 11950.57,                                                             +
                   "Plan Rows": 2,                                                                     +
                   "Plan Width": 37,                                                                   +
                   "Actual Startup Time": 2769.328,                                                    +
                   "Actual Total Time": 3430.063,                                                      +
                   "Actual Rows": 4388,                                                                +
                   "Actual Loops": 1,                                                                  +
                   "Inner Unique": true,                                                               +
                   "Merge Cond": "(ml.linked_movie_id = t2.id)",                                       +
                   "Shared Hit Blocks": 310,                                                           +
                   "Shared Read Blocks": 36958,                                                        +
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
                       "Startup Cost": 1904.14,                                                        +
                       "Total Cost": 1904.14,                                                          +
                       "Plan Rows": 2,                                                                 +
                       "Plan Width": 24,                                                               +
                       "Actual Startup Time": 446.064,                                                 +
                       "Actual Total Time": 446.683,                                                   +
                       "Actual Rows": 4388,                                                            +
                       "Actual Loops": 1,                                                              +
                       "Sort Key": ["ml.linked_movie_id"],                                             +
                       "Sort Method": "quicksort",                                                     +
                       "Sort Space Used": 535,                                                         +
                       "Sort Space Type": "Memory",                                                    +
                       "Shared Hit Blocks": 309,                                                       +
                       "Shared Read Blocks": 961,                                                      +
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
                           "Startup Cost": 1904.13,                                                    +
                           "Total Cost": 1904.14,                                                      +
                           "Plan Rows": 2,                                                             +
                           "Plan Width": 24,                                                           +
                           "Actual Startup Time": 439.730,                                             +
                           "Actual Total Time": 442.599,                                               +
                           "Actual Rows": 4388,                                                        +
                           "Actual Loops": 1,                                                          +
                           "Inner Unique": true,                                                       +
                           "Merge Cond": "(ml.link_type_id = lt.id)",                                  +
                           "Shared Hit Blocks": 309,                                                   +
                           "Shared Read Blocks": 961,                                                  +
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
                               "Startup Cost": 1904.09,                                                +
                               "Total Cost": 1904.09,                                                  +
                               "Plan Rows": 2,                                                         +
                               "Plan Width": 16,                                                       +
                               "Actual Startup Time": 439.685,                                         +
                               "Actual Total Time": 440.206,                                           +
                               "Actual Rows": 4388,                                                    +
                               "Actual Loops": 1,                                                      +
                               "Sort Key": ["ml.link_type_id"],                                        +
                               "Sort Method": "quicksort",                                             +
                               "Sort Space Used": 398,                                                 +
                               "Sort Space Type": "Memory",                                            +
                               "Shared Hit Blocks": 308,                                               +
                               "Shared Read Blocks": 961,                                              +
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
                                   "Startup Cost": 1857.25,                                            +
                                   "Total Cost": 1904.09,                                              +
                                   "Plan Rows": 2,                                                     +
                                   "Plan Width": 16,                                                   +
                                   "Actual Startup Time": 433.496,                                     +
                                   "Actual Total Time": 437.102,                                       +
                                   "Actual Rows": 4388,                                                +
                                   "Actual Loops": 1,                                                  +
                                   "Inner Unique": true,                                               +
                                   "Merge Cond": "(mk.keyword_id = k.id)",                             +
                                   "Shared Hit Blocks": 308,                                           +
                                   "Shared Read Blocks": 961,                                          +
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
                                       "Startup Cost": 1851.12,                                        +
                                       "Total Cost": 1874.54,                                          +
                                       "Plan Rows": 301621,                                            +
                                       "Plan Width": 20,                                               +
                                       "Actual Startup Time": 381.184,                                 +
                                       "Actual Total Time": 385.846,                                   +
                                       "Actual Rows": 25685,                                           +
                                       "Actual Loops": 1,                                              +
                                       "Sort Key": ["mk.keyword_id"],                                  +
                                       "Sort Method": "quicksort",                                     +
                                       "Sort Space Used": 34804,                                       +
                                       "Sort Space Type": "Memory",                                    +
                                       "Shared Hit Blocks": 308,                                       +
                                       "Shared Read Blocks": 957,                                      +
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
                                           "Node Type": "Merge Join",                                  +
                                           "Parent Relationship": "Outer",                             +
                                           "Parallel Aware": false,                                    +
                                           "Join Type": "Inner",                                       +
                                           "Startup Cost": 76.48,                                      +
                                           "Total Cost": 998.60,                                       +
                                           "Plan Rows": 301621,                                        +
                                           "Plan Width": 20,                                           +
                                           "Actual Startup Time": 49.882,                              +
                                           "Actual Total Time": 260.117,                               +
                                           "Actual Rows": 288192,                                      +
                                           "Actual Loops": 1,                                          +
                                           "Inner Unique": false,                                      +
                                           "Merge Cond": "(mk.movie_id = ml.movie_id)",                +
                                           "Shared Hit Blocks": 308,                                   +
                                           "Shared Read Blocks": 957,                                  +
                                           "Shared Dirtied Blocks": 0,                                 +
                                           "Shared Written Blocks": 0,                                 +
                                           "Local Hit Blocks": 0,                                      +
                                           "Local Read Blocks": 0,                                     +
                                           "Local Dirtied Blocks": 0,                                  +
                                           "Local Written Blocks": 0,                                  +
                                           "Temp Read Blocks": 0,                                      +
                                           "Temp Written Blocks": 0,                                   +
                                           "Plans": [                                                  +
                                             {                                                         +
                                               "Node Type": "Index Scan",                              +
                                               "Parent Relationship": "Outer",                         +
                                               "Parallel Aware": false,                                +
                                               "Scan Direction": "Forward",                            +
                                               "Index Name": "movie_id_movie_keyword",                 +
                                               "Relation Name": "movie_keyword",                       +
                                               "Alias": "mk",                                          +
                                               "Startup Cost": 0.01,                                   +
                                               "Total Cost": 39285.80,                                 +
                                               "Plan Rows": 4523930,                                   +
                                               "Plan Width": 8,                                        +
                                               "Actual Startup Time": 0.036,                           +
                                               "Actual Total Time": 90.111,                            +
                                               "Actual Rows": 97855,                                   +
                                               "Actual Loops": 1,                                      +
                                               "Shared Hit Blocks": 304,                               +
                                               "Shared Read Blocks": 798,                              +
                                               "Shared Dirtied Blocks": 0,                             +
                                               "Shared Written Blocks": 0,                             +
                                               "Local Hit Blocks": 0,                                  +
                                               "Local Read Blocks": 0,                                 +
                                               "Local Dirtied Blocks": 0,                              +
                                               "Local Written Blocks": 0,                              +
                                               "Temp Read Blocks": 0,                                  +
                                               "Temp Written Blocks": 0                                +
                                             },                                                        +
                                             {                                                         +
                                               "Node Type": "Sort",                                    +
                                               "Parent Relationship": "Inner",                         +
                                               "Parallel Aware": false,                                +
                                               "Startup Cost": 76.46,                                  +
                                               "Total Cost": 78.79,                                    +
                                               "Plan Rows": 29997,                                     +
                                               "Plan Width": 12,                                       +
                                               "Actual Startup Time": 49.838,                          +
                                               "Actual Total Time": 69.187,                            +
                                               "Actual Rows": 301429,                                  +
                                               "Actual Loops": 1,                                      +
                                               "Sort Key": ["ml.movie_id"],                            +
                                               "Sort Method": "quicksort",                             +
                                               "Sort Space Used": 2175,                                +
                                               "Sort Space Type": "Memory",                            +
                                               "Shared Hit Blocks": 4,                                 +
                                               "Shared Read Blocks": 159,                              +
                                               "Shared Dirtied Blocks": 0,                             +
                                               "Shared Written Blocks": 0,                             +
                                               "Local Hit Blocks": 0,                                  +
                                               "Local Read Blocks": 0,                                 +
                                               "Local Dirtied Blocks": 0,                              +
                                               "Local Written Blocks": 0,                              +
                                               "Temp Read Blocks": 0,                                  +
                                               "Temp Written Blocks": 0,                               +
                                               "Plans": [                                              +
                                                 {                                                     +
                                                   "Node Type": "Seq Scan",                            +
                                                   "Parent Relationship": "Outer",                     +
                                                   "Parallel Aware": false,                            +
                                                   "Relation Name": "movie_link",                      +
                                                   "Alias": "ml",                                      +
                                                   "Startup Cost": 0.00,                               +
                                                   "Total Cost": 7.19,                                 +
                                                   "Plan Rows": 29997,                                 +
                                                   "Plan Width": 12,                                   +
                                                   "Actual Startup Time": 0.016,                       +
                                                   "Actual Total Time": 30.707,                        +
                                                   "Actual Rows": 29997,                               +
                                                   "Actual Loops": 1,                                  +
                                                   "Shared Hit Blocks": 4,                             +
                                                   "Shared Read Blocks": 159,                          +
                                                   "Shared Dirtied Blocks": 0,                         +
                                                   "Shared Written Blocks": 0,                         +
                                                   "Local Hit Blocks": 0,                              +
                                                   "Local Read Blocks": 0,                             +
                                                   "Local Dirtied Blocks": 0,                          +
                                                   "Local Written Blocks": 0,                          +
                                                   "Temp Read Blocks": 0,                              +
                                                   "Temp Written Blocks": 0                            +
                                                 }                                                     +
                                               ]                                                       +
                                             }                                                         +
                                           ]                                                           +
                                         }                                                             +
                                       ]                                                               +
                                     },                                                                +
                                     {                                                                 +
                                       "Node Type": "Sort",                                            +
                                       "Parent Relationship": "Inner",                                 +
                                       "Parallel Aware": false,                                        +
                                       "Startup Cost": 6.13,                                           +
                                       "Total Cost": 6.13,                                             +
                                       "Plan Rows": 1,                                                 +
                                       "Plan Width": 4,                                                +
                                       "Actual Startup Time": 40.729,                                  +
                                       "Actual Total Time": 40.730,                                    +
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
                                           "Actual Startup Time": 40.713,                              +
                                           "Actual Total Time": 40.716,                                +
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
                                     }                                                                 +
                                   ]                                                                   +
                                 }                                                                     +
                               ]                                                                       +
                             },                                                                        +
                             {                                                                         +
                               "Node Type": "Sort",                                                    +
                               "Parent Relationship": "Inner",                                         +
                               "Parallel Aware": false,                                                +
                               "Startup Cost": 0.04,                                                   +
                               "Total Cost": 0.05,                                                     +
                               "Plan Rows": 18,                                                        +
                               "Plan Width": 16,                                                       +
                               "Actual Startup Time": 0.036,                                           +
                               "Actual Total Time": 0.039,                                             +
                               "Actual Rows": 17,                                                      +
                               "Actual Loops": 1,                                                      +
                               "Sort Key": ["lt.id"],                                                  +
                               "Sort Method": "quicksort",                                             +
                               "Sort Space Used": 25,                                                  +
                               "Sort Space Type": "Memory",                                            +
                               "Shared Hit Blocks": 1,                                                 +
                               "Shared Read Blocks": 0,                                                +
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
                                   "Relation Name": "link_type",                                       +
                                   "Alias": "lt",                                                      +
                                   "Startup Cost": 0.00,                                               +
                                   "Total Cost": 0.03,                                                 +
                                   "Plan Rows": 18,                                                    +
                                   "Plan Width": 16,                                                   +
                                   "Actual Startup Time": 0.012,                                       +
                                   "Actual Total Time": 0.019,                                         +
                                   "Actual Rows": 18,                                                  +
                                   "Actual Loops": 1,                                                  +
                                   "Shared Hit Blocks": 1,                                             +
                                   "Shared Read Blocks": 0,                                            +
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
                       "Startup Cost": 9654.35,                                                        +
                       "Total Cost": 9850.65,                                                          +
                       "Plan Rows": 2528312,                                                           +
                       "Plan Width": 21,                                                               +
                       "Actual Startup Time": 2321.322,                                                +
                       "Actual Total Time": 2633.398,                                                  +
                       "Actual Rows": 2523213,                                                         +
                       "Actual Loops": 1,                                                              +
                       "Sort Key": ["t2.id"],                                                          +
                       "Sort Method": "quicksort",                                                     +
                       "Sort Space Used": 275055,                                                      +
                       "Sort Space Type": "Memory",                                                    +
                       "Shared Hit Blocks": 1,                                                         +
                       "Shared Read Blocks": 35997,                                                    +
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
                           "Relation Name": "title",                                                   +
                           "Alias": "t2",                                                              +
                           "Startup Cost": 0.00,                                                       +
                           "Total Cost": 1303.96,                                                      +
                           "Plan Rows": 2528312,                                                       +
                           "Plan Width": 21,                                                           +
                           "Actual Startup Time": 24.825,                                              +
                           "Actual Total Time": 1023.842,                                              +
                           "Actual Rows": 2528312,                                                     +
                           "Actual Loops": 1,                                                          +
                           "Shared Hit Blocks": 1,                                                     +
                           "Shared Read Blocks": 35997,                                                +
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
               "Actual Startup Time": 1480.264,                                                        +
               "Actual Total Time": 1506.926,                                                          +
               "Actual Rows": 162940,                                                                  +
               "Actual Loops": 1,                                                                      +
               "Sort Key": ["t1.id"],                                                                  +
               "Sort Method": "quicksort",                                                             +
               "Sort Space Used": 275055,                                                              +
               "Sort Space Type": "Memory",                                                            +
               "Shared Hit Blocks": 35998,                                                             +
               "Shared Read Blocks": 0,                                                                +
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
                   "Alias": "t1",                                                                      +
                   "Startup Cost": 0.00,                                                               +
                   "Total Cost": 1303.96,                                                              +
                   "Plan Rows": 2528312,                                                               +
                   "Plan Width": 21,                                                                   +
                   "Actual Startup Time": 0.015,                                                       +
                   "Actual Total Time": 389.744,                                                       +
                   "Actual Rows": 2528312,                                                             +
                   "Actual Loops": 1,                                                                  +
                   "Shared Hit Blocks": 35998,                                                         +
                   "Shared Read Blocks": 0,                                                            +
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
     "Planning Time": 1402.233,                                                                        +
     "Triggers": [                                                                                     +
     ],                                                                                                +
     "Execution Time": 5080.632                                                                        +
   }                                                                                                   +
 ]
(1 row)

