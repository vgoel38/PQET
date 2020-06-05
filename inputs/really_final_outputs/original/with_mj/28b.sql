                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                         +
   {                                                                                                                                                                                       +
     "Plan": {                                                                                                                                                                             +
       "Node Type": "Aggregate",                                                                                                                                                           +
       "Strategy": "Plain",                                                                                                                                                                +
       "Partial Mode": "Simple",                                                                                                                                                           +
       "Parallel Aware": false,                                                                                                                                                            +
       "Startup Cost": 34744.11,                                                                                                                                                           +
       "Total Cost": 34744.11,                                                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                                                     +
       "Plan Width": 96,                                                                                                                                                                   +
       "Actual Startup Time": 15505.146,                                                                                                                                                   +
       "Actual Total Time": 15505.146,                                                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                                                   +
       "Actual Loops": 1,                                                                                                                                                                  +
       "Shared Hit Blocks": 34,                                                                                                                                                            +
       "Shared Read Blocks": 253305,                                                                                                                                                       +
       "Shared Dirtied Blocks": 0,                                                                                                                                                         +
       "Shared Written Blocks": 0,                                                                                                                                                         +
       "Local Hit Blocks": 0,                                                                                                                                                              +
       "Local Read Blocks": 0,                                                                                                                                                             +
       "Local Dirtied Blocks": 0,                                                                                                                                                          +
       "Local Written Blocks": 0,                                                                                                                                                          +
       "Temp Read Blocks": 0,                                                                                                                                                              +
       "Temp Written Blocks": 0,                                                                                                                                                           +
       "Plans": [                                                                                                                                                                          +
         {                                                                                                                                                                                 +
           "Node Type": "Merge Join",                                                                                                                                                      +
           "Parent Relationship": "Outer",                                                                                                                                                 +
           "Parallel Aware": false,                                                                                                                                                        +
           "Join Type": "Inner",                                                                                                                                                           +
           "Startup Cost": 34724.50,                                                                                                                                                       +
           "Total Cost": 34744.11,                                                                                                                                                         +
           "Plan Rows": 1,                                                                                                                                                                 +
           "Plan Width": 42,                                                                                                                                                               +
           "Actual Startup Time": 15497.106,                                                                                                                                               +
           "Actual Total Time": 15505.061,                                                                                                                                                 +
           "Actual Rows": 148,                                                                                                                                                             +
           "Actual Loops": 1,                                                                                                                                                              +
           "Inner Unique": true,                                                                                                                                                           +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                                                                                        +
           "Shared Hit Blocks": 34,                                                                                                                                                        +
           "Shared Read Blocks": 253305,                                                                                                                                                   +
           "Shared Dirtied Blocks": 0,                                                                                                                                                     +
           "Shared Written Blocks": 0,                                                                                                                                                     +
           "Local Hit Blocks": 0,                                                                                                                                                          +
           "Local Read Blocks": 0,                                                                                                                                                         +
           "Local Dirtied Blocks": 0,                                                                                                                                                      +
           "Local Written Blocks": 0,                                                                                                                                                      +
           "Temp Read Blocks": 0,                                                                                                                                                          +
           "Temp Written Blocks": 0,                                                                                                                                                       +
           "Plans": [                                                                                                                                                                      +
             {                                                                                                                                                                             +
               "Node Type": "Sort",                                                                                                                                                        +
               "Parent Relationship": "Outer",                                                                                                                                             +
               "Parallel Aware": false,                                                                                                                                                    +
               "Startup Cost": 34263.95,                                                                                                                                                   +
               "Total Cost": 34263.95,                                                                                                                                                     +
               "Plan Rows": 1,                                                                                                                                                             +
               "Plan Width": 27,                                                                                                                                                           +
               "Actual Startup Time": 15328.734,                                                                                                                                           +
               "Actual Total Time": 15328.753,                                                                                                                                             +
               "Actual Rows": 150,                                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                                          +
               "Sort Key": ["mc.company_id"],                                                                                                                                              +
               "Sort Method": "quicksort",                                                                                                                                                 +
               "Sort Space Used": 34,                                                                                                                                                      +
               "Sort Space Type": "Memory",                                                                                                                                                +
               "Shared Hit Blocks": 32,                                                                                                                                                    +
               "Shared Read Blocks": 250313,                                                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                                                 +
               "Shared Written Blocks": 0,                                                                                                                                                 +
               "Local Hit Blocks": 0,                                                                                                                                                      +
               "Local Read Blocks": 0,                                                                                                                                                     +
               "Local Dirtied Blocks": 0,                                                                                                                                                  +
               "Local Written Blocks": 0,                                                                                                                                                  +
               "Temp Read Blocks": 0,                                                                                                                                                      +
               "Temp Written Blocks": 0,                                                                                                                                                   +
               "Plans": [                                                                                                                                                                  +
                 {                                                                                                                                                                         +
                   "Node Type": "Merge Join",                                                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                                                         +
                   "Parallel Aware": false,                                                                                                                                                +
                   "Join Type": "Inner",                                                                                                                                                   +
                   "Startup Cost": 34263.95,                                                                                                                                               +
                   "Total Cost": 34263.95,                                                                                                                                                 +
                   "Plan Rows": 1,                                                                                                                                                         +
                   "Plan Width": 27,                                                                                                                                                       +
                   "Actual Startup Time": 15319.570,                                                                                                                                       +
                   "Actual Total Time": 15319.612,                                                                                                                                         +
                   "Actual Rows": 150,                                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                                      +
                   "Inner Unique": false,                                                                                                                                                  +
                   "Merge Cond": "(kt.id = t.kind_id)",                                                                                                                                    +
                   "Shared Hit Blocks": 28,                                                                                                                                                +
                   "Shared Read Blocks": 250313,                                                                                                                                           +
                   "Shared Dirtied Blocks": 0,                                                                                                                                             +
                   "Shared Written Blocks": 0,                                                                                                                                             +
                   "Local Hit Blocks": 0,                                                                                                                                                  +
                   "Local Read Blocks": 0,                                                                                                                                                 +
                   "Local Dirtied Blocks": 0,                                                                                                                                              +
                   "Local Written Blocks": 0,                                                                                                                                              +
                   "Temp Read Blocks": 0,                                                                                                                                                  +
                   "Temp Written Blocks": 0,                                                                                                                                               +
                   "Plans": [                                                                                                                                                              +
                     {                                                                                                                                                                     +
                       "Node Type": "Sort",                                                                                                                                                +
                       "Parent Relationship": "Outer",                                                                                                                                     +
                       "Parallel Aware": false,                                                                                                                                            +
                       "Startup Cost": 0.03,                                                                                                                                               +
                       "Total Cost": 0.03,                                                                                                                                                 +
                       "Plan Rows": 2,                                                                                                                                                     +
                       "Plan Width": 4,                                                                                                                                                    +
                       "Actual Startup Time": 0.043,                                                                                                                                       +
                       "Actual Total Time": 0.044,                                                                                                                                         +
                       "Actual Rows": 2,                                                                                                                                                   +
                       "Actual Loops": 1,                                                                                                                                                  +
                       "Sort Key": ["kt.id"],                                                                                                                                              +
                       "Sort Method": "quicksort",                                                                                                                                         +
                       "Sort Space Used": 25,                                                                                                                                              +
                       "Sort Space Type": "Memory",                                                                                                                                        +
                       "Shared Hit Blocks": 1,                                                                                                                                             +
                       "Shared Read Blocks": 0,                                                                                                                                            +
                       "Shared Dirtied Blocks": 0,                                                                                                                                         +
                       "Shared Written Blocks": 0,                                                                                                                                         +
                       "Local Hit Blocks": 0,                                                                                                                                              +
                       "Local Read Blocks": 0,                                                                                                                                             +
                       "Local Dirtied Blocks": 0,                                                                                                                                          +
                       "Local Written Blocks": 0,                                                                                                                                          +
                       "Temp Read Blocks": 0,                                                                                                                                              +
                       "Temp Written Blocks": 0,                                                                                                                                           +
                       "Plans": [                                                                                                                                                          +
                         {                                                                                                                                                                 +
                           "Node Type": "Seq Scan",                                                                                                                                        +
                           "Parent Relationship": "Outer",                                                                                                                                 +
                           "Parallel Aware": false,                                                                                                                                        +
                           "Relation Name": "kind_type",                                                                                                                                   +
                           "Alias": "kt",                                                                                                                                                  +
                           "Startup Cost": 0.00,                                                                                                                                           +
                           "Total Cost": 0.03,                                                                                                                                             +
                           "Plan Rows": 2,                                                                                                                                                 +
                           "Plan Width": 4,                                                                                                                                                +
                           "Actual Startup Time": 0.020,                                                                                                                                   +
                           "Actual Total Time": 0.026,                                                                                                                                     +
                           "Actual Rows": 2,                                                                                                                                               +
                           "Actual Loops": 1,                                                                                                                                              +
                           "Filter": "((kind)::text = ANY ('{movie,episode}'::text[]))",                                                                                                   +
                           "Rows Removed by Filter": 5,                                                                                                                                    +
                           "Shared Hit Blocks": 1,                                                                                                                                         +
                           "Shared Read Blocks": 0,                                                                                                                                        +
                           "Shared Dirtied Blocks": 0,                                                                                                                                     +
                           "Shared Written Blocks": 0,                                                                                                                                     +
                           "Local Hit Blocks": 0,                                                                                                                                          +
                           "Local Read Blocks": 0,                                                                                                                                         +
                           "Local Dirtied Blocks": 0,                                                                                                                                      +
                           "Local Written Blocks": 0,                                                                                                                                      +
                           "Temp Read Blocks": 0,                                                                                                                                          +
                           "Temp Written Blocks": 0                                                                                                                                        +
                         }                                                                                                                                                                 +
                       ]                                                                                                                                                                   +
                     },                                                                                                                                                                    +
                     {                                                                                                                                                                     +
                       "Node Type": "Sort",                                                                                                                                                +
                       "Parent Relationship": "Inner",                                                                                                                                     +
                       "Parallel Aware": false,                                                                                                                                            +
                       "Startup Cost": 34263.91,                                                                                                                                           +
                       "Total Cost": 34263.91,                                                                                                                                             +
                       "Plan Rows": 1,                                                                                                                                                     +
                       "Plan Width": 31,                                                                                                                                                   +
                       "Actual Startup Time": 15319.520,                                                                                                                                   +
                       "Actual Total Time": 15319.529,                                                                                                                                     +
                       "Actual Rows": 163,                                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                                  +
                       "Sort Key": ["t.kind_id"],                                                                                                                                          +
                       "Sort Method": "quicksort",                                                                                                                                         +
                       "Sort Space Used": 37,                                                                                                                                              +
                       "Sort Space Type": "Memory",                                                                                                                                        +
                       "Shared Hit Blocks": 27,                                                                                                                                            +
                       "Shared Read Blocks": 250313,                                                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                                                         +
                       "Shared Written Blocks": 0,                                                                                                                                         +
                       "Local Hit Blocks": 0,                                                                                                                                              +
                       "Local Read Blocks": 0,                                                                                                                                             +
                       "Local Dirtied Blocks": 0,                                                                                                                                          +
                       "Local Written Blocks": 0,                                                                                                                                          +
                       "Temp Read Blocks": 0,                                                                                                                                              +
                       "Temp Written Blocks": 0,                                                                                                                                           +
                       "Plans": [                                                                                                                                                          +
                         {                                                                                                                                                                 +
                           "Node Type": "Merge Join",                                                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                                                 +
                           "Parallel Aware": false,                                                                                                                                        +
                           "Join Type": "Inner",                                                                                                                                           +
                           "Startup Cost": 34106.74,                                                                                                                                       +
                           "Total Cost": 34263.91,                                                                                                                                         +
                           "Plan Rows": 1,                                                                                                                                                 +
                           "Plan Width": 31,                                                                                                                                               +
                           "Actual Startup Time": 15095.119,                                                                                                                               +
                           "Actual Total Time": 15319.435,                                                                                                                                 +
                           "Actual Rows": 163,                                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                                              +
                           "Inner Unique": true,                                                                                                                                           +
                           "Merge Cond": "(mi.movie_id = t.id)",                                                                                                                           +
                           "Shared Hit Blocks": 27,                                                                                                                                        +
                           "Shared Read Blocks": 250313,                                                                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                                                                     +
                           "Shared Written Blocks": 0,                                                                                                                                     +
                           "Local Hit Blocks": 0,                                                                                                                                          +
                           "Local Read Blocks": 0,                                                                                                                                         +
                           "Local Dirtied Blocks": 0,                                                                                                                                      +
                           "Local Written Blocks": 0,                                                                                                                                      +
                           "Temp Read Blocks": 0,                                                                                                                                          +
                           "Temp Written Blocks": 0,                                                                                                                                       +
                           "Plans": [                                                                                                                                                      +
                             {                                                                                                                                                             +
                               "Node Type": "Sort",                                                                                                                                        +
                               "Parent Relationship": "Outer",                                                                                                                             +
                               "Parallel Aware": false,                                                                                                                                    +
                               "Startup Cost": 29468.62,                                                                                                                                   +
                               "Total Cost": 29468.62,                                                                                                                                     +
                               "Plan Rows": 1,                                                                                                                                             +
                               "Plan Width": 30,                                                                                                                                           +
                               "Actual Startup Time": 13004.552,                                                                                                                           +
                               "Actual Total Time": 13004.696,                                                                                                                             +
                               "Actual Rows": 1269,                                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                                          +
                               "Sort Key": ["mk.movie_id"],                                                                                                                                +
                               "Sort Method": "quicksort",                                                                                                                                 +
                               "Sort Space Used": 148,                                                                                                                                     +
                               "Sort Space Type": "Memory",                                                                                                                                +
                               "Shared Hit Blocks": 25,                                                                                                                                    +
                               "Shared Read Blocks": 214317,                                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                                                 +
                               "Shared Written Blocks": 0,                                                                                                                                 +
                               "Local Hit Blocks": 0,                                                                                                                                      +
                               "Local Read Blocks": 0,                                                                                                                                     +
                               "Local Dirtied Blocks": 0,                                                                                                                                  +
                               "Local Written Blocks": 0,                                                                                                                                  +
                               "Temp Read Blocks": 0,                                                                                                                                      +
                               "Temp Written Blocks": 0,                                                                                                                                   +
                               "Plans": [                                                                                                                                                  +
                                 {                                                                                                                                                         +
                                   "Node Type": "Merge Join",                                                                                                                              +
                                   "Parent Relationship": "Outer",                                                                                                                         +
                                   "Parallel Aware": false,                                                                                                                                +
                                   "Join Type": "Inner",                                                                                                                                   +
                                   "Startup Cost": 29468.62,                                                                                                                               +
                                   "Total Cost": 29468.62,                                                                                                                                 +
                                   "Plan Rows": 1,                                                                                                                                         +
                                   "Plan Width": 30,                                                                                                                                       +
                                   "Actual Startup Time": 13003.773,                                                                                                                       +
                                   "Actual Total Time": 13004.163,                                                                                                                         +
                                   "Actual Rows": 1269,                                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                                      +
                                   "Inner Unique": true,                                                                                                                                   +
                                   "Merge Cond": "(cc.status_id = cct2.id)",                                                                                                               +
                                   "Shared Hit Blocks": 25,                                                                                                                                +
                                   "Shared Read Blocks": 214317,                                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                                             +
                                   "Shared Written Blocks": 0,                                                                                                                             +
                                   "Local Hit Blocks": 0,                                                                                                                                  +
                                   "Local Read Blocks": 0,                                                                                                                                 +
                                   "Local Dirtied Blocks": 0,                                                                                                                              +
                                   "Local Written Blocks": 0,                                                                                                                              +
                                   "Temp Read Blocks": 0,                                                                                                                                  +
                                   "Temp Written Blocks": 0,                                                                                                                               +
                                   "Plans": [                                                                                                                                              +
                                     {                                                                                                                                                     +
                                       "Node Type": "Sort",                                                                                                                                +
                                       "Parent Relationship": "Outer",                                                                                                                     +
                                       "Parallel Aware": false,                                                                                                                            +
                                       "Startup Cost": 29468.59,                                                                                                                           +
                                       "Total Cost": 29468.59,                                                                                                                             +
                                       "Plan Rows": 1,                                                                                                                                     +
                                       "Plan Width": 34,                                                                                                                                   +
                                       "Actual Startup Time": 13003.763,                                                                                                                   +
                                       "Actual Total Time": 13003.822,                                                                                                                     +
                                       "Actual Rows": 1270,                                                                                                                                +
                                       "Actual Loops": 1,                                                                                                                                  +
                                       "Sort Key": ["cc.status_id"],                                                                                                                       +
                                       "Sort Method": "quicksort",                                                                                                                         +
                                       "Sort Space Used": 170,                                                                                                                             +
                                       "Sort Space Type": "Memory",                                                                                                                        +
                                       "Shared Hit Blocks": 24,                                                                                                                            +
                                       "Shared Read Blocks": 214317,                                                                                                                       +
                                       "Shared Dirtied Blocks": 0,                                                                                                                         +
                                       "Shared Written Blocks": 0,                                                                                                                         +
                                       "Local Hit Blocks": 0,                                                                                                                              +
                                       "Local Read Blocks": 0,                                                                                                                             +
                                       "Local Dirtied Blocks": 0,                                                                                                                          +
                                       "Local Written Blocks": 0,                                                                                                                          +
                                       "Temp Read Blocks": 0,                                                                                                                              +
                                       "Temp Written Blocks": 0,                                                                                                                           +
                                       "Plans": [                                                                                                                                          +
                                         {                                                                                                                                                 +
                                           "Node Type": "Merge Join",                                                                                                                      +
                                           "Parent Relationship": "Outer",                                                                                                                 +
                                           "Parallel Aware": false,                                                                                                                        +
                                           "Join Type": "Inner",                                                                                                                           +
                                           "Startup Cost": 29468.59,                                                                                                                       +
                                           "Total Cost": 29468.59,                                                                                                                         +
                                           "Plan Rows": 1,                                                                                                                                 +
                                           "Plan Width": 34,                                                                                                                               +
                                           "Actual Startup Time": 13002.794,                                                                                                               +
                                           "Actual Total Time": 13003.297,                                                                                                                 +
                                           "Actual Rows": 1559,                                                                                                                            +
                                           "Actual Loops": 1,                                                                                                                              +
                                           "Inner Unique": true,                                                                                                                           +
                                           "Merge Cond": "(cc.subject_id = cct1.id)",                                                                                                      +
                                           "Shared Hit Blocks": 24,                                                                                                                        +
                                           "Shared Read Blocks": 214317,                                                                                                                   +
                                           "Shared Dirtied Blocks": 0,                                                                                                                     +
                                           "Shared Written Blocks": 0,                                                                                                                     +
                                           "Local Hit Blocks": 0,                                                                                                                          +
                                           "Local Read Blocks": 0,                                                                                                                         +
                                           "Local Dirtied Blocks": 0,                                                                                                                      +
                                           "Local Written Blocks": 0,                                                                                                                      +
                                           "Temp Read Blocks": 0,                                                                                                                          +
                                           "Temp Written Blocks": 0,                                                                                                                       +
                                           "Plans": [                                                                                                                                      +
                                             {                                                                                                                                             +
                                               "Node Type": "Sort",                                                                                                                        +
                                               "Parent Relationship": "Outer",                                                                                                             +
                                               "Parallel Aware": false,                                                                                                                    +
                                               "Startup Cost": 29468.56,                                                                                                                   +
                                               "Total Cost": 29468.56,                                                                                                                     +
                                               "Plan Rows": 1,                                                                                                                             +
                                               "Plan Width": 38,                                                                                                                           +
                                               "Actual Startup Time": 13001.882,                                                                                                           +
                                               "Actual Total Time": 13002.175,                                                                                                             +
                                               "Actual Rows": 6643,                                                                                                                        +
                                               "Actual Loops": 1,                                                                                                                          +
                                               "Sort Key": ["cc.subject_id"],                                                                                                              +
                                               "Sort Method": "quicksort",                                                                                                                 +
                                               "Sort Space Used": 711,                                                                                                                     +
                                               "Sort Space Type": "Memory",                                                                                                                +
                                               "Shared Hit Blocks": 23,                                                                                                                    +
                                               "Shared Read Blocks": 214317,                                                                                                               +
                                               "Shared Dirtied Blocks": 0,                                                                                                                 +
                                               "Shared Written Blocks": 0,                                                                                                                 +
                                               "Local Hit Blocks": 0,                                                                                                                      +
                                               "Local Read Blocks": 0,                                                                                                                     +
                                               "Local Dirtied Blocks": 0,                                                                                                                  +
                                               "Local Written Blocks": 0,                                                                                                                  +
                                               "Temp Read Blocks": 0,                                                                                                                      +
                                               "Temp Written Blocks": 0,                                                                                                                   +
                                               "Plans": [                                                                                                                                  +
                                                 {                                                                                                                                         +
                                                   "Node Type": "Merge Join",                                                                                                              +
                                                   "Parent Relationship": "Outer",                                                                                                         +
                                                   "Parallel Aware": false,                                                                                                                +
                                                   "Join Type": "Inner",                                                                                                                   +
                                                   "Startup Cost": 29468.56,                                                                                                               +
                                                   "Total Cost": 29468.56,                                                                                                                 +
                                                   "Plan Rows": 1,                                                                                                                         +
                                                   "Plan Width": 38,                                                                                                                       +
                                                   "Actual Startup Time": 12997.586,                                                                                                       +
                                                   "Actual Total Time": 12999.830,                                                                                                         +
                                                   "Actual Rows": 6643,                                                                                                                    +
                                                   "Actual Loops": 1,                                                                                                                      +
                                                   "Inner Unique": true,                                                                                                                   +
                                                   "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                         +
                                                   "Shared Hit Blocks": 23,                                                                                                                +
                                                   "Shared Read Blocks": 214317,                                                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                                                             +
                                                   "Shared Written Blocks": 0,                                                                                                             +
                                                   "Local Hit Blocks": 0,                                                                                                                  +
                                                   "Local Read Blocks": 0,                                                                                                                 +
                                                   "Local Dirtied Blocks": 0,                                                                                                              +
                                                   "Local Written Blocks": 0,                                                                                                              +
                                                   "Temp Read Blocks": 0,                                                                                                                  +
                                                   "Temp Written Blocks": 0,                                                                                                               +
                                                   "Plans": [                                                                                                                              +
                                                     {                                                                                                                                     +
                                                       "Node Type": "Sort",                                                                                                                +
                                                       "Parent Relationship": "Outer",                                                                                                     +
                                                       "Parallel Aware": false,                                                                                                            +
                                                       "Startup Cost": 29468.51,                                                                                                           +
                                                       "Total Cost": 29468.51,                                                                                                             +
                                                       "Plan Rows": 1,                                                                                                                     +
                                                       "Plan Width": 42,                                                                                                                   +
                                                       "Actual Startup Time": 12997.169,                                                                                                   +
                                                       "Actual Total Time": 12997.606,                                                                                                     +
                                                       "Actual Rows": 8988,                                                                                                                +
                                                       "Actual Loops": 1,                                                                                                                  +
                                                       "Sort Key": ["mi_idx.info_type_id"],                                                                                                +
                                                       "Sort Method": "quicksort",                                                                                                         +
                                                       "Sort Space Used": 1087,                                                                                                            +
                                                       "Sort Space Type": "Memory",                                                                                                        +
                                                       "Shared Hit Blocks": 22,                                                                                                            +
                                                       "Shared Read Blocks": 214317,                                                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                                                         +
                                                       "Shared Written Blocks": 0,                                                                                                         +
                                                       "Local Hit Blocks": 0,                                                                                                              +
                                                       "Local Read Blocks": 0,                                                                                                             +
                                                       "Local Dirtied Blocks": 0,                                                                                                          +
                                                       "Local Written Blocks": 0,                                                                                                          +
                                                       "Temp Read Blocks": 0,                                                                                                              +
                                                       "Temp Written Blocks": 0,                                                                                                           +
                                                       "Plans": [                                                                                                                          +
                                                         {                                                                                                                                 +
                                                           "Node Type": "Merge Join",                                                                                                      +
                                                           "Parent Relationship": "Outer",                                                                                                 +
                                                           "Parallel Aware": false,                                                                                                        +
                                                           "Join Type": "Inner",                                                                                                           +
                                                           "Startup Cost": 29468.51,                                                                                                       +
                                                           "Total Cost": 29468.51,                                                                                                         +
                                                           "Plan Rows": 1,                                                                                                                 +
                                                           "Plan Width": 42,                                                                                                               +
                                                           "Actual Startup Time": 12991.162,                                                                                               +
                                                           "Actual Total Time": 12994.256,                                                                                                 +
                                                           "Actual Rows": 8988,                                                                                                            +
                                                           "Actual Loops": 1,                                                                                                              +
                                                           "Inner Unique": true,                                                                                                           +
                                                           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                   +
                                                           "Shared Hit Blocks": 22,                                                                                                        +
                                                           "Shared Read Blocks": 214317,                                                                                                   +
                                                           "Shared Dirtied Blocks": 0,                                                                                                     +
                                                           "Shared Written Blocks": 0,                                                                                                     +
                                                           "Local Hit Blocks": 0,                                                                                                          +
                                                           "Local Read Blocks": 0,                                                                                                         +
                                                           "Local Dirtied Blocks": 0,                                                                                                      +
                                                           "Local Written Blocks": 0,                                                                                                      +
                                                           "Temp Read Blocks": 0,                                                                                                          +
                                                           "Temp Written Blocks": 0,                                                                                                       +
                                                           "Plans": [                                                                                                                      +
                                                             {                                                                                                                             +
                                                               "Node Type": "Sort",                                                                                                        +
                                                               "Parent Relationship": "Outer",                                                                                             +
                                                               "Parallel Aware": false,                                                                                                    +
                                                               "Startup Cost": 29468.47,                                                                                                   +
                                                               "Total Cost": 29468.47,                                                                                                     +
                                                               "Plan Rows": 1,                                                                                                             +
                                                               "Plan Width": 46,                                                                                                           +
                                                               "Actual Startup Time": 12991.142,                                                                                           +
                                                               "Actual Total Time": 12991.570,                                                                                             +
                                                               "Actual Rows": 8988,                                                                                                        +
                                                               "Actual Loops": 1,                                                                                                          +
                                                               "Sort Key": ["mc.company_type_id"],                                                                                         +
                                                               "Sort Method": "quicksort",                                                                                                 +
                                                               "Sort Space Used": 1087,                                                                                                    +
                                                               "Sort Space Type": "Memory",                                                                                                +
                                                               "Shared Hit Blocks": 21,                                                                                                    +
                                                               "Shared Read Blocks": 214317,                                                                                               +
                                                               "Shared Dirtied Blocks": 0,                                                                                                 +
                                                               "Shared Written Blocks": 0,                                                                                                 +
                                                               "Local Hit Blocks": 0,                                                                                                      +
                                                               "Local Read Blocks": 0,                                                                                                     +
                                                               "Local Dirtied Blocks": 0,                                                                                                  +
                                                               "Local Written Blocks": 0,                                                                                                  +
                                                               "Temp Read Blocks": 0,                                                                                                      +
                                                               "Temp Written Blocks": 0,                                                                                                   +
                                                               "Plans": [                                                                                                                  +
                                                                 {                                                                                                                         +
                                                                   "Node Type": "Merge Join",                                                                                              +
                                                                   "Parent Relationship": "Outer",                                                                                         +
                                                                   "Parallel Aware": false,                                                                                                +
                                                                   "Join Type": "Inner",                                                                                                   +
                                                                   "Startup Cost": 29468.47,                                                                                               +
                                                                   "Total Cost": 29468.47,                                                                                                 +
                                                                   "Plan Rows": 1,                                                                                                         +
                                                                   "Plan Width": 46,                                                                                                       +
                                                                   "Actual Startup Time": 12985.304,                                                                                       +
                                                                   "Actual Total Time": 12988.135,                                                                                         +
                                                                   "Actual Rows": 8988,                                                                                                    +
                                                                   "Actual Loops": 1,                                                                                                      +
                                                                   "Inner Unique": false,                                                                                                  +
                                                                   "Merge Cond": "(it1.id = mi.info_type_id)",                                                                             +
                                                                   "Shared Hit Blocks": 21,                                                                                                +
                                                                   "Shared Read Blocks": 214317,                                                                                           +
                                                                   "Shared Dirtied Blocks": 0,                                                                                             +
                                                                   "Shared Written Blocks": 0,                                                                                             +
                                                                   "Local Hit Blocks": 0,                                                                                                  +
                                                                   "Local Read Blocks": 0,                                                                                                 +
                                                                   "Local Dirtied Blocks": 0,                                                                                              +
                                                                   "Local Written Blocks": 0,                                                                                              +
                                                                   "Temp Read Blocks": 0,                                                                                                  +
                                                                   "Temp Written Blocks": 0,                                                                                               +
                                                                   "Plans": [                                                                                                              +
                                                                     {                                                                                                                     +
                                                                       "Node Type": "Sort",                                                                                                +
                                                                       "Parent Relationship": "Outer",                                                                                     +
                                                                       "Parallel Aware": false,                                                                                            +
                                                                       "Startup Cost": 0.05,                                                                                               +
                                                                       "Total Cost": 0.05,                                                                                                 +
                                                                       "Plan Rows": 1,                                                                                                     +
                                                                       "Plan Width": 4,                                                                                                    +
                                                                       "Actual Startup Time": 0.065,                                                                                       +
                                                                       "Actual Total Time": 0.065,                                                                                         +
                                                                       "Actual Rows": 1,                                                                                                   +
                                                                       "Actual Loops": 1,                                                                                                  +
                                                                       "Sort Key": ["it1.id"],                                                                                             +
                                                                       "Sort Method": "quicksort",                                                                                         +
                                                                       "Sort Space Used": 25,                                                                                              +
                                                                       "Sort Space Type": "Memory",                                                                                        +
                                                                       "Shared Hit Blocks": 1,                                                                                             +
                                                                       "Shared Read Blocks": 0,                                                                                            +
                                                                       "Shared Dirtied Blocks": 0,                                                                                         +
                                                                       "Shared Written Blocks": 0,                                                                                         +
                                                                       "Local Hit Blocks": 0,                                                                                              +
                                                                       "Local Read Blocks": 0,                                                                                             +
                                                                       "Local Dirtied Blocks": 0,                                                                                          +
                                                                       "Local Written Blocks": 0,                                                                                          +
                                                                       "Temp Read Blocks": 0,                                                                                              +
                                                                       "Temp Written Blocks": 0,                                                                                           +
                                                                       "Plans": [                                                                                                          +
                                                                         {                                                                                                                 +
                                                                           "Node Type": "Seq Scan",                                                                                        +
                                                                           "Parent Relationship": "Outer",                                                                                 +
                                                                           "Parallel Aware": false,                                                                                        +
                                                                           "Relation Name": "info_type",                                                                                   +
                                                                           "Alias": "it1",                                                                                                 +
                                                                           "Startup Cost": 0.00,                                                                                           +
                                                                           "Total Cost": 0.05,                                                                                             +
                                                                           "Plan Rows": 1,                                                                                                 +
                                                                           "Plan Width": 4,                                                                                                +
                                                                           "Actual Startup Time": 0.016,                                                                                   +
                                                                           "Actual Total Time": 0.052,                                                                                     +
                                                                           "Actual Rows": 1,                                                                                               +
                                                                           "Actual Loops": 1,                                                                                              +
                                                                           "Filter": "((info)::text = 'countries'::text)",                                                                 +
                                                                           "Rows Removed by Filter": 112,                                                                                  +
                                                                           "Shared Hit Blocks": 1,                                                                                         +
                                                                           "Shared Read Blocks": 0,                                                                                        +
                                                                           "Shared Dirtied Blocks": 0,                                                                                     +
                                                                           "Shared Written Blocks": 0,                                                                                     +
                                                                           "Local Hit Blocks": 0,                                                                                          +
                                                                           "Local Read Blocks": 0,                                                                                         +
                                                                           "Local Dirtied Blocks": 0,                                                                                      +
                                                                           "Local Written Blocks": 0,                                                                                      +
                                                                           "Temp Read Blocks": 0,                                                                                          +
                                                                           "Temp Written Blocks": 0                                                                                        +
                                                                         }                                                                                                                 +
                                                                       ]                                                                                                                   +
                                                                     },                                                                                                                    +
                                                                     {                                                                                                                     +
                                                                       "Node Type": "Sort",                                                                                                +
                                                                       "Parent Relationship": "Inner",                                                                                     +
                                                                       "Parallel Aware": false,                                                                                            +
                                                                       "Startup Cost": 29468.42,                                                                                           +
                                                                       "Total Cost": 29468.42,                                                                                             +
                                                                       "Plan Rows": 3,                                                                                                     +
                                                                       "Plan Width": 50,                                                                                                   +
                                                                       "Actual Startup Time": 12984.053,                                                                                   +
                                                                       "Actual Total Time": 12984.750,                                                                                     +
                                                                       "Actual Rows": 14610,                                                                                               +
                                                                       "Actual Loops": 1,                                                                                                  +
                                                                       "Sort Key": ["mi.info_type_id"],                                                                                    +
                                                                       "Sort Method": "quicksort",                                                                                         +
                                                                       "Sort Space Used": 2549,                                                                                            +
                                                                       "Sort Space Type": "Memory",                                                                                        +
                                                                       "Shared Hit Blocks": 20,                                                                                            +
                                                                       "Shared Read Blocks": 214317,                                                                                       +
                                                                       "Shared Dirtied Blocks": 0,                                                                                         +
                                                                       "Shared Written Blocks": 0,                                                                                         +
                                                                       "Local Hit Blocks": 0,                                                                                              +
                                                                       "Local Read Blocks": 0,                                                                                             +
                                                                       "Local Dirtied Blocks": 0,                                                                                          +
                                                                       "Local Written Blocks": 0,                                                                                          +
                                                                       "Temp Read Blocks": 0,                                                                                              +
                                                                       "Temp Written Blocks": 0,                                                                                           +
                                                                       "Plans": [                                                                                                          +
                                                                         {                                                                                                                 +
                                                                           "Node Type": "Merge Join",                                                                                      +
                                                                           "Parent Relationship": "Outer",                                                                                 +
                                                                           "Parallel Aware": false,                                                                                        +
                                                                           "Join Type": "Inner",                                                                                           +
                                                                           "Startup Cost": 29358.32,                                                                                       +
                                                                           "Total Cost": 29468.42,                                                                                         +
                                                                           "Plan Rows": 3,                                                                                                 +
                                                                           "Plan Width": 50,                                                                                               +
                                                                           "Actual Startup Time": 12795.293,                                                                               +
                                                                           "Actual Total Time": 12975.948,                                                                                 +
                                                                           "Actual Rows": 19610,                                                                                           +
                                                                           "Actual Loops": 1,                                                                                              +
                                                                           "Inner Unique": false,                                                                                          +
                                                                           "Merge Cond": "(mk.movie_id = mi.movie_id)",                                                                    +
                                                                           "Shared Hit Blocks": 20,                                                                                        +
                                                                           "Shared Read Blocks": 214317,                                                                                   +
                                                                           "Shared Dirtied Blocks": 0,                                                                                     +
                                                                           "Shared Written Blocks": 0,                                                                                     +
                                                                           "Local Hit Blocks": 0,                                                                                          +
                                                                           "Local Read Blocks": 0,                                                                                         +
                                                                           "Local Dirtied Blocks": 0,                                                                                      +
                                                                           "Local Written Blocks": 0,                                                                                      +
                                                                           "Temp Read Blocks": 0,                                                                                          +
                                                                           "Temp Written Blocks": 0,                                                                                       +
                                                                           "Plans": [                                                                                                      +
                                                                             {                                                                                                             +
                                                                               "Node Type": "Merge Join",                                                                                  +
                                                                               "Parent Relationship": "Outer",                                                                             +
                                                                               "Parallel Aware": false,                                                                                    +
                                                                               "Join Type": "Inner",                                                                                       +
                                                                               "Startup Cost": 20595.57,                                                                                   +
                                                                               "Total Cost": 20684.82,                                                                                     +
                                                                               "Plan Rows": 8,                                                                                             +
                                                                               "Plan Width": 42,                                                                                           +
                                                                               "Actual Startup Time": 4285.376,                                                                            +
                                                                               "Actual Total Time": 4440.118,                                                                              +
                                                                               "Actual Rows": 57801,                                                                                       +
                                                                               "Actual Loops": 1,                                                                                          +
                                                                               "Inner Unique": false,                                                                                      +
                                                                               "Merge Cond": "(mk.movie_id = cc.movie_id)",                                                                +
                                                                               "Shared Hit Blocks": 18,                                                                                    +
                                                                               "Shared Read Blocks": 52427,                                                                                +
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
                                                                                   "Startup Cost": 20205.79,                                                                               +
                                                                                   "Total Cost": 20274.48,                                                                                 +
                                                                                   "Plan Rows": 27,                                                                                        +
                                                                                   "Plan Width": 30,                                                                                       +
                                                                                   "Actual Startup Time": 4172.760,                                                                        +
                                                                                   "Actual Total Time": 4287.670,                                                                          +
                                                                                   "Actual Rows": 60287,                                                                                   +
                                                                                   "Actual Loops": 1,                                                                                      +
                                                                                   "Inner Unique": false,                                                                                  +
                                                                                   "Merge Cond": "(mk.movie_id = mc.movie_id)",                                                            +
                                                                                   "Shared Hit Blocks": 16,                                                                                +
                                                                                   "Shared Read Blocks": 51698,                                                                            +
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
                                                                                       "Startup Cost": 18649.87,                                                                           +
                                                                                       "Total Cost": 18696.30,                                                                             +
                                                                                       "Plan Rows": 88,                                                                                    +
                                                                                       "Plan Width": 18,                                                                                   +
                                                                                       "Actual Startup Time": 3214.954,                                                                    +
                                                                                       "Actual Total Time": 3272.749,                                                                      +
                                                                                       "Actual Rows": 17559,                                                                               +
                                                                                       "Actual Loops": 1,                                                                                  +
                                                                                       "Inner Unique": false,                                                                              +
                                                                                       "Merge Cond": "(mk.movie_id = mi_idx.movie_id)",                                                    +
                                                                                       "Shared Hit Blocks": 13,                                                                            +
                                                                                       "Shared Read Blocks": 32912,                                                                        +
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
                                                                                           "Startup Cost": 17338.09,                                                                       +
                                                                                           "Total Cost": 17338.10,                                                                         +
                                                                                           "Plan Rows": 135,                                                                               +
                                                                                           "Plan Width": 4,                                                                                +
                                                                                           "Actual Startup Time": 2549.797,                                                                +
                                                                                           "Actual Total Time": 2553.769,                                                                  +
                                                                                           "Actual Rows": 37091,                                                                           +
                                                                                           "Actual Loops": 1,                                                                              +
                                                                                           "Sort Key": ["mk.movie_id"],                                                                    +
                                                                                           "Sort Method": "quicksort",                                                                     +
                                                                                           "Sort Space Used": 3275,                                                                        +
                                                                                           "Sort Space Type": "Memory",                                                                    +
                                                                                           "Shared Hit Blocks": 11,                                                                        +
                                                                                           "Shared Read Blocks": 24461,                                                                    +
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
                                                                                               "Startup Cost": 16635.45,                                                                   +
                                                                                               "Total Cost": 17337.94,                                                                     +
                                                                                               "Plan Rows": 135,                                                                           +
                                                                                               "Plan Width": 4,                                                                            +
                                                                                               "Actual Startup Time": 2331.562,                                                            +
                                                                                               "Actual Total Time": 2537.533,                                                              +
                                                                                               "Actual Rows": 37091,                                                                       +
                                                                                               "Actual Loops": 1,                                                                          +
                                                                                               "Inner Unique": false,                                                                      +
                                                                                               "Merge Cond": "(k.id = mk.keyword_id)",                                                     +
                                                                                               "Shared Hit Blocks": 11,                                                                    +
                                                                                               "Shared Read Blocks": 24461,                                                                +
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
                                                                                                   "Startup Cost": 24.53,                                                                  +
                                                                                                   "Total Cost": 24.53,                                                                    +
                                                                                                   "Plan Rows": 4,                                                                         +
                                                                                                   "Plan Width": 4,                                                                        +
                                                                                                   "Actual Startup Time": 55.252,                                                          +
                                                                                                   "Actual Total Time": 55.253,                                                            +
                                                                                                   "Actual Rows": 3,                                                                       +
                                                                                                   "Actual Loops": 1,                                                                      +
                                                                                                   "Sort Key": ["k.id"],                                                                   +
                                                                                                   "Sort Method": "quicksort",                                                             +
                                                                                                   "Sort Space Used": 25,                                                                  +
                                                                                                   "Sort Space Type": "Memory",                                                            +
                                                                                                   "Shared Hit Blocks": 8,                                                                 +
                                                                                                   "Shared Read Blocks": 10,                                                               +
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
                                                                                                       "Node Type": "Index Scan",                                                          +
                                                                                                       "Parent Relationship": "Outer",                                                     +
                                                                                                       "Parallel Aware": false,                                                            +
                                                                                                       "Scan Direction": "Forward",                                                        +
                                                                                                       "Index Name": "keyword_idx_keyword",                                                +
                                                                                                       "Relation Name": "keyword",                                                         +
                                                                                                       "Alias": "k",                                                                       +
                                                                                                       "Startup Cost": 0.01,                                                               +
                                                                                                       "Total Cost": 24.53,                                                                +
                                                                                                       "Plan Rows": 4,                                                                     +
                                                                                                       "Plan Width": 4,                                                                    +
                                                                                                       "Actual Startup Time": 30.296,                                                      +
                                                                                                       "Actual Total Time": 55.226,                                                        +
                                                                                                       "Actual Rows": 3,                                                                   +
                                                                                                       "Actual Loops": 1,                                                                  +
                                                                                                       "Index Cond": "(keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))",+
                                                                                                       "Rows Removed by Index Recheck": 0,                                                 +
                                                                                                       "Shared Hit Blocks": 8,                                                             +
                                                                                                       "Shared Read Blocks": 10,                                                           +
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
                                                                                                 },                                                                                        +
                                                                                                 {                                                                                         +
                                                                                                   "Node Type": "Sort",                                                                    +
                                                                                                   "Parent Relationship": "Inner",                                                         +
                                                                                                   "Parallel Aware": false,                                                                +
                                                                                                   "Startup Cost": 16610.92,                                                               +
                                                                                                   "Total Cost": 16962.16,                                                                 +
                                                                                                   "Plan Rows": 4523930,                                                                   +
                                                                                                   "Plan Width": 8,                                                                        +
                                                                                                   "Actual Startup Time": 2225.411,                                                        +
                                                                                                   "Actual Total Time": 2366.042,                                                          +
                                                                                                   "Actual Rows": 943582,                                                                  +
                                                                                                   "Actual Loops": 1,                                                                      +
                                                                                                   "Sort Key": ["mk.keyword_id"],                                                          +
                                                                                                   "Sort Method": "quicksort",                                                             +
                                                                                                   "Sort Space Used": 408668,                                                              +
                                                                                                   "Sort Space Type": "Memory",                                                            +
                                                                                                   "Shared Hit Blocks": 3,                                                                 +
                                                                                                   "Shared Read Blocks": 24451,                                                            +
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
                                                                                                       "Relation Name": "movie_keyword",                                                   +
                                                                                                       "Alias": "mk",                                                                      +
                                                                                                       "Startup Cost": 0.00,                                                               +
                                                                                                       "Total Cost": 1079.84,                                                              +
                                                                                                       "Plan Rows": 4523930,                                                               +
                                                                                                       "Plan Width": 8,                                                                    +
                                                                                                       "Actual Startup Time": 0.018,                                                       +
                                                                                                       "Actual Total Time": 780.897,                                                       +
                                                                                                       "Actual Rows": 4523930,                                                             +
                                                                                                       "Actual Loops": 1,                                                                  +
                                                                                                       "Shared Hit Blocks": 3,                                                             +
                                                                                                       "Shared Read Blocks": 24451,                                                        +
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
                                                                                           "Startup Cost": 1311.79,                                                                        +
                                                                                           "Total Cost": 1334.99,                                                                          +
                                                                                           "Plan Rows": 298853,                                                                            +
                                                                                           "Plan Width": 14,                                                                               +
                                                                                           "Actual Startup Time": 665.133,                                                                 +
                                                                                           "Actual Total Time": 678.789,                                                                   +
                                                                                           "Actual Rows": 303730,                                                                          +
                                                                                           "Actual Loops": 1,                                                                              +
                                                                                           "Sort Key": ["mi_idx.movie_id"],                                                                +
                                                                                           "Sort Method": "quicksort",                                                                     +
                                                                                           "Sort Space Used": 26387,                                                                       +
                                                                                           "Sort Space Type": "Memory",                                                                    +
                                                                                           "Shared Hit Blocks": 2,                                                                         +
                                                                                           "Shared Read Blocks": 8451,                                                                     +
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
                                                                                               "Relation Name": "movie_info_idx",                                                          +
                                                                                               "Alias": "mi_idx",                                                                          +
                                                                                               "Startup Cost": 0.00,                                                                       +
                                                                                               "Total Cost": 467.71,                                                                       +
                                                                                               "Plan Rows": 298853,                                                                        +
                                                                                               "Plan Width": 14,                                                                           +
                                                                                               "Actual Startup Time": 0.025,                                                               +
                                                                                               "Actual Total Time": 524.669,                                                               +
                                                                                               "Actual Rows": 298857,                                                                      +
                                                                                               "Actual Loops": 1,                                                                          +
                                                                                               "Filter": "(info > '6.5'::text)",                                                           +
                                                                                               "Rows Removed by Filter": 1081178,                                                          +
                                                                                               "Shared Hit Blocks": 2,                                                                     +
                                                                                               "Shared Read Blocks": 8451,                                                                 +
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
                                                                                     },                                                                                                    +
                                                                                     {                                                                                                     +
                                                                                       "Node Type": "Sort",                                                                                +
                                                                                       "Parent Relationship": "Inner",                                                                     +
                                                                                       "Parallel Aware": false,                                                                            +
                                                                                       "Startup Cost": 1555.92,                                                                            +
                                                                                       "Total Cost": 1567.04,                                                                              +
                                                                                       "Plan Rows": 143259,                                                                                +
                                                                                       "Plan Width": 12,                                                                                   +
                                                                                       "Actual Startup Time": 957.795,                                                                     +
                                                                                       "Actual Total Time": 973.314,                                                                       +
                                                                                       "Actual Rows": 334493,                                                                              +
                                                                                       "Actual Loops": 1,                                                                                  +
                                                                                       "Sort Key": ["mc.movie_id"],                                                                        +
                                                                                       "Sort Method": "quicksort",                                                                         +
                                                                                       "Sort Space Used": 26504,                                                                           +
                                                                                       "Sort Space Type": "Memory",                                                                        +
                                                                                       "Shared Hit Blocks": 3,                                                                             +
                                                                                       "Shared Read Blocks": 18786,                                                                        +
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
                                                                                           "Relation Name": "movie_companies",                                                             +
                                                                                           "Alias": "mc",                                                                                  +
                                                                                           "Startup Cost": 0.00,                                                                           +
                                                                                           "Total Cost": 1174.90,                                                                          +
                                                                                           "Plan Rows": 143259,                                                                            +
                                                                                           "Plan Width": 12,                                                                               +
                                                                                           "Actual Startup Time": 0.011,                                                                   +
                                                                                           "Actual Total Time": 846.573,                                                                   +
                                                                                           "Actual Rows": 303271,                                                                          +
                                                                                           "Actual Loops": 1,                                                                              +
                                                                                           "Filter": "((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))",                        +
                                                                                           "Rows Removed by Filter": 2305858,                                                              +
                                                                                           "Shared Hit Blocks": 3,                                                                         +
                                                                                           "Shared Read Blocks": 18786,                                                                    +
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
                                                                                 },                                                                                                        +
                                                                                 {                                                                                                         +
                                                                                   "Node Type": "Sort",                                                                                    +
                                                                                   "Parent Relationship": "Inner",                                                                         +
                                                                                   "Parallel Aware": false,                                                                                +
                                                                                   "Startup Cost": 389.78,                                                                                 +
                                                                                   "Total Cost": 400.26,                                                                                   +
                                                                                   "Plan Rows": 135086,                                                                                    +
                                                                                   "Plan Width": 12,                                                                                       +
                                                                                   "Actual Startup Time": 111.215,                                                                         +
                                                                                   "Actual Total Time": 120.618,                                                                           +
                                                                                   "Actual Rows": 185924,                                                                                  +
                                                                                   "Actual Loops": 1,                                                                                      +
                                                                                   "Sort Key": ["cc.movie_id"],                                                                            +
                                                                                   "Sort Method": "quicksort",                                                                             +
                                                                                   "Sort Space Used": 12477,                                                                               +
                                                                                   "Sort Space Type": "Memory",                                                                            +
                                                                                   "Shared Hit Blocks": 2,                                                                                 +
                                                                                   "Shared Read Blocks": 729,                                                                              +
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
                                                                                       "Node Type": "Seq Scan",                                                                            +
                                                                                       "Parent Relationship": "Outer",                                                                     +
                                                                                       "Parallel Aware": false,                                                                            +
                                                                                       "Relation Name": "complete_cast",                                                                   +
                                                                                       "Alias": "cc",                                                                                      +
                                                                                       "Startup Cost": 0.00,                                                                               +
                                                                                       "Total Cost": 32.27,                                                                                +
                                                                                       "Plan Rows": 135086,                                                                                +
                                                                                       "Plan Width": 12,                                                                                   +
                                                                                       "Actual Startup Time": 20.684,                                                                      +
                                                                                       "Actual Total Time": 53.986,                                                                        +
                                                                                       "Actual Rows": 135086,                                                                              +
                                                                                       "Actual Loops": 1,                                                                                  +
                                                                                       "Shared Hit Blocks": 2,                                                                             +
                                                                                       "Shared Read Blocks": 729,                                                                          +
                                                                                       "Shared Dirtied Blocks": 0,                                                                         +
                                                                                       "Shared Written Blocks": 0,                                                                         +
                                                                                       "Local Hit Blocks": 0,                                                                              +
                                                                                       "Local Read Blocks": 0,                                                                             +
                                                                                       "Local Dirtied Blocks": 0,                                                                          +
                                                                                       "Local Written Blocks": 0,                                                                          +
                                                                                       "Temp Read Blocks": 0,                                                                              +
                                                                                       "Temp Written Blocks": 0                                                                            +
                                                                                     }                                                                                                     +
                                                                                   ]                                                                                                       +
                                                                                 }                                                                                                         +
                                                                               ]                                                                                                           +
                                                                             },                                                                                                            +
                                                                             {                                                                                                             +
                                                                               "Node Type": "Sort",                                                                                        +
                                                                               "Parent Relationship": "Inner",                                                                             +
                                                                               "Parallel Aware": false,                                                                                    +
                                                                               "Startup Cost": 8762.75,                                                                                    +
                                                                               "Total Cost": 8773.17,                                                                                      +
                                                                               "Plan Rows": 134293,                                                                                        +
                                                                               "Plan Width": 8,                                                                                            +
                                                                               "Actual Startup Time": 8506.744,                                                                            +
                                                                               "Actual Total Time": 8513.716,                                                                              +
                                                                               "Actual Rows": 153035,                                                                                      +
                                                                               "Actual Loops": 1,                                                                                          +
                                                                               "Sort Key": ["mi.movie_id"],                                                                                +
                                                                               "Sort Method": "quicksort",                                                                                 +
                                                                               "Sort Space Used": 12437,                                                                                   +
                                                                               "Sort Space Type": "Memory",                                                                                +
                                                                               "Shared Hit Blocks": 2,                                                                                     +
                                                                               "Shared Read Blocks": 161890,                                                                               +
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
                                                                                   "Node Type": "Seq Scan",                                                                                +
                                                                                   "Parent Relationship": "Outer",                                                                         +
                                                                                   "Parallel Aware": false,                                                                                +
                                                                                   "Relation Name": "movie_info",                                                                          +
                                                                                   "Alias": "mi",                                                                                          +
                                                                                   "Startup Cost": 0.00,                                                                                   +
                                                                                   "Total Cost": 8407.52,                                                                                  +
                                                                                   "Plan Rows": 134293,                                                                                    +
                                                                                   "Plan Width": 8,                                                                                        +
                                                                                   "Actual Startup Time": 26.216,                                                                          +
                                                                                   "Actual Total Time": 8451.107,                                                                          +
                                                                                   "Actual Rows": 134239,                                                                                  +
                                                                                   "Actual Loops": 1,                                                                                      +
                                                                                   "Filter": "(info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))",                                   +
                                                                                   "Rows Removed by Filter": 14701481,                                                                     +
                                                                                   "Shared Hit Blocks": 2,                                                                                 +
                                                                                   "Shared Read Blocks": 161890,                                                                           +
                                                                                   "Shared Dirtied Blocks": 0,                                                                             +
                                                                                   "Shared Written Blocks": 0,                                                                             +
                                                                                   "Local Hit Blocks": 0,                                                                                  +
                                                                                   "Local Read Blocks": 0,                                                                                 +
                                                                                   "Local Dirtied Blocks": 0,                                                                              +
                                                                                   "Local Written Blocks": 0,                                                                              +
                                                                                   "Temp Read Blocks": 0,                                                                                  +
                                                                                   "Temp Written Blocks": 0                                                                                +
                                                                                 }                                                                                                         +
                                                                               ]                                                                                                           +
                                                                             }                                                                                                             +
                                                                           ]                                                                                                               +
                                                                         }                                                                                                                 +
                                                                       ]                                                                                                                   +
                                                                     }                                                                                                                     +
                                                                   ]                                                                                                                       +
                                                                 }                                                                                                                         +
                                                               ]                                                                                                                           +
                                                             },                                                                                                                            +
                                                             {                                                                                                                             +
                                                               "Node Type": "Sort",                                                                                                        +
                                                               "Parent Relationship": "Inner",                                                                                             +
                                                               "Parallel Aware": false,                                                                                                    +
                                                               "Startup Cost": 0.03,                                                                                                       +
                                                               "Total Cost": 0.03,                                                                                                         +
                                                               "Plan Rows": 4,                                                                                                             +
                                                               "Plan Width": 4,                                                                                                            +
                                                               "Actual Startup Time": 0.016,                                                                                               +
                                                               "Actual Total Time": 0.016,                                                                                                 +
                                                               "Actual Rows": 1,                                                                                                           +
                                                               "Actual Loops": 1,                                                                                                          +
                                                               "Sort Key": ["ct.id"],                                                                                                      +
                                                               "Sort Method": "quicksort",                                                                                                 +
                                                               "Sort Space Used": 25,                                                                                                      +
                                                               "Sort Space Type": "Memory",                                                                                                +
                                                               "Shared Hit Blocks": 1,                                                                                                     +
                                                               "Shared Read Blocks": 0,                                                                                                    +
                                                               "Shared Dirtied Blocks": 0,                                                                                                 +
                                                               "Shared Written Blocks": 0,                                                                                                 +
                                                               "Local Hit Blocks": 0,                                                                                                      +
                                                               "Local Read Blocks": 0,                                                                                                     +
                                                               "Local Dirtied Blocks": 0,                                                                                                  +
                                                               "Local Written Blocks": 0,                                                                                                  +
                                                               "Temp Read Blocks": 0,                                                                                                      +
                                                               "Temp Written Blocks": 0,                                                                                                   +
                                                               "Plans": [                                                                                                                  +
                                                                 {                                                                                                                         +
                                                                   "Node Type": "Seq Scan",                                                                                                +
                                                                   "Parent Relationship": "Outer",                                                                                         +
                                                                   "Parallel Aware": false,                                                                                                +
                                                                   "Relation Name": "company_type",                                                                                        +
                                                                   "Alias": "ct",                                                                                                          +
                                                                   "Startup Cost": 0.00,                                                                                                   +
                                                                   "Total Cost": 0.03,                                                                                                     +
                                                                   "Plan Rows": 4,                                                                                                         +
                                                                   "Plan Width": 4,                                                                                                        +
                                                                   "Actual Startup Time": 0.008,                                                                                           +
                                                                   "Actual Total Time": 0.009,                                                                                             +
                                                                   "Actual Rows": 4,                                                                                                       +
                                                                   "Actual Loops": 1,                                                                                                      +
                                                                   "Shared Hit Blocks": 1,                                                                                                 +
                                                                   "Shared Read Blocks": 0,                                                                                                +
                                                                   "Shared Dirtied Blocks": 0,                                                                                             +
                                                                   "Shared Written Blocks": 0,                                                                                             +
                                                                   "Local Hit Blocks": 0,                                                                                                  +
                                                                   "Local Read Blocks": 0,                                                                                                 +
                                                                   "Local Dirtied Blocks": 0,                                                                                              +
                                                                   "Local Written Blocks": 0,                                                                                              +
                                                                   "Temp Read Blocks": 0,                                                                                                  +
                                                                   "Temp Written Blocks": 0                                                                                                +
                                                                 }                                                                                                                         +
                                                               ]                                                                                                                           +
                                                             }                                                                                                                             +
                                                           ]                                                                                                                               +
                                                         }                                                                                                                                 +
                                                       ]                                                                                                                                   +
                                                     },                                                                                                                                    +
                                                     {                                                                                                                                     +
                                                       "Node Type": "Sort",                                                                                                                +
                                                       "Parent Relationship": "Inner",                                                                                                     +
                                                       "Parallel Aware": false,                                                                                                            +
                                                       "Startup Cost": 0.05,                                                                                                               +
                                                       "Total Cost": 0.05,                                                                                                                 +
                                                       "Plan Rows": 1,                                                                                                                     +
                                                       "Plan Width": 4,                                                                                                                    +
                                                       "Actual Startup Time": 0.022,                                                                                                       +
                                                       "Actual Total Time": 0.022,                                                                                                         +
                                                       "Actual Rows": 1,                                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                                  +
                                                       "Sort Key": ["it2.id"],                                                                                                             +
                                                       "Sort Method": "quicksort",                                                                                                         +
                                                       "Sort Space Used": 25,                                                                                                              +
                                                       "Sort Space Type": "Memory",                                                                                                        +
                                                       "Shared Hit Blocks": 1,                                                                                                             +
                                                       "Shared Read Blocks": 0,                                                                                                            +
                                                       "Shared Dirtied Blocks": 0,                                                                                                         +
                                                       "Shared Written Blocks": 0,                                                                                                         +
                                                       "Local Hit Blocks": 0,                                                                                                              +
                                                       "Local Read Blocks": 0,                                                                                                             +
                                                       "Local Dirtied Blocks": 0,                                                                                                          +
                                                       "Local Written Blocks": 0,                                                                                                          +
                                                       "Temp Read Blocks": 0,                                                                                                              +
                                                       "Temp Written Blocks": 0,                                                                                                           +
                                                       "Plans": [                                                                                                                          +
                                                         {                                                                                                                                 +
                                                           "Node Type": "Seq Scan",                                                                                                        +
                                                           "Parent Relationship": "Outer",                                                                                                 +
                                                           "Parallel Aware": false,                                                                                                        +
                                                           "Relation Name": "info_type",                                                                                                   +
                                                           "Alias": "it2",                                                                                                                 +
                                                           "Startup Cost": 0.00,                                                                                                           +
                                                           "Total Cost": 0.05,                                                                                                             +
                                                           "Plan Rows": 1,                                                                                                                 +
                                                           "Plan Width": 4,                                                                                                                +
                                                           "Actual Startup Time": 0.018,                                                                                                   +
                                                           "Actual Total Time": 0.020,                                                                                                     +
                                                           "Actual Rows": 1,                                                                                                               +
                                                           "Actual Loops": 1,                                                                                                              +
                                                           "Filter": "((info)::text = 'rating'::text)",                                                                                    +
                                                           "Rows Removed by Filter": 112,                                                                                                  +
                                                           "Shared Hit Blocks": 1,                                                                                                         +
                                                           "Shared Read Blocks": 0,                                                                                                        +
                                                           "Shared Dirtied Blocks": 0,                                                                                                     +
                                                           "Shared Written Blocks": 0,                                                                                                     +
                                                           "Local Hit Blocks": 0,                                                                                                          +
                                                           "Local Read Blocks": 0,                                                                                                         +
                                                           "Local Dirtied Blocks": 0,                                                                                                      +
                                                           "Local Written Blocks": 0,                                                                                                      +
                                                           "Temp Read Blocks": 0,                                                                                                          +
                                                           "Temp Written Blocks": 0                                                                                                        +
                                                         }                                                                                                                                 +
                                                       ]                                                                                                                                   +
                                                     }                                                                                                                                     +
                                                   ]                                                                                                                                       +
                                                 }                                                                                                                                         +
                                               ]                                                                                                                                           +
                                             },                                                                                                                                            +
                                             {                                                                                                                                             +
                                               "Node Type": "Sort",                                                                                                                        +
                                               "Parent Relationship": "Inner",                                                                                                             +
                                               "Parallel Aware": false,                                                                                                                    +
                                               "Startup Cost": 0.03,                                                                                                                       +
                                               "Total Cost": 0.03,                                                                                                                         +
                                               "Plan Rows": 1,                                                                                                                             +
                                               "Plan Width": 4,                                                                                                                            +
                                               "Actual Startup Time": 0.008,                                                                                                               +
                                               "Actual Total Time": 0.008,                                                                                                                 +
                                               "Actual Rows": 1,                                                                                                                           +
                                               "Actual Loops": 1,                                                                                                                          +
                                               "Sort Key": ["cct1.id"],                                                                                                                    +
                                               "Sort Method": "quicksort",                                                                                                                 +
                                               "Sort Space Used": 25,                                                                                                                      +
                                               "Sort Space Type": "Memory",                                                                                                                +
                                               "Shared Hit Blocks": 1,                                                                                                                     +
                                               "Shared Read Blocks": 0,                                                                                                                    +
                                               "Shared Dirtied Blocks": 0,                                                                                                                 +
                                               "Shared Written Blocks": 0,                                                                                                                 +
                                               "Local Hit Blocks": 0,                                                                                                                      +
                                               "Local Read Blocks": 0,                                                                                                                     +
                                               "Local Dirtied Blocks": 0,                                                                                                                  +
                                               "Local Written Blocks": 0,                                                                                                                  +
                                               "Temp Read Blocks": 0,                                                                                                                      +
                                               "Temp Written Blocks": 0,                                                                                                                   +
                                               "Plans": [                                                                                                                                  +
                                                 {                                                                                                                                         +
                                                   "Node Type": "Seq Scan",                                                                                                                +
                                                   "Parent Relationship": "Outer",                                                                                                         +
                                                   "Parallel Aware": false,                                                                                                                +
                                                   "Relation Name": "comp_cast_type",                                                                                                      +
                                                   "Alias": "cct1",                                                                                                                        +
                                                   "Startup Cost": 0.00,                                                                                                                   +
                                                   "Total Cost": 0.03,                                                                                                                     +
                                                   "Plan Rows": 1,                                                                                                                         +
                                                   "Plan Width": 4,                                                                                                                        +
                                                   "Actual Startup Time": 0.005,                                                                                                           +
                                                   "Actual Total Time": 0.006,                                                                                                             +
                                                   "Actual Rows": 1,                                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                                      +
                                                   "Filter": "((kind)::text = 'crew'::text)",                                                                                              +
                                                   "Rows Removed by Filter": 3,                                                                                                            +
                                                   "Shared Hit Blocks": 1,                                                                                                                 +
                                                   "Shared Read Blocks": 0,                                                                                                                +
                                                   "Shared Dirtied Blocks": 0,                                                                                                             +
                                                   "Shared Written Blocks": 0,                                                                                                             +
                                                   "Local Hit Blocks": 0,                                                                                                                  +
                                                   "Local Read Blocks": 0,                                                                                                                 +
                                                   "Local Dirtied Blocks": 0,                                                                                                              +
                                                   "Local Written Blocks": 0,                                                                                                              +
                                                   "Temp Read Blocks": 0,                                                                                                                  +
                                                   "Temp Written Blocks": 0                                                                                                                +
                                                 }                                                                                                                                         +
                                               ]                                                                                                                                           +
                                             }                                                                                                                                             +
                                           ]                                                                                                                                               +
                                         }                                                                                                                                                 +
                                       ]                                                                                                                                                   +
                                     },                                                                                                                                                    +
                                     {                                                                                                                                                     +
                                       "Node Type": "Sort",                                                                                                                                +
                                       "Parent Relationship": "Inner",                                                                                                                     +
                                       "Parallel Aware": false,                                                                                                                            +
                                       "Startup Cost": 0.03,                                                                                                                               +
                                       "Total Cost": 0.03,                                                                                                                                 +
                                       "Plan Rows": 3,                                                                                                                                     +
                                       "Plan Width": 4,                                                                                                                                    +
                                       "Actual Startup Time": 0.006,                                                                                                                       +
                                       "Actual Total Time": 0.006,                                                                                                                         +
                                       "Actual Rows": 3,                                                                                                                                   +
                                       "Actual Loops": 1,                                                                                                                                  +
                                       "Sort Key": ["cct2.id"],                                                                                                                            +
                                       "Sort Method": "quicksort",                                                                                                                         +
                                       "Sort Space Used": 25,                                                                                                                              +
                                       "Sort Space Type": "Memory",                                                                                                                        +
                                       "Shared Hit Blocks": 1,                                                                                                                             +
                                       "Shared Read Blocks": 0,                                                                                                                            +
                                       "Shared Dirtied Blocks": 0,                                                                                                                         +
                                       "Shared Written Blocks": 0,                                                                                                                         +
                                       "Local Hit Blocks": 0,                                                                                                                              +
                                       "Local Read Blocks": 0,                                                                                                                             +
                                       "Local Dirtied Blocks": 0,                                                                                                                          +
                                       "Local Written Blocks": 0,                                                                                                                          +
                                       "Temp Read Blocks": 0,                                                                                                                              +
                                       "Temp Written Blocks": 0,                                                                                                                           +
                                       "Plans": [                                                                                                                                          +
                                         {                                                                                                                                                 +
                                           "Node Type": "Seq Scan",                                                                                                                        +
                                           "Parent Relationship": "Outer",                                                                                                                 +
                                           "Parallel Aware": false,                                                                                                                        +
                                           "Relation Name": "comp_cast_type",                                                                                                              +
                                           "Alias": "cct2",                                                                                                                                +
                                           "Startup Cost": 0.00,                                                                                                                           +
                                           "Total Cost": 0.03,                                                                                                                             +
                                           "Plan Rows": 3,                                                                                                                                 +
                                           "Plan Width": 4,                                                                                                                                +
                                           "Actual Startup Time": 0.003,                                                                                                                   +
                                           "Actual Total Time": 0.004,                                                                                                                     +
                                           "Actual Rows": 3,                                                                                                                               +
                                           "Actual Loops": 1,                                                                                                                              +
                                           "Filter": "((kind)::text <> 'complete+verified'::text)",                                                                                        +
                                           "Rows Removed by Filter": 1,                                                                                                                    +
                                           "Shared Hit Blocks": 1,                                                                                                                         +
                                           "Shared Read Blocks": 0,                                                                                                                        +
                                           "Shared Dirtied Blocks": 0,                                                                                                                     +
                                           "Shared Written Blocks": 0,                                                                                                                     +
                                           "Local Hit Blocks": 0,                                                                                                                          +
                                           "Local Read Blocks": 0,                                                                                                                         +
                                           "Local Dirtied Blocks": 0,                                                                                                                      +
                                           "Local Written Blocks": 0,                                                                                                                      +
                                           "Temp Read Blocks": 0,                                                                                                                          +
                                           "Temp Written Blocks": 0                                                                                                                        +
                                         }                                                                                                                                                 +
                                       ]                                                                                                                                                   +
                                     }                                                                                                                                                     +
                                   ]                                                                                                                                                       +
                                 }                                                                                                                                                         +
                               ]                                                                                                                                                           +
                             },                                                                                                                                                            +
                             {                                                                                                                                                             +
                               "Node Type": "Sort",                                                                                                                                        +
                               "Parent Relationship": "Inner",                                                                                                                             +
                               "Parallel Aware": false,                                                                                                                                    +
                               "Startup Cost": 4638.12,                                                                                                                                    +
                               "Total Cost": 4716.76,                                                                                                                                      +
                               "Plan Rows": 1012920,                                                                                                                                       +
                               "Plan Width": 25,                                                                                                                                           +
                               "Actual Startup Time": 2043.898,                                                                                                                            +
                               "Actual Total Time": 2166.359,                                                                                                                              +
                               "Actual Rows": 1007702,                                                                                                                                     +
                               "Actual Loops": 1,                                                                                                                                          +
                               "Sort Key": ["t.id"],                                                                                                                                       +
                               "Sort Method": "quicksort",                                                                                                                                 +
                               "Sort Space Used": 101193,                                                                                                                                  +
                               "Sort Space Type": "Memory",                                                                                                                                +
                               "Shared Hit Blocks": 2,                                                                                                                                     +
                               "Shared Read Blocks": 35996,                                                                                                                                +
                               "Shared Dirtied Blocks": 0,                                                                                                                                 +
                               "Shared Written Blocks": 0,                                                                                                                                 +
                               "Local Hit Blocks": 0,                                                                                                                                      +
                               "Local Read Blocks": 0,                                                                                                                                     +
                               "Local Dirtied Blocks": 0,                                                                                                                                  +
                               "Local Written Blocks": 0,                                                                                                                                  +
                               "Temp Read Blocks": 0,                                                                                                                                      +
                               "Temp Written Blocks": 0,                                                                                                                                   +
                               "Plans": [                                                                                                                                                  +
                                 {                                                                                                                                                         +
                                   "Node Type": "Seq Scan",                                                                                                                                +
                                   "Parent Relationship": "Outer",                                                                                                                         +
                                   "Parallel Aware": false,                                                                                                                                +
                                   "Relation Name": "title",                                                                                                                               +
                                   "Alias": "t",                                                                                                                                           +
                                   "Startup Cost": 0.00,                                                                                                                                   +
                                   "Total Cost": 1500.26,                                                                                                                                  +
                                   "Plan Rows": 1012920,                                                                                                                                   +
                                   "Plan Width": 25,                                                                                                                                       +
                                   "Actual Startup Time": 15.537,                                                                                                                          +
                                   "Actual Total Time": 1430.107,                                                                                                                          +
                                   "Actual Rows": 1012920,                                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                                      +
                                   "Filter": "(production_year > 2005)",                                                                                                                   +
                                   "Rows Removed by Filter": 1515392,                                                                                                                      +
                                   "Shared Hit Blocks": 2,                                                                                                                                 +
                                   "Shared Read Blocks": 35996,                                                                                                                            +
                                   "Shared Dirtied Blocks": 0,                                                                                                                             +
                                   "Shared Written Blocks": 0,                                                                                                                             +
                                   "Local Hit Blocks": 0,                                                                                                                                  +
                                   "Local Read Blocks": 0,                                                                                                                                 +
                                   "Local Dirtied Blocks": 0,                                                                                                                              +
                                   "Local Written Blocks": 0,                                                                                                                              +
                                   "Temp Read Blocks": 0,                                                                                                                                  +
                                   "Temp Written Blocks": 0                                                                                                                                +
                                 }                                                                                                                                                         +
                               ]                                                                                                                                                           +
                             }                                                                                                                                                             +
                           ]                                                                                                                                                               +
                         }                                                                                                                                                                 +
                       ]                                                                                                                                                                   +
                     }                                                                                                                                                                     +
                   ]                                                                                                                                                                       +
                 }                                                                                                                                                                         +
               ]                                                                                                                                                                           +
             },                                                                                                                                                                            +
             {                                                                                                                                                                             +
               "Node Type": "Sort",                                                                                                                                                        +
               "Parent Relationship": "Inner",                                                                                                                                             +
               "Parallel Aware": false,                                                                                                                                                    +
               "Startup Cost": 460.56,                                                                                                                                                     +
               "Total Cost": 470.36,                                                                                                                                                       +
               "Plan Rows": 126230,                                                                                                                                                        +
               "Plan Width": 23,                                                                                                                                                           +
               "Actual Startup Time": 168.352,                                                                                                                                             +
               "Actual Total Time": 171.897,                                                                                                                                               +
               "Actual Rows": 31535,                                                                                                                                                       +
               "Actual Loops": 1,                                                                                                                                                          +
               "Sort Key": ["cn.id"],                                                                                                                                                      +
               "Sort Method": "quicksort",                                                                                                                                                 +
               "Sort Space Used": 12077,                                                                                                                                                   +
               "Sort Space Type": "Memory",                                                                                                                                                +
               "Shared Hit Blocks": 2,                                                                                                                                                     +
               "Shared Read Blocks": 2992,                                                                                                                                                 +
               "Shared Dirtied Blocks": 0,                                                                                                                                                 +
               "Shared Written Blocks": 0,                                                                                                                                                 +
               "Local Hit Blocks": 0,                                                                                                                                                      +
               "Local Read Blocks": 0,                                                                                                                                                     +
               "Local Dirtied Blocks": 0,                                                                                                                                                  +
               "Local Written Blocks": 0,                                                                                                                                                  +
               "Temp Read Blocks": 0,                                                                                                                                                      +
               "Temp Written Blocks": 0,                                                                                                                                                   +
               "Plans": [                                                                                                                                                                  +
                 {                                                                                                                                                                         +
                   "Node Type": "Seq Scan",                                                                                                                                                +
                   "Parent Relationship": "Outer",                                                                                                                                         +
                   "Parallel Aware": false,                                                                                                                                                +
                   "Relation Name": "company_name",                                                                                                                                        +
                   "Alias": "cn",                                                                                                                                                          +
                   "Startup Cost": 0.00,                                                                                                                                                   +
                   "Total Cost": 128.41,                                                                                                                                                   +
                   "Plan Rows": 126230,                                                                                                                                                    +
                   "Plan Width": 23,                                                                                                                                                       +
                   "Actual Startup Time": 8.425,                                                                                                                                           +
                   "Actual Total Time": 102.529,                                                                                                                                           +
                   "Actual Rows": 126230,                                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                                      +
                   "Filter": "((country_code)::text <> '[us]'::text)",                                                                                                                     +
                   "Rows Removed by Filter": 108767,                                                                                                                                       +
                   "Shared Hit Blocks": 2,                                                                                                                                                 +
                   "Shared Read Blocks": 2992,                                                                                                                                             +
                   "Shared Dirtied Blocks": 0,                                                                                                                                             +
                   "Shared Written Blocks": 0,                                                                                                                                             +
                   "Local Hit Blocks": 0,                                                                                                                                                  +
                   "Local Read Blocks": 0,                                                                                                                                                 +
                   "Local Dirtied Blocks": 0,                                                                                                                                              +
                   "Local Written Blocks": 0,                                                                                                                                              +
                   "Temp Read Blocks": 0,                                                                                                                                                  +
                   "Temp Written Blocks": 0                                                                                                                                                +
                 }                                                                                                                                                                         +
               ]                                                                                                                                                                           +
             }                                                                                                                                                                             +
           ]                                                                                                                                                                               +
         }                                                                                                                                                                                 +
       ]                                                                                                                                                                                   +
     },                                                                                                                                                                                    +
     "Planning Time": 15152.337,                                                                                                                                                           +
     "Triggers": [                                                                                                                                                                         +
     ],                                                                                                                                                                                    +
     "Execution Time": 15560.198                                                                                                                                                           +
   }                                                                                                                                                                                       +
 ]
(1 row)

