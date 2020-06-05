                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                       +
   {                                                                                                                                                                     +
     "Plan": {                                                                                                                                                           +
       "Node Type": "Aggregate",                                                                                                                                         +
       "Strategy": "Plain",                                                                                                                                              +
       "Partial Mode": "Simple",                                                                                                                                         +
       "Parallel Aware": false,                                                                                                                                          +
       "Startup Cost": 13148.50,                                                                                                                                         +
       "Total Cost": 13148.50,                                                                                                                                           +
       "Plan Rows": 1,                                                                                                                                                   +
       "Plan Width": 96,                                                                                                                                                 +
       "Actual Startup Time": 9938.869,                                                                                                                                  +
       "Actual Total Time": 9938.869,                                                                                                                                    +
       "Actual Rows": 1,                                                                                                                                                 +
       "Actual Loops": 1,                                                                                                                                                +
       "Shared Hit Blocks": 182105,                                                                                                                                      +
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
           "Startup Cost": 11416.27,                                                                                                                                     +
           "Total Cost": 13148.50,                                                                                                                                       +
           "Plan Rows": 1,                                                                                                                                               +
           "Plan Width": 48,                                                                                                                                             +
           "Actual Startup Time": 9938.593,                                                                                                                              +
           "Actual Total Time": 9938.813,                                                                                                                                +
           "Actual Rows": 38,                                                                                                                                            +
           "Actual Loops": 1,                                                                                                                                            +
           "Inner Unique": true,                                                                                                                                         +
           "Merge Cond": "(ml.movie_id = t.id)",                                                                                                                         +
           "Shared Hit Blocks": 182105,                                                                                                                                  +
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
               "Startup Cost": 11416.25,                                                                                                                                 +
               "Total Cost": 11416.88,                                                                                                                                   +
               "Plan Rows": 1,                                                                                                                                           +
               "Plan Width": 47,                                                                                                                                         +
               "Actual Startup Time": 9075.001,                                                                                                                          +
               "Actual Total Time": 9076.064,                                                                                                                            +
               "Actual Rows": 308,                                                                                                                                       +
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
                   "Actual Startup Time": 650.552,                                                                                                                       +
                   "Actual Total Time": 650.588,                                                                                                                         +
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
                       "Actual Startup Time": 640.460,                                                                                                                   +
                       "Actual Total Time": 640.917,                                                                                                                     +
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
                           "Actual Startup Time": 600.901,                                                                                                               +
                           "Actual Total Time": 601.339,                                                                                                                 +
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
                               "Actual Startup Time": 476.523,                                                                                                           +
                               "Actual Total Time": 596.938,                                                                                                             +
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
                                   "Actual Total Time": 109.715,                                                                                                         +
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
                                   "Actual Startup Time": 462.122,                                                                                                       +
                                   "Actual Total Time": 462.739,                                                                                                         +
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
                                       "Actual Startup Time": 461.468,                                                                                                   +
                                       "Actual Total Time": 461.799,                                                                                                     +
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
                                           "Actual Startup Time": 461.439,                                                                                               +
                                           "Actual Total Time": 461.500,                                                                                                 +
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
                                               "Actual Startup Time": 456.290,                                                                                           +
                                               "Actual Total Time": 461.124,                                                                                             +
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
                                                   "Actual Startup Time": 296.280,                                                                                       +
                                                   "Actual Total Time": 296.699,                                                                                         +
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
                                                       "Actual Startup Time": 80.907,                                                                                    +
                                                       "Actual Total Time": 293.433,                                                                                     +
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
                                                           "Actual Startup Time": 23.045,                                                                                +
                                                           "Actual Total Time": 222.771,                                                                                 +
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
                                                           "Actual Startup Time": 57.558,                                                                                +
                                                           "Actual Total Time": 58.057,                                                                                  +
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
                                                               "Actual Startup Time": 55.376,                                                                            +
                                                               "Actual Total Time": 56.459,                                                                              +
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
                                                                   "Actual Total Time": 0.056,                                                                           +
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
                                                                   "Actual Startup Time": 55.313,                                                                        +
                                                                   "Actual Total Time": 55.558,                                                                          +
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
                                                                       "Actual Total Time": 36.705,                                                                      +
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
                                                   "Actual Startup Time": 159.995,                                                                                       +
                                                   "Actual Total Time": 161.625,                                                                                         +
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
                                                       "Actual Startup Time": 15.937,                                                                                    +
                                                       "Actual Total Time": 135.312,                                                                                     +
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
                           "Actual Startup Time": 38.380,                                                                                                                +
                           "Actual Total Time": 38.380,                                                                                                                  +
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
                               "Actual Startup Time": 38.363,                                                                                                            +
                               "Actual Total Time": 38.366,                                                                                                              +
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
                   "Startup Cost": 7560.76,                                                                                                                              +
                   "Total Cost": 7569.83,                                                                                                                                +
                   "Plan Rows": 116723,                                                                                                                                  +
                   "Plan Width": 4,                                                                                                                                      +
                   "Actual Startup Time": 8424.333,                                                                                                                      +
                   "Actual Total Time": 8424.668,                                                                                                                        +
                   "Actual Rows": 2738,                                                                                                                                  +
                   "Actual Loops": 1,                                                                                                                                    +
                   "Sort Key": ["mi.movie_id"],                                                                                                                          +
                   "Sort Method": "quicksort",                                                                                                                           +
                   "Sort Space Used": 8536,                                                                                                                              +
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
                       "Total Cost": 7255.68,                                                                                                                            +
                       "Plan Rows": 116723,                                                                                                                              +
                       "Plan Width": 4,                                                                                                                                  +
                       "Actual Startup Time": 27.838,                                                                                                                    +
                       "Actual Total Time": 8374.247,                                                                                                                    +
                       "Actual Rows": 116559,                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                                +
                       "Filter": "(info = ANY ('{Germany,German}'::text[]))",                                                                                            +
                       "Rows Removed by Filter": 14719161,                                                                                                               +
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
               "Plan Rows": 1042800,                                                                                                                                     +
               "Plan Width": 21,                                                                                                                                         +
               "Actual Startup Time": 26.546,                                                                                                                            +
               "Actual Total Time": 854.776,                                                                                                                             +
               "Actual Rows": 67419,                                                                                                                                     +
               "Actual Loops": 1,                                                                                                                                        +
               "Filter": "((production_year >= 2000) AND (production_year <= 2010))",                                                                                    +
               "Rows Removed by Filter": 71517,                                                                                                                          +
               "Shared Hit Blocks": 135965,                                                                                                                              +
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
     "Planning Time": 5778.358,                                                                                                                                          +
     "Triggers": [                                                                                                                                                       +
     ],                                                                                                                                                                  +
     "Execution Time": 9964.712                                                                                                                                          +
   }                                                                                                                                                                     +
 ]
(1 row)

