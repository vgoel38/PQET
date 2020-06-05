                                                           QUERY PLAN                                                           
--------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                             +
   {                                                                                                                           +
     "Plan": {                                                                                                                 +
       "Node Type": "Aggregate",                                                                                               +
       "Strategy": "Plain",                                                                                                    +
       "Partial Mode": "Simple",                                                                                               +
       "Parallel Aware": false,                                                                                                +
       "Startup Cost": 6851.16,                                                                                                +
       "Total Cost": 6851.16,                                                                                                  +
       "Plan Rows": 1,                                                                                                         +
       "Plan Width": 96,                                                                                                       +
       "Actual Startup Time": 2018.925,                                                                                        +
       "Actual Total Time": 2018.926,                                                                                          +
       "Actual Rows": 1,                                                                                                       +
       "Actual Loops": 1,                                                                                                      +
       "Shared Hit Blocks": 224528,                                                                                            +
       "Shared Read Blocks": 8223,                                                                                             +
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
           "Startup Cost": 6818.54,                                                                                            +
           "Total Cost": 6851.16,                                                                                              +
           "Plan Rows": 12,                                                                                                    +
           "Plan Width": 60,                                                                                                   +
           "Actual Startup Time": 1999.712,                                                                                    +
           "Actual Total Time": 2005.125,                                                                                      +
           "Actual Rows": 14899,                                                                                               +
           "Actual Loops": 1,                                                                                                  +
           "Inner Unique": true,                                                                                               +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                            +
           "Shared Hit Blocks": 224528,                                                                                        +
           "Shared Read Blocks": 8223,                                                                                         +
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
               "Startup Cost": 6113.52,                                                                                        +
               "Total Cost": 6113.52,                                                                                          +
               "Plan Rows": 13,                                                                                                +
               "Plan Width": 45,                                                                                               +
               "Actual Startup Time": 1795.462,                                                                                +
               "Actual Total Time": 1796.439,                                                                                  +
               "Actual Rows": 14916,                                                                                           +
               "Actual Loops": 1,                                                                                              +
               "Sort Key": ["mc.company_id"],                                                                                  +
               "Sort Method": "quicksort",                                                                                     +
               "Sort Space Used": 1733,                                                                                        +
               "Sort Space Type": "Memory",                                                                                    +
               "Shared Hit Blocks": 224526,                                                                                    +
               "Shared Read Blocks": 5231,                                                                                     +
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
                   "Startup Cost": 6113.51,                                                                                    +
                   "Total Cost": 6113.51,                                                                                      +
                   "Plan Rows": 13,                                                                                            +
                   "Plan Width": 45,                                                                                           +
                   "Actual Startup Time": 1785.988,                                                                            +
                   "Actual Total Time": 1790.908,                                                                              +
                   "Actual Rows": 14916,                                                                                       +
                   "Actual Loops": 1,                                                                                          +
                   "Inner Unique": true,                                                                                       +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                               +
                   "Shared Hit Blocks": 224522,                                                                                +
                   "Shared Read Blocks": 5231,                                                                                 +
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
                       "Startup Cost": 6113.48,                                                                                +
                       "Total Cost": 6113.48,                                                                                  +
                       "Plan Rows": 17,                                                                                        +
                       "Plan Width": 49,                                                                                       +
                       "Actual Startup Time": 1785.959,                                                                        +
                       "Actual Total Time": 1786.850,                                                                          +
                       "Actual Rows": 15510,                                                                                   +
                       "Actual Loops": 1,                                                                                      +
                       "Sort Key": ["mc.company_type_id"],                                                                     +
                       "Sort Method": "quicksort",                                                                             +
                       "Sort Space Used": 1984,                                                                                +
                       "Sort Space Type": "Memory",                                                                            +
                       "Shared Hit Blocks": 224521,                                                                            +
                       "Shared Read Blocks": 5231,                                                                             +
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
                           "Startup Cost": 3508.64,                                                                            +
                           "Total Cost": 6113.47,                                                                              +
                           "Plan Rows": 17,                                                                                    +
                           "Plan Width": 49,                                                                                   +
                           "Actual Startup Time": 1577.451,                                                                    +
                           "Actual Total Time": 1774.430,                                                                      +
                           "Actual Rows": 15510,                                                                               +
                           "Actual Loops": 1,                                                                                  +
                           "Inner Unique": false,                                                                              +
                           "Merge Cond": "(mc.movie_id = ml.movie_id)",                                                        +
                           "Shared Hit Blocks": 224521,                                                                        +
                           "Shared Read Blocks": 5231,                                                                         +
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
                               "Node Type": "Index Scan",                                                                      +
                               "Parent Relationship": "Outer",                                                                 +
                               "Parallel Aware": false,                                                                        +
                               "Scan Direction": "Forward",                                                                    +
                               "Index Name": "movie_id_movie_companies",                                                       +
                               "Relation Name": "movie_companies",                                                             +
                               "Alias": "mc",                                                                                  +
                               "Startup Cost": 0.01,                                                                           +
                               "Total Cost": 67925.24,                                                                         +
                               "Plan Rows": 1337140,                                                                           +
                               "Plan Width": 36,                                                                               +
                               "Actual Startup Time": 0.036,                                                                   +
                               "Actual Total Time": 198.467,                                                                   +
                               "Actual Rows": 42219,                                                                           +
                               "Actual Loops": 1,                                                                              +
                               "Filter": "(note IS NOT NULL)",                                                                 +
                               "Rows Removed by Filter": 41437,                                                                +
                               "Shared Hit Blocks": 38060,                                                                     +
                               "Shared Read Blocks": 824,                                                                      +
                               "Shared Dirtied Blocks": 0,                                                                     +
                               "Shared Written Blocks": 0,                                                                     +
                               "Local Hit Blocks": 0,                                                                          +
                               "Local Read Blocks": 0,                                                                         +
                               "Local Dirtied Blocks": 0,                                                                      +
                               "Local Written Blocks": 0,                                                                      +
                               "Temp Read Blocks": 0,                                                                          +
                               "Temp Written Blocks": 0                                                                        +
                             },                                                                                                +
                             {                                                                                                 +
                               "Node Type": "Sort",                                                                            +
                               "Parent Relationship": "Inner",                                                                 +
                               "Parallel Aware": false,                                                                        +
                               "Startup Cost": 3508.62,                                                                        +
                               "Total Cost": 3508.62,                                                                          +
                               "Plan Rows": 6,                                                                                 +
                               "Plan Width": 29,                                                                               +
                               "Actual Startup Time": 1552.393,                                                                +
                               "Actual Total Time": 1554.814,                                                                  +
                               "Actual Rows": 15913,                                                                           +
                               "Actual Loops": 1,                                                                              +
                               "Sort Key": ["mk.movie_id"],                                                                    +
                               "Sort Method": "quicksort",                                                                     +
                               "Sort Space Used": 159,                                                                         +
                               "Sort Space Type": "Memory",                                                                    +
                               "Shared Hit Blocks": 186461,                                                                    +
                               "Shared Read Blocks": 4407,                                                                     +
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
                                   "Startup Cost": 3508.62,                                                                    +
                                   "Total Cost": 3508.62,                                                                      +
                                   "Plan Rows": 6,                                                                             +
                                   "Plan Width": 29,                                                                           +
                                   "Actual Startup Time": 1551.032,                                                            +
                                   "Actual Total Time": 1551.732,                                                              +
                                   "Actual Rows": 1460,                                                                        +
                                   "Actual Loops": 1,                                                                          +
                                   "Inner Unique": true,                                                                       +
                                   "Merge Cond": "(ml.link_type_id = lt.id)",                                                  +
                                   "Shared Hit Blocks": 186461,                                                                +
                                   "Shared Read Blocks": 4407,                                                                 +
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
                                       "Startup Cost": 3508.57,                                                                +
                                       "Total Cost": 3508.57,                                                                  +
                                       "Plan Rows": 6,                                                                         +
                                       "Plan Width": 33,                                                                       +
                                       "Actual Startup Time": 1551.005,                                                        +
                                       "Actual Total Time": 1551.128,                                                          +
                                       "Actual Rows": 1460,                                                                    +
                                       "Actual Loops": 1,                                                                      +
                                       "Sort Key": ["ml.link_type_id"],                                                        +
                                       "Sort Method": "quicksort",                                                             +
                                       "Sort Space Used": 166,                                                                 +
                                       "Sort Space Type": "Memory",                                                            +
                                       "Shared Hit Blocks": 186460,                                                            +
                                       "Shared Read Blocks": 4407,                                                             +
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
                                           "Startup Cost": 3466.20,                                                            +
                                           "Total Cost": 3508.57,                                                              +
                                           "Plan Rows": 6,                                                                     +
                                           "Plan Width": 33,                                                                   +
                                           "Actual Startup Time": 1548.020,                                                    +
                                           "Actual Total Time": 1550.406,                                                      +
                                           "Actual Rows": 1460,                                                                +
                                           "Actual Loops": 1,                                                                  +
                                           "Inner Unique": true,                                                               +
                                           "Merge Cond": "(mk.keyword_id = k.id)",                                             +
                                           "Shared Hit Blocks": 186460,                                                        +
                                           "Shared Read Blocks": 4407,                                                         +
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
                                               "Startup Cost": 3447.80,                                                        +
                                               "Total Cost": 3468.98,                                                          +
                                               "Plan Rows": 272866,                                                            +
                                               "Plan Width": 37,                                                               +
                                               "Actual Startup Time": 1473.443,                                                +
                                               "Actual Total Time": 1484.608,                                                  +
                                               "Actual Rows": 48583,                                                           +
                                               "Actual Loops": 1,                                                              +
                                               "Sort Key": ["mk.keyword_id"],                                                  +
                                               "Sort Method": "quicksort",                                                     +
                                               "Sort Space Used": 36870,                                                       +
                                               "Sort Space Type": "Memory",                                                    +
                                               "Shared Hit Blocks": 186454,                                                    +
                                               "Shared Read Blocks": 4398,                                                     +
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
                                                   "Startup Cost": 76.50,                                                      +
                                                   "Total Cost": 2682.68,                                                      +
                                                   "Plan Rows": 272866,                                                        +
                                                   "Plan Width": 37,                                                           +
                                                   "Actual Startup Time": 68.691,                                              +
                                                   "Actual Total Time": 1339.828,                                              +
                                                   "Actual Rows": 286392,                                                      +
                                                   "Actual Loops": 1,                                                          +
                                                   "Inner Unique": false,                                                      +
                                                   "Merge Cond": "(ml.movie_id = mk.movie_id)",                                +
                                                   "Shared Hit Blocks": 186454,                                                +
                                                   "Shared Read Blocks": 4398,                                                 +
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
                                                       "Node Type": "Merge Join",                                              +
                                                       "Parent Relationship": "Outer",                                         +
                                                       "Parallel Aware": false,                                                +
                                                       "Join Type": "Inner",                                                   +
                                                       "Startup Cost": 76.49,                                                  +
                                                       "Total Cost": 1807.26,                                                  +
                                                       "Plan Rows": 27137,                                                     +
                                                       "Plan Width": 29,                                                       +
                                                       "Actual Startup Time": 68.655,                                          +
                                                       "Actual Total Time": 932.232,                                           +
                                                       "Actual Rows": 29726,                                                   +
                                                       "Actual Loops": 1,                                                      +
                                                       "Inner Unique": false,                                                  +
                                                       "Merge Cond": "(t.id = ml.movie_id)",                                   +
                                                       "Shared Hit Blocks": 183180,                                            +
                                                       "Shared Read Blocks": 3600,                                             +
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
                                                           "Node Type": "Index Scan",                                          +
                                                           "Parent Relationship": "Outer",                                     +
                                                           "Parallel Aware": false,                                            +
                                                           "Scan Direction": "Forward",                                        +
                                                           "Index Name": "title_idx_id",                                       +
                                                           "Relation Name": "title",                                           +
                                                           "Alias": "t",                                                       +
                                                           "Startup Cost": 0.01,                                               +
                                                           "Total Cost": 23238.35,                                             +
                                                           "Plan Rows": 2287272,                                               +
                                                           "Plan Width": 21,                                                   +
                                                           "Actual Startup Time": 0.037,                                       +
                                                           "Actual Total Time": 841.184,                                       +
                                                           "Actual Rows": 177925,                                              +
                                                           "Actual Loops": 1,                                                  +
                                                           "Filter": "(production_year > 1950)",                               +
                                                           "Rows Removed by Filter": 8251,                                     +
                                                           "Shared Hit Blocks": 183178,                                        +
                                                           "Shared Read Blocks": 3439,                                         +
                                                           "Shared Dirtied Blocks": 0,                                         +
                                                           "Shared Written Blocks": 0,                                         +
                                                           "Local Hit Blocks": 0,                                              +
                                                           "Local Read Blocks": 0,                                             +
                                                           "Local Dirtied Blocks": 0,                                          +
                                                           "Local Written Blocks": 0,                                          +
                                                           "Temp Read Blocks": 0,                                              +
                                                           "Temp Written Blocks": 0                                            +
                                                         },                                                                    +
                                                         {                                                                     +
                                                           "Node Type": "Sort",                                                +
                                                           "Parent Relationship": "Inner",                                     +
                                                           "Parallel Aware": false,                                            +
                                                           "Startup Cost": 76.46,                                              +
                                                           "Total Cost": 78.79,                                                +
                                                           "Plan Rows": 29997,                                                 +
                                                           "Plan Width": 8,                                                    +
                                                           "Actual Startup Time": 48.634,                                      +
                                                           "Actual Total Time": 52.255,                                        +
                                                           "Actual Rows": 29997,                                               +
                                                           "Actual Loops": 1,                                                  +
                                                           "Sort Key": ["ml.movie_id"],                                        +
                                                           "Sort Method": "quicksort",                                         +
                                                           "Sort Space Used": 2175,                                            +
                                                           "Sort Space Type": "Memory",                                        +
                                                           "Shared Hit Blocks": 2,                                             +
                                                           "Shared Read Blocks": 161,                                          +
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
                                                               "Node Type": "Seq Scan",                                        +
                                                               "Parent Relationship": "Outer",                                 +
                                                               "Parallel Aware": false,                                        +
                                                               "Relation Name": "movie_link",                                  +
                                                               "Alias": "ml",                                                  +
                                                               "Startup Cost": 0.00,                                           +
                                                               "Total Cost": 7.19,                                             +
                                                               "Plan Rows": 29997,                                             +
                                                               "Plan Width": 8,                                                +
                                                               "Actual Startup Time": 0.014,                                   +
                                                               "Actual Total Time": 29.449,                                    +
                                                               "Actual Rows": 29997,                                           +
                                                               "Actual Loops": 1,                                              +
                                                               "Shared Hit Blocks": 2,                                         +
                                                               "Shared Read Blocks": 161,                                      +
                                                               "Shared Dirtied Blocks": 0,                                     +
                                                               "Shared Written Blocks": 0,                                     +
                                                               "Local Hit Blocks": 0,                                          +
                                                               "Local Read Blocks": 0,                                         +
                                                               "Local Dirtied Blocks": 0,                                      +
                                                               "Local Written Blocks": 0,                                      +
                                                               "Temp Read Blocks": 0,                                          +
                                                               "Temp Written Blocks": 0                                        +
                                                             }                                                                 +
                                                           ]                                                                   +
                                                         }                                                                     +
                                                       ]                                                                       +
                                                     },                                                                        +
                                                     {                                                                         +
                                                       "Node Type": "Index Scan",                                              +
                                                       "Parent Relationship": "Inner",                                         +
                                                       "Parallel Aware": false,                                                +
                                                       "Scan Direction": "Forward",                                            +
                                                       "Index Name": "movie_id_movie_keyword",                                 +
                                                       "Relation Name": "movie_keyword",                                       +
                                                       "Alias": "mk",                                                          +
                                                       "Startup Cost": 0.01,                                                   +
                                                       "Total Cost": 39285.80,                                                 +
                                                       "Plan Rows": 4523930,                                                   +
                                                       "Plan Width": 8,                                                        +
                                                       "Actual Startup Time": 0.030,                                           +
                                                       "Actual Total Time": 299.163,                                           +
                                                       "Actual Rows": 359530,                                                  +
                                                       "Actual Loops": 1,                                                      +
                                                       "Shared Hit Blocks": 3274,                                              +
                                                       "Shared Read Blocks": 798,                                              +
                                                       "Shared Dirtied Blocks": 0,                                             +
                                                       "Shared Written Blocks": 0,                                             +
                                                       "Local Hit Blocks": 0,                                                  +
                                                       "Local Read Blocks": 0,                                                 +
                                                       "Local Dirtied Blocks": 0,                                              +
                                                       "Local Written Blocks": 0,                                              +
                                                       "Temp Read Blocks": 0,                                                  +
                                                       "Temp Written Blocks": 0                                                +
                                                     }                                                                         +
                                                   ]                                                                           +
                                                 }                                                                             +
                                               ]                                                                               +
                                             },                                                                                +
                                             {                                                                                 +
                                               "Node Type": "Sort",                                                            +
                                               "Parent Relationship": "Inner",                                                 +
                                               "Parallel Aware": false,                                                        +
                                               "Startup Cost": 18.40,                                                          +
                                               "Total Cost": 18.40,                                                            +
                                               "Plan Rows": 3,                                                                 +
                                               "Plan Width": 4,                                                                +
                                               "Actual Startup Time": 49.942,                                                  +
                                               "Actual Total Time": 49.943,                                                    +
                                               "Actual Rows": 3,                                                               +
                                               "Actual Loops": 1,                                                              +
                                               "Sort Key": ["k.id"],                                                           +
                                               "Sort Method": "quicksort",                                                     +
                                               "Sort Space Used": 25,                                                          +
                                               "Sort Space Type": "Memory",                                                    +
                                               "Shared Hit Blocks": 6,                                                         +
                                               "Shared Read Blocks": 9,                                                        +
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
                                                   "Node Type": "Index Scan",                                                  +
                                                   "Parent Relationship": "Outer",                                             +
                                                   "Parallel Aware": false,                                                    +
                                                   "Scan Direction": "Forward",                                                +
                                                   "Index Name": "keyword_idx_keyword",                                        +
                                                   "Relation Name": "keyword",                                                 +
                                                   "Alias": "k",                                                               +
                                                   "Startup Cost": 0.01,                                                       +
                                                   "Total Cost": 18.40,                                                        +
                                                   "Plan Rows": 3,                                                             +
                                                   "Plan Width": 4,                                                            +
                                                   "Actual Startup Time": 23.264,                                              +
                                                   "Actual Total Time": 49.921,                                                +
                                                   "Actual Rows": 3,                                                           +
                                                   "Actual Loops": 1,                                                          +
                                                   "Index Cond": "(keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))",+
                                                   "Rows Removed by Index Recheck": 0,                                         +
                                                   "Shared Hit Blocks": 6,                                                     +
                                                   "Shared Read Blocks": 9,                                                    +
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
                                       "Startup Cost": 0.04,                                                                   +
                                       "Total Cost": 0.05,                                                                     +
                                       "Plan Rows": 18,                                                                        +
                                       "Plan Width": 4,                                                                        +
                                       "Actual Startup Time": 0.023,                                                           +
                                       "Actual Total Time": 0.024,                                                             +
                                       "Actual Rows": 16,                                                                      +
                                       "Actual Loops": 1,                                                                      +
                                       "Sort Key": ["lt.id"],                                                                  +
                                       "Sort Method": "quicksort",                                                             +
                                       "Sort Space Used": 25,                                                                  +
                                       "Sort Space Type": "Memory",                                                            +
                                       "Shared Hit Blocks": 1,                                                                 +
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
                                           "Relation Name": "link_type",                                                       +
                                           "Alias": "lt",                                                                      +
                                           "Startup Cost": 0.00,                                                               +
                                           "Total Cost": 0.03,                                                                 +
                                           "Plan Rows": 18,                                                                    +
                                           "Plan Width": 4,                                                                    +
                                           "Actual Startup Time": 0.009,                                                       +
                                           "Actual Total Time": 0.013,                                                         +
                                           "Actual Rows": 18,                                                                  +
                                           "Actual Loops": 1,                                                                  +
                                           "Shared Hit Blocks": 1,                                                             +
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
                             }                                                                                                 +
                           ]                                                                                                   +
                         }                                                                                                     +
                       ]                                                                                                       +
                     },                                                                                                        +
                     {                                                                                                         +
                       "Node Type": "Sort",                                                                                    +
                       "Parent Relationship": "Inner",                                                                         +
                       "Parallel Aware": false,                                                                                +
                       "Startup Cost": 0.03,                                                                                   +
                       "Total Cost": 0.03,                                                                                     +
                       "Plan Rows": 3,                                                                                         +
                       "Plan Width": 4,                                                                                        +
                       "Actual Startup Time": 0.023,                                                                           +
                       "Actual Total Time": 0.023,                                                                             +
                       "Actual Rows": 2,                                                                                       +
                       "Actual Loops": 1,                                                                                      +
                       "Sort Key": ["ct.id"],                                                                                  +
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
                           "Relation Name": "company_type",                                                                    +
                           "Alias": "ct",                                                                                      +
                           "Startup Cost": 0.00,                                                                               +
                           "Total Cost": 0.03,                                                                                 +
                           "Plan Rows": 3,                                                                                     +
                           "Plan Width": 4,                                                                                    +
                           "Actual Startup Time": 0.012,                                                                       +
                           "Actual Total Time": 0.014,                                                                         +
                           "Actual Rows": 3,                                                                                   +
                           "Actual Loops": 1,                                                                                  +
                           "Filter": "((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))",                +
                           "Rows Removed by Filter": 1,                                                                        +
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
                     }                                                                                                         +
                   ]                                                                                                           +
                 }                                                                                                             +
               ]                                                                                                               +
             },                                                                                                                +
             {                                                                                                                 +
               "Node Type": "Sort",                                                                                            +
               "Parent Relationship": "Inner",                                                                                 +
               "Parallel Aware": false,                                                                                        +
               "Startup Cost": 705.02,                                                                                         +
               "Total Cost": 721.33,                                                                                           +
               "Plan Rows": 210031,                                                                                            +
               "Plan Width": 23,                                                                                               +
               "Actual Startup Time": 204.240,                                                                                 +
               "Actual Total Time": 204.604,                                                                                   +
               "Actual Rows": 2526,                                                                                            +
               "Actual Loops": 1,                                                                                              +
               "Sort Key": ["cn.id"],                                                                                          +
               "Sort Method": "quicksort",                                                                                     +
               "Sort Space Used": 21419,                                                                                       +
               "Sort Space Type": "Memory",                                                                                    +
               "Shared Hit Blocks": 2,                                                                                         +
               "Shared Read Blocks": 2992,                                                                                     +
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
                   "Relation Name": "company_name",                                                                            +
                   "Alias": "cn",                                                                                              +
                   "Startup Cost": 0.00,                                                                                       +
                   "Total Cost": 128.41,                                                                                       +
                   "Plan Rows": 210031,                                                                                        +
                   "Plan Width": 23,                                                                                           +
                   "Actual Startup Time": 17.697,                                                                              +
                   "Actual Total Time": 101.739,                                                                               +
                   "Actual Rows": 210031,                                                                                      +
                   "Actual Loops": 1,                                                                                          +
                   "Filter": "((country_code)::text <> '[pl]'::text)",                                                         +
                   "Rows Removed by Filter": 24966,                                                                            +
                   "Shared Hit Blocks": 2,                                                                                     +
                   "Shared Read Blocks": 2992,                                                                                 +
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
     "Planning Time": 3566.789,                                                                                                +
     "Triggers": [                                                                                                             +
     ],                                                                                                                        +
     "Execution Time": 2052.166                                                                                                +
   }                                                                                                                           +
 ]
(1 row)

