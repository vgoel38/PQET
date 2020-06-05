                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                              +
   {                                                                                                                                                                            +
     "Plan": {                                                                                                                                                                  +
       "Node Type": "Aggregate",                                                                                                                                                +
       "Strategy": "Plain",                                                                                                                                                     +
       "Partial Mode": "Simple",                                                                                                                                                +
       "Parallel Aware": false,                                                                                                                                                 +
       "Startup Cost": 16440.08,                                                                                                                                                +
       "Total Cost": 16440.08,                                                                                                                                                  +
       "Plan Rows": 1,                                                                                                                                                          +
       "Plan Width": 68,                                                                                                                                                        +
       "Actual Startup Time": 5115.871,                                                                                                                                         +
       "Actual Total Time": 5115.872,                                                                                                                                           +
       "Actual Rows": 1,                                                                                                                                                        +
       "Actual Loops": 1,                                                                                                                                                       +
       "Shared Hit Blocks": 11,                                                                                                                                                 +
       "Shared Read Blocks": 63235,                                                                                                                                             +
       "Shared Dirtied Blocks": 0,                                                                                                                                              +
       "Shared Written Blocks": 0,                                                                                                                                              +
       "Local Hit Blocks": 0,                                                                                                                                                   +
       "Local Read Blocks": 0,                                                                                                                                                  +
       "Local Dirtied Blocks": 0,                                                                                                                                               +
       "Local Written Blocks": 0,                                                                                                                                               +
       "Temp Read Blocks": 0,                                                                                                                                                   +
       "Temp Written Blocks": 0,                                                                                                                                                +
       "Plans": [                                                                                                                                                               +
         {                                                                                                                                                                      +
           "Node Type": "Merge Join",                                                                                                                                           +
           "Parent Relationship": "Outer",                                                                                                                                      +
           "Parallel Aware": false,                                                                                                                                             +
           "Join Type": "Inner",                                                                                                                                                +
           "Startup Cost": 16045.39,                                                                                                                                            +
           "Total Cost": 16440.07,                                                                                                                                              +
           "Plan Rows": 42,                                                                                                                                                     +
           "Plan Width": 45,                                                                                                                                                    +
           "Actual Startup Time": 4882.612,                                                                                                                                     +
           "Actual Total Time": 5115.740,                                                                                                                                       +
           "Actual Rows": 142,                                                                                                                                                  +
           "Actual Loops": 1,                                                                                                                                                   +
           "Inner Unique": true,                                                                                                                                                +
           "Merge Cond": "(mc.movie_id = t.id)",                                                                                                                                +
           "Shared Hit Blocks": 11,                                                                                                                                             +
           "Shared Read Blocks": 63235,                                                                                                                                         +
           "Shared Dirtied Blocks": 0,                                                                                                                                          +
           "Shared Written Blocks": 0,                                                                                                                                          +
           "Local Hit Blocks": 0,                                                                                                                                               +
           "Local Read Blocks": 0,                                                                                                                                              +
           "Local Dirtied Blocks": 0,                                                                                                                                           +
           "Local Written Blocks": 0,                                                                                                                                           +
           "Temp Read Blocks": 0,                                                                                                                                               +
           "Temp Written Blocks": 0,                                                                                                                                            +
           "Plans": [                                                                                                                                                           +
             {                                                                                                                                                                  +
               "Node Type": "Merge Join",                                                                                                                                       +
               "Parent Relationship": "Outer",                                                                                                                                  +
               "Parallel Aware": false,                                                                                                                                         +
               "Join Type": "Inner",                                                                                                                                            +
               "Startup Cost": 6391.04,                                                                                                                                         +
               "Total Cost": 6393.52,                                                                                                                                           +
               "Plan Rows": 42,                                                                                                                                                 +
               "Plan Width": 32,                                                                                                                                                +
               "Actual Startup Time": 1889.006,                                                                                                                                 +
               "Actual Total Time": 1893.186,                                                                                                                                   +
               "Actual Rows": 142,                                                                                                                                              +
               "Actual Loops": 1,                                                                                                                                               +
               "Inner Unique": false,                                                                                                                                           +
               "Merge Cond": "(mc.movie_id = mi_idx.movie_id)",                                                                                                                 +
               "Shared Hit Blocks": 10,                                                                                                                                         +
               "Shared Read Blocks": 27238,                                                                                                                                     +
               "Shared Dirtied Blocks": 0,                                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                                           +
               "Temp Written Blocks": 0,                                                                                                                                        +
               "Plans": [                                                                                                                                                       +
                 {                                                                                                                                                              +
                   "Node Type": "Sort",                                                                                                                                         +
                   "Parent Relationship": "Outer",                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                     +
                   "Startup Cost": 1418.81,                                                                                                                                     +
                   "Total Cost": 1419.10,                                                                                                                                       +
                   "Plan Rows": 3709,                                                                                                                                           +
                   "Plan Width": 28,                                                                                                                                            +
                   "Actual Startup Time": 1038.467,                                                                                                                             +
                   "Actual Total Time": 1040.052,                                                                                                                               +
                   "Actual Rows": 28348,                                                                                                                                        +
                   "Actual Loops": 1,                                                                                                                                           +
                   "Sort Key": ["mc.movie_id"],                                                                                                                                 +
                   "Sort Method": "quicksort",                                                                                                                                  +
                   "Sort Space Used": 2821,                                                                                                                                     +
                   "Sort Space Type": "Memory",                                                                                                                                 +
                   "Shared Hit Blocks": 7,                                                                                                                                      +
                   "Shared Read Blocks": 18787,                                                                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                                       +
                   "Temp Written Blocks": 0,                                                                                                                                    +
                   "Plans": [                                                                                                                                                   +
                     {                                                                                                                                                          +
                       "Node Type": "Merge Join",                                                                                                                               +
                       "Parent Relationship": "Outer",                                                                                                                          +
                       "Parallel Aware": false,                                                                                                                                 +
                       "Join Type": "Inner",                                                                                                                                    +
                       "Startup Cost": 1409.42,                                                                                                                                 +
                       "Total Cost": 1411.98,                                                                                                                                   +
                       "Plan Rows": 3709,                                                                                                                                       +
                       "Plan Width": 28,                                                                                                                                        +
                       "Actual Startup Time": 1005.292,                                                                                                                         +
                       "Actual Total Time": 1012.068,                                                                                                                           +
                       "Actual Rows": 28657,                                                                                                                                    +
                       "Actual Loops": 1,                                                                                                                                       +
                       "Inner Unique": false,                                                                                                                                   +
                       "Merge Cond": "(ct.id = mc.company_type_id)",                                                                                                            +
                       "Shared Hit Blocks": 3,                                                                                                                                  +
                       "Shared Read Blocks": 18787,                                                                                                                             +
                       "Shared Dirtied Blocks": 0,                                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                                   +
                       "Temp Written Blocks": 0,                                                                                                                                +
                       "Plans": [                                                                                                                                               +
                         {                                                                                                                                                      +
                           "Node Type": "Sort",                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                      +
                           "Parallel Aware": false,                                                                                                                             +
                           "Startup Cost": 0.03,                                                                                                                                +
                           "Total Cost": 0.03,                                                                                                                                  +
                           "Plan Rows": 1,                                                                                                                                      +
                           "Plan Width": 4,                                                                                                                                     +
                           "Actual Startup Time": 0.066,                                                                                                                        +
                           "Actual Total Time": 0.066,                                                                                                                          +
                           "Actual Rows": 1,                                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                                   +
                           "Sort Key": ["ct.id"],                                                                                                                               +
                           "Sort Method": "quicksort",                                                                                                                          +
                           "Sort Space Used": 25,                                                                                                                               +
                           "Sort Space Type": "Memory",                                                                                                                         +
                           "Shared Hit Blocks": 1,                                                                                                                              +
                           "Shared Read Blocks": 0,                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                          +
                           "Shared Written Blocks": 0,                                                                                                                          +
                           "Local Hit Blocks": 0,                                                                                                                               +
                           "Local Read Blocks": 0,                                                                                                                              +
                           "Local Dirtied Blocks": 0,                                                                                                                           +
                           "Local Written Blocks": 0,                                                                                                                           +
                           "Temp Read Blocks": 0,                                                                                                                               +
                           "Temp Written Blocks": 0,                                                                                                                            +
                           "Plans": [                                                                                                                                           +
                             {                                                                                                                                                  +
                               "Node Type": "Seq Scan",                                                                                                                         +
                               "Parent Relationship": "Outer",                                                                                                                  +
                               "Parallel Aware": false,                                                                                                                         +
                               "Relation Name": "company_type",                                                                                                                 +
                               "Alias": "ct",                                                                                                                                   +
                               "Startup Cost": 0.00,                                                                                                                            +
                               "Total Cost": 0.03,                                                                                                                              +
                               "Plan Rows": 1,                                                                                                                                  +
                               "Plan Width": 4,                                                                                                                                 +
                               "Actual Startup Time": 0.048,                                                                                                                    +
                               "Actual Total Time": 0.051,                                                                                                                      +
                               "Actual Rows": 1,                                                                                                                                +
                               "Actual Loops": 1,                                                                                                                               +
                               "Filter": "((kind)::text = 'production companies'::text)",                                                                                       +
                               "Rows Removed by Filter": 3,                                                                                                                     +
                               "Shared Hit Blocks": 1,                                                                                                                          +
                               "Shared Read Blocks": 0,                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                      +
                               "Shared Written Blocks": 0,                                                                                                                      +
                               "Local Hit Blocks": 0,                                                                                                                           +
                               "Local Read Blocks": 0,                                                                                                                          +
                               "Local Dirtied Blocks": 0,                                                                                                                       +
                               "Local Written Blocks": 0,                                                                                                                       +
                               "Temp Read Blocks": 0,                                                                                                                           +
                               "Temp Written Blocks": 0                                                                                                                         +
                             }                                                                                                                                                  +
                           ]                                                                                                                                                    +
                         },                                                                                                                                                     +
                         {                                                                                                                                                      +
                           "Node Type": "Sort",                                                                                                                                 +
                           "Parent Relationship": "Inner",                                                                                                                      +
                           "Parallel Aware": false,                                                                                                                             +
                           "Startup Cost": 1409.39,                                                                                                                             +
                           "Total Cost": 1410.54,                                                                                                                               +
                           "Plan Rows": 14835,                                                                                                                                  +
                           "Plan Width": 32,                                                                                                                                    +
                           "Actual Startup Time": 1005.185,                                                                                                                     +
                           "Actual Total Time": 1006.540,                                                                                                                       +
                           "Actual Rows": 28889,                                                                                                                                +
                           "Actual Loops": 1,                                                                                                                                   +
                           "Sort Key": ["mc.company_type_id"],                                                                                                                  +
                           "Sort Method": "quicksort",                                                                                                                          +
                           "Sort Space Used": 3123,                                                                                                                             +
                           "Sort Space Type": "Memory",                                                                                                                         +
                           "Shared Hit Blocks": 2,                                                                                                                              +
                           "Shared Read Blocks": 18787,                                                                                                                         +
                           "Shared Dirtied Blocks": 0,                                                                                                                          +
                           "Shared Written Blocks": 0,                                                                                                                          +
                           "Local Hit Blocks": 0,                                                                                                                               +
                           "Local Read Blocks": 0,                                                                                                                              +
                           "Local Dirtied Blocks": 0,                                                                                                                           +
                           "Local Written Blocks": 0,                                                                                                                           +
                           "Temp Read Blocks": 0,                                                                                                                               +
                           "Temp Written Blocks": 0,                                                                                                                            +
                           "Plans": [                                                                                                                                           +
                             {                                                                                                                                                  +
                               "Node Type": "Seq Scan",                                                                                                                         +
                               "Parent Relationship": "Outer",                                                                                                                  +
                               "Parallel Aware": false,                                                                                                                         +
                               "Relation Name": "movie_companies",                                                                                                              +
                               "Alias": "mc",                                                                                                                                   +
                               "Startup Cost": 0.00,                                                                                                                            +
                               "Total Cost": 1377.47,                                                                                                                           +
                               "Plan Rows": 14835,                                                                                                                              +
                               "Plan Width": 32,                                                                                                                                +
                               "Actual Startup Time": 116.940,                                                                                                                  +
                               "Actual Total Time": 994.950,                                                                                                                    +
                               "Actual Rows": 28889,                                                                                                                            +
                               "Actual Loops": 1,                                                                                                                               +
                               "Filter": "((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))",+
                               "Rows Removed by Filter": 2580240,                                                                                                               +
                               "Shared Hit Blocks": 2,                                                                                                                          +
                               "Shared Read Blocks": 18787,                                                                                                                     +
                               "Shared Dirtied Blocks": 0,                                                                                                                      +
                               "Shared Written Blocks": 0,                                                                                                                      +
                               "Local Hit Blocks": 0,                                                                                                                           +
                               "Local Read Blocks": 0,                                                                                                                          +
                               "Local Dirtied Blocks": 0,                                                                                                                       +
                               "Local Written Blocks": 0,                                                                                                                       +
                               "Temp Read Blocks": 0,                                                                                                                           +
                               "Temp Written Blocks": 0                                                                                                                         +
                             }                                                                                                                                                  +
                           ]                                                                                                                                                    +
                         }                                                                                                                                                      +
                       ]                                                                                                                                                        +
                     }                                                                                                                                                          +
                   ]                                                                                                                                                            +
                 },                                                                                                                                                             +
                 {                                                                                                                                                              +
                   "Node Type": "Sort",                                                                                                                                         +
                   "Parent Relationship": "Inner",                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                     +
                   "Startup Cost": 4972.23,                                                                                                                                     +
                   "Total Cost": 4973.18,                                                                                                                                       +
                   "Plan Rows": 12213,                                                                                                                                          +
                   "Plan Width": 4,                                                                                                                                             +
                   "Actual Startup Time": 849.919,                                                                                                                              +
                   "Actual Total Time": 849.964,                                                                                                                                +
                   "Actual Rows": 287,                                                                                                                                          +
                   "Actual Loops": 1,                                                                                                                                           +
                   "Sort Key": ["mi_idx.movie_id"],                                                                                                                             +
                   "Sort Method": "quicksort",                                                                                                                                  +
                   "Sort Space Used": 36,                                                                                                                                       +
                   "Sort Space Type": "Memory",                                                                                                                                 +
                   "Shared Hit Blocks": 3,                                                                                                                                      +
                   "Shared Read Blocks": 8451,                                                                                                                                  +
                   "Shared Dirtied Blocks": 0,                                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                                       +
                   "Temp Written Blocks": 0,                                                                                                                                    +
                   "Plans": [                                                                                                                                                   +
                     {                                                                                                                                                          +
                       "Node Type": "Merge Join",                                                                                                                               +
                       "Parent Relationship": "Outer",                                                                                                                          +
                       "Parallel Aware": false,                                                                                                                                 +
                       "Join Type": "Inner",                                                                                                                                    +
                       "Startup Cost": 4731.35,                                                                                                                                 +
                       "Total Cost": 4946.49,                                                                                                                                   +
                       "Plan Rows": 12213,                                                                                                                                      +
                       "Plan Width": 4,                                                                                                                                         +
                       "Actual Startup Time": 849.791,                                                                                                                          +
                       "Actual Total Time": 849.848,                                                                                                                            +
                       "Actual Rows": 250,                                                                                                                                      +
                       "Actual Loops": 1,                                                                                                                                       +
                       "Inner Unique": false,                                                                                                                                   +
                       "Merge Cond": "(it.id = mi_idx.info_type_id)",                                                                                                           +
                       "Shared Hit Blocks": 3,                                                                                                                                  +
                       "Shared Read Blocks": 8451,                                                                                                                              +
                       "Shared Dirtied Blocks": 0,                                                                                                                              +
                       "Shared Written Blocks": 0,                                                                                                                              +
                       "Local Hit Blocks": 0,                                                                                                                                   +
                       "Local Read Blocks": 0,                                                                                                                                  +
                       "Local Dirtied Blocks": 0,                                                                                                                               +
                       "Local Written Blocks": 0,                                                                                                                               +
                       "Temp Read Blocks": 0,                                                                                                                                   +
                       "Temp Written Blocks": 0,                                                                                                                                +
                       "Plans": [                                                                                                                                               +
                         {                                                                                                                                                      +
                           "Node Type": "Sort",                                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                                      +
                           "Parallel Aware": false,                                                                                                                             +
                           "Startup Cost": 0.05,                                                                                                                                +
                           "Total Cost": 0.05,                                                                                                                                  +
                           "Plan Rows": 1,                                                                                                                                      +
                           "Plan Width": 4,                                                                                                                                     +
                           "Actual Startup Time": 0.024,                                                                                                                        +
                           "Actual Total Time": 0.024,                                                                                                                          +
                           "Actual Rows": 1,                                                                                                                                    +
                           "Actual Loops": 1,                                                                                                                                   +
                           "Sort Key": ["it.id"],                                                                                                                               +
                           "Sort Method": "quicksort",                                                                                                                          +
                           "Sort Space Used": 25,                                                                                                                               +
                           "Sort Space Type": "Memory",                                                                                                                         +
                           "Shared Hit Blocks": 1,                                                                                                                              +
                           "Shared Read Blocks": 0,                                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                                          +
                           "Shared Written Blocks": 0,                                                                                                                          +
                           "Local Hit Blocks": 0,                                                                                                                               +
                           "Local Read Blocks": 0,                                                                                                                              +
                           "Local Dirtied Blocks": 0,                                                                                                                           +
                           "Local Written Blocks": 0,                                                                                                                           +
                           "Temp Read Blocks": 0,                                                                                                                               +
                           "Temp Written Blocks": 0,                                                                                                                            +
                           "Plans": [                                                                                                                                           +
                             {                                                                                                                                                  +
                               "Node Type": "Seq Scan",                                                                                                                         +
                               "Parent Relationship": "Outer",                                                                                                                  +
                               "Parallel Aware": false,                                                                                                                         +
                               "Relation Name": "info_type",                                                                                                                    +
                               "Alias": "it",                                                                                                                                   +
                               "Startup Cost": 0.00,                                                                                                                            +
                               "Total Cost": 0.05,                                                                                                                              +
                               "Plan Rows": 1,                                                                                                                                  +
                               "Plan Width": 4,                                                                                                                                 +
                               "Actual Startup Time": 0.020,                                                                                                                    +
                               "Actual Total Time": 0.021,                                                                                                                      +
                               "Actual Rows": 1,                                                                                                                                +
                               "Actual Loops": 1,                                                                                                                               +
                               "Filter": "((info)::text = 'top 250 rank'::text)",                                                                                               +
                               "Rows Removed by Filter": 112,                                                                                                                   +
                               "Shared Hit Blocks": 1,                                                                                                                          +
                               "Shared Read Blocks": 0,                                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                                      +
                               "Shared Written Blocks": 0,                                                                                                                      +
                               "Local Hit Blocks": 0,                                                                                                                           +
                               "Local Read Blocks": 0,                                                                                                                          +
                               "Local Dirtied Blocks": 0,                                                                                                                       +
                               "Local Written Blocks": 0,                                                                                                                       +
                               "Temp Read Blocks": 0,                                                                                                                           +
                               "Temp Written Blocks": 0                                                                                                                         +
                             }                                                                                                                                                  +
                           ]                                                                                                                                                    +
                         },                                                                                                                                                     +
                         {                                                                                                                                                      +
                           "Node Type": "Sort",                                                                                                                                 +
                           "Parent Relationship": "Inner",                                                                                                                      +
                           "Parallel Aware": false,                                                                                                                             +
                           "Startup Cost": 4731.30,                                                                                                                             +
                           "Total Cost": 4838.45,                                                                                                                               +
                           "Plan Rows": 1380035,                                                                                                                                +
                           "Plan Width": 8,                                                                                                                                     +
                           "Actual Startup Time": 644.323,                                                                                                                      +
                           "Actual Total Time": 711.022,                                                                                                                        +
                           "Actual Rows": 1380026,                                                                                                                              +
                           "Actual Loops": 1,                                                                                                                                   +
                           "Sort Key": ["mi_idx.info_type_id"],                                                                                                                 +
                           "Sort Method": "quicksort",                                                                                                                          +
                           "Sort Space Used": 113842,                                                                                                                           +
                           "Sort Space Type": "Memory",                                                                                                                         +
                           "Shared Hit Blocks": 2,                                                                                                                              +
                           "Shared Read Blocks": 8451,                                                                                                                          +
                           "Shared Dirtied Blocks": 0,                                                                                                                          +
                           "Shared Written Blocks": 0,                                                                                                                          +
                           "Local Hit Blocks": 0,                                                                                                                               +
                           "Local Read Blocks": 0,                                                                                                                              +
                           "Local Dirtied Blocks": 0,                                                                                                                           +
                           "Local Written Blocks": 0,                                                                                                                           +
                           "Temp Read Blocks": 0,                                                                                                                               +
                           "Temp Written Blocks": 0,                                                                                                                            +
                           "Plans": [                                                                                                                                           +
                             {                                                                                                                                                  +
                               "Node Type": "Seq Scan",                                                                                                                         +
                               "Parent Relationship": "Outer",                                                                                                                  +
                               "Parallel Aware": false,                                                                                                                         +
                               "Relation Name": "movie_info_idx",                                                                                                               +
                               "Alias": "mi_idx",                                                                                                                               +
                               "Startup Cost": 0.00,                                                                                                                            +
                               "Total Cost": 360.56,                                                                                                                            +
                               "Plan Rows": 1380035,                                                                                                                            +
                               "Plan Width": 8,                                                                                                                                 +
                               "Actual Startup Time": 0.005,                                                                                                                    +
                               "Actual Total Time": 341.581,                                                                                                                    +
                               "Actual Rows": 1380035,                                                                                                                          +
                               "Actual Loops": 1,                                                                                                                               +
                               "Shared Hit Blocks": 2,                                                                                                                          +
                               "Shared Read Blocks": 8451,                                                                                                                      +
                               "Shared Dirtied Blocks": 0,                                                                                                                      +
                               "Shared Written Blocks": 0,                                                                                                                      +
                               "Local Hit Blocks": 0,                                                                                                                           +
                               "Local Read Blocks": 0,                                                                                                                          +
                               "Local Dirtied Blocks": 0,                                                                                                                       +
                               "Local Written Blocks": 0,                                                                                                                       +
                               "Temp Read Blocks": 0,                                                                                                                           +
                               "Temp Written Blocks": 0                                                                                                                         +
                             }                                                                                                                                                  +
                           ]                                                                                                                                                    +
                         }                                                                                                                                                      +
                       ]                                                                                                                                                        +
                     }                                                                                                                                                          +
                   ]                                                                                                                                                            +
                 }                                                                                                                                                              +
               ]                                                                                                                                                                +
             },                                                                                                                                                                 +
             {                                                                                                                                                                  +
               "Node Type": "Sort",                                                                                                                                             +
               "Parent Relationship": "Inner",                                                                                                                                  +
               "Parallel Aware": false,                                                                                                                                         +
               "Startup Cost": 9654.35,                                                                                                                                         +
               "Total Cost": 9850.65,                                                                                                                                           +
               "Plan Rows": 2528312,                                                                                                                                            +
               "Plan Width": 25,                                                                                                                                                +
               "Actual Startup Time": 2544.065,                                                                                                                                 +
               "Actual Total Time": 2854.304,                                                                                                                                   +
               "Actual Rows": 2471561,                                                                                                                                          +
               "Actual Loops": 1,                                                                                                                                               +
               "Sort Key": ["t.id"],                                                                                                                                            +
               "Sort Method": "quicksort",                                                                                                                                      +
               "Sort Space Used": 289432,                                                                                                                                       +
               "Sort Space Type": "Memory",                                                                                                                                     +
               "Shared Hit Blocks": 1,                                                                                                                                          +
               "Shared Read Blocks": 35997,                                                                                                                                     +
               "Shared Dirtied Blocks": 0,                                                                                                                                      +
               "Shared Written Blocks": 0,                                                                                                                                      +
               "Local Hit Blocks": 0,                                                                                                                                           +
               "Local Read Blocks": 0,                                                                                                                                          +
               "Local Dirtied Blocks": 0,                                                                                                                                       +
               "Local Written Blocks": 0,                                                                                                                                       +
               "Temp Read Blocks": 0,                                                                                                                                           +
               "Temp Written Blocks": 0,                                                                                                                                        +
               "Plans": [                                                                                                                                                       +
                 {                                                                                                                                                              +
                   "Node Type": "Seq Scan",                                                                                                                                     +
                   "Parent Relationship": "Outer",                                                                                                                              +
                   "Parallel Aware": false,                                                                                                                                     +
                   "Relation Name": "title",                                                                                                                                    +
                   "Alias": "t",                                                                                                                                                +
                   "Startup Cost": 0.00,                                                                                                                                        +
                   "Total Cost": 1303.96,                                                                                                                                       +
                   "Plan Rows": 2528312,                                                                                                                                        +
                   "Plan Width": 25,                                                                                                                                            +
                   "Actual Startup Time": 15.808,                                                                                                                               +
                   "Actual Total Time": 1204.026,                                                                                                                               +
                   "Actual Rows": 2528312,                                                                                                                                      +
                   "Actual Loops": 1,                                                                                                                                           +
                   "Shared Hit Blocks": 1,                                                                                                                                      +
                   "Shared Read Blocks": 35997,                                                                                                                                 +
                   "Shared Dirtied Blocks": 0,                                                                                                                                  +
                   "Shared Written Blocks": 0,                                                                                                                                  +
                   "Local Hit Blocks": 0,                                                                                                                                       +
                   "Local Read Blocks": 0,                                                                                                                                      +
                   "Local Dirtied Blocks": 0,                                                                                                                                   +
                   "Local Written Blocks": 0,                                                                                                                                   +
                   "Temp Read Blocks": 0,                                                                                                                                       +
                   "Temp Written Blocks": 0                                                                                                                                     +
                 }                                                                                                                                                              +
               ]                                                                                                                                                                +
             }                                                                                                                                                                  +
           ]                                                                                                                                                                    +
         }                                                                                                                                                                      +
       ]                                                                                                                                                                        +
     },                                                                                                                                                                         +
     "Planning Time": 2481.372,                                                                                                                                                 +
     "Triggers": [                                                                                                                                                              +
     ],                                                                                                                                                                         +
     "Execution Time": 5155.674                                                                                                                                                 +
   }                                                                                                                                                                            +
 ]
(1 row)

