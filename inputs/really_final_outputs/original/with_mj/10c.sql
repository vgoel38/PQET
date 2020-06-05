                                            QUERY PLAN                                             
---------------------------------------------------------------------------------------------------
 [                                                                                                +
   {                                                                                              +
     "Plan": {                                                                                    +
       "Node Type": "Aggregate",                                                                  +
       "Strategy": "Plain",                                                                       +
       "Partial Mode": "Simple",                                                                  +
       "Parallel Aware": false,                                                                   +
       "Startup Cost": 55287.54,                                                                  +
       "Total Cost": 55287.54,                                                                    +
       "Plan Rows": 1,                                                                            +
       "Plan Width": 64,                                                                          +
       "Actual Startup Time": 19367.070,                                                          +
       "Actual Total Time": 19367.070,                                                            +
       "Actual Rows": 1,                                                                          +
       "Actual Loops": 1,                                                                         +
       "Shared Hit Blocks": 18,                                                                   +
       "Shared Read Blocks": 346870,                                                              +
       "Shared Dirtied Blocks": 0,                                                                +
       "Shared Written Blocks": 0,                                                                +
       "Local Hit Blocks": 0,                                                                     +
       "Local Read Blocks": 0,                                                                    +
       "Local Dirtied Blocks": 0,                                                                 +
       "Local Written Blocks": 0,                                                                 +
       "Temp Read Blocks": 0,                                                                     +
       "Temp Written Blocks": 0,                                                                  +
       "Plans": [                                                                                 +
         {                                                                                        +
           "Node Type": "Merge Join",                                                             +
           "Parent Relationship": "Outer",                                                        +
           "Parallel Aware": false,                                                               +
           "Join Type": "Inner",                                                                  +
           "Startup Cost": 55161.15,                                                              +
           "Total Cost": 55235.85,                                                                +
           "Plan Rows": 332865,                                                                   +
           "Plan Width": 33,                                                                      +
           "Actual Startup Time": 19367.006,                                                      +
           "Actual Total Time": 19367.009,                                                        +
           "Actual Rows": 10,                                                                     +
           "Actual Loops": 1,                                                                     +
           "Inner Unique": true,                                                                  +
           "Merge Cond": "(ci.role_id = rt.id)",                                                  +
           "Shared Hit Blocks": 18,                                                               +
           "Shared Read Blocks": 346870,                                                          +
           "Shared Dirtied Blocks": 0,                                                            +
           "Shared Written Blocks": 0,                                                            +
           "Local Hit Blocks": 0,                                                                 +
           "Local Read Blocks": 0,                                                                +
           "Local Dirtied Blocks": 0,                                                             +
           "Local Written Blocks": 0,                                                             +
           "Temp Read Blocks": 0,                                                                 +
           "Temp Written Blocks": 0,                                                              +
           "Plans": [                                                                             +
             {                                                                                    +
               "Node Type": "Sort",                                                               +
               "Parent Relationship": "Outer",                                                    +
               "Parallel Aware": false,                                                           +
               "Startup Cost": 55161.11,                                                          +
               "Total Cost": 55186.95,                                                            +
               "Plan Rows": 332865,                                                               +
               "Plan Width": 37,                                                                  +
               "Actual Startup Time": 19366.995,                                                  +
               "Actual Total Time": 19366.995,                                                    +
               "Actual Rows": 10,                                                                 +
               "Actual Loops": 1,                                                                 +
               "Sort Key": ["ci.role_id"],                                                        +
               "Sort Method": "quicksort",                                                        +
               "Sort Space Used": 25,                                                             +
               "Sort Space Type": "Memory",                                                       +
               "Shared Hit Blocks": 17,                                                           +
               "Shared Read Blocks": 346870,                                                      +
               "Shared Dirtied Blocks": 0,                                                        +
               "Shared Written Blocks": 0,                                                        +
               "Local Hit Blocks": 0,                                                             +
               "Local Read Blocks": 0,                                                            +
               "Local Dirtied Blocks": 0,                                                         +
               "Local Written Blocks": 0,                                                         +
               "Temp Read Blocks": 0,                                                             +
               "Temp Written Blocks": 0,                                                          +
               "Plans": [                                                                         +
                 {                                                                                +
                   "Node Type": "Merge Join",                                                     +
                   "Parent Relationship": "Outer",                                                +
                   "Parallel Aware": false,                                                       +
                   "Join Type": "Inner",                                                          +
                   "Startup Cost": 54138.23,                                                      +
                   "Total Cost": 54212.93,                                                        +
                   "Plan Rows": 332865,                                                           +
                   "Plan Width": 37,                                                              +
                   "Actual Startup Time": 19366.925,                                              +
                   "Actual Total Time": 19366.929,                                                +
                   "Actual Rows": 10,                                                             +
                   "Actual Loops": 1,                                                             +
                   "Inner Unique": true,                                                          +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                  +
                   "Shared Hit Blocks": 13,                                                       +
                   "Shared Read Blocks": 346870,                                                  +
                   "Shared Dirtied Blocks": 0,                                                    +
                   "Shared Written Blocks": 0,                                                    +
                   "Local Hit Blocks": 0,                                                         +
                   "Local Read Blocks": 0,                                                        +
                   "Local Dirtied Blocks": 0,                                                     +
                   "Local Written Blocks": 0,                                                     +
                   "Temp Read Blocks": 0,                                                         +
                   "Temp Written Blocks": 0,                                                      +
                   "Plans": [                                                                     +
                     {                                                                            +
                       "Node Type": "Sort",                                                       +
                       "Parent Relationship": "Outer",                                            +
                       "Parallel Aware": false,                                                   +
                       "Startup Cost": 54138.20,                                                  +
                       "Total Cost": 54164.04,                                                    +
                       "Plan Rows": 332865,                                                       +
                       "Plan Width": 41,                                                          +
                       "Actual Startup Time": 19366.905,                                          +
                       "Actual Total Time": 19366.906,                                            +
                       "Actual Rows": 10,                                                         +
                       "Actual Loops": 1,                                                         +
                       "Sort Key": ["mc.company_type_id"],                                        +
                       "Sort Method": "quicksort",                                                +
                       "Sort Space Used": 26,                                                     +
                       "Sort Space Type": "Memory",                                               +
                       "Shared Hit Blocks": 12,                                                   +
                       "Shared Read Blocks": 346870,                                              +
                       "Shared Dirtied Blocks": 0,                                                +
                       "Shared Written Blocks": 0,                                                +
                       "Local Hit Blocks": 0,                                                     +
                       "Local Read Blocks": 0,                                                    +
                       "Local Dirtied Blocks": 0,                                                 +
                       "Local Written Blocks": 0,                                                 +
                       "Temp Read Blocks": 0,                                                     +
                       "Temp Written Blocks": 0,                                                  +
                       "Plans": [                                                                 +
                         {                                                                        +
                           "Node Type": "Merge Join",                                             +
                           "Parent Relationship": "Outer",                                        +
                           "Parallel Aware": false,                                               +
                           "Join Type": "Inner",                                                  +
                           "Startup Cost": 53010.67,                                              +
                           "Total Cost": 53190.02,                                                +
                           "Plan Rows": 332865,                                                   +
                           "Plan Width": 41,                                                      +
                           "Actual Startup Time": 19354.929,                                      +
                           "Actual Total Time": 19366.890,                                        +
                           "Actual Rows": 10,                                                     +
                           "Actual Loops": 1,                                                     +
                           "Inner Unique": true,                                                  +
                           "Merge Cond": "(mc.company_id = cn.id)",                               +
                           "Shared Hit Blocks": 12,                                               +
                           "Shared Read Blocks": 346870,                                          +
                           "Shared Dirtied Blocks": 0,                                            +
                           "Shared Written Blocks": 0,                                            +
                           "Local Hit Blocks": 0,                                                 +
                           "Local Read Blocks": 0,                                                +
                           "Local Dirtied Blocks": 0,                                             +
                           "Local Written Blocks": 0,                                             +
                           "Temp Read Blocks": 0,                                                 +
                           "Temp Written Blocks": 0,                                              +
                           "Plans": [                                                             +
                             {                                                                    +
                               "Node Type": "Sort",                                               +
                               "Parent Relationship": "Outer",                                    +
                               "Parallel Aware": false,                                           +
                               "Startup Cost": 52666.56,                                          +
                               "Total Cost": 52738.14,                                            +
                               "Plan Rows": 921966,                                               +
                               "Plan Width": 45,                                                  +
                               "Actual Startup Time": 19192.016,                                  +
                               "Actual Total Time": 19192.020,                                    +
                               "Actual Rows": 23,                                                 +
                               "Actual Loops": 1,                                                 +
                               "Sort Key": ["mc.company_id"],                                     +
                               "Sort Method": "quicksort",                                        +
                               "Sort Space Used": 27,                                             +
                               "Sort Space Type": "Memory",                                       +
                               "Shared Hit Blocks": 10,                                           +
                               "Shared Read Blocks": 343878,                                      +
                               "Shared Dirtied Blocks": 0,                                        +
                               "Shared Written Blocks": 0,                                        +
                               "Local Hit Blocks": 0,                                             +
                               "Local Read Blocks": 0,                                            +
                               "Local Dirtied Blocks": 0,                                         +
                               "Local Written Blocks": 0,                                         +
                               "Temp Read Blocks": 0,                                             +
                               "Temp Written Blocks": 0,                                          +
                               "Plans": [                                                         +
                                 {                                                                +
                                   "Node Type": "Merge Join",                                     +
                                   "Parent Relationship": "Outer",                                +
                                   "Parallel Aware": false,                                       +
                                   "Join Type": "Inner",                                          +
                                   "Startup Cost": 48941.41,                                      +
                                   "Total Cost": 49829.89,                                        +
                                   "Plan Rows": 921966,                                           +
                                   "Plan Width": 45,                                              +
                                   "Actual Startup Time": 18943.484,                              +
                                   "Actual Total Time": 19191.988,                                +
                                   "Actual Rows": 23,                                             +
                                   "Actual Loops": 1,                                             +
                                   "Inner Unique": false,                                         +
                                   "Merge Cond": "(t.id = mc.movie_id)",                          +
                                   "Shared Hit Blocks": 10,                                       +
                                   "Shared Read Blocks": 343878,                                  +
                                   "Shared Dirtied Blocks": 0,                                    +
                                   "Shared Written Blocks": 0,                                    +
                                   "Local Hit Blocks": 0,                                         +
                                   "Local Read Blocks": 0,                                        +
                                   "Local Dirtied Blocks": 0,                                     +
                                   "Local Written Blocks": 0,                                     +
                                   "Temp Read Blocks": 0,                                         +
                                   "Temp Written Blocks": 0,                                      +
                                   "Plans": [                                                     +
                                     {                                                            +
                                       "Node Type": "Merge Join",                                 +
                                       "Parent Relationship": "Outer",                            +
                                       "Parallel Aware": false,                                   +
                                       "Join Type": "Inner",                                      +
                                       "Startup Cost": 39535.96,                                  +
                                       "Total Cost": 39948.23,                                    +
                                       "Plan Rows": 480018,                                       +
                                       "Plan Width": 45,                                          +
                                       "Actual Startup Time": 17292.482,                          +
                                       "Actual Total Time": 17413.598,                            +
                                       "Actual Rows": 12,                                         +
                                       "Actual Loops": 1,                                         +
                                       "Inner Unique": true,                                      +
                                       "Merge Cond": "(ci.movie_id = t.id)",                      +
                                       "Shared Hit Blocks": 7,                                    +
                                       "Shared Read Blocks": 325092,                              +
                                       "Shared Dirtied Blocks": 0,                                +
                                       "Shared Written Blocks": 0,                                +
                                       "Local Hit Blocks": 0,                                     +
                                       "Local Read Blocks": 0,                                    +
                                       "Local Dirtied Blocks": 0,                                 +
                                       "Local Written Blocks": 0,                                 +
                                       "Temp Read Blocks": 0,                                     +
                                       "Temp Written Blocks": 0,                                  +
                                       "Plans": [                                                 +
                                         {                                                        +
                                           "Node Type": "Sort",                                   +
                                           "Parent Relationship": "Outer",                        +
                                           "Parallel Aware": false,                               +
                                           "Startup Cost": 32403.46,                              +
                                           "Total Cost": 32457.33,                                +
                                           "Plan Rows": 693889,                                   +
                                           "Plan Width": 24,                                      +
                                           "Actual Startup Time": 14863.678,                      +
                                           "Actual Total Time": 14863.683,                        +
                                           "Actual Rows": 15,                                     +
                                           "Actual Loops": 1,                                     +
                                           "Sort Key": ["ci.movie_id"],                           +
                                           "Sort Method": "quicksort",                            +
                                           "Sort Space Used": 25,                                 +
                                           "Sort Space Type": "Memory",                           +
                                           "Shared Hit Blocks": 6,                                +
                                           "Shared Read Blocks": 289095,                          +
                                           "Shared Dirtied Blocks": 0,                            +
                                           "Shared Written Blocks": 0,                            +
                                           "Local Hit Blocks": 0,                                 +
                                           "Local Read Blocks": 0,                                +
                                           "Local Dirtied Blocks": 0,                             +
                                           "Local Written Blocks": 0,                             +
                                           "Temp Read Blocks": 0,                                 +
                                           "Temp Written Blocks": 0,                              +
                                           "Plans": [                                             +
                                             {                                                    +
                                               "Node Type": "Merge Join",                         +
                                               "Parent Relationship": "Outer",                    +
                                               "Parallel Aware": false,                           +
                                               "Join Type": "Inner",                              +
                                               "Startup Cost": 29669.35,                          +
                                               "Total Cost": 30312.70,                            +
                                               "Plan Rows": 693889,                               +
                                               "Plan Width": 24,                                  +
                                               "Actual Startup Time": 14631.296,                  +
                                               "Actual Total Time": 14863.649,                    +
                                               "Actual Rows": 15,                                 +
                                               "Actual Loops": 1,                                 +
                                               "Inner Unique": false,                             +
                                               "Merge Cond": "(chn.id = ci.person_role_id)",      +
                                               "Shared Hit Blocks": 6,                            +
                                               "Shared Read Blocks": 289095,                      +
                                               "Shared Dirtied Blocks": 0,                        +
                                               "Shared Written Blocks": 0,                        +
                                               "Local Hit Blocks": 0,                             +
                                               "Local Read Blocks": 0,                            +
                                               "Local Dirtied Blocks": 0,                         +
                                               "Local Written Blocks": 0,                         +
                                               "Temp Read Blocks": 0,                             +
                                               "Temp Written Blocks": 0,                          +
                                               "Plans": [                                         +
                                                 {                                                +
                                                   "Node Type": "Sort",                           +
                                                   "Parent Relationship": "Outer",                +
                                                   "Parallel Aware": false,                       +
                                                   "Startup Cost": 11884.63,                      +
                                                   "Total Cost": 12128.45,                        +
                                                   "Plan Rows": 3140339,                          +
                                                   "Plan Width": 20,                              +
                                                   "Actual Startup Time": 2595.789,               +
                                                   "Actual Total Time": 2706.439,                 +
                                                   "Actual Rows": 881592,                         +
                                                   "Actual Loops": 1,                             +
                                                   "Sort Key": ["chn.id"],                        +
                                                   "Sort Method": "quicksort",                    +
                                                   "Sort Space Used": 318833,                     +
                                                   "Sort Space Type": "Memory",                   +
                                                   "Shared Hit Blocks": 2,                        +
                                                   "Shared Read Blocks": 36445,                   +
                                                   "Shared Dirtied Blocks": 0,                    +
                                                   "Shared Written Blocks": 0,                    +
                                                   "Local Hit Blocks": 0,                         +
                                                   "Local Read Blocks": 0,                        +
                                                   "Local Dirtied Blocks": 0,                     +
                                                   "Local Written Blocks": 0,                     +
                                                   "Temp Read Blocks": 0,                         +
                                                   "Temp Written Blocks": 0,                      +
                                                   "Plans": [                                     +
                                                     {                                            +
                                                       "Node Type": "Seq Scan",                   +
                                                       "Parent Relationship": "Outer",            +
                                                       "Parallel Aware": false,                   +
                                                       "Relation Name": "char_name",              +
                                                       "Alias": "chn",                            +
                                                       "Startup Cost": 0.00,                      +
                                                       "Total Cost": 1360.36,                     +
                                                       "Plan Rows": 3140339,                      +
                                                       "Plan Width": 20,                          +
                                                       "Actual Startup Time": 24.978,             +
                                                       "Actual Total Time": 1079.048,             +
                                                       "Actual Rows": 3140339,                    +
                                                       "Actual Loops": 1,                         +
                                                       "Shared Hit Blocks": 2,                    +
                                                       "Shared Read Blocks": 36445,               +
                                                       "Shared Dirtied Blocks": 0,                +
                                                       "Shared Written Blocks": 0,                +
                                                       "Local Hit Blocks": 0,                     +
                                                       "Local Read Blocks": 0,                    +
                                                       "Local Dirtied Blocks": 0,                 +
                                                       "Local Written Blocks": 0,                 +
                                                       "Temp Read Blocks": 0,                     +
                                                       "Temp Written Blocks": 0                   +
                                                     }                                            +
                                                   ]                                              +
                                                 },                                               +
                                                 {                                                +
                                                   "Node Type": "Sort",                           +
                                                   "Parent Relationship": "Inner",                +
                                                   "Parallel Aware": false,                       +
                                                   "Startup Cost": 17784.72,                      +
                                                   "Total Cost": 17895.73,                        +
                                                   "Plan Rows": 1429807,                          +
                                                   "Plan Width": 12,                              +
                                                   "Actual Startup Time": 12035.495,              +
                                                   "Actual Total Time": 12035.498,                +
                                                   "Actual Rows": 16,                             +
                                                   "Actual Loops": 1,                             +
                                                   "Sort Key": ["ci.person_role_id"],             +
                                                   "Sort Method": "quicksort",                    +
                                                   "Sort Space Used": 116439,                     +
                                                   "Sort Space Type": "Memory",                   +
                                                   "Shared Hit Blocks": 4,                        +
                                                   "Shared Read Blocks": 252650,                  +
                                                   "Shared Dirtied Blocks": 0,                    +
                                                   "Shared Written Blocks": 0,                    +
                                                   "Local Hit Blocks": 0,                         +
                                                   "Local Read Blocks": 0,                        +
                                                   "Local Dirtied Blocks": 0,                     +
                                                   "Local Written Blocks": 0,                     +
                                                   "Temp Read Blocks": 0,                         +
                                                   "Temp Written Blocks": 0,                      +
                                                   "Plans": [                                     +
                                                     {                                            +
                                                       "Node Type": "Seq Scan",                   +
                                                       "Parent Relationship": "Outer",            +
                                                       "Parallel Aware": false,                   +
                                                       "Relation Name": "cast_info",              +
                                                       "Alias": "ci",                             +
                                                       "Startup Cost": 0.00,                      +
                                                       "Total Cost": 13245.00,                    +
                                                       "Plan Rows": 1429807,                      +
                                                       "Plan Width": 12,                          +
                                                       "Actual Startup Time": 851.699,            +
                                                       "Actual Total Time": 11710.979,            +
                                                       "Actual Rows": 1435439,                    +
                                                       "Actual Loops": 1,                         +
                                                       "Filter": "(note ~~ '%(producer)%'::text)",+
                                                       "Rows Removed by Filter": 34808905,        +
                                                       "Shared Hit Blocks": 4,                    +
                                                       "Shared Read Blocks": 252650,              +
                                                       "Shared Dirtied Blocks": 0,                +
                                                       "Shared Written Blocks": 0,                +
                                                       "Local Hit Blocks": 0,                     +
                                                       "Local Read Blocks": 0,                    +
                                                       "Local Dirtied Blocks": 0,                 +
                                                       "Local Written Blocks": 0,                 +
                                                       "Temp Read Blocks": 0,                     +
                                                       "Temp Written Blocks": 0                   +
                                                     }                                            +
                                                   ]                                              +
                                                 }                                                +
                                               ]                                                  +
                                             }                                                    +
                                           ]                                                      +
                                         },                                                       +
                                         {                                                        +
                                           "Node Type": "Sort",                                   +
                                           "Parent Relationship": "Inner",                        +
                                           "Parallel Aware": false,                               +
                                           "Startup Cost": 7132.50,                               +
                                           "Total Cost": 7268.30,                                 +
                                           "Plan Rows": 1749033,                                  +
                                           "Plan Width": 21,                                      +
                                           "Actual Startup Time": 2107.931,                       +
                                           "Actual Total Time": 2313.692,                         +
                                           "Actual Rows": 1740105,                                +
                                           "Actual Loops": 1,                                     +
                                           "Sort Key": ["t.id"],                                  +
                                           "Sort Method": "quicksort",                            +
                                           "Sort Space Used": 171002,                             +
                                           "Sort Space Type": "Memory",                           +
                                           "Shared Hit Blocks": 1,                                +
                                           "Shared Read Blocks": 35997,                           +
                                           "Shared Dirtied Blocks": 0,                            +
                                           "Shared Written Blocks": 0,                            +
                                           "Local Hit Blocks": 0,                                 +
                                           "Local Read Blocks": 0,                                +
                                           "Local Dirtied Blocks": 0,                             +
                                           "Local Written Blocks": 0,                             +
                                           "Temp Read Blocks": 0,                                 +
                                           "Temp Written Blocks": 0,                              +
                                           "Plans": [                                             +
                                             {                                                    +
                                               "Node Type": "Seq Scan",                           +
                                               "Parent Relationship": "Outer",                    +
                                               "Parallel Aware": false,                           +
                                               "Relation Name": "title",                          +
                                               "Alias": "t",                                      +
                                               "Startup Cost": 0.00,                              +
                                               "Total Cost": 1500.26,                             +
                                               "Plan Rows": 1749033,                              +
                                               "Plan Width": 21,                                  +
                                               "Actual Startup Time": 6.932,                      +
                                               "Actual Total Time": 1174.270,                     +
                                               "Actual Rows": 1749032,                            +
                                               "Actual Loops": 1,                                 +
                                               "Filter": "(production_year > 1990)",              +
                                               "Rows Removed by Filter": 779280,                  +
                                               "Shared Hit Blocks": 1,                            +
                                               "Shared Read Blocks": 35997,                       +
                                               "Shared Dirtied Blocks": 0,                        +
                                               "Shared Written Blocks": 0,                        +
                                               "Local Hit Blocks": 0,                             +
                                               "Local Read Blocks": 0,                            +
                                               "Local Dirtied Blocks": 0,                         +
                                               "Local Written Blocks": 0,                         +
                                               "Temp Read Blocks": 0,                             +
                                               "Temp Written Blocks": 0                           +
                                             }                                                    +
                                           ]                                                      +
                                         }                                                        +
                                       ]                                                          +
                                     },                                                           +
                                     {                                                            +
                                       "Node Type": "Sort",                                       +
                                       "Parent Relationship": "Inner",                            +
                                       "Parallel Aware": false,                                   +
                                       "Startup Cost": 9405.45,                                   +
                                       "Total Cost": 9608.03,                                     +
                                       "Plan Rows": 2609129,                                      +
                                       "Plan Width": 12,                                          +
                                       "Actual Startup Time": 1503.723,                           +
                                       "Actual Total Time": 1594.110,                             +
                                       "Actual Rows": 1974994,                                    +
                                       "Actual Loops": 1,                                         +
                                       "Sort Key": ["mc.movie_id"],                               +
                                       "Sort Method": "quicksort",                                +
                                       "Sort Space Used": 220607,                                 +
                                       "Sort Space Type": "Memory",                               +
                                       "Shared Hit Blocks": 3,                                    +
                                       "Shared Read Blocks": 18786,                               +
                                       "Shared Dirtied Blocks": 0,                                +
                                       "Shared Written Blocks": 0,                                +
                                       "Local Hit Blocks": 0,                                     +
                                       "Local Read Blocks": 0,                                    +
                                       "Local Dirtied Blocks": 0,                                 +
                                       "Local Written Blocks": 0,                                 +
                                       "Temp Read Blocks": 0,                                     +
                                       "Temp Written Blocks": 0,                                  +
                                       "Plans": [                                                 +
                                         {                                                        +
                                           "Node Type": "Seq Scan",                               +
                                           "Parent Relationship": "Outer",                        +
                                           "Parallel Aware": false,                               +
                                           "Relation Name": "movie_companies",                    +
                                           "Alias": "mc",                                         +
                                           "Startup Cost": 0.00,                                  +
                                           "Total Cost": 769.75,                                  +
                                           "Plan Rows": 2609129,                                  +
                                           "Plan Width": 12,                                      +
                                           "Actual Startup Time": 0.014,                          +
                                           "Actual Total Time": 543.271,                          +
                                           "Actual Rows": 2609129,                                +
                                           "Actual Loops": 1,                                     +
                                           "Shared Hit Blocks": 3,                                +
                                           "Shared Read Blocks": 18786,                           +
                                           "Shared Dirtied Blocks": 0,                            +
                                           "Shared Written Blocks": 0,                            +
                                           "Local Hit Blocks": 0,                                 +
                                           "Local Read Blocks": 0,                                +
                                           "Local Dirtied Blocks": 0,                             +
                                           "Local Written Blocks": 0,                             +
                                           "Temp Read Blocks": 0,                                 +
                                           "Temp Written Blocks": 0                               +
                                         }                                                        +
                                       ]                                                          +
                                     }                                                            +
                                   ]                                                              +
                                 }                                                                +
                               ]                                                                  +
                             },                                                                   +
                             {                                                                    +
                               "Node Type": "Sort",                                               +
                               "Parent Relationship": "Inner",                                    +
                               "Parallel Aware": false,                                           +
                               "Startup Cost": 344.10,                                            +
                               "Total Cost": 350.69,                                              +
                               "Plan Rows": 84843,                                                +
                               "Plan Width": 4,                                                   +
                               "Actual Startup Time": 162.767,                                    +
                               "Actual Total Time": 168.669,                                      +
                               "Actual Rows": 57716,                                              +
                               "Actual Loops": 1,                                                 +
                               "Sort Key": ["cn.id"],                                             +
                               "Sort Method": "quicksort",                                        +
                               "Sort Space Used": 7050,                                           +
                               "Sort Space Type": "Memory",                                       +
                               "Shared Hit Blocks": 2,                                            +
                               "Shared Read Blocks": 2992,                                        +
                               "Shared Dirtied Blocks": 0,                                        +
                               "Shared Written Blocks": 0,                                        +
                               "Local Hit Blocks": 0,                                             +
                               "Local Read Blocks": 0,                                            +
                               "Local Dirtied Blocks": 0,                                         +
                               "Local Written Blocks": 0,                                         +
                               "Temp Read Blocks": 0,                                             +
                               "Temp Written Blocks": 0,                                          +
                               "Plans": [                                                         +
                                 {                                                                +
                                   "Node Type": "Seq Scan",                                       +
                                   "Parent Relationship": "Outer",                                +
                                   "Parallel Aware": false,                                       +
                                   "Relation Name": "company_name",                               +
                                   "Alias": "cn",                                                 +
                                   "Startup Cost": 0.00,                                          +
                                   "Total Cost": 128.41,                                          +
                                   "Plan Rows": 84843,                                            +
                                   "Plan Width": 4,                                               +
                                   "Actual Startup Time": 11.453,                                 +
                                   "Actual Total Time": 121.560,                                  +
                                   "Actual Rows": 84843,                                          +
                                   "Actual Loops": 1,                                             +
                                   "Filter": "((country_code)::text = '[us]'::text)",             +
                                   "Rows Removed by Filter": 150154,                              +
                                   "Shared Hit Blocks": 2,                                        +
                                   "Shared Read Blocks": 2992,                                    +
                                   "Shared Dirtied Blocks": 0,                                    +
                                   "Shared Written Blocks": 0,                                    +
                                   "Local Hit Blocks": 0,                                         +
                                   "Local Read Blocks": 0,                                        +
                                   "Local Dirtied Blocks": 0,                                     +
                                   "Local Written Blocks": 0,                                     +
                                   "Temp Read Blocks": 0,                                         +
                                   "Temp Written Blocks": 0                                       +
                                 }                                                                +
                               ]                                                                  +
                             }                                                                    +
                           ]                                                                      +
                         }                                                                        +
                       ]                                                                          +
                     },                                                                           +
                     {                                                                            +
                       "Node Type": "Sort",                                                       +
                       "Parent Relationship": "Inner",                                            +
                       "Parallel Aware": false,                                                   +
                       "Startup Cost": 0.03,                                                      +
                       "Total Cost": 0.03,                                                        +
                       "Plan Rows": 4,                                                            +
                       "Plan Width": 4,                                                           +
                       "Actual Startup Time": 0.016,                                              +
                       "Actual Total Time": 0.016,                                                +
                       "Actual Rows": 2,                                                          +
                       "Actual Loops": 1,                                                         +
                       "Sort Key": ["ct.id"],                                                     +
                       "Sort Method": "quicksort",                                                +
                       "Sort Space Used": 25,                                                     +
                       "Sort Space Type": "Memory",                                               +
                       "Shared Hit Blocks": 1,                                                    +
                       "Shared Read Blocks": 0,                                                   +
                       "Shared Dirtied Blocks": 0,                                                +
                       "Shared Written Blocks": 0,                                                +
                       "Local Hit Blocks": 0,                                                     +
                       "Local Read Blocks": 0,                                                    +
                       "Local Dirtied Blocks": 0,                                                 +
                       "Local Written Blocks": 0,                                                 +
                       "Temp Read Blocks": 0,                                                     +
                       "Temp Written Blocks": 0,                                                  +
                       "Plans": [                                                                 +
                         {                                                                        +
                           "Node Type": "Seq Scan",                                               +
                           "Parent Relationship": "Outer",                                        +
                           "Parallel Aware": false,                                               +
                           "Relation Name": "company_type",                                       +
                           "Alias": "ct",                                                         +
                           "Startup Cost": 0.00,                                                  +
                           "Total Cost": 0.03,                                                    +
                           "Plan Rows": 4,                                                        +
                           "Plan Width": 4,                                                       +
                           "Actual Startup Time": 0.007,                                          +
                           "Actual Total Time": 0.008,                                            +
                           "Actual Rows": 4,                                                      +
                           "Actual Loops": 1,                                                     +
                           "Shared Hit Blocks": 1,                                                +
                           "Shared Read Blocks": 0,                                               +
                           "Shared Dirtied Blocks": 0,                                            +
                           "Shared Written Blocks": 0,                                            +
                           "Local Hit Blocks": 0,                                                 +
                           "Local Read Blocks": 0,                                                +
                           "Local Dirtied Blocks": 0,                                             +
                           "Local Written Blocks": 0,                                             +
                           "Temp Read Blocks": 0,                                                 +
                           "Temp Written Blocks": 0                                               +
                         }                                                                        +
                       ]                                                                          +
                     }                                                                            +
                   ]                                                                              +
                 }                                                                                +
               ]                                                                                  +
             },                                                                                   +
             {                                                                                    +
               "Node Type": "Sort",                                                               +
               "Parent Relationship": "Inner",                                                    +
               "Parallel Aware": false,                                                           +
               "Startup Cost": 0.04,                                                              +
               "Total Cost": 0.04,                                                                +
               "Plan Rows": 12,                                                                   +
               "Plan Width": 4,                                                                   +
               "Actual Startup Time": 0.009,                                                      +
               "Actual Total Time": 0.009,                                                        +
               "Actual Rows": 1,                                                                  +
               "Actual Loops": 1,                                                                 +
               "Sort Key": ["rt.id"],                                                             +
               "Sort Method": "quicksort",                                                        +
               "Sort Space Used": 25,                                                             +
               "Sort Space Type": "Memory",                                                       +
               "Shared Hit Blocks": 1,                                                            +
               "Shared Read Blocks": 0,                                                           +
               "Shared Dirtied Blocks": 0,                                                        +
               "Shared Written Blocks": 0,                                                        +
               "Local Hit Blocks": 0,                                                             +
               "Local Read Blocks": 0,                                                            +
               "Local Dirtied Blocks": 0,                                                         +
               "Local Written Blocks": 0,                                                         +
               "Temp Read Blocks": 0,                                                             +
               "Temp Written Blocks": 0,                                                          +
               "Plans": [                                                                         +
                 {                                                                                +
                   "Node Type": "Seq Scan",                                                       +
                   "Parent Relationship": "Outer",                                                +
                   "Parallel Aware": false,                                                       +
                   "Relation Name": "role_type",                                                  +
                   "Alias": "rt",                                                                 +
                   "Startup Cost": 0.00,                                                          +
                   "Total Cost": 0.03,                                                            +
                   "Plan Rows": 12,                                                               +
                   "Plan Width": 4,                                                               +
                   "Actual Startup Time": 0.003,                                                  +
                   "Actual Total Time": 0.005,                                                    +
                   "Actual Rows": 12,                                                             +
                   "Actual Loops": 1,                                                             +
                   "Shared Hit Blocks": 1,                                                        +
                   "Shared Read Blocks": 0,                                                       +
                   "Shared Dirtied Blocks": 0,                                                    +
                   "Shared Written Blocks": 0,                                                    +
                   "Local Hit Blocks": 0,                                                         +
                   "Local Read Blocks": 0,                                                        +
                   "Local Dirtied Blocks": 0,                                                     +
                   "Local Written Blocks": 0,                                                     +
                   "Temp Read Blocks": 0,                                                         +
                   "Temp Written Blocks": 0                                                       +
                 }                                                                                +
               ]                                                                                  +
             }                                                                                    +
           ]                                                                                      +
         }                                                                                        +
       ]                                                                                          +
     },                                                                                           +
     "Planning Time": 2645.774,                                                                   +
     "Triggers": [                                                                                +
     ],                                                                                           +
     "Execution Time": 19442.343                                                                  +
   }                                                                                              +
 ]
(1 row)
