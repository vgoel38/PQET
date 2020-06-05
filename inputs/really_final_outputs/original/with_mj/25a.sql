                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                       +
   {                                                                                                                                                     +
     "Plan": {                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                         +
       "Strategy": "Plain",                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                         +
       "Parallel Aware": false,                                                                                                                          +
       "Startup Cost": 69464.89,                                                                                                                         +
       "Total Cost": 69464.89,                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                   +
       "Plan Width": 128,                                                                                                                                +
       "Actual Startup Time": 31180.822,                                                                                                                 +
       "Actual Total Time": 31180.822,                                                                                                                   +
       "Actual Rows": 1,                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                +
       "Shared Hit Blocks": 29,                                                                                                                          +
       "Shared Read Blocks": 539064,                                                                                                                     +
       "Shared Dirtied Blocks": 0,                                                                                                                       +
       "Shared Written Blocks": 0,                                                                                                                       +
       "Local Hit Blocks": 0,                                                                                                                            +
       "Local Read Blocks": 0,                                                                                                                           +
       "Local Dirtied Blocks": 0,                                                                                                                        +
       "Local Written Blocks": 0,                                                                                                                        +
       "Temp Read Blocks": 0,                                                                                                                            +
       "Temp Written Blocks": 0,                                                                                                                         +
       "Plans": [                                                                                                                                        +
         {                                                                                                                                               +
           "Node Type": "Merge Join",                                                                                                                    +
           "Parent Relationship": "Outer",                                                                                                               +
           "Parallel Aware": false,                                                                                                                      +
           "Join Type": "Inner",                                                                                                                         +
           "Startup Cost": 69201.63,                                                                                                                     +
           "Total Cost": 69464.89,                                                                                                                       +
           "Plan Rows": 1,                                                                                                                               +
           "Plan Width": 80,                                                                                                                             +
           "Actual Startup Time": 30724.544,                                                                                                             +
           "Actual Total Time": 31151.243,                                                                                                               +
           "Actual Rows": 4407,                                                                                                                          +
           "Actual Loops": 1,                                                                                                                            +
           "Inner Unique": true,                                                                                                                         +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                        +
           "Shared Hit Blocks": 29,                                                                                                                      +
           "Shared Read Blocks": 539064,                                                                                                                 +
           "Shared Dirtied Blocks": 0,                                                                                                                   +
           "Shared Written Blocks": 0,                                                                                                                   +
           "Local Hit Blocks": 0,                                                                                                                        +
           "Local Read Blocks": 0,                                                                                                                       +
           "Local Dirtied Blocks": 0,                                                                                                                    +
           "Local Written Blocks": 0,                                                                                                                    +
           "Temp Read Blocks": 0,                                                                                                                        +
           "Temp Written Blocks": 0,                                                                                                                     +
           "Plans": [                                                                                                                                    +
             {                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                      +
               "Parent Relationship": "Outer",                                                                                                           +
               "Parallel Aware": false,                                                                                                                  +
               "Startup Cost": 61246.31,                                                                                                                 +
               "Total Cost": 61246.31,                                                                                                                   +
               "Plan Rows": 1,                                                                                                                           +
               "Plan Width": 69,                                                                                                                         +
               "Actual Startup Time": 27752.521,                                                                                                         +
               "Actual Total Time": 27753.204,                                                                                                           +
               "Actual Rows": 4408,                                                                                                                      +
               "Actual Loops": 1,                                                                                                                        +
               "Sort Key": ["ci.person_id"],                                                                                                             +
               "Sort Method": "quicksort",                                                                                                               +
               "Sort Space Used": 778,                                                                                                                   +
               "Sort Space Type": "Memory",                                                                                                              +
               "Shared Hit Blocks": 28,                                                                                                                  +
               "Shared Read Blocks": 483452,                                                                                                             +
               "Shared Dirtied Blocks": 0,                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                 +
               "Plans": [                                                                                                                                +
                 {                                                                                                                                       +
                   "Node Type": "Merge Join",                                                                                                            +
                   "Parent Relationship": "Outer",                                                                                                       +
                   "Parallel Aware": false,                                                                                                              +
                   "Join Type": "Inner",                                                                                                                 +
                   "Startup Cost": 61246.31,                                                                                                             +
                   "Total Cost": 61246.31,                                                                                                               +
                   "Plan Rows": 1,                                                                                                                       +
                   "Plan Width": 69,                                                                                                                     +
                   "Actual Startup Time": 27738.779,                                                                                                     +
                   "Actual Total Time": 27740.779,                                                                                                       +
                   "Actual Rows": 7112,                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                    +
                   "Inner Unique": true,                                                                                                                 +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                           +
                   "Shared Hit Blocks": 24,                                                                                                              +
                   "Shared Read Blocks": 483452,                                                                                                         +
                   "Shared Dirtied Blocks": 0,                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                +
                   "Temp Written Blocks": 0,                                                                                                             +
                   "Plans": [                                                                                                                            +
                     {                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                              +
                       "Parent Relationship": "Outer",                                                                                                   +
                       "Parallel Aware": false,                                                                                                          +
                       "Startup Cost": 61246.26,                                                                                                         +
                       "Total Cost": 61246.26,                                                                                                           +
                       "Plan Rows": 1,                                                                                                                   +
                       "Plan Width": 73,                                                                                                                 +
                       "Actual Startup Time": 27738.751,                                                                                                 +
                       "Actual Total Time": 27739.091,                                                                                                   +
                       "Actual Rows": 7113,                                                                                                              +
                       "Actual Loops": 1,                                                                                                                +
                       "Sort Key": ["mi.info_type_id"],                                                                                                  +
                       "Sort Method": "quicksort",                                                                                                       +
                       "Sort Space Used": 859,                                                                                                           +
                       "Sort Space Type": "Memory",                                                                                                      +
                       "Shared Hit Blocks": 23,                                                                                                          +
                       "Shared Read Blocks": 483452,                                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                            +
                       "Temp Written Blocks": 0,                                                                                                         +
                       "Plans": [                                                                                                                        +
                         {                                                                                                                               +
                           "Node Type": "Merge Join",                                                                                                    +
                           "Parent Relationship": "Outer",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Join Type": "Inner",                                                                                                         +
                           "Startup Cost": 61246.25,                                                                                                     +
                           "Total Cost": 61246.26,                                                                                                       +
                           "Plan Rows": 1,                                                                                                               +
                           "Plan Width": 73,                                                                                                             +
                           "Actual Startup Time": 27733.899,                                                                                             +
                           "Actual Total Time": 27736.589,                                                                                               +
                           "Actual Rows": 7740,                                                                                                          +
                           "Actual Loops": 1,                                                                                                            +
                           "Inner Unique": true,                                                                                                         +
                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                               +
                           "Shared Hit Blocks": 23,                                                                                                      +
                           "Shared Read Blocks": 483452,                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                        +
                           "Temp Written Blocks": 0,                                                                                                     +
                           "Plans": [                                                                                                                    +
                             {                                                                                                                           +
                               "Node Type": "Sort",                                                                                                      +
                               "Parent Relationship": "Outer",                                                                                           +
                               "Parallel Aware": false,                                                                                                  +
                               "Startup Cost": 61246.21,                                                                                                 +
                               "Total Cost": 61246.21,                                                                                                   +
                               "Plan Rows": 12,                                                                                                          +
                               "Plan Width": 77,                                                                                                         +
                               "Actual Startup Time": 27732.236,                                                                                         +
                               "Actual Total Time": 27733.354,                                                                                           +
                               "Actual Rows": 15481,                                                                                                     +
                               "Actual Loops": 1,                                                                                                        +
                               "Sort Key": ["mi_idx.info_type_id"],                                                                                      +
                               "Sort Method": "quicksort",                                                                                               +
                               "Sort Space Used": 2981,                                                                                                  +
                               "Sort Space Type": "Memory",                                                                                              +
                               "Shared Hit Blocks": 22,                                                                                                  +
                               "Shared Read Blocks": 483452,                                                                                             +
                               "Shared Dirtied Blocks": 0,                                                                                               +
                               "Shared Written Blocks": 0,                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                +
                               "Local Written Blocks": 0,                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                    +
                               "Temp Written Blocks": 0,                                                                                                 +
                               "Plans": [                                                                                                                +
                                 {                                                                                                                       +
                                   "Node Type": "Merge Join",                                                                                            +
                                   "Parent Relationship": "Outer",                                                                                       +
                                   "Parallel Aware": false,                                                                                              +
                                   "Join Type": "Inner",                                                                                                 +
                                   "Startup Cost": 60441.32,                                                                                             +
                                   "Total Cost": 61246.20,                                                                                               +
                                   "Plan Rows": 12,                                                                                                      +
                                   "Plan Width": 77,                                                                                                     +
                                   "Actual Startup Time": 26599.041,                                                                                     +
                                   "Actual Total Time": 27724.519,                                                                                       +
                                   "Actual Rows": 23252,                                                                                                 +
                                   "Actual Loops": 1,                                                                                                    +
                                   "Inner Unique": false,                                                                                                +
                                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                 +
                                   "Shared Hit Blocks": 22,                                                                                              +
                                   "Shared Read Blocks": 483452,                                                                                         +
                                   "Shared Dirtied Blocks": 0,                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                +
                                   "Local Read Blocks": 0,                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                            +
                                   "Local Written Blocks": 0,                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                +
                                   "Temp Written Blocks": 0,                                                                                             +
                                   "Plans": [                                                                                                            +
                                     {                                                                                                                   +
                                       "Node Type": "Merge Join",                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                   +
                                       "Parallel Aware": false,                                                                                          +
                                       "Join Type": "Inner",                                                                                             +
                                       "Startup Cost": 39058.10,                                                                                         +
                                       "Total Cost": 39669.53,                                                                                           +
                                       "Plan Rows": 12,                                                                                                  +
                                       "Plan Width": 89,                                                                                                 +
                                       "Actual Startup Time": 14155.718,                                                                                 +
                                       "Actual Total Time": 15098.804,                                                                                   +
                                       "Actual Rows": 36852,                                                                                             +
                                       "Actual Loops": 1,                                                                                                +
                                       "Inner Unique": false,                                                                                            +
                                       "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                         +
                                       "Shared Hit Blocks": 18,                                                                                          +
                                       "Shared Read Blocks": 230802,                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                            +
                                       "Local Read Blocks": 0,                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                        +
                                       "Local Written Blocks": 0,                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                            +
                                       "Temp Written Blocks": 0,                                                                                         +
                                       "Plans": [                                                                                                        +
                                         {                                                                                                               +
                                           "Node Type": "Merge Join",                                                                                    +
                                           "Parent Relationship": "Outer",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Join Type": "Inner",                                                                                         +
                                           "Startup Cost": 34326.80,                                                                                     +
                                           "Total Cost": 34723.94,                                                                                       +
                                           "Plan Rows": 14,                                                                                              +
                                           "Plan Width": 75,                                                                                             +
                                           "Actual Startup Time": 13334.208,                                                                             +
                                           "Actual Total Time": 14052.078,                                                                               +
                                           "Actual Rows": 13309,                                                                                         +
                                           "Actual Loops": 1,                                                                                            +
                                           "Inner Unique": false,                                                                                        +
                                           "Merge Cond": "(t.id = mi.movie_id)",                                                                         +
                                           "Shared Hit Blocks": 16,                                                                                      +
                                           "Shared Read Blocks": 222351,                                                                                 +
                                           "Shared Dirtied Blocks": 0,                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                        +
                                           "Local Read Blocks": 0,                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                    +
                                           "Local Written Blocks": 0,                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                        +
                                           "Temp Written Blocks": 0,                                                                                     +
                                           "Plans": [                                                                                                    +
                                             {                                                                                                           +
                                               "Node Type": "Merge Join",                                                                                +
                                               "Parent Relationship": "Outer",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Join Type": "Inner",                                                                                     +
                                               "Startup Cost": 26998.62,                                                                                 +
                                               "Total Cost": 27390.89,                                                                                   +
                                               "Plan Rows": 169,                                                                                         +
                                               "Plan Width": 25,                                                                                         +
                                               "Actual Startup Time": 4960.440,                                                                          +
                                               "Actual Total Time": 5662.638,                                                                            +
                                               "Actual Rows": 62096,                                                                                     +
                                               "Actual Loops": 1,                                                                                        +
                                               "Inner Unique": true,                                                                                     +
                                               "Merge Cond": "(mk.movie_id = t.id)",                                                                     +
                                               "Shared Hit Blocks": 14,                                                                                  +
                                               "Shared Read Blocks": 60461,                                                                              +
                                               "Shared Dirtied Blocks": 0,                                                                               +
                                               "Shared Written Blocks": 0,                                                                               +
                                               "Local Hit Blocks": 0,                                                                                    +
                                               "Local Read Blocks": 0,                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                +
                                               "Local Written Blocks": 0,                                                                                +
                                               "Temp Read Blocks": 0,                                                                                    +
                                               "Temp Written Blocks": 0,                                                                                 +
                                               "Plans": [                                                                                                +
                                                 {                                                                                                       +
                                                   "Node Type": "Sort",                                                                                  +
                                                   "Parent Relationship": "Outer",                                                                       +
                                                   "Parallel Aware": false,                                                                              +
                                                   "Startup Cost": 17344.27,                                                                             +
                                                   "Total Cost": 17344.28,                                                                               +
                                                   "Plan Rows": 169,                                                                                     +
                                                   "Plan Width": 4,                                                                                      +
                                                   "Actual Startup Time": 2550.059,                                                                      +
                                                   "Actual Total Time": 2559.083,                                                                        +
                                                   "Actual Rows": 62096,                                                                                 +
                                                   "Actual Loops": 1,                                                                                    +
                                                   "Sort Key": ["mk.movie_id"],                                                                          +
                                                   "Sort Method": "quicksort",                                                                           +
                                                   "Sort Space Used": 4447,                                                                              +
                                                   "Sort Space Type": "Memory",                                                                          +
                                                   "Shared Hit Blocks": 13,                                                                              +
                                                   "Shared Read Blocks": 24464,                                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                   "Shared Written Blocks": 0,                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                +
                                                   "Local Read Blocks": 0,                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                   "Local Written Blocks": 0,                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                +
                                                   "Temp Written Blocks": 0,                                                                             +
                                                   "Plans": [                                                                                            +
                                                     {                                                                                                   +
                                                       "Node Type": "Merge Join",                                                                        +
                                                       "Parent Relationship": "Outer",                                                                   +
                                                       "Parallel Aware": false,                                                                          +
                                                       "Join Type": "Inner",                                                                             +
                                                       "Startup Cost": 16641.59,                                                                         +
                                                       "Total Cost": 17344.07,                                                                           +
                                                       "Plan Rows": 169,                                                                                 +
                                                       "Plan Width": 4,                                                                                  +
                                                       "Actual Startup Time": 2322.943,                                                                  +
                                                       "Actual Total Time": 2529.073,                                                                    +
                                                       "Actual Rows": 62096,                                                                             +
                                                       "Actual Loops": 1,                                                                                +
                                                       "Inner Unique": false,                                                                            +
                                                       "Merge Cond": "(k.id = mk.keyword_id)",                                                           +
                                                       "Shared Hit Blocks": 13,                                                                          +
                                                       "Shared Read Blocks": 24464,                                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                                       +
                                                       "Shared Written Blocks": 0,                                                                       +
                                                       "Local Hit Blocks": 0,                                                                            +
                                                       "Local Read Blocks": 0,                                                                           +
                                                       "Local Dirtied Blocks": 0,                                                                        +
                                                       "Local Written Blocks": 0,                                                                        +
                                                       "Temp Read Blocks": 0,                                                                            +
                                                       "Temp Written Blocks": 0,                                                                         +
                                                       "Plans": [                                                                                        +
                                                         {                                                                                               +
                                                           "Node Type": "Sort",                                                                          +
                                                           "Parent Relationship": "Outer",                                                               +
                                                           "Parallel Aware": false,                                                                      +
                                                           "Startup Cost": 30.66,                                                                        +
                                                           "Total Cost": 30.67,                                                                          +
                                                           "Plan Rows": 5,                                                                               +
                                                           "Plan Width": 4,                                                                              +
                                                           "Actual Startup Time": 54.075,                                                                +
                                                           "Actual Total Time": 54.078,                                                                  +
                                                           "Actual Rows": 5,                                                                             +
                                                           "Actual Loops": 1,                                                                            +
                                                           "Sort Key": ["k.id"],                                                                         +
                                                           "Sort Method": "quicksort",                                                                   +
                                                           "Sort Space Used": 25,                                                                        +
                                                           "Sort Space Type": "Memory",                                                                  +
                                                           "Shared Hit Blocks": 10,                                                                      +
                                                           "Shared Read Blocks": 13,                                                                     +
                                                           "Shared Dirtied Blocks": 0,                                                                   +
                                                           "Shared Written Blocks": 0,                                                                   +
                                                           "Local Hit Blocks": 0,                                                                        +
                                                           "Local Read Blocks": 0,                                                                       +
                                                           "Local Dirtied Blocks": 0,                                                                    +
                                                           "Local Written Blocks": 0,                                                                    +
                                                           "Temp Read Blocks": 0,                                                                        +
                                                           "Temp Written Blocks": 0,                                                                     +
                                                           "Plans": [                                                                                    +
                                                             {                                                                                           +
                                                               "Node Type": "Index Scan",                                                                +
                                                               "Parent Relationship": "Outer",                                                           +
                                                               "Parallel Aware": false,                                                                  +
                                                               "Scan Direction": "Forward",                                                              +
                                                               "Index Name": "keyword_idx_keyword",                                                      +
                                                               "Relation Name": "keyword",                                                               +
                                                               "Alias": "k",                                                                             +
                                                               "Startup Cost": 0.01,                                                                     +
                                                               "Total Cost": 30.66,                                                                      +
                                                               "Plan Rows": 5,                                                                           +
                                                               "Plan Width": 4,                                                                          +
                                                               "Actual Startup Time": 30.531,                                                            +
                                                               "Actual Total Time": 54.038,                                                              +
                                                               "Actual Rows": 5,                                                                         +
                                                               "Actual Loops": 1,                                                                        +
                                                               "Index Cond": "(keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))",      +
                                                               "Rows Removed by Index Recheck": 0,                                                       +
                                                               "Shared Hit Blocks": 10,                                                                  +
                                                               "Shared Read Blocks": 13,                                                                 +
                                                               "Shared Dirtied Blocks": 0,                                                               +
                                                               "Shared Written Blocks": 0,                                                               +
                                                               "Local Hit Blocks": 0,                                                                    +
                                                               "Local Read Blocks": 0,                                                                   +
                                                               "Local Dirtied Blocks": 0,                                                                +
                                                               "Local Written Blocks": 0,                                                                +
                                                               "Temp Read Blocks": 0,                                                                    +
                                                               "Temp Written Blocks": 0                                                                  +
                                                             }                                                                                           +
                                                           ]                                                                                             +
                                                         },                                                                                              +
                                                         {                                                                                               +
                                                           "Node Type": "Sort",                                                                          +
                                                           "Parent Relationship": "Inner",                                                               +
                                                           "Parallel Aware": false,                                                                      +
                                                           "Startup Cost": 16610.92,                                                                     +
                                                           "Total Cost": 16962.16,                                                                       +
                                                           "Plan Rows": 4523930,                                                                         +
                                                           "Plan Width": 8,                                                                              +
                                                           "Actual Startup Time": 2217.887,                                                              +
                                                           "Actual Total Time": 2357.601,                                                                +
                                                           "Actual Rows": 934111,                                                                        +
                                                           "Actual Loops": 1,                                                                            +
                                                           "Sort Key": ["mk.keyword_id"],                                                                +
                                                           "Sort Method": "quicksort",                                                                   +
                                                           "Sort Space Used": 408668,                                                                    +
                                                           "Sort Space Type": "Memory",                                                                  +
                                                           "Shared Hit Blocks": 3,                                                                       +
                                                           "Shared Read Blocks": 24451,                                                                  +
                                                           "Shared Dirtied Blocks": 0,                                                                   +
                                                           "Shared Written Blocks": 0,                                                                   +
                                                           "Local Hit Blocks": 0,                                                                        +
                                                           "Local Read Blocks": 0,                                                                       +
                                                           "Local Dirtied Blocks": 0,                                                                    +
                                                           "Local Written Blocks": 0,                                                                    +
                                                           "Temp Read Blocks": 0,                                                                        +
                                                           "Temp Written Blocks": 0,                                                                     +
                                                           "Plans": [                                                                                    +
                                                             {                                                                                           +
                                                               "Node Type": "Seq Scan",                                                                  +
                                                               "Parent Relationship": "Outer",                                                           +
                                                               "Parallel Aware": false,                                                                  +
                                                               "Relation Name": "movie_keyword",                                                         +
                                                               "Alias": "mk",                                                                            +
                                                               "Startup Cost": 0.00,                                                                     +
                                                               "Total Cost": 1079.84,                                                                    +
                                                               "Plan Rows": 4523930,                                                                     +
                                                               "Plan Width": 8,                                                                          +
                                                               "Actual Startup Time": 0.017,                                                             +
                                                               "Actual Total Time": 781.938,                                                             +
                                                               "Actual Rows": 4523930,                                                                   +
                                                               "Actual Loops": 1,                                                                        +
                                                               "Shared Hit Blocks": 3,                                                                   +
                                                               "Shared Read Blocks": 24451,                                                              +
                                                               "Shared Dirtied Blocks": 0,                                                               +
                                                               "Shared Written Blocks": 0,                                                               +
                                                               "Local Hit Blocks": 0,                                                                    +
                                                               "Local Read Blocks": 0,                                                                   +
                                                               "Local Dirtied Blocks": 0,                                                                +
                                                               "Local Written Blocks": 0,                                                                +
                                                               "Temp Read Blocks": 0,                                                                    +
                                                               "Temp Written Blocks": 0                                                                  +
                                                             }                                                                                           +
                                                           ]                                                                                             +
                                                         }                                                                                               +
                                                       ]                                                                                                 +
                                                     }                                                                                                   +
                                                   ]                                                                                                     +
                                                 },                                                                                                      +
                                                 {                                                                                                       +
                                                   "Node Type": "Sort",                                                                                  +
                                                   "Parent Relationship": "Inner",                                                                       +
                                                   "Parallel Aware": false,                                                                              +
                                                   "Startup Cost": 9654.35,                                                                              +
                                                   "Total Cost": 9850.65,                                                                                +
                                                   "Plan Rows": 2528312,                                                                                 +
                                                   "Plan Width": 21,                                                                                     +
                                                   "Actual Startup Time": 2410.176,                                                                      +
                                                   "Actual Total Time": 2728.754,                                                                        +
                                                   "Actual Rows": 2525735,                                                                               +
                                                   "Actual Loops": 1,                                                                                    +
                                                   "Sort Key": ["t.id"],                                                                                 +
                                                   "Sort Method": "quicksort",                                                                           +
                                                   "Sort Space Used": 275055,                                                                            +
                                                   "Sort Space Type": "Memory",                                                                          +
                                                   "Shared Hit Blocks": 1,                                                                               +
                                                   "Shared Read Blocks": 35997,                                                                          +
                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                   "Shared Written Blocks": 0,                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                +
                                                   "Local Read Blocks": 0,                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                   "Local Written Blocks": 0,                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                +
                                                   "Temp Written Blocks": 0,                                                                             +
                                                   "Plans": [                                                                                            +
                                                     {                                                                                                   +
                                                       "Node Type": "Seq Scan",                                                                          +
                                                       "Parent Relationship": "Outer",                                                                   +
                                                       "Parallel Aware": false,                                                                          +
                                                       "Relation Name": "title",                                                                         +
                                                       "Alias": "t",                                                                                     +
                                                       "Startup Cost": 0.00,                                                                             +
                                                       "Total Cost": 1303.96,                                                                            +
                                                       "Plan Rows": 2528312,                                                                             +
                                                       "Plan Width": 21,                                                                                 +
                                                       "Actual Startup Time": 12.400,                                                                    +
                                                       "Actual Total Time": 1105.025,                                                                    +
                                                       "Actual Rows": 2528312,                                                                           +
                                                       "Actual Loops": 1,                                                                                +
                                                       "Shared Hit Blocks": 1,                                                                           +
                                                       "Shared Read Blocks": 35997,                                                                      +
                                                       "Shared Dirtied Blocks": 0,                                                                       +
                                                       "Shared Written Blocks": 0,                                                                       +
                                                       "Local Hit Blocks": 0,                                                                            +
                                                       "Local Read Blocks": 0,                                                                           +
                                                       "Local Dirtied Blocks": 0,                                                                        +
                                                       "Local Written Blocks": 0,                                                                        +
                                                       "Temp Read Blocks": 0,                                                                            +
                                                       "Temp Written Blocks": 0                                                                          +
                                                     }                                                                                                   +
                                                   ]                                                                                                     +
                                                 }                                                                                                       +
                                               ]                                                                                                         +
                                             },                                                                                                          +
                                             {                                                                                                           +
                                               "Node Type": "Sort",                                                                                      +
                                               "Parent Relationship": "Inner",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Startup Cost": 7328.18,                                                                                  +
                                               "Total Cost": 7330.61,                                                                                    +
                                               "Plan Rows": 31269,                                                                                       +
                                               "Plan Width": 50,                                                                                         +
                                               "Actual Startup Time": 8372.765,                                                                          +
                                               "Actual Total Time": 8375.865,                                                                            +
                                               "Actual Rows": 37239,                                                                                     +
                                               "Actual Loops": 1,                                                                                        +
                                               "Sort Key": ["mi.movie_id"],                                                                              +
                                               "Sort Method": "quicksort",                                                                               +
                                               "Sort Space Used": 2212,                                                                                  +
                                               "Sort Space Type": "Memory",                                                                              +
                                               "Shared Hit Blocks": 2,                                                                                   +
                                               "Shared Read Blocks": 161890,                                                                             +
                                               "Shared Dirtied Blocks": 0,                                                                               +
                                               "Shared Written Blocks": 0,                                                                               +
                                               "Local Hit Blocks": 0,                                                                                    +
                                               "Local Read Blocks": 0,                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                +
                                               "Local Written Blocks": 0,                                                                                +
                                               "Temp Read Blocks": 0,                                                                                    +
                                               "Temp Written Blocks": 0,                                                                                 +
                                               "Plans": [                                                                                                +
                                                 {                                                                                                       +
                                                   "Node Type": "Seq Scan",                                                                              +
                                                   "Parent Relationship": "Outer",                                                                       +
                                                   "Parallel Aware": false,                                                                              +
                                                   "Relation Name": "movie_info",                                                                        +
                                                   "Alias": "mi",                                                                                        +
                                                   "Startup Cost": 0.00,                                                                                 +
                                                   "Total Cost": 7255.68,                                                                                +
                                                   "Plan Rows": 31269,                                                                                   +
                                                   "Plan Width": 50,                                                                                     +
                                                   "Actual Startup Time": 4894.434,                                                                      +
                                                   "Actual Total Time": 8353.138,                                                                        +
                                                   "Actual Rows": 30801,                                                                                 +
                                                   "Actual Loops": 1,                                                                                    +
                                                   "Filter": "(info = 'Horror'::text)",                                                                  +
                                                   "Rows Removed by Filter": 14804919,                                                                   +
                                                   "Shared Hit Blocks": 2,                                                                               +
                                                   "Shared Read Blocks": 161890,                                                                         +
                                                   "Shared Dirtied Blocks": 0,                                                                           +
                                                   "Shared Written Blocks": 0,                                                                           +
                                                   "Local Hit Blocks": 0,                                                                                +
                                                   "Local Read Blocks": 0,                                                                               +
                                                   "Local Dirtied Blocks": 0,                                                                            +
                                                   "Local Written Blocks": 0,                                                                            +
                                                   "Temp Read Blocks": 0,                                                                                +
                                                   "Temp Written Blocks": 0                                                                              +
                                                 }                                                                                                       +
                                               ]                                                                                                         +
                                             }                                                                                                           +
                                           ]                                                                                                             +
                                         },                                                                                                              +
                                         {                                                                                                               +
                                           "Node Type": "Sort",                                                                                          +
                                           "Parent Relationship": "Inner",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Startup Cost": 4731.30,                                                                                      +
                                           "Total Cost": 4838.45,                                                                                        +
                                           "Plan Rows": 1380035,                                                                                         +
                                           "Plan Width": 14,                                                                                             +
                                           "Actual Startup Time": 821.256,                                                                               +
                                           "Actual Total Time": 894.438,                                                                                 +
                                           "Actual Rows": 1399344,                                                                                       +
                                           "Actual Loops": 1,                                                                                            +
                                           "Sort Key": ["mi_idx.movie_id"],                                                                              +
                                           "Sort Method": "quicksort",                                                                                   +
                                           "Sort Space Used": 128214,                                                                                    +
                                           "Sort Space Type": "Memory",                                                                                  +
                                           "Shared Hit Blocks": 2,                                                                                       +
                                           "Shared Read Blocks": 8451,                                                                                   +
                                           "Shared Dirtied Blocks": 0,                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                        +
                                           "Local Read Blocks": 0,                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                    +
                                           "Local Written Blocks": 0,                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                        +
                                           "Temp Written Blocks": 0,                                                                                     +
                                           "Plans": [                                                                                                    +
                                             {                                                                                                           +
                                               "Node Type": "Seq Scan",                                                                                  +
                                               "Parent Relationship": "Outer",                                                                           +
                                               "Parallel Aware": false,                                                                                  +
                                               "Relation Name": "movie_info_idx",                                                                        +
                                               "Alias": "mi_idx",                                                                                        +
                                               "Startup Cost": 0.00,                                                                                     +
                                               "Total Cost": 360.56,                                                                                     +
                                               "Plan Rows": 1380035,                                                                                     +
                                               "Plan Width": 14,                                                                                         +
                                               "Actual Startup Time": 0.012,                                                                             +
                                               "Actual Total Time": 301.619,                                                                             +
                                               "Actual Rows": 1380035,                                                                                   +
                                               "Actual Loops": 1,                                                                                        +
                                               "Shared Hit Blocks": 2,                                                                                   +
                                               "Shared Read Blocks": 8451,                                                                               +
                                               "Shared Dirtied Blocks": 0,                                                                               +
                                               "Shared Written Blocks": 0,                                                                               +
                                               "Local Hit Blocks": 0,                                                                                    +
                                               "Local Read Blocks": 0,                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                +
                                               "Local Written Blocks": 0,                                                                                +
                                               "Temp Read Blocks": 0,                                                                                    +
                                               "Temp Written Blocks": 0                                                                                  +
                                             }                                                                                                           +
                                           ]                                                                                                             +
                                         }                                                                                                               +
                                       ]                                                                                                                 +
                                     },                                                                                                                  +
                                     {                                                                                                                   +
                                       "Node Type": "Sort",                                                                                              +
                                       "Parent Relationship": "Inner",                                                                                   +
                                       "Parallel Aware": false,                                                                                          +
                                       "Startup Cost": 21383.21,                                                                                         +
                                       "Total Cost": 21479.94,                                                                                           +
                                       "Plan Rows": 1245851,                                                                                             +
                                       "Plan Width": 8,                                                                                                  +
                                       "Actual Startup Time": 12374.350,                                                                                 +
                                       "Actual Total Time": 12484.217,                                                                                   +
                                       "Actual Rows": 1264362,                                                                                           +
                                       "Actual Loops": 1,                                                                                                +
                                       "Sort Key": ["ci.movie_id"],                                                                                      +
                                       "Sort Method": "quicksort",                                                                                       +
                                       "Sort Space Used": 107499,                                                                                        +
                                       "Sort Space Type": "Memory",                                                                                      +
                                       "Shared Hit Blocks": 4,                                                                                           +
                                       "Shared Read Blocks": 252650,                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                       +
                                       "Shared Written Blocks": 0,                                                                                       +
                                       "Local Hit Blocks": 0,                                                                                            +
                                       "Local Read Blocks": 0,                                                                                           +
                                       "Local Dirtied Blocks": 0,                                                                                        +
                                       "Local Written Blocks": 0,                                                                                        +
                                       "Temp Read Blocks": 0,                                                                                            +
                                       "Temp Written Blocks": 0,                                                                                         +
                                       "Plans": [                                                                                                        +
                                         {                                                                                                               +
                                           "Node Type": "Seq Scan",                                                                                      +
                                           "Parent Relationship": "Outer",                                                                               +
                                           "Parallel Aware": false,                                                                                      +
                                           "Relation Name": "cast_info",                                                                                 +
                                           "Alias": "ci",                                                                                                +
                                           "Startup Cost": 0.00,                                                                                         +
                                           "Total Cost": 17466.00,                                                                                       +
                                           "Plan Rows": 1245851,                                                                                         +
                                           "Plan Width": 8,                                                                                              +
                                           "Actual Startup Time": 374.519,                                                                               +
                                           "Actual Total Time": 11864.068,                                                                               +
                                           "Actual Rows": 1244716,                                                                                       +
                                           "Actual Loops": 1,                                                                                            +
                                           "Filter": "(note = ANY ('{(writer),\"(head writer)\",\"(written by)\",(story),\"(story editor)\"}'::text[]))",+
                                           "Rows Removed by Filter": 34999628,                                                                           +
                                           "Shared Hit Blocks": 4,                                                                                       +
                                           "Shared Read Blocks": 252650,                                                                                 +
                                           "Shared Dirtied Blocks": 0,                                                                                   +
                                           "Shared Written Blocks": 0,                                                                                   +
                                           "Local Hit Blocks": 0,                                                                                        +
                                           "Local Read Blocks": 0,                                                                                       +
                                           "Local Dirtied Blocks": 0,                                                                                    +
                                           "Local Written Blocks": 0,                                                                                    +
                                           "Temp Read Blocks": 0,                                                                                        +
                                           "Temp Written Blocks": 0                                                                                      +
                                         }                                                                                                               +
                                       ]                                                                                                                 +
                                     }                                                                                                                   +
                                   ]                                                                                                                     +
                                 }                                                                                                                       +
                               ]                                                                                                                         +
                             },                                                                                                                          +
                             {                                                                                                                           +
                               "Node Type": "Sort",                                                                                                      +
                               "Parent Relationship": "Inner",                                                                                           +
                               "Parallel Aware": false,                                                                                                  +
                               "Startup Cost": 0.05,                                                                                                     +
                               "Total Cost": 0.05,                                                                                                       +
                               "Plan Rows": 1,                                                                                                           +
                               "Plan Width": 4,                                                                                                          +
                               "Actual Startup Time": 0.037,                                                                                             +
                               "Actual Total Time": 0.038,                                                                                               +
                               "Actual Rows": 1,                                                                                                         +
                               "Actual Loops": 1,                                                                                                        +
                               "Sort Key": ["it2.id"],                                                                                                   +
                               "Sort Method": "quicksort",                                                                                               +
                               "Sort Space Used": 25,                                                                                                    +
                               "Sort Space Type": "Memory",                                                                                              +
                               "Shared Hit Blocks": 1,                                                                                                   +
                               "Shared Read Blocks": 0,                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                               +
                               "Shared Written Blocks": 0,                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                +
                               "Local Written Blocks": 0,                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                    +
                               "Temp Written Blocks": 0,                                                                                                 +
                               "Plans": [                                                                                                                +
                                 {                                                                                                                       +
                                   "Node Type": "Seq Scan",                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                       +
                                   "Parallel Aware": false,                                                                                              +
                                   "Relation Name": "info_type",                                                                                         +
                                   "Alias": "it2",                                                                                                       +
                                   "Startup Cost": 0.00,                                                                                                 +
                                   "Total Cost": 0.05,                                                                                                   +
                                   "Plan Rows": 1,                                                                                                       +
                                   "Plan Width": 4,                                                                                                      +
                                   "Actual Startup Time": 0.028,                                                                                         +
                                   "Actual Total Time": 0.030,                                                                                           +
                                   "Actual Rows": 1,                                                                                                     +
                                   "Actual Loops": 1,                                                                                                    +
                                   "Filter": "((info)::text = 'votes'::text)",                                                                           +
                                   "Rows Removed by Filter": 112,                                                                                        +
                                   "Shared Hit Blocks": 1,                                                                                               +
                                   "Shared Read Blocks": 0,                                                                                              +
                                   "Shared Dirtied Blocks": 0,                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                +
                                   "Local Read Blocks": 0,                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                            +
                                   "Local Written Blocks": 0,                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                +
                                   "Temp Written Blocks": 0                                                                                              +
                                 }                                                                                                                       +
                               ]                                                                                                                         +
                             }                                                                                                                           +
                           ]                                                                                                                             +
                         }                                                                                                                               +
                       ]                                                                                                                                 +
                     },                                                                                                                                  +
                     {                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                              +
                       "Parent Relationship": "Inner",                                                                                                   +
                       "Parallel Aware": false,                                                                                                          +
                       "Startup Cost": 0.05,                                                                                                             +
                       "Total Cost": 0.05,                                                                                                               +
                       "Plan Rows": 1,                                                                                                                   +
                       "Plan Width": 4,                                                                                                                  +
                       "Actual Startup Time": 0.025,                                                                                                     +
                       "Actual Total Time": 0.025,                                                                                                       +
                       "Actual Rows": 1,                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                +
                       "Sort Key": ["it1.id"],                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                       +
                       "Sort Space Used": 25,                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                      +
                       "Shared Hit Blocks": 1,                                                                                                           +
                       "Shared Read Blocks": 0,                                                                                                          +
                       "Shared Dirtied Blocks": 0,                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                            +
                       "Temp Written Blocks": 0,                                                                                                         +
                       "Plans": [                                                                                                                        +
                         {                                                                                                                               +
                           "Node Type": "Seq Scan",                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                               +
                           "Parallel Aware": false,                                                                                                      +
                           "Relation Name": "info_type",                                                                                                 +
                           "Alias": "it1",                                                                                                               +
                           "Startup Cost": 0.00,                                                                                                         +
                           "Total Cost": 0.05,                                                                                                           +
                           "Plan Rows": 1,                                                                                                               +
                           "Plan Width": 4,                                                                                                              +
                           "Actual Startup Time": 0.010,                                                                                                 +
                           "Actual Total Time": 0.021,                                                                                                   +
                           "Actual Rows": 1,                                                                                                             +
                           "Actual Loops": 1,                                                                                                            +
                           "Filter": "((info)::text = 'genres'::text)",                                                                                  +
                           "Rows Removed by Filter": 112,                                                                                                +
                           "Shared Hit Blocks": 1,                                                                                                       +
                           "Shared Read Blocks": 0,                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                        +
                           "Temp Written Blocks": 0                                                                                                      +
                         }                                                                                                                               +
                       ]                                                                                                                                 +
                     }                                                                                                                                   +
                   ]                                                                                                                                     +
                 }                                                                                                                                       +
               ]                                                                                                                                         +
             },                                                                                                                                          +
             {                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                      +
               "Parent Relationship": "Inner",                                                                                                           +
               "Parallel Aware": false,                                                                                                                  +
               "Startup Cost": 7955.33,                                                                                                                  +
               "Total Cost": 8090.37,                                                                                                                    +
               "Plan Rows": 1739438,                                                                                                                     +
               "Plan Width": 19,                                                                                                                         +
               "Actual Startup Time": 2971.441,                                                                                                          +
               "Actual Total Time": 3162.475,                                                                                                            +
               "Actual Rows": 1739579,                                                                                                                   +
               "Actual Loops": 1,                                                                                                                        +
               "Sort Key": ["n.id"],                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                               +
               "Sort Space Used": 176730,                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                              +
               "Shared Hit Blocks": 1,                                                                                                                   +
               "Shared Read Blocks": 55612,                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                 +
               "Plans": [                                                                                                                                +
                 {                                                                                                                                       +
                   "Node Type": "Seq Scan",                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                       +
                   "Parallel Aware": false,                                                                                                              +
                   "Relation Name": "name",                                                                                                              +
                   "Alias": "n",                                                                                                                         +
                   "Startup Cost": 0.00,                                                                                                                 +
                   "Total Cost": 2356.12,                                                                                                                +
                   "Plan Rows": 1739438,                                                                                                                 +
                   "Plan Width": 19,                                                                                                                     +
                   "Actual Startup Time": 19.503,                                                                                                        +
                   "Actual Total Time": 2207.699,                                                                                                        +
                   "Actual Rows": 1739579,                                                                                                               +
                   "Actual Loops": 1,                                                                                                                    +
                   "Filter": "((gender)::text = 'm'::text)",                                                                                             +
                   "Rows Removed by Filter": 2427912,                                                                                                    +
                   "Shared Hit Blocks": 1,                                                                                                               +
                   "Shared Read Blocks": 55612,                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                              +
                 }                                                                                                                                       +
               ]                                                                                                                                         +
             }                                                                                                                                           +
           ]                                                                                                                                             +
         }                                                                                                                                               +
       ]                                                                                                                                                 +
     },                                                                                                                                                  +
     "Planning Time": 10240.608,                                                                                                                         +
     "Triggers": [                                                                                                                                       +
     ],                                                                                                                                                  +
     "Execution Time": 31254.636                                                                                                                         +
   }                                                                                                                                                     +
 ]
(1 row)

