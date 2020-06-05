                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                         +
   {                                                                                                                                                                       +
     "Plan": {                                                                                                                                                             +
       "Node Type": "Aggregate",                                                                                                                                           +
       "Strategy": "Plain",                                                                                                                                                +
       "Partial Mode": "Simple",                                                                                                                                           +
       "Parallel Aware": false,                                                                                                                                            +
       "Startup Cost": 80299.97,                                                                                                                                           +
       "Total Cost": 80299.97,                                                                                                                                             +
       "Plan Rows": 1,                                                                                                                                                     +
       "Plan Width": 96,                                                                                                                                                   +
       "Actual Startup Time": 17854.365,                                                                                                                                   +
       "Actual Total Time": 17854.365,                                                                                                                                     +
       "Actual Rows": 1,                                                                                                                                                   +
       "Actual Loops": 1,                                                                                                                                                  +
       "Shared Hit Blocks": 18,                                                                                                                                            +
       "Shared Read Blocks": 228116,                                                                                                                                       +
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
           "Startup Cost": 80299.97,                                                                                                                                       +
           "Total Cost": 80299.97,                                                                                                                                         +
           "Plan Rows": 1,                                                                                                                                                 +
           "Plan Width": 42,                                                                                                                                               +
           "Actual Startup Time": 17854.096,                                                                                                                               +
           "Actual Total Time": 17854.201,                                                                                                                                 +
           "Actual Rows": 372,                                                                                                                                             +
           "Actual Loops": 1,                                                                                                                                              +
           "Inner Unique": true,                                                                                                                                           +
           "Merge Cond": "(miidx.info_type_id = it.id)",                                                                                                                   +
           "Shared Hit Blocks": 18,                                                                                                                                        +
           "Shared Read Blocks": 228116,                                                                                                                                   +
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
               "Startup Cost": 80299.92,                                                                                                                                   +
               "Total Cost": 80299.92,                                                                                                                                     +
               "Plan Rows": 5,                                                                                                                                             +
               "Plan Width": 46,                                                                                                                                           +
               "Actual Startup Time": 17853.961,                                                                                                                           +
               "Actual Total Time": 17854.011,                                                                                                                             +
               "Actual Rows": 1116,                                                                                                                                        +
               "Actual Loops": 1,                                                                                                                                          +
               "Sort Key": ["miidx.info_type_id"],                                                                                                                         +
               "Sort Method": "quicksort",                                                                                                                                 +
               "Sort Space Used": 162,                                                                                                                                     +
               "Sort Space Type": "Memory",                                                                                                                                +
               "Shared Hit Blocks": 17,                                                                                                                                    +
               "Shared Read Blocks": 228116,                                                                                                                               +
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
                   "Startup Cost": 80299.83,                                                                                                                               +
                   "Total Cost": 80299.92,                                                                                                                                 +
                   "Plan Rows": 5,                                                                                                                                         +
                   "Plan Width": 46,                                                                                                                                       +
                   "Actual Startup Time": 17853.217,                                                                                                                       +
                   "Actual Total Time": 17853.586,                                                                                                                         +
                   "Actual Rows": 1116,                                                                                                                                    +
                   "Actual Loops": 1,                                                                                                                                      +
                   "Inner Unique": true,                                                                                                                                   +
                   "Merge Cond": "(mi.info_type_id = it2.id)",                                                                                                             +
                   "Shared Hit Blocks": 13,                                                                                                                                +
                   "Shared Read Blocks": 228116,                                                                                                                           +
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
                       "Startup Cost": 80299.79,                                                                                                                           +
                       "Total Cost": 80299.83,                                                                                                                             +
                       "Plan Rows": 547,                                                                                                                                   +
                       "Plan Width": 50,                                                                                                                                   +
                       "Actual Startup Time": 17852.444,                                                                                                                   +
                       "Actual Total Time": 17852.830,                                                                                                                     +
                       "Actual Rows": 4651,                                                                                                                                +
                       "Actual Loops": 1,                                                                                                                                  +
                       "Sort Key": ["mi.info_type_id"],                                                                                                                    +
                       "Sort Method": "quicksort",                                                                                                                         +
                       "Sort Space Used": 941,                                                                                                                             +
                       "Sort Space Type": "Memory",                                                                                                                        +
                       "Shared Hit Blocks": 12,                                                                                                                            +
                       "Shared Read Blocks": 228116,                                                                                                                       +
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
                           "Startup Cost": 77781.02,                                                                                                                       +
                           "Total Cost": 80299.01,                                                                                                                         +
                           "Plan Rows": 547,                                                                                                                               +
                           "Plan Width": 50,                                                                                                                               +
                           "Actual Startup Time": 16488.655,                                                                                                               +
                           "Actual Total Time": 17850.515,                                                                                                                 +
                           "Actual Rows": 6366,                                                                                                                            +
                           "Actual Loops": 1,                                                                                                                              +
                           "Inner Unique": false,                                                                                                                          +
                           "Merge Cond": "(t.id = mi.movie_id)",                                                                                                           +
                           "Shared Hit Blocks": 12,                                                                                                                        +
                           "Shared Read Blocks": 228116,                                                                                                                   +
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
                               "Node Type": "Merge Join",                                                                                                                  +
                               "Parent Relationship": "Outer",                                                                                                             +
                               "Parallel Aware": false,                                                                                                                    +
                               "Join Type": "Inner",                                                                                                                       +
                               "Startup Cost": 16797.56,                                                                                                                   +
                               "Total Cost": 17011.85,                                                                                                                     +
                               "Plan Rows": 39,                                                                                                                            +
                               "Plan Width": 58,                                                                                                                           +
                               "Actual Startup Time": 4688.125,                                                                                                            +
                               "Actual Total Time": 4809.380,                                                                                                              +
                               "Actual Rows": 183,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                          +
                               "Inner Unique": false,                                                                                                                      +
                               "Merge Cond": "(t.id = miidx.movie_id)",                                                                                                    +
                               "Shared Hit Blocks": 10,                                                                                                                    +
                               "Shared Read Blocks": 66226,                                                                                                                +
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
                                   "Node Type": "Sort",                                                                                                                    +
                                   "Parent Relationship": "Outer",                                                                                                         +
                                   "Parallel Aware": false,                                                                                                                +
                                   "Startup Cost": 12066.26,                                                                                                               +
                                   "Total Cost": 12066.26,                                                                                                                 +
                                   "Plan Rows": 30,                                                                                                                        +
                                   "Plan Width": 44,                                                                                                                       +
                                   "Actual Startup Time": 3767.770,                                                                                                        +
                                   "Actual Total Time": 3767.811,                                                                                                          +
                                   "Actual Rows": 203,                                                                                                                     +
                                   "Actual Loops": 1,                                                                                                                      +
                                   "Sort Key": ["mc.movie_id"],                                                                                                            +
                                   "Sort Method": "quicksort",                                                                                                             +
                                   "Sort Space Used": 49,                                                                                                                  +
                                   "Sort Space Type": "Memory",                                                                                                            +
                                   "Shared Hit Blocks": 8,                                                                                                                 +
                                   "Shared Read Blocks": 57775,                                                                                                            +
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
                                       "Node Type": "Merge Join",                                                                                                          +
                                       "Parent Relationship": "Outer",                                                                                                     +
                                       "Parallel Aware": false,                                                                                                            +
                                       "Join Type": "Inner",                                                                                                               +
                                       "Startup Cost": 12053.04,                                                                                                           +
                                       "Total Cost": 12066.23,                                                                                                             +
                                       "Plan Rows": 30,                                                                                                                    +
                                       "Plan Width": 44,                                                                                                                   +
                                       "Actual Startup Time": 3747.402,                                                                                                    +
                                       "Actual Total Time": 3767.672,                                                                                                      +
                                       "Actual Rows": 203,                                                                                                                 +
                                       "Actual Loops": 1,                                                                                                                  +
                                       "Inner Unique": true,                                                                                                               +
                                       "Merge Cond": "(mc.company_id = cn.id)",                                                                                            +
                                       "Shared Hit Blocks": 8,                                                                                                             +
                                       "Shared Read Blocks": 57775,                                                                                                        +
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
                                           "Node Type": "Sort",                                                                                                            +
                                           "Parent Relationship": "Outer",                                                                                                 +
                                           "Parallel Aware": false,                                                                                                        +
                                           "Startup Cost": 11708.94,                                                                                                       +
                                           "Total Cost": 11708.95,                                                                                                         +
                                           "Plan Rows": 84,                                                                                                                +
                                           "Plan Width": 29,                                                                                                               +
                                           "Actual Startup Time": 3591.667,                                                                                                +
                                           "Actual Total Time": 3591.717,                                                                                                  +
                                           "Actual Rows": 357,                                                                                                             +
                                           "Actual Loops": 1,                                                                                                              +
                                           "Sort Key": ["mc.company_id"],                                                                                                  +
                                           "Sort Method": "quicksort",                                                                                                     +
                                           "Sort Space Used": 58,                                                                                                          +
                                           "Sort Space Type": "Memory",                                                                                                    +
                                           "Shared Hit Blocks": 6,                                                                                                         +
                                           "Shared Read Blocks": 54783,                                                                                                    +
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
                                               "Node Type": "Merge Join",                                                                                                  +
                                               "Parent Relationship": "Outer",                                                                                             +
                                               "Parallel Aware": false,                                                                                                    +
                                               "Join Type": "Inner",                                                                                                       +
                                               "Startup Cost": 11708.80,                                                                                                   +
                                               "Total Cost": 11708.86,                                                                                                     +
                                               "Plan Rows": 84,                                                                                                            +
                                               "Plan Width": 29,                                                                                                           +
                                               "Actual Startup Time": 3591.451,                                                                                            +
                                               "Actual Total Time": 3591.547,                                                                                              +
                                               "Actual Rows": 357,                                                                                                         +
                                               "Actual Loops": 1,                                                                                                          +
                                               "Inner Unique": true,                                                                                                       +
                                               "Merge Cond": "(mc.company_type_id = ct.id)",                                                                               +
                                               "Shared Hit Blocks": 6,                                                                                                     +
                                               "Shared Read Blocks": 54783,                                                                                                +
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
                                                   "Node Type": "Sort",                                                                                                    +
                                                   "Parent Relationship": "Outer",                                                                                         +
                                                   "Parallel Aware": false,                                                                                                +
                                                   "Startup Cost": 11708.77,                                                                                               +
                                                   "Total Cost": 11708.79,                                                                                                 +
                                                   "Plan Rows": 337,                                                                                                       +
                                                   "Plan Width": 33,                                                                                                       +
                                                   "Actual Startup Time": 3591.346,                                                                                        +
                                                   "Actual Total Time": 3591.387,                                                                                          +
                                                   "Actual Rows": 769,                                                                                                     +
                                                   "Actual Loops": 1,                                                                                                      +
                                                   "Sort Key": ["mc.company_type_id"],                                                                                     +
                                                   "Sort Method": "quicksort",                                                                                             +
                                                   "Sort Space Used": 99,                                                                                                  +
                                                   "Sort Space Type": "Memory",                                                                                            +
                                                   "Shared Hit Blocks": 5,                                                                                                 +
                                                   "Shared Read Blocks": 54783,                                                                                            +
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
                                                       "Node Type": "Merge Join",                                                                                          +
                                                       "Parent Relationship": "Outer",                                                                                     +
                                                       "Parallel Aware": false,                                                                                            +
                                                       "Join Type": "Inner",                                                                                               +
                                                       "Startup Cost": 11303.11,                                                                                           +
                                                       "Total Cost": 11708.33,                                                                                             +
                                                       "Plan Rows": 337,                                                                                                   +
                                                       "Plan Width": 33,                                                                                                   +
                                                       "Actual Startup Time": 3359.827,                                                                                    +
                                                       "Actual Total Time": 3591.082,                                                                                      +
                                                       "Actual Rows": 769,                                                                                                 +
                                                       "Actual Loops": 1,                                                                                                  +
                                                       "Inner Unique": false,                                                                                              +
                                                       "Merge Cond": "(t.id = mc.movie_id)",                                                                               +
                                                       "Shared Hit Blocks": 5,                                                                                             +
                                                       "Shared Read Blocks": 54783,                                                                                        +
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
                                                           "Node Type": "Sort",                                                                                            +
                                                           "Parent Relationship": "Outer",                                                                                 +
                                                           "Parallel Aware": false,                                                                                        +
                                                           "Startup Cost": 1897.65,                                                                                        +
                                                           "Total Cost": 1897.68,                                                                                          +
                                                           "Plan Rows": 327,                                                                                               +
                                                           "Plan Width": 21,                                                                                               +
                                                           "Actual Startup Time": 1729.873,                                                                                +
                                                           "Actual Total Time": 1729.934,                                                                                  +
                                                           "Actual Rows": 395,                                                                                             +
                                                           "Actual Loops": 1,                                                                                              +
                                                           "Sort Key": ["t.id"],                                                                                           +
                                                           "Sort Method": "quicksort",                                                                                     +
                                                           "Sort Space Used": 59,                                                                                          +
                                                           "Sort Space Type": "Memory",                                                                                    +
                                                           "Shared Hit Blocks": 2,                                                                                         +
                                                           "Shared Read Blocks": 35997,                                                                                    +
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
                                                               "Startup Cost": 1896.85,                                                                                    +
                                                               "Total Cost": 1897.23,                                                                                      +
                                                               "Plan Rows": 327,                                                                                           +
                                                               "Plan Width": 21,                                                                                           +
                                                               "Actual Startup Time": 1729.609,                                                                            +
                                                               "Actual Total Time": 1729.727,                                                                              +
                                                               "Actual Rows": 395,                                                                                         +
                                                               "Actual Loops": 1,                                                                                          +
                                                               "Inner Unique": false,                                                                                      +
                                                               "Merge Cond": "(kt.id = t.kind_id)",                                                                        +
                                                               "Shared Hit Blocks": 2,                                                                                     +
                                                               "Shared Read Blocks": 35997,                                                                                +
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
                                                                   "Node Type": "Sort",                                                                                    +
                                                                   "Parent Relationship": "Outer",                                                                         +
                                                                   "Parallel Aware": false,                                                                                +
                                                                   "Startup Cost": 0.03,                                                                                   +
                                                                   "Total Cost": 0.03,                                                                                     +
                                                                   "Plan Rows": 1,                                                                                         +
                                                                   "Plan Width": 4,                                                                                        +
                                                                   "Actual Startup Time": 0.056,                                                                           +
                                                                   "Actual Total Time": 0.056,                                                                             +
                                                                   "Actual Rows": 1,                                                                                       +
                                                                   "Actual Loops": 1,                                                                                      +
                                                                   "Sort Key": ["kt.id"],                                                                                  +
                                                                   "Sort Method": "quicksort",                                                                             +
                                                                   "Sort Space Used": 25,                                                                                  +
                                                                   "Sort Space Type": "Memory",                                                                            +
                                                                   "Shared Hit Blocks": 1,                                                                                 +
                                                                   "Shared Read Blocks": 0,                                                                                +
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
                                                                       "Relation Name": "kind_type",                                                                       +
                                                                       "Alias": "kt",                                                                                      +
                                                                       "Startup Cost": 0.00,                                                                               +
                                                                       "Total Cost": 0.03,                                                                                 +
                                                                       "Plan Rows": 1,                                                                                     +
                                                                       "Plan Width": 4,                                                                                    +
                                                                       "Actual Startup Time": 0.035,                                                                       +
                                                                       "Actual Total Time": 0.040,                                                                         +
                                                                       "Actual Rows": 1,                                                                                   +
                                                                       "Actual Loops": 1,                                                                                  +
                                                                       "Filter": "((kind)::text = 'movie'::text)",                                                         +
                                                                       "Rows Removed by Filter": 6,                                                                        +
                                                                       "Shared Hit Blocks": 1,                                                                             +
                                                                       "Shared Read Blocks": 0,                                                                            +
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
                                                                 },                                                                                                        +
                                                                 {                                                                                                         +
                                                                   "Node Type": "Sort",                                                                                    +
                                                                   "Parent Relationship": "Inner",                                                                         +
                                                                   "Parallel Aware": false,                                                                                +
                                                                   "Startup Cost": 1896.82,                                                                                +
                                                                   "Total Cost": 1897.00,                                                                                  +
                                                                   "Plan Rows": 2288,                                                                                      +
                                                                   "Plan Width": 25,                                                                                       +
                                                                   "Actual Startup Time": 1729.545,                                                                        +
                                                                   "Actual Total Time": 1729.582,                                                                          +
                                                                   "Actual Rows": 396,                                                                                     +
                                                                   "Actual Loops": 1,                                                                                      +
                                                                   "Sort Key": ["t.kind_id"],                                                                              +
                                                                   "Sort Method": "quicksort",                                                                             +
                                                                   "Sort Space Used": 319,                                                                                 +
                                                                   "Sort Space Type": "Memory",                                                                            +
                                                                   "Shared Hit Blocks": 1,                                                                                 +
                                                                   "Shared Read Blocks": 35997,                                                                            +
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
                                                                       "Relation Name": "title",                                                                           +
                                                                       "Alias": "t",                                                                                       +
                                                                       "Startup Cost": 0.00,                                                                               +
                                                                       "Total Cost": 1892.85,                                                                              +
                                                                       "Plan Rows": 2288,                                                                                  +
                                                                       "Plan Width": 25,                                                                                   +
                                                                       "Actual Startup Time": 21.705,                                                                      +
                                                                       "Actual Total Time": 1727.523,                                                                      +
                                                                       "Actual Rows": 2218,                                                                                +
                                                                       "Actual Loops": 1,                                                                                  +
                                                                       "Filter": "((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))",+
                                                                       "Rows Removed by Filter": 2526094,                                                                  +
                                                                       "Shared Hit Blocks": 1,                                                                             +
                                                                       "Shared Read Blocks": 35997,                                                                        +
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
                                                             }                                                                                                             +
                                                           ]                                                                                                               +
                                                         },                                                                                                                +
                                                         {                                                                                                                 +
                                                           "Node Type": "Sort",                                                                                            +
                                                           "Parent Relationship": "Inner",                                                                                 +
                                                           "Parallel Aware": false,                                                                                        +
                                                           "Startup Cost": 9405.45,                                                                                        +
                                                           "Total Cost": 9608.03,                                                                                          +
                                                           "Plan Rows": 2609129,                                                                                           +
                                                           "Plan Width": 12,                                                                                               +
                                                           "Actual Startup Time": 1504.602,                                                                                +
                                                           "Actual Total Time": 1620.360,                                                                                  +
                                                           "Actual Rows": 2576196,                                                                                         +
                                                           "Actual Loops": 1,                                                                                              +
                                                           "Sort Key": ["mc.movie_id"],                                                                                    +
                                                           "Sort Method": "quicksort",                                                                                     +
                                                           "Sort Space Used": 220607,                                                                                      +
                                                           "Sort Space Type": "Memory",                                                                                    +
                                                           "Shared Hit Blocks": 3,                                                                                         +
                                                           "Shared Read Blocks": 18786,                                                                                    +
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
                                                               "Node Type": "Seq Scan",                                                                                    +
                                                               "Parent Relationship": "Outer",                                                                             +
                                                               "Parallel Aware": false,                                                                                    +
                                                               "Relation Name": "movie_companies",                                                                         +
                                                               "Alias": "mc",                                                                                              +
                                                               "Startup Cost": 0.00,                                                                                       +
                                                               "Total Cost": 769.75,                                                                                       +
                                                               "Plan Rows": 2609129,                                                                                       +
                                                               "Plan Width": 12,                                                                                           +
                                                               "Actual Startup Time": 0.014,                                                                               +
                                                               "Actual Total Time": 541.109,                                                                               +
                                                               "Actual Rows": 2609129,                                                                                     +
                                                               "Actual Loops": 1,                                                                                          +
                                                               "Shared Hit Blocks": 3,                                                                                     +
                                                               "Shared Read Blocks": 18786,                                                                                +
                                                               "Shared Dirtied Blocks": 0,                                                                                 +
                                                               "Shared Written Blocks": 0,                                                                                 +
                                                               "Local Hit Blocks": 0,                                                                                      +
                                                               "Local Read Blocks": 0,                                                                                     +
                                                               "Local Dirtied Blocks": 0,                                                                                  +
                                                               "Local Written Blocks": 0,                                                                                  +
                                                               "Temp Read Blocks": 0,                                                                                      +
                                                               "Temp Written Blocks": 0                                                                                    +
                                                             }                                                                                                             +
                                                           ]                                                                                                               +
                                                         }                                                                                                                 +
                                                       ]                                                                                                                   +
                                                     }                                                                                                                     +
                                                   ]                                                                                                                       +
                                                 },                                                                                                                        +
                                                 {                                                                                                                         +
                                                   "Node Type": "Sort",                                                                                                    +
                                                   "Parent Relationship": "Inner",                                                                                         +
                                                   "Parallel Aware": false,                                                                                                +
                                                   "Startup Cost": 0.03,                                                                                                   +
                                                   "Total Cost": 0.03,                                                                                                     +
                                                   "Plan Rows": 1,                                                                                                         +
                                                   "Plan Width": 4,                                                                                                        +
                                                   "Actual Startup Time": 0.023,                                                                                           +
                                                   "Actual Total Time": 0.023,                                                                                             +
                                                   "Actual Rows": 1,                                                                                                       +
                                                   "Actual Loops": 1,                                                                                                      +
                                                   "Sort Key": ["ct.id"],                                                                                                  +
                                                   "Sort Method": "quicksort",                                                                                             +
                                                   "Sort Space Used": 25,                                                                                                  +
                                                   "Sort Space Type": "Memory",                                                                                            +
                                                   "Shared Hit Blocks": 1,                                                                                                 +
                                                   "Shared Read Blocks": 0,                                                                                                +
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
                                                       "Node Type": "Seq Scan",                                                                                            +
                                                       "Parent Relationship": "Outer",                                                                                     +
                                                       "Parallel Aware": false,                                                                                            +
                                                       "Relation Name": "company_type",                                                                                    +
                                                       "Alias": "ct",                                                                                                      +
                                                       "Startup Cost": 0.00,                                                                                               +
                                                       "Total Cost": 0.03,                                                                                                 +
                                                       "Plan Rows": 1,                                                                                                     +
                                                       "Plan Width": 4,                                                                                                    +
                                                       "Actual Startup Time": 0.015,                                                                                       +
                                                       "Actual Total Time": 0.016,                                                                                         +
                                                       "Actual Rows": 1,                                                                                                   +
                                                       "Actual Loops": 1,                                                                                                  +
                                                       "Filter": "((kind)::text = 'production companies'::text)",                                                          +
                                                       "Rows Removed by Filter": 3,                                                                                        +
                                                       "Shared Hit Blocks": 1,                                                                                             +
                                                       "Shared Read Blocks": 0,                                                                                            +
                                                       "Shared Dirtied Blocks": 0,                                                                                         +
                                                       "Shared Written Blocks": 0,                                                                                         +
                                                       "Local Hit Blocks": 0,                                                                                              +
                                                       "Local Read Blocks": 0,                                                                                             +
                                                       "Local Dirtied Blocks": 0,                                                                                          +
                                                       "Local Written Blocks": 0,                                                                                          +
                                                       "Temp Read Blocks": 0,                                                                                              +
                                                       "Temp Written Blocks": 0                                                                                            +
                                                     }                                                                                                                     +
                                                   ]                                                                                                                       +
                                                 }                                                                                                                         +
                                               ]                                                                                                                           +
                                             }                                                                                                                             +
                                           ]                                                                                                                               +
                                         },                                                                                                                                +
                                         {                                                                                                                                 +
                                           "Node Type": "Sort",                                                                                                            +
                                           "Parent Relationship": "Inner",                                                                                                 +
                                           "Parallel Aware": false,                                                                                                        +
                                           "Startup Cost": 344.10,                                                                                                         +
                                           "Total Cost": 350.69,                                                                                                           +
                                           "Plan Rows": 84843,                                                                                                             +
                                           "Plan Width": 23,                                                                                                               +
                                           "Actual Startup Time": 155.723,                                                                                                 +
                                           "Actual Total Time": 164.469,                                                                                                   +
                                           "Actual Rows": 84335,                                                                                                           +
                                           "Actual Loops": 1,                                                                                                              +
                                           "Sort Key": ["cn.id"],                                                                                                          +
                                           "Sort Method": "quicksort",                                                                                                     +
                                           "Sort Space Used": 9413,                                                                                                        +
                                           "Sort Space Type": "Memory",                                                                                                    +
                                           "Shared Hit Blocks": 2,                                                                                                         +
                                           "Shared Read Blocks": 2992,                                                                                                     +
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
                                               "Node Type": "Seq Scan",                                                                                                    +
                                               "Parent Relationship": "Outer",                                                                                             +
                                               "Parallel Aware": false,                                                                                                    +
                                               "Relation Name": "company_name",                                                                                            +
                                               "Alias": "cn",                                                                                                              +
                                               "Startup Cost": 0.00,                                                                                                       +
                                               "Total Cost": 128.41,                                                                                                       +
                                               "Plan Rows": 84843,                                                                                                         +
                                               "Plan Width": 23,                                                                                                           +
                                               "Actual Startup Time": 4.350,                                                                                               +
                                               "Actual Total Time": 108.875,                                                                                               +
                                               "Actual Rows": 84843,                                                                                                       +
                                               "Actual Loops": 1,                                                                                                          +
                                               "Filter": "((country_code)::text = '[us]'::text)",                                                                          +
                                               "Rows Removed by Filter": 150154,                                                                                           +
                                               "Shared Hit Blocks": 2,                                                                                                     +
                                               "Shared Read Blocks": 2992,                                                                                                 +
                                               "Shared Dirtied Blocks": 0,                                                                                                 +
                                               "Shared Written Blocks": 0,                                                                                                 +
                                               "Local Hit Blocks": 0,                                                                                                      +
                                               "Local Read Blocks": 0,                                                                                                     +
                                               "Local Dirtied Blocks": 0,                                                                                                  +
                                               "Local Written Blocks": 0,                                                                                                  +
                                               "Temp Read Blocks": 0,                                                                                                      +
                                               "Temp Written Blocks": 0                                                                                                    +
                                             }                                                                                                                             +
                                           ]                                                                                                                               +
                                         }                                                                                                                                 +
                                       ]                                                                                                                                   +
                                     }                                                                                                                                     +
                                   ]                                                                                                                                       +
                                 },                                                                                                                                        +
                                 {                                                                                                                                         +
                                   "Node Type": "Sort",                                                                                                                    +
                                   "Parent Relationship": "Inner",                                                                                                         +
                                   "Parallel Aware": false,                                                                                                                +
                                   "Startup Cost": 4731.30,                                                                                                                +
                                   "Total Cost": 4838.45,                                                                                                                  +
                                   "Plan Rows": 1380035,                                                                                                                   +
                                   "Plan Width": 14,                                                                                                                       +
                                   "Actual Startup Time": 839.928,                                                                                                         +
                                   "Actual Total Time": 902.324,                                                                                                           +
                                   "Actual Rows": 1359850,                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                      +
                                   "Sort Key": ["miidx.movie_id"],                                                                                                         +
                                   "Sort Method": "quicksort",                                                                                                             +
                                   "Sort Space Used": 128214,                                                                                                              +
                                   "Sort Space Type": "Memory",                                                                                                            +
                                   "Shared Hit Blocks": 2,                                                                                                                 +
                                   "Shared Read Blocks": 8451,                                                                                                             +
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
                                       "Node Type": "Seq Scan",                                                                                                            +
                                       "Parent Relationship": "Outer",                                                                                                     +
                                       "Parallel Aware": false,                                                                                                            +
                                       "Relation Name": "movie_info_idx",                                                                                                  +
                                       "Alias": "miidx",                                                                                                                   +
                                       "Startup Cost": 0.00,                                                                                                               +
                                       "Total Cost": 360.56,                                                                                                               +
                                       "Plan Rows": 1380035,                                                                                                               +
                                       "Plan Width": 14,                                                                                                                   +
                                       "Actual Startup Time": 0.010,                                                                                                       +
                                       "Actual Total Time": 318.101,                                                                                                       +
                                       "Actual Rows": 1380035,                                                                                                             +
                                       "Actual Loops": 1,                                                                                                                  +
                                       "Shared Hit Blocks": 2,                                                                                                             +
                                       "Shared Read Blocks": 8451,                                                                                                         +
                                       "Shared Dirtied Blocks": 0,                                                                                                         +
                                       "Shared Written Blocks": 0,                                                                                                         +
                                       "Local Hit Blocks": 0,                                                                                                              +
                                       "Local Read Blocks": 0,                                                                                                             +
                                       "Local Dirtied Blocks": 0,                                                                                                          +
                                       "Local Written Blocks": 0,                                                                                                          +
                                       "Temp Read Blocks": 0,                                                                                                              +
                                       "Temp Written Blocks": 0                                                                                                            +
                                     }                                                                                                                                     +
                                   ]                                                                                                                                       +
                                 }                                                                                                                                         +
                               ]                                                                                                                                           +
                             },                                                                                                                                            +
                             {                                                                                                                                             +
                               "Node Type": "Sort",                                                                                                                        +
                               "Parent Relationship": "Inner",                                                                                                             +
                               "Parallel Aware": false,                                                                                                                    +
                               "Startup Cost": 60983.46,                                                                                                                   +
                               "Total Cost": 62135.30,                                                                                                                     +
                               "Plan Rows": 14835720,                                                                                                                      +
                               "Plan Width": 8,                                                                                                                            +
                               "Actual Startup Time": 11126.158,                                                                                                           +
                               "Actual Total Time": 11787.181,                                                                                                             +
                               "Actual Rows": 13204942,                                                                                                                    +
                               "Actual Loops": 1,                                                                                                                          +
                               "Sort Key": ["mi.movie_id"],                                                                                                                +
                               "Sort Method": "quicksort",                                                                                                                 +
                               "Sort Space Used": 1088641,                                                                                                                 +
                               "Sort Space Type": "Memory",                                                                                                                +
                               "Shared Hit Blocks": 2,                                                                                                                     +
                               "Shared Read Blocks": 161890,                                                                                                               +
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
                                   "Relation Name": "movie_info",                                                                                                          +
                                   "Alias": "mi",                                                                                                                          +
                                   "Startup Cost": 0.00,                                                                                                                   +
                                   "Total Cost": 6103.84,                                                                                                                  +
                                   "Plan Rows": 14835720,                                                                                                                  +
                                   "Plan Width": 8,                                                                                                                        +
                                   "Actual Startup Time": 19.819,                                                                                                          +
                                   "Actual Total Time": 5349.446,                                                                                                          +
                                   "Actual Rows": 14835720,                                                                                                                +
                                   "Actual Loops": 1,                                                                                                                      +
                                   "Shared Hit Blocks": 2,                                                                                                                 +
                                   "Shared Read Blocks": 161890,                                                                                                           +
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
                       "Startup Cost": 0.05,                                                                                                                               +
                       "Total Cost": 0.05,                                                                                                                                 +
                       "Plan Rows": 1,                                                                                                                                     +
                       "Plan Width": 4,                                                                                                                                    +
                       "Actual Startup Time": 0.036,                                                                                                                       +
                       "Actual Total Time": 0.036,                                                                                                                         +
                       "Actual Rows": 1,                                                                                                                                   +
                       "Actual Loops": 1,                                                                                                                                  +
                       "Sort Key": ["it2.id"],                                                                                                                             +
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
                           "Relation Name": "info_type",                                                                                                                   +
                           "Alias": "it2",                                                                                                                                 +
                           "Startup Cost": 0.00,                                                                                                                           +
                           "Total Cost": 0.05,                                                                                                                             +
                           "Plan Rows": 1,                                                                                                                                 +
                           "Plan Width": 4,                                                                                                                                +
                           "Actual Startup Time": 0.020,                                                                                                                   +
                           "Actual Total Time": 0.029,                                                                                                                     +
                           "Actual Rows": 1,                                                                                                                               +
                           "Actual Loops": 1,                                                                                                                              +
                           "Filter": "((info)::text = 'release dates'::text)",                                                                                             +
                           "Rows Removed by Filter": 112,                                                                                                                  +
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
               "Startup Cost": 0.05,                                                                                                                                       +
               "Total Cost": 0.05,                                                                                                                                         +
               "Plan Rows": 1,                                                                                                                                             +
               "Plan Width": 4,                                                                                                                                            +
               "Actual Startup Time": 0.018,                                                                                                                               +
               "Actual Total Time": 0.018,                                                                                                                                 +
               "Actual Rows": 1,                                                                                                                                           +
               "Actual Loops": 1,                                                                                                                                          +
               "Sort Key": ["it.id"],                                                                                                                                      +
               "Sort Method": "quicksort",                                                                                                                                 +
               "Sort Space Used": 25,                                                                                                                                      +
               "Sort Space Type": "Memory",                                                                                                                                +
               "Shared Hit Blocks": 1,                                                                                                                                     +
               "Shared Read Blocks": 0,                                                                                                                                    +
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
                   "Relation Name": "info_type",                                                                                                                           +
                   "Alias": "it",                                                                                                                                          +
                   "Startup Cost": 0.00,                                                                                                                                   +
                   "Total Cost": 0.05,                                                                                                                                     +
                   "Plan Rows": 1,                                                                                                                                         +
                   "Plan Width": 4,                                                                                                                                        +
                   "Actual Startup Time": 0.014,                                                                                                                           +
                   "Actual Total Time": 0.016,                                                                                                                             +
                   "Actual Rows": 1,                                                                                                                                       +
                   "Actual Loops": 1,                                                                                                                                      +
                   "Filter": "((info)::text = 'rating'::text)",                                                                                                            +
                   "Rows Removed by Filter": 112,                                                                                                                          +
                   "Shared Hit Blocks": 1,                                                                                                                                 +
                   "Shared Read Blocks": 0,                                                                                                                                +
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
     },                                                                                                                                                                    +
     "Planning Time": 5589.157,                                                                                                                                            +
     "Triggers": [                                                                                                                                                         +
     ],                                                                                                                                                                    +
     "Execution Time": 17929.148                                                                                                                                           +
   }                                                                                                                                                                       +
 ]
(1 row)

