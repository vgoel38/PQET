                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 61114.66,                                                                                                                                         +
       "Total Cost": 61114.66,                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 128,                                                                                                                                                +
       "Actual Startup Time": 30071.094,                                                                                                                                 +
       "Actual Total Time": 30071.094,                                                                                                                                   +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 29,                                                                                                                                          +
       "Shared Read Blocks": 539064,                                                                                                                                     +
       "Shared Dirtied Blocks": 0,                                                                                                                                       +
       "Shared Written Blocks": 0,                                                                                                                                       +
       "Local Hit Blocks": 0,                                                                                                                                            +
       "Local Read Blocks": 0,                                                                                                                                           +
       "Local Dirtied Blocks": 0,                                                                                                                                        +
       "Local Written Blocks": 0,                                                                                                                                        +
       "Temp Read Blocks": 0,                                                                                                                                            +
       "Temp Written Blocks": 0,                                                                                                                                         +
       "Plans": [                                                                                                                                                        +
         {                                                                                                                                                               +
           "Node Type": "Merge Join",                                                                                                                                    +
           "Parent Relationship": "Outer",                                                                                                                               +
           "Parallel Aware": false,                                                                                                                                      +
           "Join Type": "Inner",                                                                                                                                         +
           "Startup Cost": 60851.41,                                                                                                                                     +
           "Total Cost": 61114.66,                                                                                                                                       +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 80,                                                                                                                                             +
           "Actual Startup Time": 29743.405,                                                                                                                             +
           "Actual Total Time": 30071.051,                                                                                                                               +
           "Actual Rows": 6,                                                                                                                                             +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                         +
           "Merge Cond": "(ci.person_id = n.id)",                                                                                                                        +
           "Shared Hit Blocks": 29,                                                                                                                                      +
           "Shared Read Blocks": 539064,                                                                                                                                 +
           "Shared Dirtied Blocks": 0,                                                                                                                                   +
           "Shared Written Blocks": 0,                                                                                                                                   +
           "Local Hit Blocks": 0,                                                                                                                                        +
           "Local Read Blocks": 0,                                                                                                                                       +
           "Local Dirtied Blocks": 0,                                                                                                                                    +
           "Local Written Blocks": 0,                                                                                                                                    +
           "Temp Read Blocks": 0,                                                                                                                                        +
           "Temp Written Blocks": 0,                                                                                                                                     +
           "Plans": [                                                                                                                                                    +
             {                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                      +
               "Parent Relationship": "Outer",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 52896.08,                                                                                                                                 +
               "Total Cost": 52896.08,                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 69,                                                                                                                                         +
               "Actual Startup Time": 26586.982,                                                                                                                         +
               "Actual Total Time": 26586.984,                                                                                                                           +
               "Actual Rows": 6,                                                                                                                                         +
               "Actual Loops": 1,                                                                                                                                        +
               "Sort Key": ["ci.person_id"],                                                                                                                             +
               "Sort Method": "quicksort",                                                                                                                               +
               "Sort Space Used": 25,                                                                                                                                    +
               "Sort Space Type": "Memory",                                                                                                                              +
               "Shared Hit Blocks": 28,                                                                                                                                  +
               "Shared Read Blocks": 483452,                                                                                                                             +
               "Shared Dirtied Blocks": 0,                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                                 +
               "Plans": [                                                                                                                                                +
                 {                                                                                                                                                       +
                   "Node Type": "Merge Join",                                                                                                                            +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Join Type": "Inner",                                                                                                                                 +
                   "Startup Cost": 52896.08,                                                                                                                             +
                   "Total Cost": 52896.08,                                                                                                                               +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 69,                                                                                                                                     +
                   "Actual Startup Time": 26577.772,                                                                                                                     +
                   "Actual Total Time": 26577.780,                                                                                                                       +
                   "Actual Rows": 6,                                                                                                                                     +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Inner Unique": true,                                                                                                                                 +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                                                                           +
                   "Shared Hit Blocks": 24,                                                                                                                              +
                   "Shared Read Blocks": 483452,                                                                                                                         +
                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                +
                   "Temp Written Blocks": 0,                                                                                                                             +
                   "Plans": [                                                                                                                                            +
                     {                                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                                              +
                       "Parent Relationship": "Outer",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Startup Cost": 52896.03,                                                                                                                         +
                       "Total Cost": 52896.03,                                                                                                                           +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 73,                                                                                                                                 +
                       "Actual Startup Time": 26577.713,                                                                                                                 +
                       "Actual Total Time": 26577.715,                                                                                                                   +
                       "Actual Rows": 6,                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                  +
                       "Sort Method": "quicksort",                                                                                                                       +
                       "Sort Space Used": 25,                                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                                      +
                       "Shared Hit Blocks": 23,                                                                                                                          +
                       "Shared Read Blocks": 483452,                                                                                                                     +
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
                           "Startup Cost": 52896.03,                                                                                                                     +
                           "Total Cost": 52896.03,                                                                                                                       +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 73,                                                                                                                             +
                           "Actual Startup Time": 26577.686,                                                                                                             +
                           "Actual Total Time": 26577.694,                                                                                                               +
                           "Actual Rows": 6,                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                            +
                           "Inner Unique": true,                                                                                                                         +
                           "Merge Cond": "(mi_idx.info_type_id = it2.id)",                                                                                               +
                           "Shared Hit Blocks": 23,                                                                                                                      +
                           "Shared Read Blocks": 483452,                                                                                                                 +
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
                               "Startup Cost": 52895.98,                                                                                                                 +
                               "Total Cost": 52895.98,                                                                                                                   +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 77,                                                                                                                         +
                               "Actual Startup Time": 26577.605,                                                                                                         +
                               "Actual Total Time": 26577.607,                                                                                                           +
                               "Actual Rows": 13,                                                                                                                        +
                               "Actual Loops": 1,                                                                                                                        +
                               "Sort Key": ["mi_idx.info_type_id"],                                                                                                      +
                               "Sort Method": "quicksort",                                                                                                               +
                               "Sort Space Used": 26,                                                                                                                    +
                               "Sort Space Type": "Memory",                                                                                                              +
                               "Shared Hit Blocks": 22,                                                                                                                  +
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
                                   "Startup Cost": 52895.98,                                                                                                             +
                                   "Total Cost": 52895.98,                                                                                                               +
                                   "Plan Rows": 1,                                                                                                                       +
                                   "Plan Width": 77,                                                                                                                     +
                                   "Actual Startup Time": 26577.538,                                                                                                     +
                                   "Actual Total Time": 26577.564,                                                                                                       +
                                   "Actual Rows": 18,                                                                                                                    +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Inner Unique": true,                                                                                                                 +
                                   "Merge Cond": "(mk.keyword_id = k.id)",                                                                                               +
                                   "Shared Hit Blocks": 22,                                                                                                              +
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
                                       "Startup Cost": 52865.31,                                                                                                         +
                                       "Total Cost": 52865.32,                                                                                                           +
                                       "Plan Rows": 8,                                                                                                                   +
                                       "Plan Width": 81,                                                                                                                 +
                                       "Actual Startup Time": 26459.107,                                                                                                 +
                                       "Actual Total Time": 26459.114,                                                                                                   +
                                       "Actual Rows": 37,                                                                                                                +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Sort Key": ["mk.keyword_id"],                                                                                                    +
                                       "Sort Method": "quicksort",                                                                                                       +
                                       "Sort Space Used": 35,                                                                                                            +
                                       "Sort Space Type": "Memory",                                                                                                      +
                                       "Shared Hit Blocks": 12,                                                                                                          +
                                       "Shared Read Blocks": 483439,                                                                                                     +
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
                                           "Startup Cost": 51750.23,                                                                                                     +
                                           "Total Cost": 52865.31,                                                                                                       +
                                           "Plan Rows": 8,                                                                                                               +
                                           "Plan Width": 81,                                                                                                             +
                                           "Actual Startup Time": 26458.818,                                                                                             +
                                           "Actual Total Time": 26459.054,                                                                                               +
                                           "Actual Rows": 105,                                                                                                           +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Inner Unique": false,                                                                                                        +
                                           "Merge Cond": "(t.id = mk.movie_id)",                                                                                         +
                                           "Shared Hit Blocks": 12,                                                                                                      +
                                           "Shared Read Blocks": 483439,                                                                                                 +
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
                                               "Node Type": "Merge Join",                                                                                                +
                                               "Parent Relationship": "Outer",                                                                                           +
                                               "Parallel Aware": false,                                                                                                  +
                                               "Join Type": "Inner",                                                                                                     +
                                               "Startup Cost": 35139.30,                                                                                                 +
                                               "Total Cost": 35551.92,                                                                                                   +
                                               "Plan Rows": 1,                                                                                                           +
                                               "Plan Width": 93,                                                                                                         +
                                               "Actual Startup Time": 23705.701,                                                                                         +
                                               "Actual Total Time": 23705.812,                                                                                           +
                                               "Actual Rows": 12,                                                                                                        +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Inner Unique": false,                                                                                                    +
                                               "Merge Cond": "(t.id = mi_idx.movie_id)",                                                                                 +
                                               "Shared Hit Blocks": 9,                                                                                                   +
                                               "Shared Read Blocks": 458988,                                                                                             +
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
                                                   "Startup Cost": 30408.00,                                                                                             +
                                                   "Total Cost": 30606.32,                                                                                               +
                                                   "Plan Rows": 1,                                                                                                       +
                                                   "Plan Width": 79,                                                                                                     +
                                                   "Actual Startup Time": 22689.446,                                                                                     +
                                                   "Actual Total Time": 22689.511,                                                                                       +
                                                   "Actual Rows": 13,                                                                                                    +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Inner Unique": false,                                                                                                +
                                                   "Merge Cond": "(t.id = ci.movie_id)",                                                                                 +
                                                   "Shared Hit Blocks": 7,                                                                                               +
                                                   "Shared Read Blocks": 450537,                                                                                         +
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
                                                       "Startup Cost": 9024.79,                                                                                          +
                                                       "Total Cost": 9029.66,                                                                                            +
                                                       "Plan Rows": 1,                                                                                                   +
                                                       "Plan Width": 71,                                                                                                 +
                                                       "Actual Startup Time": 10219.709,                                                                                 +
                                                       "Actual Total Time": 10223.930,                                                                                   +
                                                       "Actual Rows": 23,                                                                                                +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Inner Unique": true,                                                                                             +
                                                       "Merge Cond": "(mi.movie_id = t.id)",                                                                             +
                                                       "Shared Hit Blocks": 3,                                                                                           +
                                                       "Shared Read Blocks": 197887,                                                                                     +
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
                                                           "Node Type": "Sort",                                                                                          +
                                                           "Parent Relationship": "Outer",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Startup Cost": 7328.18,                                                                                      +
                                                           "Total Cost": 7330.61,                                                                                        +
                                                           "Plan Rows": 31269,                                                                                           +
                                                           "Plan Width": 50,                                                                                             +
                                                           "Actual Startup Time": 8360.233,                                                                              +
                                                           "Actual Total Time": 8361.545,                                                                                +
                                                           "Actual Rows": 29068,                                                                                         +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Sort Key": ["mi.movie_id"],                                                                                  +
                                                           "Sort Method": "quicksort",                                                                                   +
                                                           "Sort Space Used": 2212,                                                                                      +
                                                           "Sort Space Type": "Memory",                                                                                  +
                                                           "Shared Hit Blocks": 2,                                                                                       +
                                                           "Shared Read Blocks": 161890,                                                                                 +
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
                                                               "Relation Name": "movie_info",                                                                            +
                                                               "Alias": "mi",                                                                                            +
                                                               "Startup Cost": 0.00,                                                                                     +
                                                               "Total Cost": 7255.68,                                                                                    +
                                                               "Plan Rows": 31269,                                                                                       +
                                                               "Plan Width": 50,                                                                                         +
                                                               "Actual Startup Time": 4875.050,                                                                          +
                                                               "Actual Total Time": 8339.783,                                                                            +
                                                               "Actual Rows": 30801,                                                                                     +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Filter": "(info = 'Horror'::text)",                                                                      +
                                                               "Rows Removed by Filter": 14804919,                                                                       +
                                                               "Shared Hit Blocks": 2,                                                                                   +
                                                               "Shared Read Blocks": 161890,                                                                             +
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
                                                         },                                                                                                              +
                                                         {                                                                                                               +
                                                           "Node Type": "Sort",                                                                                          +
                                                           "Parent Relationship": "Inner",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Startup Cost": 1696.61,                                                                                      +
                                                           "Total Cost": 1696.61,                                                                                        +
                                                           "Plan Rows": 59,                                                                                              +
                                                           "Plan Width": 21,                                                                                             +
                                                           "Actual Startup Time": 1859.312,                                                                              +
                                                           "Actual Total Time": 1859.319,                                                                                +
                                                           "Actual Rows": 73,                                                                                            +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Sort Key": ["t.id"],                                                                                         +
                                                           "Sort Method": "quicksort",                                                                                   +
                                                           "Sort Space Used": 30,                                                                                        +
                                                           "Sort Space Type": "Memory",                                                                                  +
                                                           "Shared Hit Blocks": 1,                                                                                       +
                                                           "Shared Read Blocks": 35997,                                                                                  +
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
                                                               "Relation Name": "title",                                                                                 +
                                                               "Alias": "t",                                                                                             +
                                                               "Startup Cost": 0.00,                                                                                     +
                                                               "Total Cost": 1696.56,                                                                                    +
                                                               "Plan Rows": 59,                                                                                          +
                                                               "Plan Width": 21,                                                                                         +
                                                               "Actual Startup Time": 29.818,                                                                            +
                                                               "Actual Total Time": 1859.036,                                                                            +
                                                               "Actual Rows": 73,                                                                                        +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Filter": "((production_year > 2010) AND (title ~~ 'Vampire%'::text))",                                   +
                                                               "Rows Removed by Filter": 2528239,                                                                        +
                                                               "Shared Hit Blocks": 1,                                                                                   +
                                                               "Shared Read Blocks": 35997,                                                                              +
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
                                                       "Actual Startup Time": 12230.282,                                                                                 +
                                                       "Actual Total Time": 12334.496,                                                                                   +
                                                       "Actual Rows": 1229991,                                                                                           +
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
                                                           "Actual Startup Time": 517.829,                                                                               +
                                                           "Actual Total Time": 11747.737,                                                                               +
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
                                                 },                                                                                                                      +
                                                 {                                                                                                                       +
                                                   "Node Type": "Sort",                                                                                                  +
                                                   "Parent Relationship": "Inner",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Startup Cost": 4731.30,                                                                                              +
                                                   "Total Cost": 4838.45,                                                                                                +
                                                   "Plan Rows": 1380035,                                                                                                 +
                                                   "Plan Width": 14,                                                                                                     +
                                                   "Actual Startup Time": 820.948,                                                                                       +
                                                   "Actual Total Time": 880.814,                                                                                         +
                                                   "Actual Rows": 1329578,                                                                                               +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Sort Key": ["mi_idx.movie_id"],                                                                                      +
                                                   "Sort Method": "quicksort",                                                                                           +
                                                   "Sort Space Used": 128214,                                                                                            +
                                                   "Sort Space Type": "Memory",                                                                                          +
                                                   "Shared Hit Blocks": 2,                                                                                               +
                                                   "Shared Read Blocks": 8451,                                                                                           +
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
                                                       "Node Type": "Seq Scan",                                                                                          +
                                                       "Parent Relationship": "Outer",                                                                                   +
                                                       "Parallel Aware": false,                                                                                          +
                                                       "Relation Name": "movie_info_idx",                                                                                +
                                                       "Alias": "mi_idx",                                                                                                +
                                                       "Startup Cost": 0.00,                                                                                             +
                                                       "Total Cost": 360.56,                                                                                             +
                                                       "Plan Rows": 1380035,                                                                                             +
                                                       "Plan Width": 14,                                                                                                 +
                                                       "Actual Startup Time": 0.016,                                                                                     +
                                                       "Actual Total Time": 298.917,                                                                                     +
                                                       "Actual Rows": 1380035,                                                                                           +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Shared Hit Blocks": 2,                                                                                           +
                                                       "Shared Read Blocks": 8451,                                                                                       +
                                                       "Shared Dirtied Blocks": 0,                                                                                       +
                                                       "Shared Written Blocks": 0,                                                                                       +
                                                       "Local Hit Blocks": 0,                                                                                            +
                                                       "Local Read Blocks": 0,                                                                                           +
                                                       "Local Dirtied Blocks": 0,                                                                                        +
                                                       "Local Written Blocks": 0,                                                                                        +
                                                       "Temp Read Blocks": 0,                                                                                            +
                                                       "Temp Written Blocks": 0                                                                                          +
                                                     }                                                                                                                   +
                                                   ]                                                                                                                     +
                                                 }                                                                                                                       +
                                               ]                                                                                                                         +
                                             },                                                                                                                          +
                                             {                                                                                                                           +
                                               "Node Type": "Sort",                                                                                                      +
                                               "Parent Relationship": "Inner",                                                                                           +
                                               "Parallel Aware": false,                                                                                                  +
                                               "Startup Cost": 16610.92,                                                                                                 +
                                               "Total Cost": 16962.16,                                                                                                   +
                                               "Plan Rows": 4523930,                                                                                                     +
                                               "Plan Width": 8,                                                                                                          +
                                               "Actual Startup Time": 2141.265,                                                                                          +
                                               "Actual Total Time": 2349.336,                                                                                            +
                                               "Actual Rows": 4320878,                                                                                                   +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Sort Key": ["mk.movie_id"],                                                                                              +
                                               "Sort Method": "quicksort",                                                                                               +
                                               "Sort Space Used": 408668,                                                                                                +
                                               "Sort Space Type": "Memory",                                                                                              +
                                               "Shared Hit Blocks": 3,                                                                                                   +
                                               "Shared Read Blocks": 24451,                                                                                              +
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
                                                   "Relation Name": "movie_keyword",                                                                                     +
                                                   "Alias": "mk",                                                                                                        +
                                                   "Startup Cost": 0.00,                                                                                                 +
                                                   "Total Cost": 1079.84,                                                                                                +
                                                   "Plan Rows": 4523930,                                                                                                 +
                                                   "Plan Width": 8,                                                                                                      +
                                                   "Actual Startup Time": 0.016,                                                                                         +
                                                   "Actual Total Time": 776.813,                                                                                         +
                                                   "Actual Rows": 4523930,                                                                                               +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Shared Hit Blocks": 3,                                                                                               +
                                                   "Shared Read Blocks": 24451,                                                                                          +
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
                                       "Startup Cost": 30.66,                                                                                                            +
                                       "Total Cost": 30.67,                                                                                                              +
                                       "Plan Rows": 5,                                                                                                                   +
                                       "Plan Width": 4,                                                                                                                  +
                                       "Actual Startup Time": 118.406,                                                                                                   +
                                       "Actual Total Time": 118.408,                                                                                                     +
                                       "Actual Rows": 5,                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Sort Key": ["k.id"],                                                                                                             +
                                       "Sort Method": "quicksort",                                                                                                       +
                                       "Sort Space Used": 25,                                                                                                            +
                                       "Sort Space Type": "Memory",                                                                                                      +
                                       "Shared Hit Blocks": 10,                                                                                                          +
                                       "Shared Read Blocks": 13,                                                                                                         +
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
                                           "Node Type": "Index Scan",                                                                                                    +
                                           "Parent Relationship": "Outer",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Scan Direction": "Forward",                                                                                                  +
                                           "Index Name": "keyword_idx_keyword",                                                                                          +
                                           "Relation Name": "keyword",                                                                                                   +
                                           "Alias": "k",                                                                                                                 +
                                           "Startup Cost": 0.01,                                                                                                         +
                                           "Total Cost": 30.66,                                                                                                          +
                                           "Plan Rows": 5,                                                                                                               +
                                           "Plan Width": 4,                                                                                                              +
                                           "Actual Startup Time": 78.216,                                                                                                +
                                           "Actual Total Time": 118.380,                                                                                                 +
                                           "Actual Rows": 5,                                                                                                             +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Index Cond": "(keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))",                                          +
                                           "Rows Removed by Index Recheck": 0,                                                                                           +
                                           "Shared Hit Blocks": 10,                                                                                                      +
                                           "Shared Read Blocks": 13,                                                                                                     +
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
                               "Startup Cost": 0.05,                                                                                                                     +
                               "Total Cost": 0.05,                                                                                                                       +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 4,                                                                                                                          +
                               "Actual Startup Time": 0.070,                                                                                                             +
                               "Actual Total Time": 0.070,                                                                                                               +
                               "Actual Rows": 1,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                        +
                               "Sort Key": ["it2.id"],                                                                                                                   +
                               "Sort Method": "quicksort",                                                                                                               +
                               "Sort Space Used": 25,                                                                                                                    +
                               "Sort Space Type": "Memory",                                                                                                              +
                               "Shared Hit Blocks": 1,                                                                                                                   +
                               "Shared Read Blocks": 0,                                                                                                                  +
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
                                   "Relation Name": "info_type",                                                                                                         +
                                   "Alias": "it2",                                                                                                                       +
                                   "Startup Cost": 0.00,                                                                                                                 +
                                   "Total Cost": 0.05,                                                                                                                   +
                                   "Plan Rows": 1,                                                                                                                       +
                                   "Plan Width": 4,                                                                                                                      +
                                   "Actual Startup Time": 0.053,                                                                                                         +
                                   "Actual Total Time": 0.059,                                                                                                           +
                                   "Actual Rows": 1,                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Filter": "((info)::text = 'votes'::text)",                                                                                           +
                                   "Rows Removed by Filter": 112,                                                                                                        +
                                   "Shared Hit Blocks": 1,                                                                                                               +
                                   "Shared Read Blocks": 0,                                                                                                              +
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
                     {                                                                                                                                                   +
                       "Node Type": "Sort",                                                                                                                              +
                       "Parent Relationship": "Inner",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Startup Cost": 0.05,                                                                                                                             +
                       "Total Cost": 0.05,                                                                                                                               +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 4,                                                                                                                                  +
                       "Actual Startup Time": 0.053,                                                                                                                     +
                       "Actual Total Time": 0.053,                                                                                                                       +
                       "Actual Rows": 1,                                                                                                                                 +
                       "Actual Loops": 1,                                                                                                                                +
                       "Sort Key": ["it1.id"],                                                                                                                           +
                       "Sort Method": "quicksort",                                                                                                                       +
                       "Sort Space Used": 25,                                                                                                                            +
                       "Sort Space Type": "Memory",                                                                                                                      +
                       "Shared Hit Blocks": 1,                                                                                                                           +
                       "Shared Read Blocks": 0,                                                                                                                          +
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
                           "Node Type": "Seq Scan",                                                                                                                      +
                           "Parent Relationship": "Outer",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Relation Name": "info_type",                                                                                                                 +
                           "Alias": "it1",                                                                                                                               +
                           "Startup Cost": 0.00,                                                                                                                         +
                           "Total Cost": 0.05,                                                                                                                           +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 4,                                                                                                                              +
                           "Actual Startup Time": 0.010,                                                                                                                 +
                           "Actual Total Time": 0.047,                                                                                                                   +
                           "Actual Rows": 1,                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                            +
                           "Filter": "((info)::text = 'genres'::text)",                                                                                                  +
                           "Rows Removed by Filter": 112,                                                                                                                +
                           "Shared Hit Blocks": 1,                                                                                                                       +
                           "Shared Read Blocks": 0,                                                                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                                                                   +
                           "Shared Written Blocks": 0,                                                                                                                   +
                           "Local Hit Blocks": 0,                                                                                                                        +
                           "Local Read Blocks": 0,                                                                                                                       +
                           "Local Dirtied Blocks": 0,                                                                                                                    +
                           "Local Written Blocks": 0,                                                                                                                    +
                           "Temp Read Blocks": 0,                                                                                                                        +
                           "Temp Written Blocks": 0                                                                                                                      +
                         }                                                                                                                                               +
                       ]                                                                                                                                                 +
                     }                                                                                                                                                   +
                   ]                                                                                                                                                     +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             },                                                                                                                                                          +
             {                                                                                                                                                           +
               "Node Type": "Sort",                                                                                                                                      +
               "Parent Relationship": "Inner",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Startup Cost": 7955.33,                                                                                                                                  +
               "Total Cost": 8090.37,                                                                                                                                    +
               "Plan Rows": 1739438,                                                                                                                                     +
               "Plan Width": 19,                                                                                                                                         +
               "Actual Startup Time": 3102.257,                                                                                                                          +
               "Actual Total Time": 3276.198,                                                                                                                            +
               "Actual Rows": 1626510,                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                        +
               "Sort Key": ["n.id"],                                                                                                                                     +
               "Sort Method": "quicksort",                                                                                                                               +
               "Sort Space Used": 176730,                                                                                                                                +
               "Sort Space Type": "Memory",                                                                                                                              +
               "Shared Hit Blocks": 1,                                                                                                                                   +
               "Shared Read Blocks": 55612,                                                                                                                              +
               "Shared Dirtied Blocks": 0,                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                    +
               "Temp Written Blocks": 0,                                                                                                                                 +
               "Plans": [                                                                                                                                                +
                 {                                                                                                                                                       +
                   "Node Type": "Seq Scan",                                                                                                                              +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Relation Name": "name",                                                                                                                              +
                   "Alias": "n",                                                                                                                                         +
                   "Startup Cost": 0.00,                                                                                                                                 +
                   "Total Cost": 2356.12,                                                                                                                                +
                   "Plan Rows": 1739438,                                                                                                                                 +
                   "Plan Width": 19,                                                                                                                                     +
                   "Actual Startup Time": 18.480,                                                                                                                        +
                   "Actual Total Time": 2329.125,                                                                                                                        +
                   "Actual Rows": 1739579,                                                                                                                               +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Filter": "((gender)::text = 'm'::text)",                                                                                                             +
                   "Rows Removed by Filter": 2427912,                                                                                                                    +
                   "Shared Hit Blocks": 1,                                                                                                                               +
                   "Shared Read Blocks": 55612,                                                                                                                          +
                   "Shared Dirtied Blocks": 0,                                                                                                                           +
                   "Shared Written Blocks": 0,                                                                                                                           +
                   "Local Hit Blocks": 0,                                                                                                                                +
                   "Local Read Blocks": 0,                                                                                                                               +
                   "Local Dirtied Blocks": 0,                                                                                                                            +
                   "Local Written Blocks": 0,                                                                                                                            +
                   "Temp Read Blocks": 0,                                                                                                                                +
                   "Temp Written Blocks": 0                                                                                                                              +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             }                                                                                                                                                           +
           ]                                                                                                                                                             +
         }                                                                                                                                                               +
       ]                                                                                                                                                                 +
     },                                                                                                                                                                  +
     "Planning Time": 9946.470,                                                                                                                                          +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 30129.733                                                                                                                                         +
   }                                                                                                                                                                     +
 ]
(1 row)

