                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 16711.67,                                                                                                                                         +
       "Total Cost": 16711.67,                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 96,                                                                                                                                                 +
       "Actual Startup Time": 10068.679,                                                                                                                                 +
       "Actual Total Time": 10068.679,                                                                                                                                   +
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
           "Startup Cost": 14979.99,                                                                                                                                     +
           "Total Cost": 16711.67,                                                                                                                                       +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 48,                                                                                                                                             +
           "Actual Startup Time": 9954.456,                                                                                                                              +
           "Actual Total Time": 10041.712,                                                                                                                               +
           "Actual Rows": 1410,                                                                                                                                          +
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
               "Startup Cost": 14979.98,                                                                                                                                 +
               "Total Cost": 14980.81,                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 47,                                                                                                                                         +
               "Actual Startup Time": 9321.274,                                                                                                                          +
               "Actual Total Time": 9322.597,                                                                                                                            +
               "Actual Rows": 1816,                                                                                                                                      +
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
                   "Actual Startup Time": 717.241,                                                                                                                       +
                   "Actual Total Time": 717.279,                                                                                                                         +
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
                       "Actual Startup Time": 707.156,                                                                                                                   +
                       "Actual Total Time": 707.616,                                                                                                                     +
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
                           "Actual Startup Time": 664.547,                                                                                                               +
                           "Actual Total Time": 664.975,                                                                                                                 +
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
                               "Actual Startup Time": 534.837,                                                                                                           +
                               "Actual Total Time": 660.158,                                                                                                             +
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
                                   "Actual Startup Time": 0.030,                                                                                                         +
                                   "Actual Total Time": 113.372,                                                                                                         +
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
                                   "Actual Startup Time": 520.544,                                                                                                       +
                                   "Actual Total Time": 521.162,                                                                                                         +
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
                                       "Actual Startup Time": 519.893,                                                                                                   +
                                       "Actual Total Time": 520.219,                                                                                                     +
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
                                           "Actual Startup Time": 519.866,                                                                                               +
                                           "Actual Total Time": 519.925,                                                                                                 +
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
                                               "Actual Startup Time": 514.768,                                                                                           +
                                               "Actual Total Time": 519.541,                                                                                             +
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
                                                   "Actual Startup Time": 353.661,                                                                                       +
                                                   "Actual Total Time": 354.065,                                                                                         +
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
                                                       "Actual Startup Time": 81.669,                                                                                    +
                                                       "Actual Total Time": 349.183,                                                                                     +
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
                                                           "Actual Startup Time": 23.048,                                                                                +
                                                           "Actual Total Time": 273.315,                                                                                 +
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
                                                           "Actual Startup Time": 58.302,                                                                                +
                                                           "Actual Total Time": 59.156,                                                                                  +
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
                                                               "Actual Startup Time": 56.121,                                                                            +
                                                               "Actual Total Time": 57.165,                                                                              +
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
                                                                   "Actual Startup Time": 0.052,                                                                         +
                                                                   "Actual Total Time": 0.052,                                                                           +
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
                                                                       "Actual Total Time": 0.033,                                                                       +
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
                                                                   "Actual Startup Time": 56.062,                                                                        +
                                                                   "Actual Total Time": 56.300,                                                                          +
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
                                                                       "Actual Startup Time": 0.013,                                                                     +
                                                                       "Actual Total Time": 40.518,                                                                      +
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
                                                   "Actual Startup Time": 161.095,                                                                                       +
                                                   "Actual Total Time": 162.692,                                                                                         +
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
                                                       "Actual Startup Time": 16.828,                                                                                    +
                                                       "Actual Total Time": 136.830,                                                                                     +
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
                                           "Actual Startup Time": 0.015,                                                                                                 +
                                           "Actual Total Time": 0.015,                                                                                                   +
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
                                               "Actual Startup Time": 0.008,                                                                                             +
                                               "Actual Total Time": 0.009,                                                                                               +
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
                           "Actual Startup Time": 41.433,                                                                                                                +
                           "Actual Total Time": 41.434,                                                                                                                  +
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
                               "Actual Startup Time": 41.414,                                                                                                            +
                               "Actual Total Time": 41.418,                                                                                                              +
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
                   "Startup Cost": 11124.49,                                                                                                                             +
                   "Total Cost": 11136.48,                                                                                                                               +
                   "Plan Rows": 154416,                                                                                                                                  +
                   "Plan Width": 4,                                                                                                                                      +
                   "Actual Startup Time": 8603.872,                                                                                                                      +
                   "Actual Total Time": 8604.231,                                                                                                                        +
                   "Actual Rows": 5015,                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Sort Key": ["mi.movie_id"],                                                                                                                          +
                   "Sort Method": "quicksort",                                                                                                                           +
                   "Sort Space Used": 13358,                                                                                                                             +
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
                       "Total Cost": 10711.20,                                                                                                                           +
                       "Plan Rows": 154416,                                                                                                                              +
                       "Plan Width": 4,                                                                                                                                  +
                       "Actual Startup Time": 30.874,                                                                                                                    +
                       "Actual Total Time": 8548.911,                                                                                                                    +
                       "Actual Rows": 153897,                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                +
                       "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))",                                             +
                       "Rows Removed by Filter": 14681823,                                                                                                               +
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
               "Plan Rows": 910581,                                                                                                                                      +
               "Plan Width": 21,                                                                                                                                         +
               "Actual Startup Time": 0.020,                                                                                                                             +
               "Actual Total Time": 713.930,                                                                                                                             +
               "Actual Rows": 44153,                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                        +
               "Filter": "((production_year >= 1950) AND (production_year <= 2000))",                                                                                    +
               "Rows Removed by Filter": 94782,                                                                                                                          +
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
     "Planning Time": 5800.776,                                                                                                                                          +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 10097.570                                                                                                                                         +
   }                                                                                                                                                                     +
 ]
(1 row)

