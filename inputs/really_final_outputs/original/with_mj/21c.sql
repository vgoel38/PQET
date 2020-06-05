                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 19770.12,                                                                                                                                         +
       "Total Cost": 19770.12,                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 96,                                                                                                                                                 +
       "Actual Startup Time": 10277.005,                                                                                                                                 +
       "Actual Total Time": 10277.005,                                                                                                                                   +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 182104,                                                                                                                                      +
       "Shared Read Blocks": 170010,                                                                                                                                     +
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
           "Startup Cost": 18028.60,                                                                                                                                     +
           "Total Cost": 19770.12,                                                                                                                                       +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 48,                                                                                                                                             +
           "Actual Startup Time": 10151.301,                                                                                                                             +
           "Actual Total Time": 10252.893,                                                                                                                               +
           "Actual Rows": 1874,                                                                                                                                          +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                         +
           "Merge Cond": "(ml.movie_id = t.id)",                                                                                                                         +
           "Shared Hit Blocks": 182104,                                                                                                                                  +
           "Shared Read Blocks": 170010,                                                                                                                                 +
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
               "Node Type": "Merge Join",                                                                                                                                +
               "Parent Relationship": "Outer",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Join Type": "Inner",                                                                                                                                     +
               "Startup Cost": 18028.57,                                                                                                                                 +
               "Total Cost": 18033.62,                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 47,                                                                                                                                         +
               "Actual Startup Time": 9503.160,                                                                                                                          +
               "Actual Total Time": 9510.260,                                                                                                                            +
               "Actual Rows": 1874,                                                                                                                                      +
               "Actual Loops": 1,                                                                                                                                        +
               "Inner Unique": false,                                                                                                                                    +
               "Merge Cond": "(ml.movie_id = mi.movie_id)",                                                                                                              +
               "Shared Hit Blocks": 46140,                                                                                                                               +
               "Shared Read Blocks": 166700,                                                                                                                             +
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
                   "Node Type": "Sort",                                                                                                                                  +
                   "Parent Relationship": "Outer",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Startup Cost": 3855.49,                                                                                                                              +
                   "Total Cost": 3855.49,                                                                                                                                +
                   "Plan Rows": 1,                                                                                                                                       +
                   "Plan Width": 43,                                                                                                                                     +
                   "Actual Startup Time": 666.513,                                                                                                                       +
                   "Actual Total Time": 666.554,                                                                                                                         +
                   "Actual Rows": 402,                                                                                                                                   +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Sort Key": ["mc.movie_id"],                                                                                                                          +
                   "Sort Method": "quicksort",                                                                                                                           +
                   "Sort Space Used": 70,                                                                                                                                +
                   "Sort Space Type": "Memory",                                                                                                                          +
                   "Shared Hit Blocks": 46138,                                                                                                                           +
                   "Shared Read Blocks": 4810,                                                                                                                           +
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
                       "Node Type": "Merge Join",                                                                                                                        +
                       "Parent Relationship": "Outer",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Join Type": "Inner",                                                                                                                             +
                       "Startup Cost": 3855.12,                                                                                                                          +
                       "Total Cost": 3855.49,                                                                                                                            +
                       "Plan Rows": 1,                                                                                                                                   +
                       "Plan Width": 43,                                                                                                                                 +
                       "Actual Startup Time": 656.807,                                                                                                                   +
                       "Actual Total Time": 657.060,                                                                                                                     +
                       "Actual Rows": 402,                                                                                                                               +
                       "Actual Loops": 1,                                                                                                                                +
                       "Inner Unique": true,                                                                                                                             +
                       "Merge Cond": "(mk.keyword_id = k.id)",                                                                                                           +
                       "Shared Hit Blocks": 46134,                                                                                                                       +
                       "Shared Read Blocks": 4810,                                                                                                                       +
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
                           "Node Type": "Sort",                                                                                                                          +
                           "Parent Relationship": "Outer",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Startup Cost": 3848.98,                                                                                                                      +
                           "Total Cost": 3849.17,                                                                                                                        +
                           "Plan Rows": 2385,                                                                                                                            +
                           "Plan Width": 47,                                                                                                                             +
                           "Actual Startup Time": 615.251,                                                                                                               +
                           "Actual Total Time": 615.555,                                                                                                                 +
                           "Actual Rows": 2218,                                                                                                                          +
                           "Actual Loops": 1,                                                                                                                            +
                           "Sort Key": ["mk.keyword_id"],                                                                                                                +
                           "Sort Method": "quicksort",                                                                                                                   +
                           "Sort Space Used": 1466,                                                                                                                      +
                           "Sort Space Type": "Memory",                                                                                                                  +
                           "Shared Hit Blocks": 46134,                                                                                                                   +
                           "Shared Read Blocks": 4806,                                                                                                                   +
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
                               "Node Type": "Merge Join",                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Join Type": "Inner",                                                                                                                     +
                               "Startup Cost": 2989.96,                                                                                                                  +
                               "Total Cost": 3844.83,                                                                                                                    +
                               "Plan Rows": 2385,                                                                                                                        +
                               "Plan Width": 47,                                                                                                                         +
                               "Actual Startup Time": 484.800,                                                                                                           +
                               "Actual Total Time": 610.948,                                                                                                             +
                               "Actual Rows": 8713,                                                                                                                      +
                               "Actual Loops": 1,                                                                                                                        +
                               "Inner Unique": false,                                                                                                                    +
                               "Merge Cond": "(mk.movie_id = ml.movie_id)",                                                                                              +
                               "Shared Hit Blocks": 46134,                                                                                                               +
                               "Shared Read Blocks": 4806,                                                                                                               +
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
                                   "Node Type": "Index Scan",                                                                                                            +
                                   "Parent Relationship": "Outer",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Scan Direction": "Forward",                                                                                                          +
                                   "Index Name": "movie_id_movie_keyword",                                                                                               +
                                   "Relation Name": "movie_keyword",                                                                                                     +
                                   "Alias": "mk",                                                                                                                        +
                                   "Startup Cost": 0.01,                                                                                                                 +
                                   "Total Cost": 39285.80,                                                                                                               +
                                   "Plan Rows": 4523930,                                                                                                                 +
                                   "Plan Width": 8,                                                                                                                      +
                                   "Actual Startup Time": 0.034,                                                                                                         +
                                   "Actual Total Time": 114.092,                                                                                                         +
                                   "Actual Rows": 82171,                                                                                                                 +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Shared Hit Blocks": 291,                                                                                                             +
                                   "Shared Read Blocks": 670,                                                                                                            +
                                   "Shared Dirtied Blocks": 0,                                                                                                           +
                                   "Shared Written Blocks": 0,                                                                                                           +
                                   "Local Hit Blocks": 0,                                                                                                                +
                                   "Local Read Blocks": 0,                                                                                                               +
                                   "Local Dirtied Blocks": 0,                                                                                                            +
                                   "Local Written Blocks": 0,                                                                                                            +
                                   "Temp Read Blocks": 0,                                                                                                                +
                                   "Temp Written Blocks": 0                                                                                                              +
                                 },                                                                                                                                      +
                                 {                                                                                                                                       +
                                   "Node Type": "Sort",                                                                                                                  +
                                   "Parent Relationship": "Inner",                                                                                                       +
                                   "Parallel Aware": false,                                                                                                              +
                                   "Startup Cost": 2989.95,                                                                                                              +
                                   "Total Cost": 2989.96,                                                                                                                +
                                   "Plan Rows": 192,                                                                                                                     +
                                   "Plan Width": 39,                                                                                                                     +
                                   "Actual Startup Time": 470.492,                                                                                                       +
                                   "Actual Total Time": 471.069,                                                                                                         +
                                   "Actual Rows": 8920,                                                                                                                  +
                                   "Actual Loops": 1,                                                                                                                    +
                                   "Sort Key": ["mc.movie_id"],                                                                                                          +
                                   "Sort Method": "quicksort",                                                                                                           +
                                   "Sort Space Used": 148,                                                                                                               +
                                   "Sort Space Type": "Memory",                                                                                                          +
                                   "Shared Hit Blocks": 45843,                                                                                                           +
                                   "Shared Read Blocks": 4136,                                                                                                           +
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
                                       "Node Type": "Merge Join",                                                                                                        +
                                       "Parent Relationship": "Outer",                                                                                                   +
                                       "Parallel Aware": false,                                                                                                          +
                                       "Join Type": "Inner",                                                                                                             +
                                       "Startup Cost": 2989.59,                                                                                                          +
                                       "Total Cost": 2989.72,                                                                                                            +
                                       "Plan Rows": 192,                                                                                                                 +
                                       "Plan Width": 39,                                                                                                                 +
                                       "Actual Startup Time": 469.849,                                                                                                   +
                                       "Actual Total Time": 470.176,                                                                                                     +
                                       "Actual Rows": 1152,                                                                                                              +
                                       "Actual Loops": 1,                                                                                                                +
                                       "Inner Unique": true,                                                                                                             +
                                       "Merge Cond": "(mc.company_type_id = ct.id)",                                                                                     +
                                       "Shared Hit Blocks": 45843,                                                                                                       +
                                       "Shared Read Blocks": 4136,                                                                                                       +
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
                                           "Node Type": "Sort",                                                                                                          +
                                           "Parent Relationship": "Outer",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Startup Cost": 2989.56,                                                                                                      +
                                           "Total Cost": 2989.62,                                                                                                        +
                                           "Plan Rows": 768,                                                                                                             +
                                           "Plan Width": 43,                                                                                                             +
                                           "Actual Startup Time": 469.820,                                                                                               +
                                           "Actual Total Time": 469.878,                                                                                                 +
                                           "Actual Rows": 1200,                                                                                                          +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Sort Key": ["mc.company_type_id"],                                                                                           +
                                           "Sort Method": "quicksort",                                                                                                   +
                                           "Sort Space Used": 166,                                                                                                       +
                                           "Sort Space Type": "Memory",                                                                                                  +
                                           "Shared Hit Blocks": 45842,                                                                                                   +
                                           "Shared Read Blocks": 4136,                                                                                                   +
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
                                               "Startup Cost": 2980.16,                                                                                                  +
                                               "Total Cost": 2988.41,                                                                                                    +
                                               "Plan Rows": 768,                                                                                                         +
                                               "Plan Width": 43,                                                                                                         +
                                               "Actual Startup Time": 464.704,                                                                                           +
                                               "Actual Total Time": 469.501,                                                                                             +
                                               "Actual Rows": 1200,                                                                                                      +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Inner Unique": true,                                                                                                     +
                                               "Merge Cond": "(mc.company_id = cn.id)",                                                                                  +
                                               "Shared Hit Blocks": 45842,                                                                                               +
                                               "Shared Read Blocks": 4136,                                                                                               +
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
                                                   "Node Type": "Sort",                                                                                                  +
                                                   "Parent Relationship": "Outer",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Startup Cost": 2696.29,                                                                                              +
                                                   "Total Cost": 2696.57,                                                                                                +
                                                   "Plan Rows": 3669,                                                                                                    +
                                                   "Plan Width": 28,                                                                                                     +
                                                   "Actual Startup Time": 303.118,                                                                                       +
                                                   "Actual Total Time": 303.536,                                                                                         +
                                                   "Actual Rows": 5069,                                                                                                  +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Sort Key": ["mc.company_id"],                                                                                        +
                                                   "Sort Method": "quicksort",                                                                                           +
                                                   "Sort Space Used": 589,                                                                                               +
                                                   "Sort Space Type": "Memory",                                                                                          +
                                                   "Shared Hit Blocks": 45840,                                                                                           +
                                                   "Shared Read Blocks": 1144,                                                                                           +
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
                                                       "Startup Cost": 84.05,                                                                                            +
                                                       "Total Cost": 2689.54,                                                                                            +
                                                       "Plan Rows": 3669,                                                                                                +
                                                       "Plan Width": 28,                                                                                                 +
                                                       "Actual Startup Time": 80.915,                                                                                    +
                                                       "Actual Total Time": 299.971,                                                                                     +
                                                       "Actual Rows": 5069,                                                                                              +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Inner Unique": false,                                                                                            +
                                                       "Merge Cond": "(mc.movie_id = ml.movie_id)",                                                                      +
                                                       "Shared Hit Blocks": 45840,                                                                                       +
                                                       "Shared Read Blocks": 1144,                                                                                       +
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
                                                           "Node Type": "Index Scan",                                                                                    +
                                                           "Parent Relationship": "Outer",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Scan Direction": "Forward",                                                                                  +
                                                           "Index Name": "movie_id_movie_companies",                                                                     +
                                                           "Relation Name": "movie_companies",                                                                           +
                                                           "Alias": "mc",                                                                                                +
                                                           "Startup Cost": 0.01,                                                                                         +
                                                           "Total Cost": 67925.24,                                                                                       +
                                                           "Plan Rows": 1271989,                                                                                         +
                                                           "Plan Width": 12,                                                                                             +
                                                           "Actual Startup Time": 23.042,                                                                                +
                                                           "Actual Total Time": 228.551,                                                                                 +
                                                           "Actual Rows": 49142,                                                                                         +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Filter": "(note IS NULL)",                                                                                   +
                                                           "Rows Removed by Filter": 50735,                                                                              +
                                                           "Shared Hit Blocks": 45837,                                                                                   +
                                                           "Shared Read Blocks": 983,                                                                                    +
                                                           "Shared Dirtied Blocks": 0,                                                                                   +
                                                           "Shared Written Blocks": 0,                                                                                   +
                                                           "Local Hit Blocks": 0,                                                                                        +
                                                           "Local Read Blocks": 0,                                                                                       +
                                                           "Local Dirtied Blocks": 0,                                                                                    +
                                                           "Local Written Blocks": 0,                                                                                    +
                                                           "Temp Read Blocks": 0,                                                                                        +
                                                           "Temp Written Blocks": 0                                                                                      +
                                                         },                                                                                                              +
                                                         {                                                                                                               +
                                                           "Node Type": "Sort",                                                                                          +
                                                           "Parent Relationship": "Inner",                                                                               +
                                                           "Parallel Aware": false,                                                                                      +
                                                           "Startup Cost": 84.04,                                                                                        +
                                                           "Total Cost": 84.17,                                                                                          +
                                                           "Plan Rows": 1666,                                                                                            +
                                                           "Plan Width": 16,                                                                                             +
                                                           "Actual Startup Time": 57.528,                                                                                +
                                                           "Actual Total Time": 58.122,                                                                                  +
                                                           "Actual Rows": 5369,                                                                                          +
                                                           "Actual Loops": 1,                                                                                            +
                                                           "Sort Key": ["ml.movie_id"],                                                                                  +
                                                           "Sort Method": "quicksort",                                                                                   +
                                                           "Sort Space Used": 205,                                                                                       +
                                                           "Sort Space Type": "Memory",                                                                                  +
                                                           "Shared Hit Blocks": 3,                                                                                       +
                                                           "Shared Read Blocks": 161,                                                                                    +
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
                                                               "Startup Cost": 76.50,                                                                                    +
                                                               "Total Cost": 81.27,                                                                                      +
                                                               "Plan Rows": 1666,                                                                                        +
                                                               "Plan Width": 16,                                                                                         +
                                                               "Actual Startup Time": 55.026,                                                                            +
                                                               "Actual Total Time": 56.214,                                                                              +
                                                               "Actual Rows": 2315,                                                                                      +
                                                               "Actual Loops": 1,                                                                                        +
                                                               "Inner Unique": false,                                                                                    +
                                                               "Merge Cond": "(lt.id = ml.link_type_id)",                                                                +
                                                               "Shared Hit Blocks": 3,                                                                                   +
                                                               "Shared Read Blocks": 161,                                                                                +
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
                                                                   "Startup Cost": 0.03,                                                                                 +
                                                                   "Total Cost": 0.03,                                                                                   +
                                                                   "Plan Rows": 1,                                                                                       +
                                                                   "Plan Width": 16,                                                                                     +
                                                                   "Actual Startup Time": 0.055,                                                                         +
                                                                   "Actual Total Time": 0.055,                                                                           +
                                                                   "Actual Rows": 2,                                                                                     +
                                                                   "Actual Loops": 1,                                                                                    +
                                                                   "Sort Key": ["lt.id"],                                                                                +
                                                                   "Sort Method": "quicksort",                                                                           +
                                                                   "Sort Space Used": 25,                                                                                +
                                                                   "Sort Space Type": "Memory",                                                                          +
                                                                   "Shared Hit Blocks": 1,                                                                               +
                                                                   "Shared Read Blocks": 0,                                                                              +
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
                                                                       "Relation Name": "link_type",                                                                     +
                                                                       "Alias": "lt",                                                                                    +
                                                                       "Startup Cost": 0.00,                                                                             +
                                                                       "Total Cost": 0.03,                                                                               +
                                                                       "Plan Rows": 1,                                                                                   +
                                                                       "Plan Width": 16,                                                                                 +
                                                                       "Actual Startup Time": 0.018,                                                                     +
                                                                       "Actual Total Time": 0.032,                                                                       +
                                                                       "Actual Rows": 2,                                                                                 +
                                                                       "Actual Loops": 1,                                                                                +
                                                                       "Filter": "((link)::text ~~ '%follow%'::text)",                                                   +
                                                                       "Rows Removed by Filter": 16,                                                                     +
                                                                       "Shared Hit Blocks": 1,                                                                           +
                                                                       "Shared Read Blocks": 0,                                                                          +
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
                                                                 },                                                                                                      +
                                                                 {                                                                                                       +
                                                                   "Node Type": "Sort",                                                                                  +
                                                                   "Parent Relationship": "Inner",                                                                       +
                                                                   "Parallel Aware": false,                                                                              +
                                                                   "Startup Cost": 76.46,                                                                                +
                                                                   "Total Cost": 78.79,                                                                                  +
                                                                   "Plan Rows": 29997,                                                                                   +
                                                                   "Plan Width": 8,                                                                                      +
                                                                   "Actual Startup Time": 54.964,                                                                        +
                                                                   "Actual Total Time": 55.226,                                                                          +
                                                                   "Actual Rows": 2316,                                                                                  +
                                                                   "Actual Loops": 1,                                                                                    +
                                                                   "Sort Key": ["ml.link_type_id"],                                                                      +
                                                                   "Sort Method": "quicksort",                                                                           +
                                                                   "Sort Space Used": 2175,                                                                              +
                                                                   "Sort Space Type": "Memory",                                                                          +
                                                                   "Shared Hit Blocks": 2,                                                                               +
                                                                   "Shared Read Blocks": 161,                                                                            +
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
                                                                       "Relation Name": "movie_link",                                                                    +
                                                                       "Alias": "ml",                                                                                    +
                                                                       "Startup Cost": 0.00,                                                                             +
                                                                       "Total Cost": 7.19,                                                                               +
                                                                       "Plan Rows": 29997,                                                                               +
                                                                       "Plan Width": 8,                                                                                  +
                                                                       "Actual Startup Time": 0.014,                                                                     +
                                                                       "Actual Total Time": 36.874,                                                                      +
                                                                       "Actual Rows": 29997,                                                                             +
                                                                       "Actual Loops": 1,                                                                                +
                                                                       "Shared Hit Blocks": 2,                                                                           +
                                                                       "Shared Read Blocks": 161,                                                                        +
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
                                                             }                                                                                                           +
                                                           ]                                                                                                             +
                                                         }                                                                                                               +
                                                       ]                                                                                                                 +
                                                     }                                                                                                                   +
                                                   ]                                                                                                                     +
                                                 },                                                                                                                      +
                                                 {                                                                                                                       +
                                                   "Node Type": "Sort",                                                                                                  +
                                                   "Parent Relationship": "Inner",                                                                                       +
                                                   "Parallel Aware": false,                                                                                              +
                                                   "Startup Cost": 283.87,                                                                                               +
                                                   "Total Cost": 287.69,                                                                                                 +
                                                   "Plan Rows": 49161,                                                                                                   +
                                                   "Plan Width": 23,                                                                                                     +
                                                   "Actual Startup Time": 161.572,                                                                                       +
                                                   "Actual Total Time": 163.172,                                                                                         +
                                                   "Actual Rows": 14201,                                                                                                 +
                                                   "Actual Loops": 1,                                                                                                    +
                                                   "Sort Key": ["cn.id"],                                                                                                +
                                                   "Sort Method": "quicksort",                                                                                           +
                                                   "Sort Space Used": 5023,                                                                                              +
                                                   "Sort Space Type": "Memory",                                                                                          +
                                                   "Shared Hit Blocks": 2,                                                                                               +
                                                   "Shared Read Blocks": 2992,                                                                                           +
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
                                                       "Relation Name": "company_name",                                                                                  +
                                                       "Alias": "cn",                                                                                                    +
                                                       "Startup Cost": 0.00,                                                                                             +
                                                       "Total Cost": 164.90,                                                                                             +
                                                       "Plan Rows": 49161,                                                                                               +
                                                       "Plan Width": 23,                                                                                                 +
                                                       "Actual Startup Time": 17.402,                                                                                    +
                                                       "Actual Total Time": 137.689,                                                                                     +
                                                       "Actual Rows": 48302,                                                                                             +
                                                       "Actual Loops": 1,                                                                                                +
                                                       "Filter": "(((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))",+
                                                       "Rows Removed by Filter": 186695,                                                                                 +
                                                       "Shared Hit Blocks": 2,                                                                                           +
                                                       "Shared Read Blocks": 2992,                                                                                       +
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
                                             }                                                                                                                           +
                                           ]                                                                                                                             +
                                         },                                                                                                                              +
                                         {                                                                                                                               +
                                           "Node Type": "Sort",                                                                                                          +
                                           "Parent Relationship": "Inner",                                                                                               +
                                           "Parallel Aware": false,                                                                                                      +
                                           "Startup Cost": 0.03,                                                                                                         +
                                           "Total Cost": 0.03,                                                                                                           +
                                           "Plan Rows": 1,                                                                                                               +
                                           "Plan Width": 4,                                                                                                              +
                                           "Actual Startup Time": 0.016,                                                                                                 +
                                           "Actual Total Time": 0.016,                                                                                                   +
                                           "Actual Rows": 1,                                                                                                             +
                                           "Actual Loops": 1,                                                                                                            +
                                           "Sort Key": ["ct.id"],                                                                                                        +
                                           "Sort Method": "quicksort",                                                                                                   +
                                           "Sort Space Used": 25,                                                                                                        +
                                           "Sort Space Type": "Memory",                                                                                                  +
                                           "Shared Hit Blocks": 1,                                                                                                       +
                                           "Shared Read Blocks": 0,                                                                                                      +
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
                                               "Node Type": "Seq Scan",                                                                                                  +
                                               "Parent Relationship": "Outer",                                                                                           +
                                               "Parallel Aware": false,                                                                                                  +
                                               "Relation Name": "company_type",                                                                                          +
                                               "Alias": "ct",                                                                                                            +
                                               "Startup Cost": 0.00,                                                                                                     +
                                               "Total Cost": 0.03,                                                                                                       +
                                               "Plan Rows": 1,                                                                                                           +
                                               "Plan Width": 4,                                                                                                          +
                                               "Actual Startup Time": 0.009,                                                                                             +
                                               "Actual Total Time": 0.010,                                                                                               +
                                               "Actual Rows": 1,                                                                                                         +
                                               "Actual Loops": 1,                                                                                                        +
                                               "Filter": "((kind)::text = 'production companies'::text)",                                                                +
                                               "Rows Removed by Filter": 3,                                                                                              +
                                               "Shared Hit Blocks": 1,                                                                                                   +
                                               "Shared Read Blocks": 0,                                                                                                  +
                                               "Shared Dirtied Blocks": 0,                                                                                               +
                                               "Shared Written Blocks": 0,                                                                                               +
                                               "Local Hit Blocks": 0,                                                                                                    +
                                               "Local Read Blocks": 0,                                                                                                   +
                                               "Local Dirtied Blocks": 0,                                                                                                +
                                               "Local Written Blocks": 0,                                                                                                +
                                               "Temp Read Blocks": 0,                                                                                                    +
                                               "Temp Written Blocks": 0                                                                                                  +
                                             }                                                                                                                           +
                                           ]                                                                                                                             +
                                         }                                                                                                                               +
                                       ]                                                                                                                                 +
                                     }                                                                                                                                   +
                                   ]                                                                                                                                     +
                                 }                                                                                                                                       +
                               ]                                                                                                                                         +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         },                                                                                                                                              +
                         {                                                                                                                                               +
                           "Node Type": "Sort",                                                                                                                          +
                           "Parent Relationship": "Inner",                                                                                                               +
                           "Parallel Aware": false,                                                                                                                      +
                           "Startup Cost": 6.13,                                                                                                                         +
                           "Total Cost": 6.13,                                                                                                                           +
                           "Plan Rows": 1,                                                                                                                               +
                           "Plan Width": 4,                                                                                                                              +
                           "Actual Startup Time": 40.700,                                                                                                                +
                           "Actual Total Time": 40.701,                                                                                                                  +
                           "Actual Rows": 1,                                                                                                                             +
                           "Actual Loops": 1,                                                                                                                            +
                           "Sort Key": ["k.id"],                                                                                                                         +
                           "Sort Method": "quicksort",                                                                                                                   +
                           "Sort Space Used": 25,                                                                                                                        +
                           "Sort Space Type": "Memory",                                                                                                                  +
                           "Shared Hit Blocks": 0,                                                                                                                       +
                           "Shared Read Blocks": 4,                                                                                                                      +
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
                               "Node Type": "Index Scan",                                                                                                                +
                               "Parent Relationship": "Outer",                                                                                                           +
                               "Parallel Aware": false,                                                                                                                  +
                               "Scan Direction": "Forward",                                                                                                              +
                               "Index Name": "keyword_idx_keyword",                                                                                                      +
                               "Relation Name": "keyword",                                                                                                               +
                               "Alias": "k",                                                                                                                             +
                               "Startup Cost": 0.01,                                                                                                                     +
                               "Total Cost": 6.13,                                                                                                                       +
                               "Plan Rows": 1,                                                                                                                           +
                               "Plan Width": 4,                                                                                                                          +
                               "Actual Startup Time": 40.682,                                                                                                            +
                               "Actual Total Time": 40.685,                                                                                                              +
                               "Actual Rows": 1,                                                                                                                         +
                               "Actual Loops": 1,                                                                                                                        +
                               "Index Cond": "(keyword = 'sequel'::text)",                                                                                               +
                               "Rows Removed by Index Recheck": 0,                                                                                                       +
                               "Shared Hit Blocks": 0,                                                                                                                   +
                               "Shared Read Blocks": 4,                                                                                                                  +
                               "Shared Dirtied Blocks": 0,                                                                                                               +
                               "Shared Written Blocks": 0,                                                                                                               +
                               "Local Hit Blocks": 0,                                                                                                                    +
                               "Local Read Blocks": 0,                                                                                                                   +
                               "Local Dirtied Blocks": 0,                                                                                                                +
                               "Local Written Blocks": 0,                                                                                                                +
                               "Temp Read Blocks": 0,                                                                                                                    +
                               "Temp Written Blocks": 0                                                                                                                  +
                             }                                                                                                                                           +
                           ]                                                                                                                                             +
                         }                                                                                                                                               +
                       ]                                                                                                                                                 +
                     }                                                                                                                                                   +
                   ]                                                                                                                                                     +
                 },                                                                                                                                                      +
                 {                                                                                                                                                       +
                   "Node Type": "Sort",                                                                                                                                  +
                   "Parent Relationship": "Inner",                                                                                                                       +
                   "Parallel Aware": false,                                                                                                                              +
                   "Startup Cost": 14173.08,                                                                                                                             +
                   "Total Cost": 14245.82,                                                                                                                               +
                   "Plan Rows": 936891,                                                                                                                                  +
                   "Plan Width": 4,                                                                                                                                      +
                   "Actual Startup Time": 8835.923,                                                                                                                      +
                   "Actual Total Time": 8838.268,                                                                                                                        +
                   "Actual Rows": 25800,                                                                                                                                 +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Sort Key": ["mi.movie_id"],                                                                                                                          +
                   "Sort Method": "quicksort",                                                                                                                           +
                   "Sort Space Used": 68462,                                                                                                                             +
                   "Sort Space Type": "Memory",                                                                                                                          +
                   "Shared Hit Blocks": 2,                                                                                                                               +
                   "Shared Read Blocks": 161890,                                                                                                                         +
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
                       "Node Type": "Seq Scan",                                                                                                                          +
                       "Parent Relationship": "Outer",                                                                                                                   +
                       "Parallel Aware": false,                                                                                                                          +
                       "Relation Name": "movie_info",                                                                                                                    +
                       "Alias": "mi",                                                                                                                                    +
                       "Startup Cost": 0.00,                                                                                                                             +
                       "Total Cost": 11287.12,                                                                                                                           +
                       "Plan Rows": 936891,                                                                                                                              +
                       "Plan Width": 4,                                                                                                                                  +
                       "Actual Startup Time": 25.309,                                                                                                                    +
                       "Actual Total Time": 8514.846,                                                                                                                    +
                       "Actual Rows": 936223,                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                +
                       "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))",                                     +
                       "Rows Removed by Filter": 13899497,                                                                                                               +
                       "Shared Hit Blocks": 2,                                                                                                                           +
                       "Shared Read Blocks": 161890,                                                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                                                       +
                       "Shared Written Blocks": 0,                                                                                                                       +
                       "Local Hit Blocks": 0,                                                                                                                            +
                       "Local Read Blocks": 0,                                                                                                                           +
                       "Local Dirtied Blocks": 0,                                                                                                                        +
                       "Local Written Blocks": 0,                                                                                                                        +
                       "Temp Read Blocks": 0,                                                                                                                            +
                       "Temp Written Blocks": 0                                                                                                                          +
                     }                                                                                                                                                   +
                   ]                                                                                                                                                     +
                 }                                                                                                                                                       +
               ]                                                                                                                                                         +
             },                                                                                                                                                          +
             {                                                                                                                                                           +
               "Node Type": "Index Scan",                                                                                                                                +
               "Parent Relationship": "Inner",                                                                                                                           +
               "Parallel Aware": false,                                                                                                                                  +
               "Scan Direction": "Forward",                                                                                                                              +
               "Index Name": "title_idx_id",                                                                                                                             +
               "Relation Name": "title",                                                                                                                                 +
               "Alias": "t",                                                                                                                                             +
               "Startup Cost": 0.01,                                                                                                                                     +
               "Total Cost": 23434.65,                                                                                                                                   +
               "Plan Rows": 1900368,                                                                                                                                     +
               "Plan Width": 21,                                                                                                                                         +
               "Actual Startup Time": 0.027,                                                                                                                             +
               "Actual Total Time": 730.087,                                                                                                                             +
               "Actual Rows": 107953,                                                                                                                                    +
               "Actual Loops": 1,                                                                                                                                        +
               "Filter": "((production_year >= 1950) AND (production_year <= 2010))",                                                                                    +
               "Rows Removed by Filter": 30982,                                                                                                                          +
               "Shared Hit Blocks": 135964,                                                                                                                              +
               "Shared Read Blocks": 3310,                                                                                                                               +
               "Shared Dirtied Blocks": 0,                                                                                                                               +
               "Shared Written Blocks": 0,                                                                                                                               +
               "Local Hit Blocks": 0,                                                                                                                                    +
               "Local Read Blocks": 0,                                                                                                                                   +
               "Local Dirtied Blocks": 0,                                                                                                                                +
               "Local Written Blocks": 0,                                                                                                                                +
               "Temp Read Blocks": 0,                                                                                                                                    +
               "Temp Written Blocks": 0                                                                                                                                  +
             }                                                                                                                                                           +
           ]                                                                                                                                                             +
         }                                                                                                                                                               +
       ]                                                                                                                                                                 +
     },                                                                                                                                                                  +
     "Planning Time": 6171.270,                                                                                                                                          +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 10315.093                                                                                                                                         +
   }                                                                                                                                                                     +
 ]
(1 row)

