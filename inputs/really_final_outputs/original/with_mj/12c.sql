                                                        QUERY PLAN                                                        
--------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                       +
   {                                                                                                                     +
     "Plan": {                                                                                                           +
       "Node Type": "Aggregate",                                                                                         +
       "Strategy": "Plain",                                                                                              +
       "Partial Mode": "Simple",                                                                                         +
       "Parallel Aware": false,                                                                                          +
       "Startup Cost": 25678.91,                                                                                         +
       "Total Cost": 25678.91,                                                                                           +
       "Plan Rows": 1,                                                                                                   +
       "Plan Width": 96,                                                                                                 +
       "Actual Startup Time": 13716.997,                                                                                 +
       "Actual Total Time": 13716.997,                                                                                   +
       "Actual Rows": 1,                                                                                                 +
       "Actual Loops": 1,                                                                                                +
       "Shared Hit Blocks": 17,                                                                                          +
       "Shared Read Blocks": 228116,                                                                                     +
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
           "Startup Cost": 25665.74,                                                                                     +
           "Total Cost": 25678.91,                                                                                       +
           "Plan Rows": 1,                                                                                               +
           "Plan Width": 42,                                                                                             +
           "Actual Startup Time": 13655.205,                                                                             +
           "Actual Total Time": 13698.385,                                                                               +
           "Actual Rows": 4711,                                                                                          +
           "Actual Loops": 1,                                                                                            +
           "Inner Unique": true,                                                                                         +
           "Merge Cond": "(mc.company_id = cn.id)",                                                                      +
           "Shared Hit Blocks": 17,                                                                                      +
           "Shared Read Blocks": 228116,                                                                                 +
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
               "Node Type": "Sort",                                                                                      +
               "Parent Relationship": "Outer",                                                                           +
               "Parallel Aware": false,                                                                                  +
               "Startup Cost": 25321.63,                                                                                 +
               "Total Cost": 25321.63,                                                                                   +
               "Plan Rows": 1,                                                                                           +
               "Plan Width": 27,                                                                                         +
               "Actual Startup Time": 13441.809,                                                                         +
               "Actual Total Time": 13444.806,                                                                           +
               "Actual Rows": 15537,                                                                                     +
               "Actual Loops": 1,                                                                                        +
               "Sort Key": ["mc.company_id"],                                                                            +
               "Sort Method": "quicksort",                                                                               +
               "Sort Space Used": 1539,                                                                                  +
               "Sort Space Type": "Memory",                                                                              +
               "Shared Hit Blocks": 15,                                                                                  +
               "Shared Read Blocks": 225124,                                                                             +
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
                   "Node Type": "Merge Join",                                                                            +
                   "Parent Relationship": "Outer",                                                                       +
                   "Parallel Aware": false,                                                                              +
                   "Join Type": "Inner",                                                                                 +
                   "Startup Cost": 25321.61,                                                                             +
                   "Total Cost": 25321.63,                                                                               +
                   "Plan Rows": 1,                                                                                       +
                   "Plan Width": 27,                                                                                     +
                   "Actual Startup Time": 13432.041,                                                                     +
                   "Actual Total Time": 13436.233,                                                                       +
                   "Actual Rows": 15537,                                                                                 +
                   "Actual Loops": 1,                                                                                    +
                   "Inner Unique": true,                                                                                 +
                   "Merge Cond": "(mi.info_type_id = it1.id)",                                                           +
                   "Shared Hit Blocks": 11,                                                                              +
                   "Shared Read Blocks": 225124,                                                                         +
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
                       "Node Type": "Sort",                                                                              +
                       "Parent Relationship": "Outer",                                                                   +
                       "Parallel Aware": false,                                                                          +
                       "Startup Cost": 25321.56,                                                                         +
                       "Total Cost": 25321.57,                                                                           +
                       "Plan Rows": 132,                                                                                 +
                       "Plan Width": 31,                                                                                 +
                       "Actual Startup Time": 13432.014,                                                                 +
                       "Actual Total Time": 13432.744,                                                                   +
                       "Actual Rows": 15537,                                                                             +
                       "Actual Loops": 1,                                                                                +
                       "Sort Key": ["mi.info_type_id"],                                                                  +
                       "Sort Method": "quicksort",                                                                       +
                       "Sort Space Used": 1624,                                                                          +
                       "Sort Space Type": "Memory",                                                                      +
                       "Shared Hit Blocks": 10,                                                                          +
                       "Shared Read Blocks": 225124,                                                                     +
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
                           "Node Type": "Merge Join",                                                                    +
                           "Parent Relationship": "Outer",                                                               +
                           "Parallel Aware": false,                                                                      +
                           "Join Type": "Inner",                                                                         +
                           "Startup Cost": 25321.36,                                                                     +
                           "Total Cost": 25321.42,                                                                       +
                           "Plan Rows": 132,                                                                             +
                           "Plan Width": 31,                                                                             +
                           "Actual Startup Time": 13424.194,                                                             +
                           "Actual Total Time": 13428.620,                                                               +
                           "Actual Rows": 15537,                                                                         +
                           "Actual Loops": 1,                                                                            +
                           "Inner Unique": true,                                                                         +
                           "Merge Cond": "(mc.company_type_id = ct.id)",                                                 +
                           "Shared Hit Blocks": 10,                                                                      +
                           "Shared Read Blocks": 225124,                                                                 +
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
                               "Node Type": "Sort",                                                                      +
                               "Parent Relationship": "Outer",                                                           +
                               "Parallel Aware": false,                                                                  +
                               "Startup Cost": 25321.33,                                                                 +
                               "Total Cost": 25321.35,                                                                   +
                               "Plan Rows": 355,                                                                         +
                               "Plan Width": 35,                                                                         +
                               "Actual Startup Time": 13419.785,                                                         +
                               "Actual Total Time": 13421.982,                                                           +
                               "Actual Rows": 45006,                                                                     +
                               "Actual Loops": 1,                                                                        +
                               "Sort Key": ["mc.company_type_id"],                                                       +
                               "Sort Method": "quicksort",                                                               +
                               "Sort Space Used": 5210,                                                                  +
                               "Sort Space Type": "Memory",                                                              +
                               "Shared Hit Blocks": 9,                                                                   +
                               "Shared Read Blocks": 225124,                                                             +
                               "Shared Dirtied Blocks": 0,                                                               +
                               "Shared Written Blocks": 0,                                                               +
                               "Local Hit Blocks": 0,                                                                    +
                               "Local Read Blocks": 0,                                                                   +
                               "Local Dirtied Blocks": 0,                                                                +
                               "Local Written Blocks": 0,                                                                +
                               "Temp Read Blocks": 0,                                                                    +
                               "Temp Written Blocks": 0,                                                                 +
                               "Plans": [                                                                                +
                                 {                                                                                       +
                                   "Node Type": "Merge Join",                                                            +
                                   "Parent Relationship": "Outer",                                                       +
                                   "Parallel Aware": false,                                                              +
                                   "Join Type": "Inner",                                                                 +
                                   "Startup Cost": 24703.20,                                                             +
                                   "Total Cost": 25320.86,                                                               +
                                   "Plan Rows": 355,                                                                     +
                                   "Plan Width": 35,                                                                     +
                                   "Actual Startup Time": 12583.383,                                                     +
                                   "Actual Total Time": 13407.418,                                                       +
                                   "Actual Rows": 45006,                                                                 +
                                   "Actual Loops": 1,                                                                    +
                                   "Inner Unique": false,                                                                +
                                   "Merge Cond": "(t.id = mi.movie_id)",                                                 +
                                   "Shared Hit Blocks": 9,                                                               +
                                   "Shared Read Blocks": 225124,                                                         +
                                   "Shared Dirtied Blocks": 0,                                                           +
                                   "Shared Written Blocks": 0,                                                           +
                                   "Local Hit Blocks": 0,                                                                +
                                   "Local Read Blocks": 0,                                                               +
                                   "Local Dirtied Blocks": 0,                                                            +
                                   "Local Written Blocks": 0,                                                            +
                                   "Temp Read Blocks": 0,                                                                +
                                   "Temp Written Blocks": 0,                                                             +
                                   "Plans": [                                                                            +
                                     {                                                                                   +
                                       "Node Type": "Merge Join",                                                        +
                                       "Parent Relationship": "Outer",                                                   +
                                       "Parallel Aware": false,                                                          +
                                       "Join Type": "Inner",                                                             +
                                       "Startup Cost": 15365.98,                                                         +
                                       "Total Cost": 15933.08,                                                           +
                                       "Plan Rows": 1699,                                                                +
                                       "Plan Width": 43,                                                                 +
                                       "Actual Startup Time": 4178.573,                                                  +
                                       "Actual Total Time": 4923.022,                                                    +
                                       "Actual Rows": 169157,                                                            +
                                       "Actual Loops": 1,                                                                +
                                       "Inner Unique": false,                                                            +
                                       "Merge Cond": "(t.id = mc.movie_id)",                                             +
                                       "Shared Hit Blocks": 7,                                                           +
                                       "Shared Read Blocks": 63234,                                                      +
                                       "Shared Dirtied Blocks": 0,                                                       +
                                       "Shared Written Blocks": 0,                                                       +
                                       "Local Hit Blocks": 0,                                                            +
                                       "Local Read Blocks": 0,                                                           +
                                       "Local Dirtied Blocks": 0,                                                        +
                                       "Local Written Blocks": 0,                                                        +
                                       "Temp Read Blocks": 0,                                                            +
                                       "Temp Written Blocks": 0,                                                         +
                                       "Plans": [                                                                        +
                                         {                                                                               +
                                           "Node Type": "Merge Join",                                                    +
                                           "Parent Relationship": "Outer",                                               +
                                           "Parallel Aware": false,                                                      +
                                           "Join Type": "Inner",                                                         +
                                           "Startup Cost": 5960.53,                                                      +
                                           "Total Cost": 6122.61,                                                        +
                                           "Plan Rows": 704,                                                             +
                                           "Plan Width": 31,                                                             +
                                           "Actual Startup Time": 2673.815,                                              +
                                           "Actual Total Time": 2988.104,                                                +
                                           "Actual Rows": 52304,                                                         +
                                           "Actual Loops": 1,                                                            +
                                           "Inner Unique": true,                                                         +
                                           "Merge Cond": "(mi_idx.movie_id = t.id)",                                     +
                                           "Shared Hit Blocks": 4,                                                       +
                                           "Shared Read Blocks": 44448,                                                  +
                                           "Shared Dirtied Blocks": 0,                                                   +
                                           "Shared Written Blocks": 0,                                                   +
                                           "Local Hit Blocks": 0,                                                        +
                                           "Local Read Blocks": 0,                                                       +
                                           "Local Dirtied Blocks": 0,                                                    +
                                           "Local Written Blocks": 0,                                                    +
                                           "Temp Read Blocks": 0,                                                        +
                                           "Temp Written Blocks": 0,                                                     +
                                           "Plans": [                                                                    +
                                             {                                                                           +
                                               "Node Type": "Sort",                                                      +
                                               "Parent Relationship": "Outer",                                           +
                                               "Parallel Aware": false,                                                  +
                                               "Startup Cost": 1026.75,                                                  +
                                               "Total Cost": 1026.89,                                                    +
                                               "Plan Rows": 1708,                                                        +
                                               "Plan Width": 10,                                                         +
                                               "Actual Startup Time": 706.847,                                           +
                                               "Actual Total Time": 715.925,                                             +
                                               "Actual Rows": 121572,                                                    +
                                               "Actual Loops": 1,                                                        +
                                               "Sort Key": ["mi_idx.movie_id"],                                          +
                                               "Sort Method": "quicksort",                                               +
                                               "Sort Space Used": 8771,                                                  +
                                               "Sort Space Type": "Memory",                                              +
                                               "Shared Hit Blocks": 3,                                                   +
                                               "Shared Read Blocks": 8451,                                               +
                                               "Shared Dirtied Blocks": 0,                                               +
                                               "Shared Written Blocks": 0,                                               +
                                               "Local Hit Blocks": 0,                                                    +
                                               "Local Read Blocks": 0,                                                   +
                                               "Local Dirtied Blocks": 0,                                                +
                                               "Local Written Blocks": 0,                                                +
                                               "Temp Read Blocks": 0,                                                    +
                                               "Temp Written Blocks": 0,                                                 +
                                               "Plans": [                                                                +
                                                 {                                                                       +
                                                   "Node Type": "Merge Join",                                            +
                                                   "Parent Relationship": "Outer",                                       +
                                                   "Parallel Aware": false,                                              +
                                                   "Join Type": "Inner",                                                 +
                                                   "Startup Cost": 993.83,                                               +
                                                   "Total Cost": 1023.91,                                                +
                                                   "Plan Rows": 1708,                                                    +
                                                   "Plan Width": 10,                                                     +
                                                   "Actual Startup Time": 637.072,                                       +
                                                   "Actual Total Time": 666.408,                                         +
                                                   "Actual Rows": 121572,                                                +
                                                   "Actual Loops": 1,                                                    +
                                                   "Inner Unique": false,                                                +
                                                   "Merge Cond": "(it2.id = mi_idx.info_type_id)",                       +
                                                   "Shared Hit Blocks": 3,                                               +
                                                   "Shared Read Blocks": 8451,                                           +
                                                   "Shared Dirtied Blocks": 0,                                           +
                                                   "Shared Written Blocks": 0,                                           +
                                                   "Local Hit Blocks": 0,                                                +
                                                   "Local Read Blocks": 0,                                               +
                                                   "Local Dirtied Blocks": 0,                                            +
                                                   "Local Written Blocks": 0,                                            +
                                                   "Temp Read Blocks": 0,                                                +
                                                   "Temp Written Blocks": 0,                                             +
                                                   "Plans": [                                                            +
                                                     {                                                                   +
                                                       "Node Type": "Sort",                                              +
                                                       "Parent Relationship": "Outer",                                   +
                                                       "Parallel Aware": false,                                          +
                                                       "Startup Cost": 0.05,                                             +
                                                       "Total Cost": 0.05,                                               +
                                                       "Plan Rows": 1,                                                   +
                                                       "Plan Width": 4,                                                  +
                                                       "Actual Startup Time": 0.077,                                     +
                                                       "Actual Total Time": 0.078,                                       +
                                                       "Actual Rows": 1,                                                 +
                                                       "Actual Loops": 1,                                                +
                                                       "Sort Key": ["it2.id"],                                           +
                                                       "Sort Method": "quicksort",                                       +
                                                       "Sort Space Used": 25,                                            +
                                                       "Sort Space Type": "Memory",                                      +
                                                       "Shared Hit Blocks": 1,                                           +
                                                       "Shared Read Blocks": 0,                                          +
                                                       "Shared Dirtied Blocks": 0,                                       +
                                                       "Shared Written Blocks": 0,                                       +
                                                       "Local Hit Blocks": 0,                                            +
                                                       "Local Read Blocks": 0,                                           +
                                                       "Local Dirtied Blocks": 0,                                        +
                                                       "Local Written Blocks": 0,                                        +
                                                       "Temp Read Blocks": 0,                                            +
                                                       "Temp Written Blocks": 0,                                         +
                                                       "Plans": [                                                        +
                                                         {                                                               +
                                                           "Node Type": "Seq Scan",                                      +
                                                           "Parent Relationship": "Outer",                               +
                                                           "Parallel Aware": false,                                      +
                                                           "Relation Name": "info_type",                                 +
                                                           "Alias": "it2",                                               +
                                                           "Startup Cost": 0.00,                                         +
                                                           "Total Cost": 0.05,                                           +
                                                           "Plan Rows": 1,                                               +
                                                           "Plan Width": 4,                                              +
                                                           "Actual Startup Time": 0.053,                                 +
                                                           "Actual Total Time": 0.059,                                   +
                                                           "Actual Rows": 1,                                             +
                                                           "Actual Loops": 1,                                            +
                                                           "Filter": "((info)::text = 'rating'::text)",                  +
                                                           "Rows Removed by Filter": 112,                                +
                                                           "Shared Hit Blocks": 1,                                       +
                                                           "Shared Read Blocks": 0,                                      +
                                                           "Shared Dirtied Blocks": 0,                                   +
                                                           "Shared Written Blocks": 0,                                   +
                                                           "Local Hit Blocks": 0,                                        +
                                                           "Local Read Blocks": 0,                                       +
                                                           "Local Dirtied Blocks": 0,                                    +
                                                           "Local Written Blocks": 0,                                    +
                                                           "Temp Read Blocks": 0,                                        +
                                                           "Temp Written Blocks": 0                                      +
                                                         }                                                               +
                                                       ]                                                                 +
                                                     },                                                                  +
                                                     {                                                                   +
                                                       "Node Type": "Sort",                                              +
                                                       "Parent Relationship": "Inner",                                   +
                                                       "Parallel Aware": false,                                          +
                                                       "Startup Cost": 993.78,                                           +
                                                       "Total Cost": 1008.76,                                            +
                                                       "Plan Rows": 192955,                                              +
                                                       "Plan Width": 14,                                                 +
                                                       "Actual Startup Time": 613.826,                                   +
                                                       "Actual Total Time": 627.121,                                     +
                                                       "Actual Rows": 192935,                                            +
                                                       "Actual Loops": 1,                                                +
                                                       "Sort Key": ["mi_idx.info_type_id"],                              +
                                                       "Sort Method": "quicksort",                                       +
                                                       "Sort Space Used": 15280,                                         +
                                                       "Sort Space Type": "Memory",                                      +
                                                       "Shared Hit Blocks": 2,                                           +
                                                       "Shared Read Blocks": 8451,                                       +
                                                       "Shared Dirtied Blocks": 0,                                       +
                                                       "Shared Written Blocks": 0,                                       +
                                                       "Local Hit Blocks": 0,                                            +
                                                       "Local Read Blocks": 0,                                           +
                                                       "Local Dirtied Blocks": 0,                                        +
                                                       "Local Written Blocks": 0,                                        +
                                                       "Temp Read Blocks": 0,                                            +
                                                       "Temp Written Blocks": 0,                                         +
                                                       "Plans": [                                                        +
                                                         {                                                               +
                                                           "Node Type": "Seq Scan",                                      +
                                                           "Parent Relationship": "Outer",                               +
                                                           "Parallel Aware": false,                                      +
                                                           "Relation Name": "movie_info_idx",                            +
                                                           "Alias": "mi_idx",                                            +
                                                           "Startup Cost": 0.00,                                         +
                                                           "Total Cost": 467.71,                                         +
                                                           "Plan Rows": 192955,                                          +
                                                           "Plan Width": 14,                                             +
                                                           "Actual Startup Time": 0.069,                                 +
                                                           "Actual Total Time": 541.370,                                 +
                                                           "Actual Rows": 192967,                                        +
                                                           "Actual Loops": 1,                                            +
                                                           "Filter": "(info > '7.0'::text)",                             +
                                                           "Rows Removed by Filter": 1187068,                            +
                                                           "Shared Hit Blocks": 2,                                       +
                                                           "Shared Read Blocks": 8451,                                   +
                                                           "Shared Dirtied Blocks": 0,                                   +
                                                           "Shared Written Blocks": 0,                                   +
                                                           "Local Hit Blocks": 0,                                        +
                                                           "Local Read Blocks": 0,                                       +
                                                           "Local Dirtied Blocks": 0,                                    +
                                                           "Local Written Blocks": 0,                                    +
                                                           "Temp Read Blocks": 0,                                        +
                                                           "Temp Written Blocks": 0                                      +
                                                         }                                                               +
                                                       ]                                                                 +
                                                     }                                                                   +
                                                   ]                                                                     +
                                                 }                                                                       +
                                               ]                                                                         +
                                             },                                                                          +
                                             {                                                                           +
                                               "Node Type": "Sort",                                                      +
                                               "Parent Relationship": "Inner",                                           +
                                               "Parallel Aware": false,                                                  +
                                               "Startup Cost": 4933.77,                                                  +
                                               "Total Cost": 5014.74,                                                    +
                                               "Plan Rows": 1042800,                                                     +
                                               "Plan Width": 21,                                                         +
                                               "Actual Startup Time": 1966.903,                                          +
                                               "Actual Total Time": 2098.399,                                            +
                                               "Actual Rows": 1042578,                                                   +
                                               "Actual Loops": 1,                                                        +
                                               "Sort Key": ["t.id"],                                                     +
                                               "Sort Method": "quicksort",                                               +
                                               "Sort Space Used": 96914,                                                 +
                                               "Sort Space Type": "Memory",                                              +
                                               "Shared Hit Blocks": 1,                                                   +
                                               "Shared Read Blocks": 35997,                                              +
                                               "Shared Dirtied Blocks": 0,                                               +
                                               "Shared Written Blocks": 0,                                               +
                                               "Local Hit Blocks": 0,                                                    +
                                               "Local Read Blocks": 0,                                                   +
                                               "Local Dirtied Blocks": 0,                                                +
                                               "Local Written Blocks": 0,                                                +
                                               "Temp Read Blocks": 0,                                                    +
                                               "Temp Written Blocks": 0,                                                 +
                                               "Plans": [                                                                +
                                                 {                                                                       +
                                                   "Node Type": "Seq Scan",                                              +
                                                   "Parent Relationship": "Outer",                                       +
                                                   "Parallel Aware": false,                                              +
                                                   "Relation Name": "title",                                             +
                                                   "Alias": "t",                                                         +
                                                   "Startup Cost": 0.00,                                                 +
                                                   "Total Cost": 1696.56,                                                +
                                                   "Plan Rows": 1042800,                                                 +
                                                   "Plan Width": 21,                                                     +
                                                   "Actual Startup Time": 23.208,                                        +
                                                   "Actual Total Time": 1353.173,                                        +
                                                   "Actual Rows": 1042800,                                               +
                                                   "Actual Loops": 1,                                                    +
                                                   "Filter": "((production_year >= 2000) AND (production_year <= 2010))",+
                                                   "Rows Removed by Filter": 1485512,                                    +
                                                   "Shared Hit Blocks": 1,                                               +
                                                   "Shared Read Blocks": 35997,                                          +
                                                   "Shared Dirtied Blocks": 0,                                           +
                                                   "Shared Written Blocks": 0,                                           +
                                                   "Local Hit Blocks": 0,                                                +
                                                   "Local Read Blocks": 0,                                               +
                                                   "Local Dirtied Blocks": 0,                                            +
                                                   "Local Written Blocks": 0,                                            +
                                                   "Temp Read Blocks": 0,                                                +
                                                   "Temp Written Blocks": 0                                              +
                                                 }                                                                       +
                                               ]                                                                         +
                                             }                                                                           +
                                           ]                                                                             +
                                         },                                                                              +
                                         {                                                                               +
                                           "Node Type": "Sort",                                                          +
                                           "Parent Relationship": "Inner",                                               +
                                           "Parallel Aware": false,                                                      +
                                           "Startup Cost": 9405.45,                                                      +
                                           "Total Cost": 9608.03,                                                        +
                                           "Plan Rows": 2609129,                                                         +
                                           "Plan Width": 12,                                                             +
                                           "Actual Startup Time": 1504.716,                                              +
                                           "Actual Total Time": 1650.475,                                                +
                                           "Actual Rows": 2609129,                                                       +
                                           "Actual Loops": 1,                                                            +
                                           "Sort Key": ["mc.movie_id"],                                                  +
                                           "Sort Method": "quicksort",                                                   +
                                           "Sort Space Used": 220607,                                                    +
                                           "Sort Space Type": "Memory",                                                  +
                                           "Shared Hit Blocks": 3,                                                       +
                                           "Shared Read Blocks": 18786,                                                  +
                                           "Shared Dirtied Blocks": 0,                                                   +
                                           "Shared Written Blocks": 0,                                                   +
                                           "Local Hit Blocks": 0,                                                        +
                                           "Local Read Blocks": 0,                                                       +
                                           "Local Dirtied Blocks": 0,                                                    +
                                           "Local Written Blocks": 0,                                                    +
                                           "Temp Read Blocks": 0,                                                        +
                                           "Temp Written Blocks": 0,                                                     +
                                           "Plans": [                                                                    +
                                             {                                                                           +
                                               "Node Type": "Seq Scan",                                                  +
                                               "Parent Relationship": "Outer",                                           +
                                               "Parallel Aware": false,                                                  +
                                               "Relation Name": "movie_companies",                                       +
                                               "Alias": "mc",                                                            +
                                               "Startup Cost": 0.00,                                                     +
                                               "Total Cost": 769.75,                                                     +
                                               "Plan Rows": 2609129,                                                     +
                                               "Plan Width": 12,                                                         +
                                               "Actual Startup Time": 0.013,                                             +
                                               "Actual Total Time": 540.514,                                             +
                                               "Actual Rows": 2609129,                                                   +
                                               "Actual Loops": 1,                                                        +
                                               "Shared Hit Blocks": 3,                                                   +
                                               "Shared Read Blocks": 18786,                                              +
                                               "Shared Dirtied Blocks": 0,                                               +
                                               "Shared Written Blocks": 0,                                               +
                                               "Local Hit Blocks": 0,                                                    +
                                               "Local Read Blocks": 0,                                                   +
                                               "Local Dirtied Blocks": 0,                                                +
                                               "Local Written Blocks": 0,                                                +
                                               "Temp Read Blocks": 0,                                                    +
                                               "Temp Written Blocks": 0                                                  +
                                             }                                                                           +
                                           ]                                                                             +
                                         }                                                                               +
                                       ]                                                                                 +
                                     },                                                                                  +
                                     {                                                                                   +
                                       "Node Type": "Sort",                                                              +
                                       "Parent Relationship": "Inner",                                                   +
                                       "Parallel Aware": false,                                                          +
                                       "Startup Cost": 9337.21,                                                          +
                                       "Total Cost": 9362.59,                                                            +
                                       "Plan Rows": 326846,                                                              +
                                       "Plan Width": 8,                                                                  +
                                       "Actual Startup Time": 8404.469,                                                  +
                                       "Actual Total Time": 8427.077,                                                    +
                                       "Actual Rows": 365300,                                                            +
                                       "Actual Loops": 1,                                                                +
                                       "Sort Key": ["mi.movie_id"],                                                      +
                                       "Sort Method": "quicksort",                                                       +
                                       "Sort Space Used": 27631,                                                         +
                                       "Sort Space Type": "Memory",                                                      +
                                       "Shared Hit Blocks": 2,                                                           +
                                       "Shared Read Blocks": 161890,                                                     +
                                       "Shared Dirtied Blocks": 0,                                                       +
                                       "Shared Written Blocks": 0,                                                       +
                                       "Local Hit Blocks": 0,                                                            +
                                       "Local Read Blocks": 0,                                                           +
                                       "Local Dirtied Blocks": 0,                                                        +
                                       "Local Written Blocks": 0,                                                        +
                                       "Temp Read Blocks": 0,                                                            +
                                       "Temp Written Blocks": 0,                                                         +
                                       "Plans": [                                                                        +
                                         {                                                                               +
                                           "Node Type": "Seq Scan",                                                      +
                                           "Parent Relationship": "Outer",                                               +
                                           "Parallel Aware": false,                                                      +
                                           "Relation Name": "movie_info",                                                +
                                           "Alias": "mi",                                                                +
                                           "Startup Cost": 0.00,                                                         +
                                           "Total Cost": 8407.52,                                                        +
                                           "Plan Rows": 326846,                                                          +
                                           "Plan Width": 8,                                                              +
                                           "Actual Startup Time": 4783.650,                                              +
                                           "Actual Total Time": 8268.702,                                                +
                                           "Actual Rows": 327313,                                                        +
                                           "Actual Loops": 1,                                                            +
                                           "Filter": "(info = ANY ('{Drama,Horror,Western,Family}'::text[]))",           +
                                           "Rows Removed by Filter": 14508407,                                           +
                                           "Shared Hit Blocks": 2,                                                       +
                                           "Shared Read Blocks": 161890,                                                 +
                                           "Shared Dirtied Blocks": 0,                                                   +
                                           "Shared Written Blocks": 0,                                                   +
                                           "Local Hit Blocks": 0,                                                        +
                                           "Local Read Blocks": 0,                                                       +
                                           "Local Dirtied Blocks": 0,                                                    +
                                           "Local Written Blocks": 0,                                                    +
                                           "Temp Read Blocks": 0,                                                        +
                                           "Temp Written Blocks": 0                                                      +
                                         }                                                                               +
                                       ]                                                                                 +
                                     }                                                                                   +
                                   ]                                                                                     +
                                 }                                                                                       +
                               ]                                                                                         +
                             },                                                                                          +
                             {                                                                                           +
                               "Node Type": "Sort",                                                                      +
                               "Parent Relationship": "Inner",                                                           +
                               "Parallel Aware": false,                                                                  +
                               "Startup Cost": 0.03,                                                                     +
                               "Total Cost": 0.03,                                                                       +
                               "Plan Rows": 1,                                                                           +
                               "Plan Width": 4,                                                                          +
                               "Actual Startup Time": 0.026,                                                             +
                               "Actual Total Time": 0.026,                                                               +
                               "Actual Rows": 1,                                                                         +
                               "Actual Loops": 1,                                                                        +
                               "Sort Key": ["ct.id"],                                                                    +
                               "Sort Method": "quicksort",                                                               +
                               "Sort Space Used": 25,                                                                    +
                               "Sort Space Type": "Memory",                                                              +
                               "Shared Hit Blocks": 1,                                                                   +
                               "Shared Read Blocks": 0,                                                                  +
                               "Shared Dirtied Blocks": 0,                                                               +
                               "Shared Written Blocks": 0,                                                               +
                               "Local Hit Blocks": 0,                                                                    +
                               "Local Read Blocks": 0,                                                                   +
                               "Local Dirtied Blocks": 0,                                                                +
                               "Local Written Blocks": 0,                                                                +
                               "Temp Read Blocks": 0,                                                                    +
                               "Temp Written Blocks": 0,                                                                 +
                               "Plans": [                                                                                +
                                 {                                                                                       +
                                   "Node Type": "Seq Scan",                                                              +
                                   "Parent Relationship": "Outer",                                                       +
                                   "Parallel Aware": false,                                                              +
                                   "Relation Name": "company_type",                                                      +
                                   "Alias": "ct",                                                                        +
                                   "Startup Cost": 0.00,                                                                 +
                                   "Total Cost": 0.03,                                                                   +
                                   "Plan Rows": 1,                                                                       +
                                   "Plan Width": 4,                                                                      +
                                   "Actual Startup Time": 0.016,                                                         +
                                   "Actual Total Time": 0.017,                                                           +
                                   "Actual Rows": 1,                                                                     +
                                   "Actual Loops": 1,                                                                    +
                                   "Filter": "((kind)::text = 'production companies'::text)",                            +
                                   "Rows Removed by Filter": 3,                                                          +
                                   "Shared Hit Blocks": 1,                                                               +
                                   "Shared Read Blocks": 0,                                                              +
                                   "Shared Dirtied Blocks": 0,                                                           +
                                   "Shared Written Blocks": 0,                                                           +
                                   "Local Hit Blocks": 0,                                                                +
                                   "Local Read Blocks": 0,                                                               +
                                   "Local Dirtied Blocks": 0,                                                            +
                                   "Local Written Blocks": 0,                                                            +
                                   "Temp Read Blocks": 0,                                                                +
                                   "Temp Written Blocks": 0                                                              +
                                 }                                                                                       +
                               ]                                                                                         +
                             }                                                                                           +
                           ]                                                                                             +
                         }                                                                                               +
                       ]                                                                                                 +
                     },                                                                                                  +
                     {                                                                                                   +
                       "Node Type": "Sort",                                                                              +
                       "Parent Relationship": "Inner",                                                                   +
                       "Parallel Aware": false,                                                                          +
                       "Startup Cost": 0.05,                                                                             +
                       "Total Cost": 0.05,                                                                               +
                       "Plan Rows": 1,                                                                                   +
                       "Plan Width": 4,                                                                                  +
                       "Actual Startup Time": 0.024,                                                                     +
                       "Actual Total Time": 0.024,                                                                       +
                       "Actual Rows": 1,                                                                                 +
                       "Actual Loops": 1,                                                                                +
                       "Sort Key": ["it1.id"],                                                                           +
                       "Sort Method": "quicksort",                                                                       +
                       "Sort Space Used": 25,                                                                            +
                       "Sort Space Type": "Memory",                                                                      +
                       "Shared Hit Blocks": 1,                                                                           +
                       "Shared Read Blocks": 0,                                                                          +
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
                           "Node Type": "Seq Scan",                                                                      +
                           "Parent Relationship": "Outer",                                                               +
                           "Parallel Aware": false,                                                                      +
                           "Relation Name": "info_type",                                                                 +
                           "Alias": "it1",                                                                               +
                           "Startup Cost": 0.00,                                                                         +
                           "Total Cost": 0.05,                                                                           +
                           "Plan Rows": 1,                                                                               +
                           "Plan Width": 4,                                                                              +
                           "Actual Startup Time": 0.009,                                                                 +
                           "Actual Total Time": 0.020,                                                                   +
                           "Actual Rows": 1,                                                                             +
                           "Actual Loops": 1,                                                                            +
                           "Filter": "((info)::text = 'genres'::text)",                                                  +
                           "Rows Removed by Filter": 112,                                                                +
                           "Shared Hit Blocks": 1,                                                                       +
                           "Shared Read Blocks": 0,                                                                      +
                           "Shared Dirtied Blocks": 0,                                                                   +
                           "Shared Written Blocks": 0,                                                                   +
                           "Local Hit Blocks": 0,                                                                        +
                           "Local Read Blocks": 0,                                                                       +
                           "Local Dirtied Blocks": 0,                                                                    +
                           "Local Written Blocks": 0,                                                                    +
                           "Temp Read Blocks": 0,                                                                        +
                           "Temp Written Blocks": 0                                                                      +
                         }                                                                                               +
                       ]                                                                                                 +
                     }                                                                                                   +
                   ]                                                                                                     +
                 }                                                                                                       +
               ]                                                                                                         +
             },                                                                                                          +
             {                                                                                                           +
               "Node Type": "Sort",                                                                                      +
               "Parent Relationship": "Inner",                                                                           +
               "Parallel Aware": false,                                                                                  +
               "Startup Cost": 344.10,                                                                                   +
               "Total Cost": 350.69,                                                                                     +
               "Plan Rows": 84843,                                                                                       +
               "Plan Width": 23,                                                                                         +
               "Actual Startup Time": 213.384,                                                                           +
               "Actual Total Time": 227.229,                                                                             +
               "Actual Rows": 84843,                                                                                     +
               "Actual Loops": 1,                                                                                        +
               "Sort Key": ["cn.id"],                                                                                    +
               "Sort Method": "quicksort",                                                                               +
               "Sort Space Used": 9413,                                                                                  +
               "Sort Space Type": "Memory",                                                                              +
               "Shared Hit Blocks": 2,                                                                                   +
               "Shared Read Blocks": 2992,                                                                               +
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
                   "Relation Name": "company_name",                                                                      +
                   "Alias": "cn",                                                                                        +
                   "Startup Cost": 0.00,                                                                                 +
                   "Total Cost": 128.41,                                                                                 +
                   "Plan Rows": 84843,                                                                                   +
                   "Plan Width": 23,                                                                                     +
                   "Actual Startup Time": 45.639,                                                                        +
                   "Actual Total Time": 151.761,                                                                         +
                   "Actual Rows": 84843,                                                                                 +
                   "Actual Loops": 1,                                                                                    +
                   "Filter": "((country_code)::text = '[us]'::text)",                                                    +
                   "Rows Removed by Filter": 150154,                                                                     +
                   "Shared Hit Blocks": 2,                                                                               +
                   "Shared Read Blocks": 2992,                                                                           +
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
         }                                                                                                               +
       ]                                                                                                                 +
     },                                                                                                                  +
     "Planning Time": 4886.935,                                                                                          +
     "Triggers": [                                                                                                       +
     ],                                                                                                                  +
     "Execution Time": 13765.524                                                                                         +
   }                                                                                                                     +
 ]
(1 row)

