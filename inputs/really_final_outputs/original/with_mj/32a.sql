                                           QUERY PLAN                                            
-------------------------------------------------------------------------------------------------
 [                                                                                              +
   {                                                                                            +
     "Plan": {                                                                                  +
       "Node Type": "Aggregate",                                                                +
       "Strategy": "Plain",                                                                     +
       "Partial Mode": "Simple",                                                                +
       "Parallel Aware": false,                                                                 +
       "Startup Cost": 21997.15,                                                                +
       "Total Cost": 21997.15,                                                                  +
       "Plan Rows": 1,                                                                          +
       "Plan Width": 96,                                                                        +
       "Actual Startup Time": 468.494,                                                          +
       "Actual Total Time": 468.494,                                                            +
       "Actual Rows": 1,                                                                        +
       "Actual Loops": 1,                                                                       +
       "Shared Hit Blocks": 312,                                                                +
       "Shared Read Blocks": 961,                                                               +
       "Shared Dirtied Blocks": 0,                                                              +
       "Shared Written Blocks": 0,                                                              +
       "Local Hit Blocks": 0,                                                                   +
       "Local Read Blocks": 0,                                                                  +
       "Local Dirtied Blocks": 0,                                                               +
       "Local Written Blocks": 0,                                                               +
       "Temp Read Blocks": 0,                                                                   +
       "Temp Written Blocks": 0,                                                                +
       "Plans": [                                                                               +
         {                                                                                      +
           "Node Type": "Merge Join",                                                           +
           "Parent Relationship": "Outer",                                                      +
           "Parallel Aware": false,                                                             +
           "Join Type": "Inner",                                                                +
           "Startup Cost": 21604.92,                                                            +
           "Total Cost": 21997.15,                                                              +
           "Plan Rows": 2,                                                                      +
           "Plan Width": 46,                                                                    +
           "Actual Startup Time": 468.456,                                                      +
           "Actual Total Time": 468.456,                                                        +
           "Actual Rows": 0,                                                                    +
           "Actual Loops": 1,                                                                   +
           "Inner Unique": true,                                                                +
           "Merge Cond": "(mk.movie_id = t1.id)",                                               +
           "Shared Hit Blocks": 312,                                                            +
           "Shared Read Blocks": 961,                                                           +
           "Shared Dirtied Blocks": 0,                                                          +
           "Shared Written Blocks": 0,                                                          +
           "Local Hit Blocks": 0,                                                               +
           "Local Read Blocks": 0,                                                              +
           "Local Dirtied Blocks": 0,                                                           +
           "Local Written Blocks": 0,                                                           +
           "Temp Read Blocks": 0,                                                               +
           "Temp Written Blocks": 0,                                                            +
           "Plans": [                                                                           +
             {                                                                                  +
               "Node Type": "Sort",                                                             +
               "Parent Relationship": "Outer",                                                  +
               "Parallel Aware": false,                                                         +
               "Startup Cost": 11950.57,                                                        +
               "Total Cost": 11950.57,                                                          +
               "Plan Rows": 2,                                                                  +
               "Plan Width": 37,                                                                +
               "Actual Startup Time": 468.455,                                                  +
               "Actual Total Time": 468.455,                                                    +
               "Actual Rows": 0,                                                                +
               "Actual Loops": 1,                                                               +
               "Sort Key": ["mk.movie_id"],                                                     +
               "Sort Method": "quicksort",                                                      +
               "Sort Space Used": 25,                                                           +
               "Sort Space Type": "Memory",                                                     +
               "Shared Hit Blocks": 312,                                                        +
               "Shared Read Blocks": 961,                                                       +
               "Shared Dirtied Blocks": 0,                                                      +
               "Shared Written Blocks": 0,                                                      +
               "Local Hit Blocks": 0,                                                           +
               "Local Read Blocks": 0,                                                          +
               "Local Dirtied Blocks": 0,                                                       +
               "Local Written Blocks": 0,                                                       +
               "Temp Read Blocks": 0,                                                           +
               "Temp Written Blocks": 0,                                                        +
               "Plans": [                                                                       +
                 {                                                                              +
                   "Node Type": "Merge Join",                                                   +
                   "Parent Relationship": "Outer",                                              +
                   "Parallel Aware": false,                                                     +
                   "Join Type": "Inner",                                                        +
                   "Startup Cost": 11558.53,                                                    +
                   "Total Cost": 11950.57,                                                      +
                   "Plan Rows": 2,                                                              +
                   "Plan Width": 37,                                                            +
                   "Actual Startup Time": 451.125,                                              +
                   "Actual Total Time": 451.125,                                                +
                   "Actual Rows": 0,                                                            +
                   "Actual Loops": 1,                                                           +
                   "Inner Unique": true,                                                        +
                   "Merge Cond": "(ml.linked_movie_id = t2.id)",                                +
                   "Shared Hit Blocks": 308,                                                    +
                   "Shared Read Blocks": 961,                                                   +
                   "Shared Dirtied Blocks": 0,                                                  +
                   "Shared Written Blocks": 0,                                                  +
                   "Local Hit Blocks": 0,                                                       +
                   "Local Read Blocks": 0,                                                      +
                   "Local Dirtied Blocks": 0,                                                   +
                   "Local Written Blocks": 0,                                                   +
                   "Temp Read Blocks": 0,                                                       +
                   "Temp Written Blocks": 0,                                                    +
                   "Plans": [                                                                   +
                     {                                                                          +
                       "Node Type": "Sort",                                                     +
                       "Parent Relationship": "Outer",                                          +
                       "Parallel Aware": false,                                                 +
                       "Startup Cost": 1904.14,                                                 +
                       "Total Cost": 1904.14,                                                   +
                       "Plan Rows": 2,                                                          +
                       "Plan Width": 24,                                                        +
                       "Actual Startup Time": 451.124,                                          +
                       "Actual Total Time": 451.124,                                            +
                       "Actual Rows": 0,                                                        +
                       "Actual Loops": 1,                                                       +
                       "Sort Key": ["ml.linked_movie_id"],                                      +
                       "Sort Method": "quicksort",                                              +
                       "Sort Space Used": 25,                                                   +
                       "Sort Space Type": "Memory",                                             +
                       "Shared Hit Blocks": 308,                                                +
                       "Shared Read Blocks": 961,                                               +
                       "Shared Dirtied Blocks": 0,                                              +
                       "Shared Written Blocks": 0,                                              +
                       "Local Hit Blocks": 0,                                                   +
                       "Local Read Blocks": 0,                                                  +
                       "Local Dirtied Blocks": 0,                                               +
                       "Local Written Blocks": 0,                                               +
                       "Temp Read Blocks": 0,                                                   +
                       "Temp Written Blocks": 0,                                                +
                       "Plans": [                                                               +
                         {                                                                      +
                           "Node Type": "Merge Join",                                           +
                           "Parent Relationship": "Outer",                                      +
                           "Parallel Aware": false,                                             +
                           "Join Type": "Inner",                                                +
                           "Startup Cost": 1904.13,                                             +
                           "Total Cost": 1904.14,                                               +
                           "Plan Rows": 2,                                                      +
                           "Plan Width": 24,                                                    +
                           "Actual Startup Time": 451.109,                                      +
                           "Actual Total Time": 451.109,                                        +
                           "Actual Rows": 0,                                                    +
                           "Actual Loops": 1,                                                   +
                           "Inner Unique": true,                                                +
                           "Merge Cond": "(ml.link_type_id = lt.id)",                           +
                           "Shared Hit Blocks": 308,                                            +
                           "Shared Read Blocks": 961,                                           +
                           "Shared Dirtied Blocks": 0,                                          +
                           "Shared Written Blocks": 0,                                          +
                           "Local Hit Blocks": 0,                                               +
                           "Local Read Blocks": 0,                                              +
                           "Local Dirtied Blocks": 0,                                           +
                           "Local Written Blocks": 0,                                           +
                           "Temp Read Blocks": 0,                                               +
                           "Temp Written Blocks": 0,                                            +
                           "Plans": [                                                           +
                             {                                                                  +
                               "Node Type": "Sort",                                             +
                               "Parent Relationship": "Outer",                                  +
                               "Parallel Aware": false,                                         +
                               "Startup Cost": 1904.09,                                         +
                               "Total Cost": 1904.09,                                           +
                               "Plan Rows": 2,                                                  +
                               "Plan Width": 16,                                                +
                               "Actual Startup Time": 451.108,                                  +
                               "Actual Total Time": 451.108,                                    +
                               "Actual Rows": 0,                                                +
                               "Actual Loops": 1,                                               +
                               "Sort Key": ["ml.link_type_id"],                                 +
                               "Sort Method": "quicksort",                                      +
                               "Sort Space Used": 25,                                           +
                               "Sort Space Type": "Memory",                                     +
                               "Shared Hit Blocks": 308,                                        +
                               "Shared Read Blocks": 961,                                       +
                               "Shared Dirtied Blocks": 0,                                      +
                               "Shared Written Blocks": 0,                                      +
                               "Local Hit Blocks": 0,                                           +
                               "Local Read Blocks": 0,                                          +
                               "Local Dirtied Blocks": 0,                                       +
                               "Local Written Blocks": 0,                                       +
                               "Temp Read Blocks": 0,                                           +
                               "Temp Written Blocks": 0,                                        +
                               "Plans": [                                                       +
                                 {                                                              +
                                   "Node Type": "Merge Join",                                   +
                                   "Parent Relationship": "Outer",                              +
                                   "Parallel Aware": false,                                     +
                                   "Join Type": "Inner",                                        +
                                   "Startup Cost": 1857.25,                                     +
                                   "Total Cost": 1904.09,                                       +
                                   "Plan Rows": 2,                                              +
                                   "Plan Width": 16,                                            +
                                   "Actual Startup Time": 451.094,                              +
                                   "Actual Total Time": 451.094,                                +
                                   "Actual Rows": 0,                                            +
                                   "Actual Loops": 1,                                           +
                                   "Inner Unique": true,                                        +
                                   "Merge Cond": "(mk.keyword_id = k.id)",                      +
                                   "Shared Hit Blocks": 308,                                    +
                                   "Shared Read Blocks": 961,                                   +
                                   "Shared Dirtied Blocks": 0,                                  +
                                   "Shared Written Blocks": 0,                                  +
                                   "Local Hit Blocks": 0,                                       +
                                   "Local Read Blocks": 0,                                      +
                                   "Local Dirtied Blocks": 0,                                   +
                                   "Local Written Blocks": 0,                                   +
                                   "Temp Read Blocks": 0,                                       +
                                   "Temp Written Blocks": 0,                                    +
                                   "Plans": [                                                   +
                                     {                                                          +
                                       "Node Type": "Sort",                                     +
                                       "Parent Relationship": "Outer",                          +
                                       "Parallel Aware": false,                                 +
                                       "Startup Cost": 1851.12,                                 +
                                       "Total Cost": 1874.54,                                   +
                                       "Plan Rows": 301621,                                     +
                                       "Plan Width": 20,                                        +
                                       "Actual Startup Time": 344.424,                          +
                                       "Actual Total Time": 371.493,                            +
                                       "Actual Rows": 288192,                                   +
                                       "Actual Loops": 1,                                       +
                                       "Sort Key": ["mk.keyword_id"],                           +
                                       "Sort Method": "quicksort",                              +
                                       "Sort Space Used": 34804,                                +
                                       "Sort Space Type": "Memory",                             +
                                       "Shared Hit Blocks": 308,                                +
                                       "Shared Read Blocks": 957,                               +
                                       "Shared Dirtied Blocks": 0,                              +
                                       "Shared Written Blocks": 0,                              +
                                       "Local Hit Blocks": 0,                                   +
                                       "Local Read Blocks": 0,                                  +
                                       "Local Dirtied Blocks": 0,                               +
                                       "Local Written Blocks": 0,                               +
                                       "Temp Read Blocks": 0,                                   +
                                       "Temp Written Blocks": 0,                                +
                                       "Plans": [                                               +
                                         {                                                      +
                                           "Node Type": "Merge Join",                           +
                                           "Parent Relationship": "Outer",                      +
                                           "Parallel Aware": false,                             +
                                           "Join Type": "Inner",                                +
                                           "Startup Cost": 76.48,                               +
                                           "Total Cost": 998.60,                                +
                                           "Plan Rows": 301621,                                 +
                                           "Plan Width": 20,                                    +
                                           "Actual Startup Time": 50.776,                       +
                                           "Actual Total Time": 237.703,                        +
                                           "Actual Rows": 288192,                               +
                                           "Actual Loops": 1,                                   +
                                           "Inner Unique": false,                               +
                                           "Merge Cond": "(mk.movie_id = ml.movie_id)",         +
                                           "Shared Hit Blocks": 308,                            +
                                           "Shared Read Blocks": 957,                           +
                                           "Shared Dirtied Blocks": 0,                          +
                                           "Shared Written Blocks": 0,                          +
                                           "Local Hit Blocks": 0,                               +
                                           "Local Read Blocks": 0,                              +
                                           "Local Dirtied Blocks": 0,                           +
                                           "Local Written Blocks": 0,                           +
                                           "Temp Read Blocks": 0,                               +
                                           "Temp Written Blocks": 0,                            +
                                           "Plans": [                                           +
                                             {                                                  +
                                               "Node Type": "Index Scan",                       +
                                               "Parent Relationship": "Outer",                  +
                                               "Parallel Aware": false,                         +
                                               "Scan Direction": "Forward",                     +
                                               "Index Name": "movie_id_movie_keyword",          +
                                               "Relation Name": "movie_keyword",                +
                                               "Alias": "mk",                                   +
                                               "Startup Cost": 0.01,                            +
                                               "Total Cost": 39285.80,                          +
                                               "Plan Rows": 4523930,                            +
                                               "Plan Width": 8,                                 +
                                               "Actual Startup Time": 0.032,                    +
                                               "Actual Total Time": 72.216,                     +
                                               "Actual Rows": 97855,                            +
                                               "Actual Loops": 1,                               +
                                               "Shared Hit Blocks": 304,                        +
                                               "Shared Read Blocks": 798,                       +
                                               "Shared Dirtied Blocks": 0,                      +
                                               "Shared Written Blocks": 0,                      +
                                               "Local Hit Blocks": 0,                           +
                                               "Local Read Blocks": 0,                          +
                                               "Local Dirtied Blocks": 0,                       +
                                               "Local Written Blocks": 0,                       +
                                               "Temp Read Blocks": 0,                           +
                                               "Temp Written Blocks": 0                         +
                                             },                                                 +
                                             {                                                  +
                                               "Node Type": "Sort",                             +
                                               "Parent Relationship": "Inner",                  +
                                               "Parallel Aware": false,                         +
                                               "Startup Cost": 76.46,                           +
                                               "Total Cost": 78.79,                             +
                                               "Plan Rows": 29997,                              +
                                               "Plan Width": 12,                                +
                                               "Actual Startup Time": 50.736,                   +
                                               "Actual Total Time": 69.274,                     +
                                               "Actual Rows": 301429,                           +
                                               "Actual Loops": 1,                               +
                                               "Sort Key": ["ml.movie_id"],                     +
                                               "Sort Method": "quicksort",                      +
                                               "Sort Space Used": 2175,                         +
                                               "Sort Space Type": "Memory",                     +
                                               "Shared Hit Blocks": 4,                          +
                                               "Shared Read Blocks": 159,                       +
                                               "Shared Dirtied Blocks": 0,                      +
                                               "Shared Written Blocks": 0,                      +
                                               "Local Hit Blocks": 0,                           +
                                               "Local Read Blocks": 0,                          +
                                               "Local Dirtied Blocks": 0,                       +
                                               "Local Written Blocks": 0,                       +
                                               "Temp Read Blocks": 0,                           +
                                               "Temp Written Blocks": 0,                        +
                                               "Plans": [                                       +
                                                 {                                              +
                                                   "Node Type": "Seq Scan",                     +
                                                   "Parent Relationship": "Outer",              +
                                                   "Parallel Aware": false,                     +
                                                   "Relation Name": "movie_link",               +
                                                   "Alias": "ml",                               +
                                                   "Startup Cost": 0.00,                        +
                                                   "Total Cost": 7.19,                          +
                                                   "Plan Rows": 29997,                          +
                                                   "Plan Width": 12,                            +
                                                   "Actual Startup Time": 0.016,                +
                                                   "Actual Total Time": 31.177,                 +
                                                   "Actual Rows": 29997,                        +
                                                   "Actual Loops": 1,                           +
                                                   "Shared Hit Blocks": 4,                      +
                                                   "Shared Read Blocks": 159,                   +
                                                   "Shared Dirtied Blocks": 0,                  +
                                                   "Shared Written Blocks": 0,                  +
                                                   "Local Hit Blocks": 0,                       +
                                                   "Local Read Blocks": 0,                      +
                                                   "Local Dirtied Blocks": 0,                   +
                                                   "Local Written Blocks": 0,                   +
                                                   "Temp Read Blocks": 0,                       +
                                                   "Temp Written Blocks": 0                     +
                                                 }                                              +
                                               ]                                                +
                                             }                                                  +
                                           ]                                                    +
                                         }                                                      +
                                       ]                                                        +
                                     },                                                         +
                                     {                                                          +
                                       "Node Type": "Sort",                                     +
                                       "Parent Relationship": "Inner",                          +
                                       "Parallel Aware": false,                                 +
                                       "Startup Cost": 6.13,                                    +
                                       "Total Cost": 6.13,                                      +
                                       "Plan Rows": 1,                                          +
                                       "Plan Width": 4,                                         +
                                       "Actual Startup Time": 37.587,                           +
                                       "Actual Total Time": 37.587,                             +
                                       "Actual Rows": 1,                                        +
                                       "Actual Loops": 1,                                       +
                                       "Sort Key": ["k.id"],                                    +
                                       "Sort Method": "quicksort",                              +
                                       "Sort Space Used": 25,                                   +
                                       "Sort Space Type": "Memory",                             +
                                       "Shared Hit Blocks": 0,                                  +
                                       "Shared Read Blocks": 4,                                 +
                                       "Shared Dirtied Blocks": 0,                              +
                                       "Shared Written Blocks": 0,                              +
                                       "Local Hit Blocks": 0,                                   +
                                       "Local Read Blocks": 0,                                  +
                                       "Local Dirtied Blocks": 0,                               +
                                       "Local Written Blocks": 0,                               +
                                       "Temp Read Blocks": 0,                                   +
                                       "Temp Written Blocks": 0,                                +
                                       "Plans": [                                               +
                                         {                                                      +
                                           "Node Type": "Index Scan",                           +
                                           "Parent Relationship": "Outer",                      +
                                           "Parallel Aware": false,                             +
                                           "Scan Direction": "Forward",                         +
                                           "Index Name": "keyword_idx_keyword",                 +
                                           "Relation Name": "keyword",                          +
                                           "Alias": "k",                                        +
                                           "Startup Cost": 0.01,                                +
                                           "Total Cost": 6.13,                                  +
                                           "Plan Rows": 1,                                      +
                                           "Plan Width": 4,                                     +
                                           "Actual Startup Time": 37.572,                       +
                                           "Actual Total Time": 37.575,                         +
                                           "Actual Rows": 1,                                    +
                                           "Actual Loops": 1,                                   +
                                           "Index Cond": "(keyword = '10,000-mile-club'::text)",+
                                           "Rows Removed by Index Recheck": 0,                  +
                                           "Shared Hit Blocks": 0,                              +
                                           "Shared Read Blocks": 4,                             +
                                           "Shared Dirtied Blocks": 0,                          +
                                           "Shared Written Blocks": 0,                          +
                                           "Local Hit Blocks": 0,                               +
                                           "Local Read Blocks": 0,                              +
                                           "Local Dirtied Blocks": 0,                           +
                                           "Local Written Blocks": 0,                           +
                                           "Temp Read Blocks": 0,                               +
                                           "Temp Written Blocks": 0                             +
                                         }                                                      +
                                       ]                                                        +
                                     }                                                          +
                                   ]                                                            +
                                 }                                                              +
                               ]                                                                +
                             },                                                                 +
                             {                                                                  +
                               "Node Type": "Sort",                                             +
                               "Parent Relationship": "Inner",                                  +
                               "Parallel Aware": false,                                         +
                               "Startup Cost": 0.04,                                            +
                               "Total Cost": 0.05,                                              +
                               "Plan Rows": 18,                                                 +
                               "Plan Width": 16,                                                +
                               "Actual Startup Time": 0.000,                                    +
                               "Actual Total Time": 0.000,                                      +
                               "Actual Rows": 0,                                                +
                               "Actual Loops": 0,                                               +
                               "Sort Key": ["lt.id"],                                           +
                               "Shared Hit Blocks": 0,                                          +
                               "Shared Read Blocks": 0,                                         +
                               "Shared Dirtied Blocks": 0,                                      +
                               "Shared Written Blocks": 0,                                      +
                               "Local Hit Blocks": 0,                                           +
                               "Local Read Blocks": 0,                                          +
                               "Local Dirtied Blocks": 0,                                       +
                               "Local Written Blocks": 0,                                       +
                               "Temp Read Blocks": 0,                                           +
                               "Temp Written Blocks": 0,                                        +
                               "Plans": [                                                       +
                                 {                                                              +
                                   "Node Type": "Seq Scan",                                     +
                                   "Parent Relationship": "Outer",                              +
                                   "Parallel Aware": false,                                     +
                                   "Relation Name": "link_type",                                +
                                   "Alias": "lt",                                               +
                                   "Startup Cost": 0.00,                                        +
                                   "Total Cost": 0.03,                                          +
                                   "Plan Rows": 18,                                             +
                                   "Plan Width": 16,                                            +
                                   "Actual Startup Time": 0.000,                                +
                                   "Actual Total Time": 0.000,                                  +
                                   "Actual Rows": 0,                                            +
                                   "Actual Loops": 0,                                           +
                                   "Shared Hit Blocks": 0,                                      +
                                   "Shared Read Blocks": 0,                                     +
                                   "Shared Dirtied Blocks": 0,                                  +
                                   "Shared Written Blocks": 0,                                  +
                                   "Local Hit Blocks": 0,                                       +
                                   "Local Read Blocks": 0,                                      +
                                   "Local Dirtied Blocks": 0,                                   +
                                   "Local Written Blocks": 0,                                   +
                                   "Temp Read Blocks": 0,                                       +
                                   "Temp Written Blocks": 0                                     +
                                 }                                                              +
                               ]                                                                +
                             }                                                                  +
                           ]                                                                    +
                         }                                                                      +
                       ]                                                                        +
                     },                                                                         +
                     {                                                                          +
                       "Node Type": "Sort",                                                     +
                       "Parent Relationship": "Inner",                                          +
                       "Parallel Aware": false,                                                 +
                       "Startup Cost": 9654.35,                                                 +
                       "Total Cost": 9850.65,                                                   +
                       "Plan Rows": 2528312,                                                    +
                       "Plan Width": 21,                                                        +
                       "Actual Startup Time": 0.000,                                            +
                       "Actual Total Time": 0.000,                                              +
                       "Actual Rows": 0,                                                        +
                       "Actual Loops": 0,                                                       +
                       "Sort Key": ["t2.id"],                                                   +
                       "Shared Hit Blocks": 0,                                                  +
                       "Shared Read Blocks": 0,                                                 +
                       "Shared Dirtied Blocks": 0,                                              +
                       "Shared Written Blocks": 0,                                              +
                       "Local Hit Blocks": 0,                                                   +
                       "Local Read Blocks": 0,                                                  +
                       "Local Dirtied Blocks": 0,                                               +
                       "Local Written Blocks": 0,                                               +
                       "Temp Read Blocks": 0,                                                   +
                       "Temp Written Blocks": 0,                                                +
                       "Plans": [                                                               +
                         {                                                                      +
                           "Node Type": "Seq Scan",                                             +
                           "Parent Relationship": "Outer",                                      +
                           "Parallel Aware": false,                                             +
                           "Relation Name": "title",                                            +
                           "Alias": "t2",                                                       +
                           "Startup Cost": 0.00,                                                +
                           "Total Cost": 1303.96,                                               +
                           "Plan Rows": 2528312,                                                +
                           "Plan Width": 21,                                                    +
                           "Actual Startup Time": 0.000,                                        +
                           "Actual Total Time": 0.000,                                          +
                           "Actual Rows": 0,                                                    +
                           "Actual Loops": 0,                                                   +
                           "Shared Hit Blocks": 0,                                              +
                           "Shared Read Blocks": 0,                                             +
                           "Shared Dirtied Blocks": 0,                                          +
                           "Shared Written Blocks": 0,                                          +
                           "Local Hit Blocks": 0,                                               +
                           "Local Read Blocks": 0,                                              +
                           "Local Dirtied Blocks": 0,                                           +
                           "Local Written Blocks": 0,                                           +
                           "Temp Read Blocks": 0,                                               +
                           "Temp Written Blocks": 0                                             +
                         }                                                                      +
                       ]                                                                        +
                     }                                                                          +
                   ]                                                                            +
                 }                                                                              +
               ]                                                                                +
             },                                                                                 +
             {                                                                                  +
               "Node Type": "Sort",                                                             +
               "Parent Relationship": "Inner",                                                  +
               "Parallel Aware": false,                                                         +
               "Startup Cost": 9654.35,                                                         +
               "Total Cost": 9850.65,                                                           +
               "Plan Rows": 2528312,                                                            +
               "Plan Width": 21,                                                                +
               "Actual Startup Time": 0.000,                                                    +
               "Actual Total Time": 0.000,                                                      +
               "Actual Rows": 0,                                                                +
               "Actual Loops": 0,                                                               +
               "Sort Key": ["t1.id"],                                                           +
               "Shared Hit Blocks": 0,                                                          +
               "Shared Read Blocks": 0,                                                         +
               "Shared Dirtied Blocks": 0,                                                      +
               "Shared Written Blocks": 0,                                                      +
               "Local Hit Blocks": 0,                                                           +
               "Local Read Blocks": 0,                                                          +
               "Local Dirtied Blocks": 0,                                                       +
               "Local Written Blocks": 0,                                                       +
               "Temp Read Blocks": 0,                                                           +
               "Temp Written Blocks": 0,                                                        +
               "Plans": [                                                                       +
                 {                                                                              +
                   "Node Type": "Seq Scan",                                                     +
                   "Parent Relationship": "Outer",                                              +
                   "Parallel Aware": false,                                                     +
                   "Relation Name": "title",                                                    +
                   "Alias": "t1",                                                               +
                   "Startup Cost": 0.00,                                                        +
                   "Total Cost": 1303.96,                                                       +
                   "Plan Rows": 2528312,                                                        +
                   "Plan Width": 21,                                                            +
                   "Actual Startup Time": 0.000,                                                +
                   "Actual Total Time": 0.000,                                                  +
                   "Actual Rows": 0,                                                            +
                   "Actual Loops": 0,                                                           +
                   "Shared Hit Blocks": 0,                                                      +
                   "Shared Read Blocks": 0,                                                     +
                   "Shared Dirtied Blocks": 0,                                                  +
                   "Shared Written Blocks": 0,                                                  +
                   "Local Hit Blocks": 0,                                                       +
                   "Local Read Blocks": 0,                                                      +
                   "Local Dirtied Blocks": 0,                                                   +
                   "Local Written Blocks": 0,                                                   +
                   "Temp Read Blocks": 0,                                                       +
                   "Temp Written Blocks": 0                                                     +
                 }                                                                              +
               ]                                                                                +
             }                                                                                  +
           ]                                                                                    +
         }                                                                                      +
       ]                                                                                        +
     },                                                                                         +
     "Planning Time": 1468.314,                                                                 +
     "Triggers": [                                                                              +
     ],                                                                                         +
     "Execution Time": 481.714                                                                  +
   }                                                                                            +
 ]
(1 row)

