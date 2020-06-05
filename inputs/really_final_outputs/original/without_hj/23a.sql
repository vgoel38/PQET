                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                                                  +
   {                                                                                                                                                                +
     "Plan": {                                                                                                                                                      +
       "Node Type": "Aggregate",                                                                                                                                    +
       "Strategy": "Plain",                                                                                                                                         +
       "Partial Mode": "Simple",                                                                                                                                    +
       "Parallel Aware": false,                                                                                                                                     +
       "Startup Cost": 3405.43,                                                                                                                                     +
       "Total Cost": 3405.43,                                                                                                                                       +
       "Plan Rows": 1,                                                                                                                                              +
       "Plan Width": 64,                                                                                                                                            +
       "Actual Startup Time": 57995.990,                                                                                                                            +
       "Actual Total Time": 57995.990,                                                                                                                              +
       "Actual Rows": 1,                                                                                                                                            +
       "Actual Loops": 1,                                                                                                                                           +
       "Shared Hit Blocks": 242077,                                                                                                                                 +
       "Shared Read Blocks": 62000,                                                                                                                                 +
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
           "Node Type": "Nested Loop",                                                                                                                              +
           "Parent Relationship": "Outer",                                                                                                                          +
           "Parallel Aware": false,                                                                                                                                 +
           "Join Type": "Inner",                                                                                                                                    +
           "Startup Cost": 2490.95,                                                                                                                                 +
           "Total Cost": 3405.42,                                                                                                                                   +
           "Plan Rows": 1,                                                                                                                                          +
           "Plan Width": 27,                                                                                                                                        +
           "Actual Startup Time": 46432.531,                                                                                                                        +
           "Actual Total Time": 57994.976,                                                                                                                          +
           "Actual Rows": 618,                                                                                                                                      +
           "Actual Loops": 1,                                                                                                                                       +
           "Inner Unique": true,                                                                                                                                    +
           "Shared Hit Blocks": 242077,                                                                                                                             +
           "Shared Read Blocks": 62000,                                                                                                                             +
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
               "Node Type": "Nested Loop",                                                                                                                          +
               "Parent Relationship": "Outer",                                                                                                                      +
               "Parallel Aware": false,                                                                                                                             +
               "Join Type": "Inner",                                                                                                                                +
               "Startup Cost": 2490.93,                                                                                                                             +
               "Total Cost": 3405.35,                                                                                                                               +
               "Plan Rows": 1,                                                                                                                                      +
               "Plan Width": 31,                                                                                                                                    +
               "Actual Startup Time": 46408.198,                                                                                                                    +
               "Actual Total Time": 57721.550,                                                                                                                      +
               "Actual Rows": 618,                                                                                                                                  +
               "Actual Loops": 1,                                                                                                                                   +
               "Inner Unique": false,                                                                                                                               +
               "Join Filter": "(t.id = mk.movie_id)",                                                                                                               +
               "Rows Removed by Join Filter": 0,                                                                                                                    +
               "Shared Hit Blocks": 239822,                                                                                                                         +
               "Shared Read Blocks": 61779,                                                                                                                         +
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
                   "Node Type": "Nested Loop",                                                                                                                      +
                   "Parent Relationship": "Outer",                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                         +
                   "Join Type": "Inner",                                                                                                                            +
                   "Startup Cost": 2490.92,                                                                                                                         +
                   "Total Cost": 3405.05,                                                                                                                           +
                   "Plan Rows": 1,                                                                                                                                  +
                   "Plan Width": 43,                                                                                                                                +
                   "Actual Startup Time": 46365.894,                                                                                                                +
                   "Actual Total Time": 57654.349,                                                                                                                  +
                   "Actual Rows": 6,                                                                                                                                +
                   "Actual Loops": 1,                                                                                                                               +
                   "Inner Unique": true,                                                                                                                            +
                   "Join Filter": "(mi.info_type_id = it1.id)",                                                                                                     +
                   "Rows Removed by Join Filter": 0,                                                                                                                +
                   "Shared Hit Blocks": 239797,                                                                                                                     +
                   "Shared Read Blocks": 61772,                                                                                                                     +
                   "Shared Dirtied Blocks": 0,                                                                                                                      +
                   "Shared Written Blocks": 0,                                                                                                                      +
                   "Local Hit Blocks": 0,                                                                                                                           +
                   "Local Read Blocks": 0,                                                                                                                          +
                   "Local Dirtied Blocks": 0,                                                                                                                       +
                   "Local Written Blocks": 0,                                                                                                                       +
                   "Temp Read Blocks": 0,                                                                                                                           +
                   "Temp Written Blocks": 0,                                                                                                                        +
                   "Plans": [                                                                                                                                       +
                     {                                                                                                                                              +
                       "Node Type": "Nested Loop",                                                                                                                  +
                       "Parent Relationship": "Outer",                                                                                                              +
                       "Parallel Aware": false,                                                                                                                     +
                       "Join Type": "Inner",                                                                                                                        +
                       "Startup Cost": 2490.92,                                                                                                                     +
                       "Total Cost": 3405.00,                                                                                                                       +
                       "Plan Rows": 1,                                                                                                                              +
                       "Plan Width": 47,                                                                                                                            +
                       "Actual Startup Time": 46365.869,                                                                                                            +
                       "Actual Total Time": 57654.302,                                                                                                              +
                       "Actual Rows": 6,                                                                                                                            +
                       "Actual Loops": 1,                                                                                                                           +
                       "Inner Unique": true,                                                                                                                        +
                       "Shared Hit Blocks": 239796,                                                                                                                 +
                       "Shared Read Blocks": 61772,                                                                                                                 +
                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                                    +
                       "Plans": [                                                                                                                                   +
                         {                                                                                                                                          +
                           "Node Type": "Nested Loop",                                                                                                              +
                           "Parent Relationship": "Outer",                                                                                                          +
                           "Parallel Aware": false,                                                                                                                 +
                           "Join Type": "Inner",                                                                                                                    +
                           "Startup Cost": 2490.92,                                                                                                                 +
                           "Total Cost": 3404.98,                                                                                                                   +
                           "Plan Rows": 1,                                                                                                                          +
                           "Plan Width": 51,                                                                                                                        +
                           "Actual Startup Time": 46365.852,                                                                                                        +
                           "Actual Total Time": 57654.223,                                                                                                          +
                           "Actual Rows": 6,                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                       +
                           "Inner Unique": false,                                                                                                                   +
                           "Join Filter": "(t.id = mi.movie_id)",                                                                                                   +
                           "Rows Removed by Join Filter": 0,                                                                                                        +
                           "Shared Hit Blocks": 239784,                                                                                                             +
                           "Shared Read Blocks": 61772,                                                                                                             +
                           "Shared Dirtied Blocks": 0,                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                   +
                           "Temp Written Blocks": 0,                                                                                                                +
                           "Plans": [                                                                                                                               +
                             {                                                                                                                                      +
                               "Node Type": "Nested Loop",                                                                                                          +
                               "Parent Relationship": "Outer",                                                                                                      +
                               "Parallel Aware": false,                                                                                                             +
                               "Join Type": "Inner",                                                                                                                +
                               "Startup Cost": 2490.90,                                                                                                             +
                               "Total Cost": 2826.84,                                                                                                               +
                               "Plan Rows": 2267,                                                                                                                   +
                               "Plan Width": 43,                                                                                                                    +
                               "Actual Startup Time": 2177.908,                                                                                                     +
                               "Actual Total Time": 20319.241,                                                                                                      +
                               "Actual Rows": 5763,                                                                                                                 +
                               "Actual Loops": 1,                                                                                                                   +
                               "Inner Unique": true,                                                                                                                +
                               "Shared Hit Blocks": 95885,                                                                                                          +
                               "Shared Read Blocks": 42062,                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                          +
                               "Shared Written Blocks": 0,                                                                                                          +
                               "Local Hit Blocks": 0,                                                                                                               +
                               "Local Read Blocks": 0,                                                                                                              +
                               "Local Dirtied Blocks": 0,                                                                                                           +
                               "Local Written Blocks": 0,                                                                                                           +
                               "Temp Read Blocks": 0,                                                                                                               +
                               "Temp Written Blocks": 0,                                                                                                            +
                               "Plans": [                                                                                                                           +
                                 {                                                                                                                                  +
                                   "Node Type": "Nested Loop",                                                                                                      +
                                   "Parent Relationship": "Outer",                                                                                                  +
                                   "Parallel Aware": false,                                                                                                         +
                                   "Join Type": "Inner",                                                                                                            +
                                   "Startup Cost": 2490.89,                                                                                                         +
                                   "Total Cost": 2715.00,                                                                                                           +
                                   "Plan Rows": 6278,                                                                                                               +
                                   "Plan Width": 47,                                                                                                                +
                                   "Actual Startup Time": 1941.453,                                                                                                 +
                                   "Actual Total Time": 7754.215,                                                                                                   +
                                   "Actual Rows": 23883,                                                                                                            +
                                   "Actual Loops": 1,                                                                                                               +
                                   "Inner Unique": false,                                                                                                           +
                                   "Shared Hit Blocks": 2637,                                                                                                       +
                                   "Shared Read Blocks": 39511,                                                                                                     +
                                   "Shared Dirtied Blocks": 0,                                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                                           +
                                   "Local Read Blocks": 0,                                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                                       +
                                   "Local Written Blocks": 0,                                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                                           +
                                   "Temp Written Blocks": 0,                                                                                                        +
                                   "Plans": [                                                                                                                       +
                                     {                                                                                                                              +
                                       "Node Type": "Merge Join",                                                                                                   +
                                       "Parent Relationship": "Outer",                                                                                              +
                                       "Parallel Aware": false,                                                                                                     +
                                       "Join Type": "Inner",                                                                                                        +
                                       "Startup Cost": 2490.88,                                                                                                     +
                                       "Total Cost": 2526.94,                                                                                                       +
                                       "Plan Rows": 2636,                                                                                                           +
                                       "Plan Width": 35,                                                                                                            +
                                       "Actual Startup Time": 1910.125,                                                                                             +
                                       "Actual Total Time": 2106.392,                                                                                               +
                                       "Actual Rows": 1033,                                                                                                         +
                                       "Actual Loops": 1,                                                                                                           +
                                       "Inner Unique": false,                                                                                                       +
                                       "Merge Cond": "(cc.movie_id = t.id)",                                                                                        +
                                       "Shared Hit Blocks": 10,                                                                                                     +
                                       "Shared Read Blocks": 36725,                                                                                                 +
                                       "Shared Dirtied Blocks": 0,                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                       +
                                       "Temp Written Blocks": 0,                                                                                                    +
                                       "Plans": [                                                                                                                   +
                                         {                                                                                                                          +
                                           "Node Type": "Sort",                                                                                                     +
                                           "Parent Relationship": "Outer",                                                                                          +
                                           "Parallel Aware": false,                                                                                                 +
                                           "Startup Cost": 141.51,                                                                                                  +
                                           "Total Cost": 144.13,                                                                                                    +
                                           "Plan Rows": 33772,                                                                                                      +
                                           "Plan Width": 4,                                                                                                         +
                                           "Actual Startup Time": 125.866,                                                                                          +
                                           "Actual Total Time": 130.955,                                                                                            +
                                           "Actual Rows": 24592,                                                                                                    +
                                           "Actual Loops": 1,                                                                                                       +
                                           "Sort Key": ["cc.movie_id"],                                                                                             +
                                           "Sort Method": "quicksort",                                                                                              +
                                           "Sort Space Used": 1921,                                                                                                 +
                                           "Sort Space Type": "Memory",                                                                                             +
                                           "Shared Hit Blocks": 7,                                                                                                  +
                                           "Shared Read Blocks": 729,                                                                                               +
                                           "Shared Dirtied Blocks": 0,                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                               +
                                           "Local Written Blocks": 0,                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                   +
                                           "Temp Written Blocks": 0,                                                                                                +
                                           "Plans": [                                                                                                               +
                                             {                                                                                                                      +
                                               "Node Type": "Nested Loop",                                                                                          +
                                               "Parent Relationship": "Outer",                                                                                      +
                                               "Parallel Aware": false,                                                                                             +
                                               "Join Type": "Inner",                                                                                                +
                                               "Startup Cost": 0.00,                                                                                                +
                                               "Total Cost": 62.62,                                                                                                 +
                                               "Plan Rows": 33772,                                                                                                  +
                                               "Plan Width": 4,                                                                                                     +
                                               "Actual Startup Time": 0.194,                                                                                        +
                                               "Actual Total Time": 98.184,                                                                                         +
                                               "Actual Rows": 24592,                                                                                                +
                                               "Actual Loops": 1,                                                                                                   +
                                               "Inner Unique": true,                                                                                                +
                                               "Join Filter": "(cc.status_id = cct1.id)",                                                                           +
                                               "Rows Removed by Join Filter": 110494,                                                                               +
                                               "Shared Hit Blocks": 3,                                                                                              +
                                               "Shared Read Blocks": 729,                                                                                           +
                                               "Shared Dirtied Blocks": 0,                                                                                          +
                                               "Shared Written Blocks": 0,                                                                                          +
                                               "Local Hit Blocks": 0,                                                                                               +
                                               "Local Read Blocks": 0,                                                                                              +
                                               "Local Dirtied Blocks": 0,                                                                                           +
                                               "Local Written Blocks": 0,                                                                                           +
                                               "Temp Read Blocks": 0,                                                                                               +
                                               "Temp Written Blocks": 0,                                                                                            +
                                               "Plans": [                                                                                                           +
                                                 {                                                                                                                  +
                                                   "Node Type": "Seq Scan",                                                                                         +
                                                   "Parent Relationship": "Outer",                                                                                  +
                                                   "Parallel Aware": false,                                                                                         +
                                                   "Relation Name": "complete_cast",                                                                                +
                                                   "Alias": "cc",                                                                                                   +
                                                   "Startup Cost": 0.00,                                                                                            +
                                                   "Total Cost": 32.27,                                                                                             +
                                                   "Plan Rows": 135086,                                                                                             +
                                                   "Plan Width": 8,                                                                                                 +
                                                   "Actual Startup Time": 0.139,                                                                                    +
                                                   "Actual Total Time": 28.400,                                                                                     +
                                                   "Actual Rows": 135086,                                                                                           +
                                                   "Actual Loops": 1,                                                                                               +
                                                   "Shared Hit Blocks": 2,                                                                                          +
                                                   "Shared Read Blocks": 729,                                                                                       +
                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                   "Shared Written Blocks": 0,                                                                                      +
                                                   "Local Hit Blocks": 0,                                                                                           +
                                                   "Local Read Blocks": 0,                                                                                          +
                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                   "Local Written Blocks": 0,                                                                                       +
                                                   "Temp Read Blocks": 0,                                                                                           +
                                                   "Temp Written Blocks": 0                                                                                         +
                                                 },                                                                                                                 +
                                                 {                                                                                                                  +
                                                   "Node Type": "Materialize",                                                                                      +
                                                   "Parent Relationship": "Inner",                                                                                  +
                                                   "Parallel Aware": false,                                                                                         +
                                                   "Startup Cost": 0.00,                                                                                            +
                                                   "Total Cost": 0.03,                                                                                              +
                                                   "Plan Rows": 1,                                                                                                  +
                                                   "Plan Width": 4,                                                                                                 +
                                                   "Actual Startup Time": 0.000,                                                                                    +
                                                   "Actual Total Time": 0.000,                                                                                      +
                                                   "Actual Rows": 1,                                                                                                +
                                                   "Actual Loops": 135086,                                                                                          +
                                                   "Shared Hit Blocks": 1,                                                                                          +
                                                   "Shared Read Blocks": 0,                                                                                         +
                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                   "Shared Written Blocks": 0,                                                                                      +
                                                   "Local Hit Blocks": 0,                                                                                           +
                                                   "Local Read Blocks": 0,                                                                                          +
                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                   "Local Written Blocks": 0,                                                                                       +
                                                   "Temp Read Blocks": 0,                                                                                           +
                                                   "Temp Written Blocks": 0,                                                                                        +
                                                   "Plans": [                                                                                                       +
                                                     {                                                                                                              +
                                                       "Node Type": "Seq Scan",                                                                                     +
                                                       "Parent Relationship": "Outer",                                                                              +
                                                       "Parallel Aware": false,                                                                                     +
                                                       "Relation Name": "comp_cast_type",                                                                           +
                                                       "Alias": "cct1",                                                                                             +
                                                       "Startup Cost": 0.00,                                                                                        +
                                                       "Total Cost": 0.03,                                                                                          +
                                                       "Plan Rows": 1,                                                                                              +
                                                       "Plan Width": 4,                                                                                             +
                                                       "Actual Startup Time": 0.038,                                                                                +
                                                       "Actual Total Time": 0.040,                                                                                  +
                                                       "Actual Rows": 1,                                                                                            +
                                                       "Actual Loops": 1,                                                                                           +
                                                       "Filter": "((kind)::text = 'complete+verified'::text)",                                                      +
                                                       "Rows Removed by Filter": 3,                                                                                 +
                                                       "Shared Hit Blocks": 1,                                                                                      +
                                                       "Shared Read Blocks": 0,                                                                                     +
                                                       "Shared Dirtied Blocks": 0,                                                                                  +
                                                       "Shared Written Blocks": 0,                                                                                  +
                                                       "Local Hit Blocks": 0,                                                                                       +
                                                       "Local Read Blocks": 0,                                                                                      +
                                                       "Local Dirtied Blocks": 0,                                                                                   +
                                                       "Local Written Blocks": 0,                                                                                   +
                                                       "Temp Read Blocks": 0,                                                                                       +
                                                       "Temp Written Blocks": 0                                                                                     +
                                                     }                                                                                                              +
                                                   ]                                                                                                                +
                                                 }                                                                                                                  +
                                               ]                                                                                                                    +
                                             }                                                                                                                      +
                                           ]                                                                                                                        +
                                         },                                                                                                                         +
                                         {                                                                                                                          +
                                           "Node Type": "Sort",                                                                                                     +
                                           "Parent Relationship": "Inner",                                                                                          +
                                           "Parallel Aware": false,                                                                                                 +
                                           "Startup Cost": 2349.37,                                                                                                 +
                                           "Total Cost": 2364.69,                                                                                                   +
                                           "Plan Rows": 197350,                                                                                                     +
                                           "Plan Width": 31,                                                                                                        +
                                           "Actual Startup Time": 1783.452,                                                                                         +
                                           "Actual Total Time": 1860.559,                                                                                           +
                                           "Actual Rows": 274070,                                                                                                   +
                                           "Actual Loops": 1,                                                                                                       +
                                           "Sort Key": ["t.id"],                                                                                                    +
                                           "Sort Method": "quicksort",                                                                                              +
                                           "Sort Space Used": 33890,                                                                                                +
                                           "Sort Space Type": "Memory",                                                                                             +
                                           "Shared Hit Blocks": 3,                                                                                                  +
                                           "Shared Read Blocks": 35996,                                                                                             +
                                           "Shared Dirtied Blocks": 0,                                                                                              +
                                           "Shared Written Blocks": 0,                                                                                              +
                                           "Local Hit Blocks": 0,                                                                                                   +
                                           "Local Read Blocks": 0,                                                                                                  +
                                           "Local Dirtied Blocks": 0,                                                                                               +
                                           "Local Written Blocks": 0,                                                                                               +
                                           "Temp Read Blocks": 0,                                                                                                   +
                                           "Temp Written Blocks": 0,                                                                                                +
                                           "Plans": [                                                                                                               +
                                             {                                                                                                                      +
                                               "Node Type": "Nested Loop",                                                                                          +
                                               "Parent Relationship": "Outer",                                                                                      +
                                               "Parallel Aware": false,                                                                                             +
                                               "Join Type": "Inner",                                                                                                +
                                               "Startup Cost": 0.00,                                                                                                +
                                               "Total Cost": 1810.32,                                                                                               +
                                               "Plan Rows": 197350,                                                                                                 +
                                               "Plan Width": 31,                                                                                                    +
                                               "Actual Startup Time": 82.027,                                                                                       +
                                               "Actual Total Time": 1640.498,                                                                                       +
                                               "Actual Rows": 274015,                                                                                               +
                                               "Actual Loops": 1,                                                                                                   +
                                               "Inner Unique": true,                                                                                                +
                                               "Join Filter": "(kt.id = t.kind_id)",                                                                                +
                                               "Rows Removed by Join Filter": 1107438,                                                                              +
                                               "Shared Hit Blocks": 3,                                                                                              +
                                               "Shared Read Blocks": 35996,                                                                                         +
                                               "Shared Dirtied Blocks": 0,                                                                                          +
                                               "Shared Written Blocks": 0,                                                                                          +
                                               "Local Hit Blocks": 0,                                                                                               +
                                               "Local Read Blocks": 0,                                                                                              +
                                               "Local Dirtied Blocks": 0,                                                                                           +
                                               "Local Written Blocks": 0,                                                                                           +
                                               "Temp Read Blocks": 0,                                                                                               +
                                               "Temp Written Blocks": 0,                                                                                            +
                                               "Plans": [                                                                                                           +
                                                 {                                                                                                                  +
                                                   "Node Type": "Seq Scan",                                                                                         +
                                                   "Parent Relationship": "Outer",                                                                                  +
                                                   "Parallel Aware": false,                                                                                         +
                                                   "Relation Name": "title",                                                                                        +
                                                   "Alias": "t",                                                                                                    +
                                                   "Startup Cost": 0.00,                                                                                            +
                                                   "Total Cost": 1500.26,                                                                                           +
                                                   "Plan Rows": 1381453,                                                                                            +
                                                   "Plan Width": 25,                                                                                                +
                                                   "Actual Startup Time": 20.695,                                                                                   +
                                                   "Actual Total Time": 1003.175,                                                                                   +
                                                   "Actual Rows": 1381453,                                                                                          +
                                                   "Actual Loops": 1,                                                                                               +
                                                   "Filter": "(production_year > 2000)",                                                                            +
                                                   "Rows Removed by Filter": 1146859,                                                                               +
                                                   "Shared Hit Blocks": 2,                                                                                          +
                                                   "Shared Read Blocks": 35996,                                                                                     +
                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                   "Shared Written Blocks": 0,                                                                                      +
                                                   "Local Hit Blocks": 0,                                                                                           +
                                                   "Local Read Blocks": 0,                                                                                          +
                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                   "Local Written Blocks": 0,                                                                                       +
                                                   "Temp Read Blocks": 0,                                                                                           +
                                                   "Temp Written Blocks": 0                                                                                         +
                                                 },                                                                                                                 +
                                                 {                                                                                                                  +
                                                   "Node Type": "Materialize",                                                                                      +
                                                   "Parent Relationship": "Inner",                                                                                  +
                                                   "Parallel Aware": false,                                                                                         +
                                                   "Startup Cost": 0.00,                                                                                            +
                                                   "Total Cost": 0.03,                                                                                              +
                                                   "Plan Rows": 1,                                                                                                  +
                                                   "Plan Width": 14,                                                                                                +
                                                   "Actual Startup Time": 0.000,                                                                                    +
                                                   "Actual Total Time": 0.000,                                                                                      +
                                                   "Actual Rows": 1,                                                                                                +
                                                   "Actual Loops": 1381453,                                                                                         +
                                                   "Shared Hit Blocks": 1,                                                                                          +
                                                   "Shared Read Blocks": 0,                                                                                         +
                                                   "Shared Dirtied Blocks": 0,                                                                                      +
                                                   "Shared Written Blocks": 0,                                                                                      +
                                                   "Local Hit Blocks": 0,                                                                                           +
                                                   "Local Read Blocks": 0,                                                                                          +
                                                   "Local Dirtied Blocks": 0,                                                                                       +
                                                   "Local Written Blocks": 0,                                                                                       +
                                                   "Temp Read Blocks": 0,                                                                                           +
                                                   "Temp Written Blocks": 0,                                                                                        +
                                                   "Plans": [                                                                                                       +
                                                     {                                                                                                              +
                                                       "Node Type": "Seq Scan",                                                                                     +
                                                       "Parent Relationship": "Outer",                                                                              +
                                                       "Parallel Aware": false,                                                                                     +
                                                       "Relation Name": "kind_type",                                                                                +
                                                       "Alias": "kt",                                                                                               +
                                                       "Startup Cost": 0.00,                                                                                        +
                                                       "Total Cost": 0.03,                                                                                          +
                                                       "Plan Rows": 1,                                                                                              +
                                                       "Plan Width": 14,                                                                                            +
                                                       "Actual Startup Time": 0.015,                                                                                +
                                                       "Actual Total Time": 0.021,                                                                                  +
                                                       "Actual Rows": 1,                                                                                            +
                                                       "Actual Loops": 1,                                                                                           +
                                                       "Filter": "((kind)::text = 'movie'::text)",                                                                  +
                                                       "Rows Removed by Filter": 6,                                                                                 +
                                                       "Shared Hit Blocks": 1,                                                                                      +
                                                       "Shared Read Blocks": 0,                                                                                     +
                                                       "Shared Dirtied Blocks": 0,                                                                                  +
                                                       "Shared Written Blocks": 0,                                                                                  +
                                                       "Local Hit Blocks": 0,                                                                                       +
                                                       "Local Read Blocks": 0,                                                                                      +
                                                       "Local Dirtied Blocks": 0,                                                                                   +
                                                       "Local Written Blocks": 0,                                                                                   +
                                                       "Temp Read Blocks": 0,                                                                                       +
                                                       "Temp Written Blocks": 0                                                                                     +
                                                     }                                                                                                              +
                                                   ]                                                                                                                +
                                                 }                                                                                                                  +
                                               ]                                                                                                                    +
                                             }                                                                                                                      +
                                           ]                                                                                                                        +
                                         }                                                                                                                          +
                                       ]                                                                                                                            +
                                     },                                                                                                                             +
                                     {                                                                                                                              +
                                       "Node Type": "Index Scan",                                                                                                   +
                                       "Parent Relationship": "Inner",                                                                                              +
                                       "Parallel Aware": false,                                                                                                     +
                                       "Scan Direction": "Forward",                                                                                                 +
                                       "Index Name": "movie_id_movie_companies",                                                                                    +
                                       "Relation Name": "movie_companies",                                                                                          +
                                       "Alias": "mc",                                                                                                               +
                                       "Startup Cost": 0.01,                                                                                                        +
                                       "Total Cost": 0.07,                                                                                                          +
                                       "Plan Rows": 2,                                                                                                              +
                                       "Plan Width": 12,                                                                                                            +
                                       "Actual Startup Time": 3.643,                                                                                                +
                                       "Actual Total Time": 5.446,                                                                                                  +
                                       "Actual Rows": 23,                                                                                                           +
                                       "Actual Loops": 1033,                                                                                                        +
                                       "Index Cond": "(movie_id = t.id)",                                                                                           +
                                       "Rows Removed by Index Recheck": 0,                                                                                          +
                                       "Shared Hit Blocks": 2627,                                                                                                   +
                                       "Shared Read Blocks": 2786,                                                                                                  +
                                       "Shared Dirtied Blocks": 0,                                                                                                  +
                                       "Shared Written Blocks": 0,                                                                                                  +
                                       "Local Hit Blocks": 0,                                                                                                       +
                                       "Local Read Blocks": 0,                                                                                                      +
                                       "Local Dirtied Blocks": 0,                                                                                                   +
                                       "Local Written Blocks": 0,                                                                                                   +
                                       "Temp Read Blocks": 0,                                                                                                       +
                                       "Temp Written Blocks": 0                                                                                                     +
                                     }                                                                                                                              +
                                   ]                                                                                                                                +
                                 },                                                                                                                                 +
                                 {                                                                                                                                  +
                                   "Node Type": "Index Scan",                                                                                                       +
                                   "Parent Relationship": "Inner",                                                                                                  +
                                   "Parallel Aware": false,                                                                                                         +
                                   "Scan Direction": "Forward",                                                                                                     +
                                   "Index Name": "company_name_pkey",                                                                                               +
                                   "Relation Name": "company_name",                                                                                                 +
                                   "Alias": "cn",                                                                                                                   +
                                   "Startup Cost": 0.01,                                                                                                            +
                                   "Total Cost": 0.02,                                                                                                              +
                                   "Plan Rows": 1,                                                                                                                  +
                                   "Plan Width": 4,                                                                                                                 +
                                   "Actual Startup Time": 0.525,                                                                                                    +
                                   "Actual Total Time": 0.525,                                                                                                      +
                                   "Actual Rows": 0,                                                                                                                +
                                   "Actual Loops": 23883,                                                                                                           +
                                   "Index Cond": "(id = mc.company_id)",                                                                                            +
                                   "Rows Removed by Index Recheck": 0,                                                                                              +
                                   "Filter": "((country_code)::text = '[us]'::text)",                                                                               +
                                   "Rows Removed by Filter": 1,                                                                                                     +
                                   "Shared Hit Blocks": 93248,                                                                                                      +
                                   "Shared Read Blocks": 2551,                                                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                                                      +
                                   "Shared Written Blocks": 0,                                                                                                      +
                                   "Local Hit Blocks": 0,                                                                                                           +
                                   "Local Read Blocks": 0,                                                                                                          +
                                   "Local Dirtied Blocks": 0,                                                                                                       +
                                   "Local Written Blocks": 0,                                                                                                       +
                                   "Temp Read Blocks": 0,                                                                                                           +
                                   "Temp Written Blocks": 0                                                                                                         +
                                 }                                                                                                                                  +
                               ]                                                                                                                                    +
                             },                                                                                                                                     +
                             {                                                                                                                                      +
                               "Node Type": "Index Scan",                                                                                                           +
                               "Parent Relationship": "Inner",                                                                                                      +
                               "Parallel Aware": false,                                                                                                             +
                               "Scan Direction": "Forward",                                                                                                         +
                               "Index Name": "movie_id_movie_info",                                                                                                 +
                               "Relation Name": "movie_info",                                                                                                       +
                               "Alias": "mi",                                                                                                                       +
                               "Startup Cost": 0.01,                                                                                                                +
                               "Total Cost": 0.25,                                                                                                                  +
                               "Plan Rows": 1,                                                                                                                      +
                               "Plan Width": 8,                                                                                                                     +
                               "Actual Startup Time": 6.464,                                                                                                        +
                               "Actual Total Time": 6.477,                                                                                                          +
                               "Actual Rows": 0,                                                                                                                    +
                               "Actual Loops": 5763,                                                                                                                +
                               "Index Cond": "(movie_id = mc.movie_id)",                                                                                            +
                               "Rows Removed by Index Recheck": 0,                                                                                                  +
                               "Filter": "((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))",+
                               "Rows Removed by Filter": 245,                                                                                                       +
                               "Shared Hit Blocks": 143899,                                                                                                         +
                               "Shared Read Blocks": 19710,                                                                                                         +
                               "Shared Dirtied Blocks": 0,                                                                                                          +
                               "Shared Written Blocks": 0,                                                                                                          +
                               "Local Hit Blocks": 0,                                                                                                               +
                               "Local Read Blocks": 0,                                                                                                              +
                               "Local Dirtied Blocks": 0,                                                                                                           +
                               "Local Written Blocks": 0,                                                                                                           +
                               "Temp Read Blocks": 0,                                                                                                               +
                               "Temp Written Blocks": 0                                                                                                             +
                             }                                                                                                                                      +
                           ]                                                                                                                                        +
                         },                                                                                                                                         +
                         {                                                                                                                                          +
                           "Node Type": "Index Scan",                                                                                                               +
                           "Parent Relationship": "Inner",                                                                                                          +
                           "Parallel Aware": false,                                                                                                                 +
                           "Scan Direction": "Forward",                                                                                                             +
                           "Index Name": "company_type_pkey",                                                                                                       +
                           "Relation Name": "company_type",                                                                                                         +
                           "Alias": "ct",                                                                                                                           +
                           "Startup Cost": 0.00,                                                                                                                    +
                           "Total Cost": 0.00,                                                                                                                      +
                           "Plan Rows": 1,                                                                                                                          +
                           "Plan Width": 4,                                                                                                                         +
                           "Actual Startup Time": 0.008,                                                                                                            +
                           "Actual Total Time": 0.008,                                                                                                              +
                           "Actual Rows": 1,                                                                                                                        +
                           "Actual Loops": 6,                                                                                                                       +
                           "Index Cond": "(id = mc.company_type_id)",                                                                                               +
                           "Rows Removed by Index Recheck": 0,                                                                                                      +
                           "Shared Hit Blocks": 12,                                                                                                                 +
                           "Shared Read Blocks": 0,                                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                   +
                           "Temp Written Blocks": 0                                                                                                                 +
                         }                                                                                                                                          +
                       ]                                                                                                                                            +
                     },                                                                                                                                             +
                     {                                                                                                                                              +
                       "Node Type": "Materialize",                                                                                                                  +
                       "Parent Relationship": "Inner",                                                                                                              +
                       "Parallel Aware": false,                                                                                                                     +
                       "Startup Cost": 0.00,                                                                                                                        +
                       "Total Cost": 0.05,                                                                                                                          +
                       "Plan Rows": 1,                                                                                                                              +
                       "Plan Width": 4,                                                                                                                             +
                       "Actual Startup Time": 0.004,                                                                                                                +
                       "Actual Total Time": 0.004,                                                                                                                  +
                       "Actual Rows": 1,                                                                                                                            +
                       "Actual Loops": 6,                                                                                                                           +
                       "Shared Hit Blocks": 1,                                                                                                                      +
                       "Shared Read Blocks": 0,                                                                                                                     +
                       "Shared Dirtied Blocks": 0,                                                                                                                  +
                       "Shared Written Blocks": 0,                                                                                                                  +
                       "Local Hit Blocks": 0,                                                                                                                       +
                       "Local Read Blocks": 0,                                                                                                                      +
                       "Local Dirtied Blocks": 0,                                                                                                                   +
                       "Local Written Blocks": 0,                                                                                                                   +
                       "Temp Read Blocks": 0,                                                                                                                       +
                       "Temp Written Blocks": 0,                                                                                                                    +
                       "Plans": [                                                                                                                                   +
                         {                                                                                                                                          +
                           "Node Type": "Seq Scan",                                                                                                                 +
                           "Parent Relationship": "Outer",                                                                                                          +
                           "Parallel Aware": false,                                                                                                                 +
                           "Relation Name": "info_type",                                                                                                            +
                           "Alias": "it1",                                                                                                                          +
                           "Startup Cost": 0.00,                                                                                                                    +
                           "Total Cost": 0.05,                                                                                                                      +
                           "Plan Rows": 1,                                                                                                                          +
                           "Plan Width": 4,                                                                                                                         +
                           "Actual Startup Time": 0.016,                                                                                                            +
                           "Actual Total Time": 0.016,                                                                                                              +
                           "Actual Rows": 1,                                                                                                                        +
                           "Actual Loops": 1,                                                                                                                       +
                           "Filter": "((info)::text = 'release dates'::text)",                                                                                      +
                           "Rows Removed by Filter": 15,                                                                                                            +
                           "Shared Hit Blocks": 1,                                                                                                                  +
                           "Shared Read Blocks": 0,                                                                                                                 +
                           "Shared Dirtied Blocks": 0,                                                                                                              +
                           "Shared Written Blocks": 0,                                                                                                              +
                           "Local Hit Blocks": 0,                                                                                                                   +
                           "Local Read Blocks": 0,                                                                                                                  +
                           "Local Dirtied Blocks": 0,                                                                                                               +
                           "Local Written Blocks": 0,                                                                                                               +
                           "Temp Read Blocks": 0,                                                                                                                   +
                           "Temp Written Blocks": 0                                                                                                                 +
                         }                                                                                                                                          +
                       ]                                                                                                                                            +
                     }                                                                                                                                              +
                   ]                                                                                                                                                +
                 },                                                                                                                                                 +
                 {                                                                                                                                                  +
                   "Node Type": "Index Scan",                                                                                                                       +
                   "Parent Relationship": "Inner",                                                                                                                  +
                   "Parallel Aware": false,                                                                                                                         +
                   "Scan Direction": "Forward",                                                                                                                     +
                   "Index Name": "movie_id_movie_keyword",                                                                                                          +
                   "Relation Name": "movie_keyword",                                                                                                                +
                   "Alias": "mk",                                                                                                                                   +
                   "Startup Cost": 0.01,                                                                                                                            +
                   "Total Cost": 0.06,                                                                                                                              +
                   "Plan Rows": 11,                                                                                                                                 +
                   "Plan Width": 8,                                                                                                                                 +
                   "Actual Startup Time": 10.985,                                                                                                                   +
                   "Actual Total Time": 11.099,                                                                                                                     +
                   "Actual Rows": 103,                                                                                                                              +
                   "Actual Loops": 6,                                                                                                                               +
                   "Index Cond": "(movie_id = mc.movie_id)",                                                                                                        +
                   "Rows Removed by Index Recheck": 0,                                                                                                              +
                   "Shared Hit Blocks": 25,                                                                                                                         +
                   "Shared Read Blocks": 7,                                                                                                                         +
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
               "Node Type": "Index Scan",                                                                                                                           +
               "Parent Relationship": "Inner",                                                                                                                      +
               "Parallel Aware": false,                                                                                                                             +
               "Scan Direction": "Forward",                                                                                                                         +
               "Index Name": "keyword_pkey",                                                                                                                        +
               "Relation Name": "keyword",                                                                                                                          +
               "Alias": "k",                                                                                                                                        +
               "Startup Cost": 0.01,                                                                                                                                +
               "Total Cost": 0.01,                                                                                                                                  +
               "Plan Rows": 1,                                                                                                                                      +
               "Plan Width": 4,                                                                                                                                     +
               "Actual Startup Time": 0.441,                                                                                                                        +
               "Actual Total Time": 0.441,                                                                                                                          +
               "Actual Rows": 1,                                                                                                                                    +
               "Actual Loops": 618,                                                                                                                                 +
               "Index Cond": "(id = mk.keyword_id)",                                                                                                                +
               "Rows Removed by Index Recheck": 0,                                                                                                                  +
               "Shared Hit Blocks": 2255,                                                                                                                           +
               "Shared Read Blocks": 221,                                                                                                                           +
               "Shared Dirtied Blocks": 0,                                                                                                                          +
               "Shared Written Blocks": 0,                                                                                                                          +
               "Local Hit Blocks": 0,                                                                                                                               +
               "Local Read Blocks": 0,                                                                                                                              +
               "Local Dirtied Blocks": 0,                                                                                                                           +
               "Local Written Blocks": 0,                                                                                                                           +
               "Temp Read Blocks": 0,                                                                                                                               +
               "Temp Written Blocks": 0                                                                                                                             +
             }                                                                                                                                                      +
           ]                                                                                                                                                        +
         }                                                                                                                                                          +
       ]                                                                                                                                                            +
     },                                                                                                                                                             +
     "Planning Time": 9248.612,                                                                                                                                     +
     "Triggers": [                                                                                                                                                  +
     ],                                                                                                                                                             +
     "Execution Time": 58037.273                                                                                                                                    +
   }                                                                                                                                                                +
 ]
(1 row)

