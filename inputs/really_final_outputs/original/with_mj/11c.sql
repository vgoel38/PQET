                                                                                              QUERY PLAN                                                                                               
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                                                    +
   {                                                                                                                                                                                                  +
     "Plan": {                                                                                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                                                                                      +
       "Strategy": "Plain",                                                                                                                                                                           +
       "Partial Mode": "Simple",                                                                                                                                                                      +
       "Parallel Aware": false,                                                                                                                                                                       +
       "Startup Cost": 5643.78,                                                                                                                                                                       +
       "Total Cost": 5643.78,                                                                                                                                                                         +
       "Plan Rows": 1,                                                                                                                                                                                +
       "Plan Width": 96,                                                                                                                                                                              +
       "Actual Startup Time": 2158.063,                                                                                                                                                               +
       "Actual Total Time": 2158.063,                                                                                                                                                                 +
       "Actual Rows": 1,                                                                                                                                                                              +
       "Actual Loops": 1,                                                                                                                                                                             +
       "Shared Hit Blocks": 116749,                                                                                                                                                                   +
       "Shared Read Blocks": 7912,                                                                                                                                                                    +
       "Shared Dirtied Blocks": 0,                                                                                                                                                                    +
       "Shared Written Blocks": 0,                                                                                                                                                                    +
       "Local Hit Blocks": 0,                                                                                                                                                                         +
       "Local Read Blocks": 0,                                                                                                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                                                                                                     +
       "Local Written Blocks": 0,                                                                                                                                                                     +
       "Temp Read Blocks": 0,                                                                                                                                                                         +
       "Temp Written Blocks": 0,                                                                                                                                                                      +
       "Plans": [                                                                                                                                                                                     +
         {                                                                                                                                                                                            +
           "Node Type": "Merge Join",                                                                                                                                                                 +
           "Parent Relationship": "Outer",                                                                                                                                                            +
           "Parallel Aware": false,                                                                                                                                                                   +
           "Join Type": "Inner",                                                                                                                                                                      +
           "Startup Cost": 3919.54,                                                                                                                                                                   +
           "Total Cost": 5643.78,                                                                                                                                                                     +
           "Plan Rows": 1,                                                                                                                                                                            +
           "Plan Width": 60,                                                                                                                                                                          +
           "Actual Startup Time": 2059.343,                                                                                                                                                           +
           "Actual Total Time": 2155.316,                                                                                                                                                             +
           "Actual Rows": 6946,                                                                                                                                                                       +
           "Actual Loops": 1,                                                                                                                                                                         +
           "Inner Unique": false,                                                                                                                                                                     +
           "Merge Cond": "(t.id = ml.movie_id)",                                                                                                                                                      +
           "Shared Hit Blocks": 116749,                                                                                                                                                               +
           "Shared Read Blocks": 7912,                                                                                                                                                                +
           "Shared Dirtied Blocks": 0,                                                                                                                                                                +
           "Shared Written Blocks": 0,                                                                                                                                                                +
           "Local Hit Blocks": 0,                                                                                                                                                                     +
           "Local Read Blocks": 0,                                                                                                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                                                                                                 +
           "Local Written Blocks": 0,                                                                                                                                                                 +
           "Temp Read Blocks": 0,                                                                                                                                                                     +
           "Temp Written Blocks": 0,                                                                                                                                                                  +
           "Plans": [                                                                                                                                                                                 +
             {                                                                                                                                                                                        +
               "Node Type": "Index Scan",                                                                                                                                                             +
               "Parent Relationship": "Outer",                                                                                                                                                        +
               "Parallel Aware": false,                                                                                                                                                               +
               "Scan Direction": "Forward",                                                                                                                                                           +
               "Index Name": "title_idx_id",                                                                                                                                                          +
               "Relation Name": "title",                                                                                                                                                              +
               "Alias": "t",                                                                                                                                                                          +
               "Startup Cost": 0.01,                                                                                                                                                                  +
               "Total Cost": 23238.35,                                                                                                                                                                +
               "Plan Rows": 2287272,                                                                                                                                                                  +
               "Plan Width": 21,                                                                                                                                                                      +
               "Actual Startup Time": 0.031,                                                                                                                                                          +
               "Actual Total Time": 809.592,                                                                                                                                                          +
               "Actual Rows": 71532,                                                                                                                                                                  +
               "Actual Loops": 1,                                                                                                                                                                     +
               "Filter": "(production_year > 1950)",                                                                                                                                                  +
               "Rows Removed by Filter": 2039,                                                                                                                                                        +
               "Shared Hit Blocks": 70618,                                                                                                                                                            +
               "Shared Read Blocks": 3132,                                                                                                                                                            +
               "Shared Dirtied Blocks": 0,                                                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                                                 +
               "Temp Written Blocks": 0                                                                                                                                                               +
             },                                                                                                                                                                                       +
             {                                                                                                                                                                                        +
               "Node Type": "Sort",                                                                                                                                                                   +
               "Parent Relationship": "Inner",                                                                                                                                                        +
               "Parallel Aware": false,                                                                                                                                                               +
               "Startup Cost": 3919.52,                                                                                                                                                               +
               "Total Cost": 3919.52,                                                                                                                                                                 +
               "Plan Rows": 1,                                                                                                                                                                        +
               "Plan Width": 55,                                                                                                                                                                      +
               "Actual Startup Time": 1333.719,                                                                                                                                                       +
               "Actual Total Time": 1334.125,                                                                                                                                                         +
               "Actual Rows": 6946,                                                                                                                                                                   +
               "Actual Loops": 1,                                                                                                                                                                     +
               "Sort Key": ["mc.movie_id"],                                                                                                                                                           +
               "Sort Method": "quicksort",                                                                                                                                                            +
               "Sort Space Used": 1169,                                                                                                                                                               +
               "Sort Space Type": "Memory",                                                                                                                                                           +
               "Shared Hit Blocks": 46131,                                                                                                                                                            +
               "Shared Read Blocks": 4780,                                                                                                                                                            +
               "Shared Dirtied Blocks": 0,                                                                                                                                                            +
               "Shared Written Blocks": 0,                                                                                                                                                            +
               "Local Hit Blocks": 0,                                                                                                                                                                 +
               "Local Read Blocks": 0,                                                                                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                                                                                             +
               "Local Written Blocks": 0,                                                                                                                                                             +
               "Temp Read Blocks": 0,                                                                                                                                                                 +
               "Temp Written Blocks": 0,                                                                                                                                                              +
               "Plans": [                                                                                                                                                                             +
                 {                                                                                                                                                                                    +
                   "Node Type": "Merge Join",                                                                                                                                                         +
                   "Parent Relationship": "Outer",                                                                                                                                                    +
                   "Parallel Aware": false,                                                                                                                                                           +
                   "Join Type": "Inner",                                                                                                                                                              +
                   "Startup Cost": 3919.51,                                                                                                                                                           +
                   "Total Cost": 3919.52,                                                                                                                                                             +
                   "Plan Rows": 1,                                                                                                                                                                    +
                   "Plan Width": 55,                                                                                                                                                                  +
                   "Actual Startup Time": 1329.453,                                                                                                                                                   +
                   "Actual Total Time": 1331.605,                                                                                                                                                     +
                   "Actual Rows": 6946,                                                                                                                                                               +
                   "Actual Loops": 1,                                                                                                                                                                 +
                   "Inner Unique": true,                                                                                                                                                              +
                   "Merge Cond": "(ml.link_type_id = lt.id)",                                                                                                                                         +
                   "Shared Hit Blocks": 46127,                                                                                                                                                        +
                   "Shared Read Blocks": 4780,                                                                                                                                                        +
                   "Shared Dirtied Blocks": 0,                                                                                                                                                        +
                   "Shared Written Blocks": 0,                                                                                                                                                        +
                   "Local Hit Blocks": 0,                                                                                                                                                             +
                   "Local Read Blocks": 0,                                                                                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                                                                                         +
                   "Local Written Blocks": 0,                                                                                                                                                         +
                   "Temp Read Blocks": 0,                                                                                                                                                             +
                   "Temp Written Blocks": 0,                                                                                                                                                          +
                   "Plans": [                                                                                                                                                                         +
                     {                                                                                                                                                                                +
                       "Node Type": "Sort",                                                                                                                                                           +
                       "Parent Relationship": "Outer",                                                                                                                                                +
                       "Parallel Aware": false,                                                                                                                                                       +
                       "Startup Cost": 3919.47,                                                                                                                                                       +
                       "Total Cost": 3919.47,                                                                                                                                                         +
                       "Plan Rows": 1,                                                                                                                                                                +
                       "Plan Width": 59,                                                                                                                                                              +
                       "Actual Startup Time": 1329.424,                                                                                                                                               +
                       "Actual Total Time": 1329.787,                                                                                                                                                 +
                       "Actual Rows": 6946,                                                                                                                                                           +
                       "Actual Loops": 1,                                                                                                                                                             +
                       "Sort Key": ["ml.link_type_id"],                                                                                                                                               +
                       "Sort Method": "quicksort",                                                                                                                                                    +
                       "Sort Space Used": 1169,                                                                                                                                                       +
                       "Sort Space Type": "Memory",                                                                                                                                                   +
                       "Shared Hit Blocks": 46126,                                                                                                                                                    +
                       "Shared Read Blocks": 4780,                                                                                                                                                    +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                                                                         +
                       "Temp Written Blocks": 0,                                                                                                                                                      +
                       "Plans": [                                                                                                                                                                     +
                         {                                                                                                                                                                            +
                           "Node Type": "Merge Join",                                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                                            +
                           "Parallel Aware": false,                                                                                                                                                   +
                           "Join Type": "Inner",                                                                                                                                                      +
                           "Startup Cost": 3919.43,                                                                                                                                                   +
                           "Total Cost": 3919.47,                                                                                                                                                     +
                           "Plan Rows": 1,                                                                                                                                                            +
                           "Plan Width": 59,                                                                                                                                                          +
                           "Actual Startup Time": 1320.871,                                                                                                                                           +
                           "Actual Total Time": 1326.754,                                                                                                                                             +
                           "Actual Rows": 6946,                                                                                                                                                       +
                           "Actual Loops": 1,                                                                                                                                                         +
                           "Inner Unique": true,                                                                                                                                                      +
                           "Merge Cond": "(mk.keyword_id = k.id)",                                                                                                                                    +
                           "Shared Hit Blocks": 46126,                                                                                                                                                +
                           "Shared Read Blocks": 4780,                                                                                                                                                +
                           "Shared Dirtied Blocks": 0,                                                                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                                                                     +
                           "Temp Written Blocks": 0,                                                                                                                                                  +
                           "Plans": [                                                                                                                                                                 +
                             {                                                                                                                                                                        +
                               "Node Type": "Sort",                                                                                                                                                   +
                               "Parent Relationship": "Outer",                                                                                                                                        +
                               "Parallel Aware": false,                                                                                                                                               +
                               "Startup Cost": 3901.03,                                                                                                                                               +
                               "Total Cost": 3901.05,                                                                                                                                                 +
                               "Plan Rows": 276,                                                                                                                                                      +
                               "Plan Width": 63,                                                                                                                                                      +
                               "Actual Startup Time": 1106.955,                                                                                                                                       +
                               "Actual Total Time": 1116.483,                                                                                                                                         +
                               "Actual Rows": 92508,                                                                                                                                                  +
                               "Actual Loops": 1,                                                                                                                                                     +
                               "Sort Key": ["mk.keyword_id"],                                                                                                                                         +
                               "Sort Method": "quicksort",                                                                                                                                            +
                               "Sort Space Used": 136921,                                                                                                                                             +
                               "Sort Space Type": "Memory",                                                                                                                                           +
                               "Shared Hit Blocks": 46120,                                                                                                                                            +
                               "Shared Read Blocks": 4771,                                                                                                                                            +
                               "Shared Dirtied Blocks": 0,                                                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                                                                              +
                               "Plans": [                                                                                                                                                             +
                                 {                                                                                                                                                                    +
                                   "Node Type": "Merge Join",                                                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                                                                    +
                                   "Parallel Aware": false,                                                                                                                                           +
                                   "Join Type": "Inner",                                                                                                                                              +
                                   "Startup Cost": 3046.20,                                                                                                                                           +
                                   "Total Cost": 3900.68,                                                                                                                                             +
                                   "Plan Rows": 276,                                                                                                                                                  +
                                   "Plan Width": 63,                                                                                                                                                  +
                                   "Actual Startup Time": 521.319,                                                                                                                                    +
                                   "Actual Total Time": 809.689,                                                                                                                                      +
                                   "Actual Rows": 780776,                                                                                                                                             +
                                   "Actual Loops": 1,                                                                                                                                                 +
                                   "Inner Unique": false,                                                                                                                                             +
                                   "Merge Cond": "(mk.movie_id = ml.movie_id)",                                                                                                                       +
                                   "Shared Hit Blocks": 46120,                                                                                                                                        +
                                   "Shared Read Blocks": 4771,                                                                                                                                        +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                                                             +
                                   "Temp Written Blocks": 0,                                                                                                                                          +
                                   "Plans": [                                                                                                                                                         +
                                     {                                                                                                                                                                +
                                       "Node Type": "Index Scan",                                                                                                                                     +
                                       "Parent Relationship": "Outer",                                                                                                                                +
                                       "Parallel Aware": false,                                                                                                                                       +
                                       "Scan Direction": "Forward",                                                                                                                                   +
                                       "Index Name": "movie_id_movie_keyword",                                                                                                                        +
                                       "Relation Name": "movie_keyword",                                                                                                                              +
                                       "Alias": "mk",                                                                                                                                                 +
                                       "Startup Cost": 0.01,                                                                                                                                          +
                                       "Total Cost": 39285.80,                                                                                                                                        +
                                       "Plan Rows": 4523930,                                                                                                                                          +
                                       "Plan Width": 8,                                                                                                                                               +
                                       "Actual Startup Time": 0.038,                                                                                                                                  +
                                       "Actual Total Time": 87.007,                                                                                                                                   +
                                       "Actual Rows": 77819,                                                                                                                                          +
                                       "Actual Loops": 1,                                                                                                                                             +
                                       "Shared Hit Blocks": 277,                                                                                                                                      +
                                       "Shared Read Blocks": 635,                                                                                                                                     +
                                       "Shared Dirtied Blocks": 0,                                                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                                                         +
                                       "Temp Written Blocks": 0                                                                                                                                       +
                                     },                                                                                                                                                               +
                                     {                                                                                                                                                                +
                                       "Node Type": "Sort",                                                                                                                                           +
                                       "Parent Relationship": "Inner",                                                                                                                                +
                                       "Parallel Aware": false,                                                                                                                                       +
                                       "Startup Cost": 3046.18,                                                                                                                                       +
                                       "Total Cost": 3046.18,                                                                                                                                         +
                                       "Plan Rows": 22,                                                                                                                                               +
                                       "Plan Width": 55,                                                                                                                                              +
                                       "Actual Startup Time": 491.799,                                                                                                                                +
                                       "Actual Total Time": 530.396,                                                                                                                                  +
                                       "Actual Rows": 780794,                                                                                                                                         +
                                       "Actual Loops": 1,                                                                                                                                             +
                                       "Sort Key": ["mc.movie_id"],                                                                                                                                   +
                                       "Sort Method": "quicksort",                                                                                                                                    +
                                       "Sort Space Used": 1565,                                                                                                                                       +
                                       "Sort Space Type": "Memory",                                                                                                                                   +
                                       "Shared Hit Blocks": 45843,                                                                                                                                    +
                                       "Shared Read Blocks": 4136,                                                                                                                                    +
                                       "Shared Dirtied Blocks": 0,                                                                                                                                    +
                                       "Shared Written Blocks": 0,                                                                                                                                    +
                                       "Local Hit Blocks": 0,                                                                                                                                         +
                                       "Local Read Blocks": 0,                                                                                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                                                                                     +
                                       "Local Written Blocks": 0,                                                                                                                                     +
                                       "Temp Read Blocks": 0,                                                                                                                                         +
                                       "Temp Written Blocks": 0,                                                                                                                                      +
                                       "Plans": [                                                                                                                                                     +
                                         {                                                                                                                                                            +
                                           "Node Type": "Merge Join",                                                                                                                                 +
                                           "Parent Relationship": "Outer",                                                                                                                            +
                                           "Parallel Aware": false,                                                                                                                                   +
                                           "Join Type": "Inner",                                                                                                                                      +
                                           "Startup Cost": 3046.16,                                                                                                                                   +
                                           "Total Cost": 3046.17,                                                                                                                                     +
                                           "Plan Rows": 22,                                                                                                                                           +
                                           "Plan Width": 55,                                                                                                                                          +
                                           "Actual Startup Time": 487.016,                                                                                                                            +
                                           "Actual Total Time": 489.462,                                                                                                                              +
                                           "Actual Rows": 8393,                                                                                                                                       +
                                           "Actual Loops": 1,                                                                                                                                         +
                                           "Inner Unique": true,                                                                                                                                      +
                                           "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                                              +
                                           "Shared Hit Blocks": 45843,                                                                                                                                +
                                           "Shared Read Blocks": 4136,                                                                                                                                +
                                           "Shared Dirtied Blocks": 0,                                                                                                                                +
                                           "Shared Written Blocks": 0,                                                                                                                                +
                                           "Local Hit Blocks": 0,                                                                                                                                     +
                                           "Local Read Blocks": 0,                                                                                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                                                                                 +
                                           "Local Written Blocks": 0,                                                                                                                                 +
                                           "Temp Read Blocks": 0,                                                                                                                                     +
                                           "Temp Written Blocks": 0,                                                                                                                                  +
                                           "Plans": [                                                                                                                                                 +
                                             {                                                                                                                                                        +
                                               "Node Type": "Sort",                                                                                                                                   +
                                               "Parent Relationship": "Outer",                                                                                                                        +
                                               "Parallel Aware": false,                                                                                                                               +
                                               "Startup Cost": 3046.13,                                                                                                                               +
                                               "Total Cost": 3046.13,                                                                                                                                 +
                                               "Plan Rows": 30,                                                                                                                                       +
                                               "Plan Width": 59,                                                                                                                                      +
                                               "Actual Startup Time": 486.992,                                                                                                                        +
                                               "Actual Total Time": 487.385,                                                                                                                          +
                                               "Actual Rows": 8402,                                                                                                                                   +
                                               "Actual Loops": 1,                                                                                                                                     +
                                               "Sort Key": ["mc.company_type_id"],                                                                                                                    +
                                               "Sort Method": "quicksort",                                                                                                                            +
                                               "Sort Space Used": 1566,                                                                                                                               +
                                               "Sort Space Type": "Memory",                                                                                                                           +
                                               "Shared Hit Blocks": 45842,                                                                                                                            +
                                               "Shared Read Blocks": 4136,                                                                                                                            +
                                               "Shared Dirtied Blocks": 0,                                                                                                                            +
                                               "Shared Written Blocks": 0,                                                                                                                            +
                                               "Local Hit Blocks": 0,                                                                                                                                 +
                                               "Local Read Blocks": 0,                                                                                                                                +
                                               "Local Dirtied Blocks": 0,                                                                                                                             +
                                               "Local Written Blocks": 0,                                                                                                                             +
                                               "Temp Read Blocks": 0,                                                                                                                                 +
                                               "Temp Written Blocks": 0,                                                                                                                              +
                                               "Plans": [                                                                                                                                             +
                                                 {                                                                                                                                                    +
                                                   "Node Type": "Merge Join",                                                                                                                         +
                                                   "Parent Relationship": "Outer",                                                                                                                    +
                                                   "Parallel Aware": false,                                                                                                                           +
                                                   "Join Type": "Inner",                                                                                                                              +
                                                   "Startup Cost": 3035.30,                                                                                                                           +
                                                   "Total Cost": 3046.10,                                                                                                                             +
                                                   "Plan Rows": 30,                                                                                                                                   +
                                                   "Plan Width": 59,                                                                                                                                  +
                                                   "Actual Startup Time": 472.171,                                                                                                                    +
                                                   "Actual Total Time": 484.503,                                                                                                                      +
                                                   "Actual Rows": 8402,                                                                                                                               +
                                                   "Actual Loops": 1,                                                                                                                                 +
                                                   "Inner Unique": true,                                                                                                                              +
                                                   "Merge Cond": "(mc.company_id = cn.id)",                                                                                                           +
                                                   "Shared Hit Blocks": 45842,                                                                                                                        +
                                                   "Shared Read Blocks": 4136,                                                                                                                        +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                        +
                                                   "Shared Written Blocks": 0,                                                                                                                        +
                                                   "Local Hit Blocks": 0,                                                                                                                             +
                                                   "Local Read Blocks": 0,                                                                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                                                                         +
                                                   "Local Written Blocks": 0,                                                                                                                         +
                                                   "Temp Read Blocks": 0,                                                                                                                             +
                                                   "Temp Written Blocks": 0,                                                                                                                          +
                                                   "Plans": [                                                                                                                                         +
                                                     {                                                                                                                                                +
                                                       "Node Type": "Sort",                                                                                                                           +
                                                       "Parent Relationship": "Outer",                                                                                                                +
                                                       "Parallel Aware": false,                                                                                                                       +
                                                       "Startup Cost": 2870.31,                                                                                                                       +
                                                       "Total Cost": 2875.70,                                                                                                                         +
                                                       "Plan Rows": 69439,                                                                                                                            +
                                                       "Plan Width": 44,                                                                                                                              +
                                                       "Actual Startup Time": 323.395,                                                                                                                +
                                                       "Actual Total Time": 329.544,                                                                                                                  +
                                                       "Actual Rows": 102101,                                                                                                                         +
                                                       "Actual Loops": 1,                                                                                                                             +
                                                       "Sort Key": ["mc.company_id"],                                                                                                                 +
                                                       "Sort Method": "quicksort",                                                                                                                    +
                                                       "Sort Space Used": 13465,                                                                                                                      +
                                                       "Sort Space Type": "Memory",                                                                                                                   +
                                                       "Shared Hit Blocks": 45840,                                                                                                                    +
                                                       "Shared Read Blocks": 1144,                                                                                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                    +
                                                       "Shared Written Blocks": 0,                                                                                                                    +
                                                       "Local Hit Blocks": 0,                                                                                                                         +
                                                       "Local Read Blocks": 0,                                                                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                                                                     +
                                                       "Local Written Blocks": 0,                                                                                                                     +
                                                       "Temp Read Blocks": 0,                                                                                                                         +
                                                       "Temp Written Blocks": 0,                                                                                                                      +
                                                       "Plans": [                                                                                                                                     +
                                                         {                                                                                                                                            +
                                                           "Node Type": "Merge Join",                                                                                                                 +
                                                           "Parent Relationship": "Outer",                                                                                                            +
                                                           "Parallel Aware": false,                                                                                                                   +
                                                           "Join Type": "Inner",                                                                                                                      +
                                                           "Startup Cost": 76.48,                                                                                                                     +
                                                           "Total Cost": 2696.89,                                                                                                                     +
                                                           "Plan Rows": 69439,                                                                                                                        +
                                                           "Plan Width": 44,                                                                                                                          +
                                                           "Actual Startup Time": 50.159,                                                                                                             +
                                                           "Actual Total Time": 269.550,                                                                                                              +
                                                           "Actual Rows": 105089,                                                                                                                     +
                                                           "Actual Loops": 1,                                                                                                                         +
                                                           "Inner Unique": false,                                                                                                                     +
                                                           "Merge Cond": "(mc.movie_id = ml.movie_id)",                                                                                               +
                                                           "Shared Hit Blocks": 45840,                                                                                                                +
                                                           "Shared Read Blocks": 1144,                                                                                                                +
                                                           "Shared Dirtied Blocks": 0,                                                                                                                +
                                                           "Shared Written Blocks": 0,                                                                                                                +
                                                           "Local Hit Blocks": 0,                                                                                                                     +
                                                           "Local Read Blocks": 0,                                                                                                                    +
                                                           "Local Dirtied Blocks": 0,                                                                                                                 +
                                                           "Local Written Blocks": 0,                                                                                                                 +
                                                           "Temp Read Blocks": 0,                                                                                                                     +
                                                           "Temp Written Blocks": 0,                                                                                                                  +
                                                           "Plans": [                                                                                                                                 +
                                                             {                                                                                                                                        +
                                                               "Node Type": "Index Scan",                                                                                                             +
                                                               "Parent Relationship": "Outer",                                                                                                        +
                                                               "Parallel Aware": false,                                                                                                               +
                                                               "Scan Direction": "Forward",                                                                                                           +
                                                               "Index Name": "movie_id_movie_companies",                                                                                              +
                                                               "Relation Name": "movie_companies",                                                                                                    +
                                                               "Alias": "mc",                                                                                                                         +
                                                               "Startup Cost": 0.01,                                                                                                                  +
                                                               "Total Cost": 67925.24,                                                                                                                +
                                                               "Plan Rows": 1337140,                                                                                                                  +
                                                               "Plan Width": 36,                                                                                                                      +
                                                               "Actual Startup Time": 0.030,                                                                                                          +
                                                               "Actual Total Time": 161.838,                                                                                                          +
                                                               "Actual Rows": 50736,                                                                                                                  +
                                                               "Actual Loops": 1,                                                                                                                     +
                                                               "Filter": "(note IS NOT NULL)",                                                                                                        +
                                                               "Rows Removed by Filter": 49142,                                                                                                       +
                                                               "Shared Hit Blocks": 45838,                                                                                                            +
                                                               "Shared Read Blocks": 983,                                                                                                             +
                                                               "Shared Dirtied Blocks": 0,                                                                                                            +
                                                               "Shared Written Blocks": 0,                                                                                                            +
                                                               "Local Hit Blocks": 0,                                                                                                                 +
                                                               "Local Read Blocks": 0,                                                                                                                +
                                                               "Local Dirtied Blocks": 0,                                                                                                             +
                                                               "Local Written Blocks": 0,                                                                                                             +
                                                               "Temp Read Blocks": 0,                                                                                                                 +
                                                               "Temp Written Blocks": 0                                                                                                               +
                                                             },                                                                                                                                       +
                                                             {                                                                                                                                        +
                                                               "Node Type": "Sort",                                                                                                                   +
                                                               "Parent Relationship": "Inner",                                                                                                        +
                                                               "Parallel Aware": false,                                                                                                               +
                                                               "Startup Cost": 76.46,                                                                                                                 +
                                                               "Total Cost": 78.79,                                                                                                                   +
                                                               "Plan Rows": 29997,                                                                                                                    +
                                                               "Plan Width": 8,                                                                                                                       +
                                                               "Actual Startup Time": 50.122,                                                                                                         +
                                                               "Actual Total Time": 59.985,                                                                                                           +
                                                               "Actual Rows": 117652,                                                                                                                 +
                                                               "Actual Loops": 1,                                                                                                                     +
                                                               "Sort Key": ["ml.movie_id"],                                                                                                           +
                                                               "Sort Method": "quicksort",                                                                                                            +
                                                               "Sort Space Used": 2175,                                                                                                               +
                                                               "Sort Space Type": "Memory",                                                                                                           +
                                                               "Shared Hit Blocks": 2,                                                                                                                +
                                                               "Shared Read Blocks": 161,                                                                                                             +
                                                               "Shared Dirtied Blocks": 0,                                                                                                            +
                                                               "Shared Written Blocks": 0,                                                                                                            +
                                                               "Local Hit Blocks": 0,                                                                                                                 +
                                                               "Local Read Blocks": 0,                                                                                                                +
                                                               "Local Dirtied Blocks": 0,                                                                                                             +
                                                               "Local Written Blocks": 0,                                                                                                             +
                                                               "Temp Read Blocks": 0,                                                                                                                 +
                                                               "Temp Written Blocks": 0,                                                                                                              +
                                                               "Plans": [                                                                                                                             +
                                                                 {                                                                                                                                    +
                                                                   "Node Type": "Seq Scan",                                                                                                           +
                                                                   "Parent Relationship": "Outer",                                                                                                    +
                                                                   "Parallel Aware": false,                                                                                                           +
                                                                   "Relation Name": "movie_link",                                                                                                     +
                                                                   "Alias": "ml",                                                                                                                     +
                                                                   "Startup Cost": 0.00,                                                                                                              +
                                                                   "Total Cost": 7.19,                                                                                                                +
                                                                   "Plan Rows": 29997,                                                                                                                +
                                                                   "Plan Width": 8,                                                                                                                   +
                                                                   "Actual Startup Time": 0.015,                                                                                                      +
                                                                   "Actual Total Time": 29.759,                                                                                                       +
                                                                   "Actual Rows": 29997,                                                                                                              +
                                                                   "Actual Loops": 1,                                                                                                                 +
                                                                   "Shared Hit Blocks": 2,                                                                                                            +
                                                                   "Shared Read Blocks": 161,                                                                                                         +
                                                                   "Shared Dirtied Blocks": 0,                                                                                                        +
                                                                   "Shared Written Blocks": 0,                                                                                                        +
                                                                   "Local Hit Blocks": 0,                                                                                                             +
                                                                   "Local Read Blocks": 0,                                                                                                            +
                                                                   "Local Dirtied Blocks": 0,                                                                                                         +
                                                                   "Local Written Blocks": 0,                                                                                                         +
                                                                   "Temp Read Blocks": 0,                                                                                                             +
                                                                   "Temp Written Blocks": 0                                                                                                           +
                                                                 }                                                                                                                                    +
                                                               ]                                                                                                                                      +
                                                             }                                                                                                                                        +
                                                           ]                                                                                                                                          +
                                                         }                                                                                                                                            +
                                                       ]                                                                                                                                              +
                                                     },                                                                                                                                               +
                                                     {                                                                                                                                                +
                                                       "Node Type": "Sort",                                                                                                                           +
                                                       "Parent Relationship": "Inner",                                                                                                                +
                                                       "Parallel Aware": false,                                                                                                                       +
                                                       "Startup Cost": 165.00,                                                                                                                        +
                                                       "Total Cost": 165.01,                                                                                                                          +
                                                       "Plan Rows": 100,                                                                                                                              +
                                                       "Plan Width": 23,                                                                                                                              +
                                                       "Actual Startup Time": 141.502,                                                                                                                +
                                                       "Actual Total Time": 141.511,                                                                                                                  +
                                                       "Actual Rows": 89,                                                                                                                             +
                                                       "Actual Loops": 1,                                                                                                                             +
                                                       "Sort Key": ["cn.id"],                                                                                                                         +
                                                       "Sort Method": "quicksort",                                                                                                                    +
                                                       "Sort Space Used": 32,                                                                                                                         +
                                                       "Sort Space Type": "Memory",                                                                                                                   +
                                                       "Shared Hit Blocks": 2,                                                                                                                        +
                                                       "Shared Read Blocks": 2992,                                                                                                                    +
                                                       "Shared Dirtied Blocks": 0,                                                                                                                    +
                                                       "Shared Written Blocks": 0,                                                                                                                    +
                                                       "Local Hit Blocks": 0,                                                                                                                         +
                                                       "Local Read Blocks": 0,                                                                                                                        +
                                                       "Local Dirtied Blocks": 0,                                                                                                                     +
                                                       "Local Written Blocks": 0,                                                                                                                     +
                                                       "Temp Read Blocks": 0,                                                                                                                         +
                                                       "Temp Written Blocks": 0,                                                                                                                      +
                                                       "Plans": [                                                                                                                                     +
                                                         {                                                                                                                                            +
                                                           "Node Type": "Seq Scan",                                                                                                                   +
                                                           "Parent Relationship": "Outer",                                                                                                            +
                                                           "Parallel Aware": false,                                                                                                                   +
                                                           "Relation Name": "company_name",                                                                                                           +
                                                           "Alias": "cn",                                                                                                                             +
                                                           "Startup Cost": 0.00,                                                                                                                      +
                                                           "Total Cost": 164.90,                                                                                                                      +
                                                           "Plan Rows": 100,                                                                                                                          +
                                                           "Plan Width": 23,                                                                                                                          +
                                                           "Actual Startup Time": 6.880,                                                                                                              +
                                                           "Actual Total Time": 141.416,                                                                                                              +
                                                           "Actual Rows": 89,                                                                                                                         +
                                                           "Actual Loops": 1,                                                                                                                         +
                                                           "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))",+
                                                           "Rows Removed by Filter": 234908,                                                                                                          +
                                                           "Shared Hit Blocks": 2,                                                                                                                    +
                                                           "Shared Read Blocks": 2992,                                                                                                                +
                                                           "Shared Dirtied Blocks": 0,                                                                                                                +
                                                           "Shared Written Blocks": 0,                                                                                                                +
                                                           "Local Hit Blocks": 0,                                                                                                                     +
                                                           "Local Read Blocks": 0,                                                                                                                    +
                                                           "Local Dirtied Blocks": 0,                                                                                                                 +
                                                           "Local Written Blocks": 0,                                                                                                                 +
                                                           "Temp Read Blocks": 0,                                                                                                                     +
                                                           "Temp Written Blocks": 0                                                                                                                   +
                                                         }                                                                                                                                            +
                                                       ]                                                                                                                                              +
                                                     }                                                                                                                                                +
                                                   ]                                                                                                                                                  +
                                                 }                                                                                                                                                    +
                                               ]                                                                                                                                                      +
                                             },                                                                                                                                                       +
                                             {                                                                                                                                                        +
                                               "Node Type": "Sort",                                                                                                                                   +
                                               "Parent Relationship": "Inner",                                                                                                                        +
                                               "Parallel Aware": false,                                                                                                                               +
                                               "Startup Cost": 0.03,                                                                                                                                  +
                                               "Total Cost": 0.03,                                                                                                                                    +
                                               "Plan Rows": 3,                                                                                                                                        +
                                               "Plan Width": 4,                                                                                                                                       +
                                               "Actual Startup Time": 0.021,                                                                                                                          +
                                               "Actual Total Time": 0.021,                                                                                                                            +
                                               "Actual Rows": 2,                                                                                                                                      +
                                               "Actual Loops": 1,                                                                                                                                     +
                                               "Sort Key": ["ct.id"],                                                                                                                                 +
                                               "Sort Method": "quicksort",                                                                                                                            +
                                               "Sort Space Used": 25,                                                                                                                                 +
                                               "Sort Space Type": "Memory",                                                                                                                           +
                                               "Shared Hit Blocks": 1,                                                                                                                                +
                                               "Shared Read Blocks": 0,                                                                                                                               +
                                               "Shared Dirtied Blocks": 0,                                                                                                                            +
                                               "Shared Written Blocks": 0,                                                                                                                            +
                                               "Local Hit Blocks": 0,                                                                                                                                 +
                                               "Local Read Blocks": 0,                                                                                                                                +
                                               "Local Dirtied Blocks": 0,                                                                                                                             +
                                               "Local Written Blocks": 0,                                                                                                                             +
                                               "Temp Read Blocks": 0,                                                                                                                                 +
                                               "Temp Written Blocks": 0,                                                                                                                              +
                                               "Plans": [                                                                                                                                             +
                                                 {                                                                                                                                                    +
                                                   "Node Type": "Seq Scan",                                                                                                                           +
                                                   "Parent Relationship": "Outer",                                                                                                                    +
                                                   "Parallel Aware": false,                                                                                                                           +
                                                   "Relation Name": "company_type",                                                                                                                   +
                                                   "Alias": "ct",                                                                                                                                     +
                                                   "Startup Cost": 0.00,                                                                                                                              +
                                                   "Total Cost": 0.03,                                                                                                                                +
                                                   "Plan Rows": 3,                                                                                                                                    +
                                                   "Plan Width": 4,                                                                                                                                   +
                                                   "Actual Startup Time": 0.012,                                                                                                                      +
                                                   "Actual Total Time": 0.013,                                                                                                                        +
                                                   "Actual Rows": 3,                                                                                                                                  +
                                                   "Actual Loops": 1,                                                                                                                                 +
                                                   "Filter": "((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))",                                                               +
                                                   "Rows Removed by Filter": 1,                                                                                                                       +
                                                   "Shared Hit Blocks": 1,                                                                                                                            +
                                                   "Shared Read Blocks": 0,                                                                                                                           +
                                                   "Shared Dirtied Blocks": 0,                                                                                                                        +
                                                   "Shared Written Blocks": 0,                                                                                                                        +
                                                   "Local Hit Blocks": 0,                                                                                                                             +
                                                   "Local Read Blocks": 0,                                                                                                                            +
                                                   "Local Dirtied Blocks": 0,                                                                                                                         +
                                                   "Local Written Blocks": 0,                                                                                                                         +
                                                   "Temp Read Blocks": 0,                                                                                                                             +
                                                   "Temp Written Blocks": 0                                                                                                                           +
                                                 }                                                                                                                                                    +
                                               ]                                                                                                                                                      +
                                             }                                                                                                                                                        +
                                           ]                                                                                                                                                          +
                                         }                                                                                                                                                            +
                                       ]                                                                                                                                                              +
                                     }                                                                                                                                                                +
                                   ]                                                                                                                                                                  +
                                 }                                                                                                                                                                    +
                               ]                                                                                                                                                                      +
                             },                                                                                                                                                                       +
                             {                                                                                                                                                                        +
                               "Node Type": "Sort",                                                                                                                                                   +
                               "Parent Relationship": "Inner",                                                                                                                                        +
                               "Parallel Aware": false,                                                                                                                                               +
                               "Startup Cost": 18.40,                                                                                                                                                 +
                               "Total Cost": 18.40,                                                                                                                                                   +
                               "Plan Rows": 3,                                                                                                                                                        +
                               "Plan Width": 4,                                                                                                                                                       +
                               "Actual Startup Time": 183.110,                                                                                                                                        +
                               "Actual Total Time": 183.111,                                                                                                                                          +
                               "Actual Rows": 3,                                                                                                                                                      +
                               "Actual Loops": 1,                                                                                                                                                     +
                               "Sort Key": ["k.id"],                                                                                                                                                  +
                               "Sort Method": "quicksort",                                                                                                                                            +
                               "Sort Space Used": 25,                                                                                                                                                 +
                               "Sort Space Type": "Memory",                                                                                                                                           +
                               "Shared Hit Blocks": 6,                                                                                                                                                +
                               "Shared Read Blocks": 9,                                                                                                                                               +
                               "Shared Dirtied Blocks": 0,                                                                                                                                            +
                               "Shared Written Blocks": 0,                                                                                                                                            +
                               "Local Hit Blocks": 0,                                                                                                                                                 +
                               "Local Read Blocks": 0,                                                                                                                                                +
                               "Local Dirtied Blocks": 0,                                                                                                                                             +
                               "Local Written Blocks": 0,                                                                                                                                             +
                               "Temp Read Blocks": 0,                                                                                                                                                 +
                               "Temp Written Blocks": 0,                                                                                                                                              +
                               "Plans": [                                                                                                                                                             +
                                 {                                                                                                                                                                    +
                                   "Node Type": "Index Scan",                                                                                                                                         +
                                   "Parent Relationship": "Outer",                                                                                                                                    +
                                   "Parallel Aware": false,                                                                                                                                           +
                                   "Scan Direction": "Forward",                                                                                                                                       +
                                   "Index Name": "keyword_idx_keyword",                                                                                                                               +
                                   "Relation Name": "keyword",                                                                                                                                        +
                                   "Alias": "k",                                                                                                                                                      +
                                   "Startup Cost": 0.01,                                                                                                                                              +
                                   "Total Cost": 18.40,                                                                                                                                               +
                                   "Plan Rows": 3,                                                                                                                                                    +
                                   "Plan Width": 4,                                                                                                                                                   +
                                   "Actual Startup Time": 181.430,                                                                                                                                    +
                                   "Actual Total Time": 183.088,                                                                                                                                      +
                                   "Actual Rows": 3,                                                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                                                 +
                                   "Index Cond": "(keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))",                                                                                       +
                                   "Rows Removed by Index Recheck": 0,                                                                                                                                +
                                   "Shared Hit Blocks": 6,                                                                                                                                            +
                                   "Shared Read Blocks": 9,                                                                                                                                           +
                                   "Shared Dirtied Blocks": 0,                                                                                                                                        +
                                   "Shared Written Blocks": 0,                                                                                                                                        +
                                   "Local Hit Blocks": 0,                                                                                                                                             +
                                   "Local Read Blocks": 0,                                                                                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                                                                                         +
                                   "Local Written Blocks": 0,                                                                                                                                         +
                                   "Temp Read Blocks": 0,                                                                                                                                             +
                                   "Temp Written Blocks": 0                                                                                                                                           +
                                 }                                                                                                                                                                    +
                               ]                                                                                                                                                                      +
                             }                                                                                                                                                                        +
                           ]                                                                                                                                                                          +
                         }                                                                                                                                                                            +
                       ]                                                                                                                                                                              +
                     },                                                                                                                                                                               +
                     {                                                                                                                                                                                +
                       "Node Type": "Sort",                                                                                                                                                           +
                       "Parent Relationship": "Inner",                                                                                                                                                +
                       "Parallel Aware": false,                                                                                                                                                       +
                       "Startup Cost": 0.04,                                                                                                                                                          +
                       "Total Cost": 0.05,                                                                                                                                                            +
                       "Plan Rows": 18,                                                                                                                                                               +
                       "Plan Width": 4,                                                                                                                                                               +
                       "Actual Startup Time": 0.024,                                                                                                                                                  +
                       "Actual Total Time": 0.025,                                                                                                                                                    +
                       "Actual Rows": 15,                                                                                                                                                             +
                       "Actual Loops": 1,                                                                                                                                                             +
                       "Sort Key": ["lt.id"],                                                                                                                                                         +
                       "Sort Method": "quicksort",                                                                                                                                                    +
                       "Sort Space Used": 25,                                                                                                                                                         +
                       "Sort Space Type": "Memory",                                                                                                                                                   +
                       "Shared Hit Blocks": 1,                                                                                                                                                        +
                       "Shared Read Blocks": 0,                                                                                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                                                                                    +
                       "Shared Written Blocks": 0,                                                                                                                                                    +
                       "Local Hit Blocks": 0,                                                                                                                                                         +
                       "Local Read Blocks": 0,                                                                                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                                                                                     +
                       "Local Written Blocks": 0,                                                                                                                                                     +
                       "Temp Read Blocks": 0,                                                                                                                                                         +
                       "Temp Written Blocks": 0,                                                                                                                                                      +
                       "Plans": [                                                                                                                                                                     +
                         {                                                                                                                                                                            +
                           "Node Type": "Seq Scan",                                                                                                                                                   +
                           "Parent Relationship": "Outer",                                                                                                                                            +
                           "Parallel Aware": false,                                                                                                                                                   +
                           "Relation Name": "link_type",                                                                                                                                              +
                           "Alias": "lt",                                                                                                                                                             +
                           "Startup Cost": 0.00,                                                                                                                                                      +
                           "Total Cost": 0.03,                                                                                                                                                        +
                           "Plan Rows": 18,                                                                                                                                                           +
                           "Plan Width": 4,                                                                                                                                                           +
                           "Actual Startup Time": 0.009,                                                                                                                                              +
                           "Actual Total Time": 0.012,                                                                                                                                                +
                           "Actual Rows": 18,                                                                                                                                                         +
                           "Actual Loops": 1,                                                                                                                                                         +
                           "Shared Hit Blocks": 1,                                                                                                                                                    +
                           "Shared Read Blocks": 0,                                                                                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                                                                                +
                           "Shared Written Blocks": 0,                                                                                                                                                +
                           "Local Hit Blocks": 0,                                                                                                                                                     +
                           "Local Read Blocks": 0,                                                                                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                                                                                 +
                           "Local Written Blocks": 0,                                                                                                                                                 +
                           "Temp Read Blocks": 0,                                                                                                                                                     +
                           "Temp Written Blocks": 0                                                                                                                                                   +
                         }                                                                                                                                                                            +
                       ]                                                                                                                                                                              +
                     }                                                                                                                                                                                +
                   ]                                                                                                                                                                                  +
                 }                                                                                                                                                                                    +
               ]                                                                                                                                                                                      +
             }                                                                                                                                                                                        +
           ]                                                                                                                                                                                          +
         }                                                                                                                                                                                            +
       ]                                                                                                                                                                                              +
     },                                                                                                                                                                                               +
     "Planning Time": 3498.816,                                                                                                                                                                       +
     "Triggers": [                                                                                                                                                                                    +
     ],                                                                                                                                                                                               +
     "Execution Time": 2194.774                                                                                                                                                                       +
   }                                                                                                                                                                                                  +
 ]
(1 row)

