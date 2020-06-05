                                                              QUERY PLAN                                                               
---------------------------------------------------------------------------------------------------------------------------------------
 [                                                                                                                                    +
   {                                                                                                                                  +
     "Plan": {                                                                                                                        +
       "Node Type": "Aggregate",                                                                                                      +
       "Strategy": "Plain",                                                                                                           +
       "Partial Mode": "Simple",                                                                                                      +
       "Parallel Aware": false,                                                                                                       +
       "Startup Cost": 43226.16,                                                                                                      +
       "Total Cost": 43226.16,                                                                                                        +
       "Plan Rows": 1,                                                                                                                +
       "Plan Width": 64,                                                                                                              +
       "Actual Startup Time": 19657.200,                                                                                              +
       "Actual Total Time": 19657.200,                                                                                                +
       "Actual Rows": 1,                                                                                                              +
       "Actual Loops": 1,                                                                                                             +
       "Shared Hit Blocks": 18,                                                                                                       +
       "Shared Read Blocks": 346870,                                                                                                  +
       "Shared Dirtied Blocks": 0,                                                                                                    +
       "Shared Written Blocks": 0,                                                                                                    +
       "Local Hit Blocks": 0,                                                                                                         +
       "Local Read Blocks": 0,                                                                                                        +
       "Local Dirtied Blocks": 0,                                                                                                     +
       "Local Written Blocks": 0,                                                                                                     +
       "Temp Read Blocks": 0,                                                                                                         +
       "Temp Written Blocks": 0,                                                                                                      +
       "Plans": [                                                                                                                     +
         {                                                                                                                            +
           "Node Type": "Merge Join",                                                                                                 +
           "Parent Relationship": "Outer",                                                                                            +
           "Parallel Aware": false,                                                                                                   +
           "Join Type": "Inner",                                                                                                      +
           "Startup Cost": 42738.53,                                                                                                  +
           "Total Cost": 43226.16,                                                                                                    +
           "Plan Rows": 4,                                                                                                            +
           "Plan Width": 33,                                                                                                          +
           "Actual Startup Time": 19121.763,                                                                                          +
           "Actual Total Time": 19657.096,                                                                                            +
           "Actual Rows": 104,                                                                                                        +
           "Actual Loops": 1,                                                                                                         +
           "Inner Unique": true,                                                                                                      +
           "Merge Cond": "(ci.person_role_id = chn.id)",                                                                              +
           "Shared Hit Blocks": 18,                                                                                                   +
           "Shared Read Blocks": 346870,                                                                                              +
           "Shared Dirtied Blocks": 0,                                                                                                +
           "Shared Written Blocks": 0,                                                                                                +
           "Local Hit Blocks": 0,                                                                                                     +
           "Local Read Blocks": 0,                                                                                                    +
           "Local Dirtied Blocks": 0,                                                                                                 +
           "Local Written Blocks": 0,                                                                                                 +
           "Temp Read Blocks": 0,                                                                                                     +
           "Temp Written Blocks": 0,                                                                                                  +
           "Plans": [                                                                                                                 +
             {                                                                                                                        +
               "Node Type": "Sort",                                                                                                   +
               "Parent Relationship": "Outer",                                                                                        +
               "Parallel Aware": false,                                                                                               +
               "Startup Cost": 30853.90,                                                                                              +
               "Total Cost": 30853.90,                                                                                                +
               "Plan Rows": 8,                                                                                                        +
               "Plan Width": 21,                                                                                                      +
               "Actual Startup Time": 16536.064,                                                                                      +
               "Actual Total Time": 16536.085,                                                                                        +
               "Actual Rows": 105,                                                                                                    +
               "Actual Loops": 1,                                                                                                     +
               "Sort Key": ["ci.person_role_id"],                                                                                     +
               "Sort Method": "quicksort",                                                                                            +
               "Sort Space Used": 33,                                                                                                 +
               "Sort Space Type": "Memory",                                                                                           +
               "Shared Hit Blocks": 16,                                                                                               +
               "Shared Read Blocks": 310425,                                                                                          +
               "Shared Dirtied Blocks": 0,                                                                                            +
               "Shared Written Blocks": 0,                                                                                            +
               "Local Hit Blocks": 0,                                                                                                 +
               "Local Read Blocks": 0,                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                             +
               "Local Written Blocks": 0,                                                                                             +
               "Temp Read Blocks": 0,                                                                                                 +
               "Temp Written Blocks": 0,                                                                                              +
               "Plans": [                                                                                                             +
                 {                                                                                                                    +
                   "Node Type": "Merge Join",                                                                                         +
                   "Parent Relationship": "Outer",                                                                                    +
                   "Parallel Aware": false,                                                                                           +
                   "Join Type": "Inner",                                                                                              +
                   "Startup Cost": 30853.90,                                                                                          +
                   "Total Cost": 30853.90,                                                                                            +
                   "Plan Rows": 8,                                                                                                    +
                   "Plan Width": 21,                                                                                                  +
                   "Actual Startup Time": 16535.920,                                                                                  +
                   "Actual Total Time": 16535.962,                                                                                    +
                   "Actual Rows": 112,                                                                                                +
                   "Actual Loops": 1,                                                                                                 +
                   "Inner Unique": true,                                                                                              +
                   "Merge Cond": "(mc.company_type_id = ct.id)",                                                                      +
                   "Shared Hit Blocks": 12,                                                                                           +
                   "Shared Read Blocks": 310425,                                                                                      +
                   "Shared Dirtied Blocks": 0,                                                                                        +
                   "Shared Written Blocks": 0,                                                                                        +
                   "Local Hit Blocks": 0,                                                                                             +
                   "Local Read Blocks": 0,                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                         +
                   "Local Written Blocks": 0,                                                                                         +
                   "Temp Read Blocks": 0,                                                                                             +
                   "Temp Written Blocks": 0,                                                                                          +
                   "Plans": [                                                                                                         +
                     {                                                                                                                +
                       "Node Type": "Sort",                                                                                           +
                       "Parent Relationship": "Outer",                                                                                +
                       "Parallel Aware": false,                                                                                       +
                       "Startup Cost": 30853.86,                                                                                      +
                       "Total Cost": 30853.86,                                                                                        +
                       "Plan Rows": 8,                                                                                                +
                       "Plan Width": 25,                                                                                              +
                       "Actual Startup Time": 16535.899,                                                                              +
                       "Actual Total Time": 16535.907,                                                                                +
                       "Actual Rows": 112,                                                                                            +
                       "Actual Loops": 1,                                                                                             +
                       "Sort Key": ["mc.company_type_id"],                                                                            +
                       "Sort Method": "quicksort",                                                                                    +
                       "Sort Space Used": 33,                                                                                         +
                       "Sort Space Type": "Memory",                                                                                   +
                       "Shared Hit Blocks": 11,                                                                                       +
                       "Shared Read Blocks": 310425,                                                                                  +
                       "Shared Dirtied Blocks": 0,                                                                                    +
                       "Shared Written Blocks": 0,                                                                                    +
                       "Local Hit Blocks": 0,                                                                                         +
                       "Local Read Blocks": 0,                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                     +
                       "Local Written Blocks": 0,                                                                                     +
                       "Temp Read Blocks": 0,                                                                                         +
                       "Temp Written Blocks": 0,                                                                                      +
                       "Plans": [                                                                                                     +
                         {                                                                                                            +
                           "Node Type": "Merge Join",                                                                                 +
                           "Parent Relationship": "Outer",                                                                            +
                           "Parallel Aware": false,                                                                                   +
                           "Join Type": "Inner",                                                                                      +
                           "Startup Cost": 30853.43,                                                                                  +
                           "Total Cost": 30853.86,                                                                                    +
                           "Plan Rows": 8,                                                                                            +
                           "Plan Width": 25,                                                                                          +
                           "Actual Startup Time": 16532.330,                                                                          +
                           "Actual Total Time": 16535.846,                                                                            +
                           "Actual Rows": 112,                                                                                        +
                           "Actual Loops": 1,                                                                                         +
                           "Inner Unique": true,                                                                                      +
                           "Merge Cond": "(mc.company_id = cn.id)",                                                                   +
                           "Shared Hit Blocks": 11,                                                                                   +
                           "Shared Read Blocks": 310425,                                                                              +
                           "Shared Dirtied Blocks": 0,                                                                                +
                           "Shared Written Blocks": 0,                                                                                +
                           "Local Hit Blocks": 0,                                                                                     +
                           "Local Read Blocks": 0,                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                 +
                           "Local Written Blocks": 0,                                                                                 +
                           "Temp Read Blocks": 0,                                                                                     +
                           "Temp Written Blocks": 0,                                                                                  +
                           "Plans": [                                                                                                 +
                             {                                                                                                        +
                               "Node Type": "Sort",                                                                                   +
                               "Parent Relationship": "Outer",                                                                        +
                               "Parallel Aware": false,                                                                               +
                               "Startup Cost": 30722.82,                                                                              +
                               "Total Cost": 30722.93,                                                                                +
                               "Plan Rows": 1400,                                                                                     +
                               "Plan Width": 29,                                                                                      +
                               "Actual Startup Time": 16378.790,                                                                      +
                               "Actual Total Time": 16380.903,                                                                        +
                               "Actual Rows": 14489,                                                                                  +
                               "Actual Loops": 1,                                                                                     +
                               "Sort Key": ["mc.company_id"],                                                                         +
                               "Sort Method": "quicksort",                                                                            +
                               "Sort Space Used": 1548,                                                                               +
                               "Sort Space Type": "Memory",                                                                           +
                               "Shared Hit Blocks": 9,                                                                                +
                               "Shared Read Blocks": 307433,                                                                          +
                               "Shared Dirtied Blocks": 0,                                                                            +
                               "Shared Written Blocks": 0,                                                                            +
                               "Local Hit Blocks": 0,                                                                                 +
                               "Local Read Blocks": 0,                                                                                +
                               "Local Dirtied Blocks": 0,                                                                             +
                               "Local Written Blocks": 0,                                                                             +
                               "Temp Read Blocks": 0,                                                                                 +
                               "Temp Written Blocks": 0,                                                                              +
                               "Plans": [                                                                                             +
                                 {                                                                                                    +
                                   "Node Type": "Merge Join",                                                                         +
                                   "Parent Relationship": "Outer",                                                                    +
                                   "Parallel Aware": false,                                                                           +
                                   "Join Type": "Inner",                                                                              +
                                   "Startup Cost": 30158.04,                                                                          +
                                   "Total Cost": 30720.55,                                                                            +
                                   "Plan Rows": 1400,                                                                                 +
                                   "Plan Width": 29,                                                                                  +
                                   "Actual Startup Time": 15707.707,                                                                  +
                                   "Actual Total Time": 16373.682,                                                                    +
                                   "Actual Rows": 14489,                                                                              +
                                   "Actual Loops": 1,                                                                                 +
                                   "Inner Unique": false,                                                                             +
                                   "Merge Cond": "(t.id = mc.movie_id)",                                                              +
                                   "Shared Hit Blocks": 9,                                                                            +
                                   "Shared Read Blocks": 307433,                                                                      +
                                   "Shared Dirtied Blocks": 0,                                                                        +
                                   "Shared Written Blocks": 0,                                                                        +
                                   "Local Hit Blocks": 0,                                                                             +
                                   "Local Read Blocks": 0,                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                         +
                                   "Local Written Blocks": 0,                                                                         +
                                   "Temp Read Blocks": 0,                                                                             +
                                   "Temp Written Blocks": 0,                                                                          +
                                   "Plans": [                                                                                         +
                                     {                                                                                                +
                                       "Node Type": "Merge Join",                                                                     +
                                       "Parent Relationship": "Outer",                                                                +
                                       "Parallel Aware": false,                                                                       +
                                       "Join Type": "Inner",                                                                          +
                                       "Startup Cost": 20752.59,                                                                      +
                                       "Total Cost": 20910.06,                                                                        +
                                       "Plan Rows": 729,                                                                              +
                                       "Plan Width": 29,                                                                              +
                                       "Actual Startup Time": 14199.102,                                                              +
                                       "Actual Total Time": 14473.710,                                                                +
                                       "Actual Rows": 5288,                                                                           +
                                       "Actual Loops": 1,                                                                             +
                                       "Inner Unique": true,                                                                          +
                                       "Merge Cond": "(ci.movie_id = t.id)",                                                          +
                                       "Shared Hit Blocks": 6,                                                                        +
                                       "Shared Read Blocks": 288647,                                                                  +
                                       "Shared Dirtied Blocks": 0,                                                                    +
                                       "Shared Written Blocks": 0,                                                                    +
                                       "Local Hit Blocks": 0,                                                                         +
                                       "Local Read Blocks": 0,                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                     +
                                       "Local Written Blocks": 0,                                                                     +
                                       "Temp Read Blocks": 0,                                                                         +
                                       "Temp Written Blocks": 0,                                                                      +
                                       "Plans": [                                                                                     +
                                         {                                                                                            +
                                           "Node Type": "Sort",                                                                       +
                                           "Parent Relationship": "Outer",                                                            +
                                           "Parallel Aware": false,                                                                   +
                                           "Startup Cost": 16114.47,                                                                  +
                                           "Total Cost": 16114.61,                                                                    +
                                           "Plan Rows": 1819,                                                                         +
                                           "Plan Width": 8,                                                                           +
                                           "Actual Startup Time": 12263.045,                                                          +
                                           "Actual Total Time": 12265.768,                                                            +
                                           "Actual Rows": 25874,                                                                      +
                                           "Actual Loops": 1,                                                                         +
                                           "Sort Key": ["ci.movie_id"],                                                               +
                                           "Sort Method": "quicksort",                                                                +
                                           "Sort Space Used": 1981,                                                                   +
                                           "Sort Space Type": "Memory",                                                               +
                                           "Shared Hit Blocks": 5,                                                                    +
                                           "Shared Read Blocks": 252650,                                                              +
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
                                               "Startup Cost": 16107.89,                                                              +
                                               "Total Cost": 16111.41,                                                                +
                                               "Plan Rows": 1819,                                                                     +
                                               "Plan Width": 8,                                                                       +
                                               "Actual Startup Time": 12239.995,                                                      +
                                               "Actual Total Time": 12251.327,                                                        +
                                               "Actual Rows": 25874,                                                                  +
                                               "Actual Loops": 1,                                                                     +
                                               "Inner Unique": true,                                                                  +
                                               "Merge Cond": "(ci.role_id = rt.id)",                                                  +
                                               "Shared Hit Blocks": 5,                                                                +
                                               "Shared Read Blocks": 252650,                                                          +
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
                                                   "Startup Cost": 16107.86,                                                          +
                                                   "Total Cost": 16109.55,                                                            +
                                                   "Plan Rows": 21830,                                                                +
                                                   "Plan Width": 12,                                                                  +
                                                   "Actual Startup Time": 12239.956,                                                  +
                                                   "Actual Total Time": 12242.051,                                                    +
                                                   "Actual Rows": 25875,                                                              +
                                                   "Actual Loops": 1,                                                                 +
                                                   "Sort Key": ["ci.role_id"],                                                        +
                                                   "Sort Method": "quicksort",                                                        +
                                                   "Sort Space Used": 2282,                                                           +
                                                   "Sort Space Type": "Memory",                                                       +
                                                   "Shared Hit Blocks": 4,                                                            +
                                                   "Shared Read Blocks": 252650,                                                      +
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
                                                       "Relation Name": "cast_info",                                                  +
                                                       "Alias": "ci",                                                                 +
                                                       "Startup Cost": 0.00,                                                          +
                                                       "Total Cost": 16059.00,                                                        +
                                                       "Plan Rows": 21830,                                                            +
                                                       "Plan Width": 12,                                                              +
                                                       "Actual Startup Time": 0.674,                                                  +
                                                       "Actual Total Time": 12208.815,                                                +
                                                       "Actual Rows": 32288,                                                          +
                                                       "Actual Loops": 1,                                                             +
                                                       "Filter": "((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))",+
                                                       "Rows Removed by Filter": 36212056,                                            +
                                                       "Shared Hit Blocks": 4,                                                        +
                                                       "Shared Read Blocks": 252650,                                                  +
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
                                                 },                                                                                   +
                                                 {                                                                                    +
                                                   "Node Type": "Sort",                                                               +
                                                   "Parent Relationship": "Inner",                                                    +
                                                   "Parallel Aware": false,                                                           +
                                                   "Startup Cost": 0.03,                                                              +
                                                   "Total Cost": 0.03,                                                                +
                                                   "Plan Rows": 1,                                                                    +
                                                   "Plan Width": 4,                                                                   +
                                                   "Actual Startup Time": 0.026,                                                      +
                                                   "Actual Total Time": 0.027,                                                        +
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
                                                       "Plan Rows": 1,                                                                +
                                                       "Plan Width": 4,                                                               +
                                                       "Actual Startup Time": 0.012,                                                  +
                                                       "Actual Total Time": 0.015,                                                    +
                                                       "Actual Rows": 1,                                                              +
                                                       "Actual Loops": 1,                                                             +
                                                       "Filter": "((role)::text = 'actor'::text)",                                    +
                                                       "Rows Removed by Filter": 11,                                                  +
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
                                         {                                                                                            +
                                           "Node Type": "Sort",                                                                       +
                                           "Parent Relationship": "Inner",                                                            +
                                           "Parallel Aware": false,                                                                   +
                                           "Startup Cost": 4638.12,                                                                   +
                                           "Total Cost": 4716.76,                                                                     +
                                           "Plan Rows": 1012920,                                                                      +
                                           "Plan Width": 21,                                                                          +
                                           "Actual Startup Time": 1935.959,                                                           +
                                           "Actual Total Time": 2062.947,                                                             +
                                           "Actual Rows": 1012556,                                                                    +
                                           "Actual Loops": 1,                                                                         +
                                           "Sort Key": ["t.id"],                                                                      +
                                           "Sort Method": "quicksort",                                                                +
                                           "Sort Space Used": 94802,                                                                  +
                                           "Sort Space Type": "Memory",                                                               +
                                           "Shared Hit Blocks": 1,                                                                    +
                                           "Shared Read Blocks": 35997,                                                               +
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
                                               "Node Type": "Seq Scan",                                                               +
                                               "Parent Relationship": "Outer",                                                        +
                                               "Parallel Aware": false,                                                               +
                                               "Relation Name": "title",                                                              +
                                               "Alias": "t",                                                                          +
                                               "Startup Cost": 0.00,                                                                  +
                                               "Total Cost": 1500.26,                                                                 +
                                               "Plan Rows": 1012920,                                                                  +
                                               "Plan Width": 21,                                                                      +
                                               "Actual Startup Time": 7.746,                                                          +
                                               "Actual Total Time": 1336.419,                                                         +
                                               "Actual Rows": 1012920,                                                                +
                                               "Actual Loops": 1,                                                                     +
                                               "Filter": "(production_year > 2005)",                                                  +
                                               "Rows Removed by Filter": 1515392,                                                     +
                                               "Shared Hit Blocks": 1,                                                                +
                                               "Shared Read Blocks": 35997,                                                           +
                                               "Shared Dirtied Blocks": 0,                                                            +
                                               "Shared Written Blocks": 0,                                                            +
                                               "Local Hit Blocks": 0,                                                                 +
                                               "Local Read Blocks": 0,                                                                +
                                               "Local Dirtied Blocks": 0,                                                             +
                                               "Local Written Blocks": 0,                                                             +
                                               "Temp Read Blocks": 0,                                                                 +
                                               "Temp Written Blocks": 0                                                               +
                                             }                                                                                        +
                                           ]                                                                                          +
                                         }                                                                                            +
                                       ]                                                                                              +
                                     },                                                                                               +
                                     {                                                                                                +
                                       "Node Type": "Sort",                                                                           +
                                       "Parent Relationship": "Inner",                                                                +
                                       "Parallel Aware": false,                                                                       +
                                       "Startup Cost": 9405.45,                                                                       +
                                       "Total Cost": 9608.03,                                                                         +
                                       "Plan Rows": 2609129,                                                                          +
                                       "Plan Width": 12,                                                                              +
                                       "Actual Startup Time": 1508.522,                                                               +
                                       "Actual Total Time": 1638.198,                                                                 +
                                       "Actual Rows": 2609382,                                                                        +
                                       "Actual Loops": 1,                                                                             +
                                       "Sort Key": ["mc.movie_id"],                                                                   +
                                       "Sort Method": "quicksort",                                                                    +
                                       "Sort Space Used": 220607,                                                                     +
                                       "Sort Space Type": "Memory",                                                                   +
                                       "Shared Hit Blocks": 3,                                                                        +
                                       "Shared Read Blocks": 18786,                                                                   +
                                       "Shared Dirtied Blocks": 0,                                                                    +
                                       "Shared Written Blocks": 0,                                                                    +
                                       "Local Hit Blocks": 0,                                                                         +
                                       "Local Read Blocks": 0,                                                                        +
                                       "Local Dirtied Blocks": 0,                                                                     +
                                       "Local Written Blocks": 0,                                                                     +
                                       "Temp Read Blocks": 0,                                                                         +
                                       "Temp Written Blocks": 0,                                                                      +
                                       "Plans": [                                                                                     +
                                         {                                                                                            +
                                           "Node Type": "Seq Scan",                                                                   +
                                           "Parent Relationship": "Outer",                                                            +
                                           "Parallel Aware": false,                                                                   +
                                           "Relation Name": "movie_companies",                                                        +
                                           "Alias": "mc",                                                                             +
                                           "Startup Cost": 0.00,                                                                      +
                                           "Total Cost": 769.75,                                                                      +
                                           "Plan Rows": 2609129,                                                                      +
                                           "Plan Width": 12,                                                                          +
                                           "Actual Startup Time": 0.012,                                                              +
                                           "Actual Total Time": 546.720,                                                              +
                                           "Actual Rows": 2609129,                                                                    +
                                           "Actual Loops": 1,                                                                         +
                                           "Shared Hit Blocks": 3,                                                                    +
                                           "Shared Read Blocks": 18786,                                                               +
                                           "Shared Dirtied Blocks": 0,                                                                +
                                           "Shared Written Blocks": 0,                                                                +
                                           "Local Hit Blocks": 0,                                                                     +
                                           "Local Read Blocks": 0,                                                                    +
                                           "Local Dirtied Blocks": 0,                                                                 +
                                           "Local Written Blocks": 0,                                                                 +
                                           "Temp Read Blocks": 0,                                                                     +
                                           "Temp Written Blocks": 0                                                                   +
                                         }                                                                                            +
                                       ]                                                                                              +
                                     }                                                                                                +
                                   ]                                                                                                  +
                                 }                                                                                                    +
                               ]                                                                                                      +
                             },                                                                                                       +
                             {                                                                                                        +
                               "Node Type": "Sort",                                                                                   +
                               "Parent Relationship": "Inner",                                                                        +
                               "Parallel Aware": false,                                                                               +
                               "Startup Cost": 130.61,                                                                                +
                               "Total Cost": 130.71,                                                                                  +
                               "Plan Rows": 1361,                                                                                     +
                               "Plan Width": 4,                                                                                       +
                               "Actual Startup Time": 152.253,                                                                        +
                               "Actual Total Time": 152.400,                                                                          +
                               "Actual Rows": 1361,                                                                                   +
                               "Actual Loops": 1,                                                                                     +
                               "Sort Key": ["cn.id"],                                                                                 +
                               "Sort Method": "quicksort",                                                                            +
                               "Sort Space Used": 112,                                                                                +
                               "Sort Space Type": "Memory",                                                                           +
                               "Shared Hit Blocks": 2,                                                                                +
                               "Shared Read Blocks": 2992,                                                                            +
                               "Shared Dirtied Blocks": 0,                                                                            +
                               "Shared Written Blocks": 0,                                                                            +
                               "Local Hit Blocks": 0,                                                                                 +
                               "Local Read Blocks": 0,                                                                                +
                               "Local Dirtied Blocks": 0,                                                                             +
                               "Local Written Blocks": 0,                                                                             +
                               "Temp Read Blocks": 0,                                                                                 +
                               "Temp Written Blocks": 0,                                                                              +
                               "Plans": [                                                                                             +
                                 {                                                                                                    +
                                   "Node Type": "Seq Scan",                                                                           +
                                   "Parent Relationship": "Outer",                                                                    +
                                   "Parallel Aware": false,                                                                           +
                                   "Relation Name": "company_name",                                                                   +
                                   "Alias": "cn",                                                                                     +
                                   "Startup Cost": 0.00,                                                                              +
                                   "Total Cost": 128.41,                                                                              +
                                   "Plan Rows": 1361,                                                                                 +
                                   "Plan Width": 4,                                                                                   +
                                   "Actual Startup Time": 16.494,                                                                     +
                                   "Actual Total Time": 151.340,                                                                      +
                                   "Actual Rows": 1361,                                                                               +
                                   "Actual Loops": 1,                                                                                 +
                                   "Filter": "((country_code)::text = '[ru]'::text)",                                                 +
                                   "Rows Removed by Filter": 233636,                                                                  +
                                   "Shared Hit Blocks": 2,                                                                            +
                                   "Shared Read Blocks": 2992,                                                                        +
                                   "Shared Dirtied Blocks": 0,                                                                        +
                                   "Shared Written Blocks": 0,                                                                        +
                                   "Local Hit Blocks": 0,                                                                             +
                                   "Local Read Blocks": 0,                                                                            +
                                   "Local Dirtied Blocks": 0,                                                                         +
                                   "Local Written Blocks": 0,                                                                         +
                                   "Temp Read Blocks": 0,                                                                             +
                                   "Temp Written Blocks": 0                                                                           +
                                 }                                                                                                    +
                               ]                                                                                                      +
                             }                                                                                                        +
                           ]                                                                                                          +
                         }                                                                                                            +
                       ]                                                                                                              +
                     },                                                                                                               +
                     {                                                                                                                +
                       "Node Type": "Sort",                                                                                           +
                       "Parent Relationship": "Inner",                                                                                +
                       "Parallel Aware": false,                                                                                       +
                       "Startup Cost": 0.03,                                                                                          +
                       "Total Cost": 0.03,                                                                                            +
                       "Plan Rows": 4,                                                                                                +
                       "Plan Width": 4,                                                                                               +
                       "Actual Startup Time": 0.017,                                                                                  +
                       "Actual Total Time": 0.017,                                                                                    +
                       "Actual Rows": 2,                                                                                              +
                       "Actual Loops": 1,                                                                                             +
                       "Sort Key": ["ct.id"],                                                                                         +
                       "Sort Method": "quicksort",                                                                                    +
                       "Sort Space Used": 25,                                                                                         +
                       "Sort Space Type": "Memory",                                                                                   +
                       "Shared Hit Blocks": 1,                                                                                        +
                       "Shared Read Blocks": 0,                                                                                       +
                       "Shared Dirtied Blocks": 0,                                                                                    +
                       "Shared Written Blocks": 0,                                                                                    +
                       "Local Hit Blocks": 0,                                                                                         +
                       "Local Read Blocks": 0,                                                                                        +
                       "Local Dirtied Blocks": 0,                                                                                     +
                       "Local Written Blocks": 0,                                                                                     +
                       "Temp Read Blocks": 0,                                                                                         +
                       "Temp Written Blocks": 0,                                                                                      +
                       "Plans": [                                                                                                     +
                         {                                                                                                            +
                           "Node Type": "Seq Scan",                                                                                   +
                           "Parent Relationship": "Outer",                                                                            +
                           "Parallel Aware": false,                                                                                   +
                           "Relation Name": "company_type",                                                                           +
                           "Alias": "ct",                                                                                             +
                           "Startup Cost": 0.00,                                                                                      +
                           "Total Cost": 0.03,                                                                                        +
                           "Plan Rows": 4,                                                                                            +
                           "Plan Width": 4,                                                                                           +
                           "Actual Startup Time": 0.008,                                                                              +
                           "Actual Total Time": 0.010,                                                                                +
                           "Actual Rows": 4,                                                                                          +
                           "Actual Loops": 1,                                                                                         +
                           "Shared Hit Blocks": 1,                                                                                    +
                           "Shared Read Blocks": 0,                                                                                   +
                           "Shared Dirtied Blocks": 0,                                                                                +
                           "Shared Written Blocks": 0,                                                                                +
                           "Local Hit Blocks": 0,                                                                                     +
                           "Local Read Blocks": 0,                                                                                    +
                           "Local Dirtied Blocks": 0,                                                                                 +
                           "Local Written Blocks": 0,                                                                                 +
                           "Temp Read Blocks": 0,                                                                                     +
                           "Temp Written Blocks": 0                                                                                   +
                         }                                                                                                            +
                       ]                                                                                                              +
                     }                                                                                                                +
                   ]                                                                                                                  +
                 }                                                                                                                    +
               ]                                                                                                                      +
             },                                                                                                                       +
             {                                                                                                                        +
               "Node Type": "Sort",                                                                                                   +
               "Parent Relationship": "Inner",                                                                                        +
               "Parallel Aware": false,                                                                                               +
               "Startup Cost": 11884.63,                                                                                              +
               "Total Cost": 12128.45,                                                                                                +
               "Plan Rows": 3140339,                                                                                                  +
               "Plan Width": 20,                                                                                                      +
               "Actual Startup Time": 2585.690,                                                                                       +
               "Actual Total Time": 2839.785,                                                                                         +
               "Actual Rows": 2077053,                                                                                                +
               "Actual Loops": 1,                                                                                                     +
               "Sort Key": ["chn.id"],                                                                                                +
               "Sort Method": "quicksort",                                                                                            +
               "Sort Space Used": 318833,                                                                                             +
               "Sort Space Type": "Memory",                                                                                           +
               "Shared Hit Blocks": 2,                                                                                                +
               "Shared Read Blocks": 36445,                                                                                           +
               "Shared Dirtied Blocks": 0,                                                                                            +
               "Shared Written Blocks": 0,                                                                                            +
               "Local Hit Blocks": 0,                                                                                                 +
               "Local Read Blocks": 0,                                                                                                +
               "Local Dirtied Blocks": 0,                                                                                             +
               "Local Written Blocks": 0,                                                                                             +
               "Temp Read Blocks": 0,                                                                                                 +
               "Temp Written Blocks": 0,                                                                                              +
               "Plans": [                                                                                                             +
                 {                                                                                                                    +
                   "Node Type": "Seq Scan",                                                                                           +
                   "Parent Relationship": "Outer",                                                                                    +
                   "Parallel Aware": false,                                                                                           +
                   "Relation Name": "char_name",                                                                                      +
                   "Alias": "chn",                                                                                                    +
                   "Startup Cost": 0.00,                                                                                              +
                   "Total Cost": 1360.36,                                                                                             +
                   "Plan Rows": 3140339,                                                                                              +
                   "Plan Width": 20,                                                                                                  +
                   "Actual Startup Time": 4.718,                                                                                      +
                   "Actual Total Time": 1059.284,                                                                                     +
                   "Actual Rows": 3140339,                                                                                            +
                   "Actual Loops": 1,                                                                                                 +
                   "Shared Hit Blocks": 2,                                                                                            +
                   "Shared Read Blocks": 36445,                                                                                       +
                   "Shared Dirtied Blocks": 0,                                                                                        +
                   "Shared Written Blocks": 0,                                                                                        +
                   "Local Hit Blocks": 0,                                                                                             +
                   "Local Read Blocks": 0,                                                                                            +
                   "Local Dirtied Blocks": 0,                                                                                         +
                   "Local Written Blocks": 0,                                                                                         +
                   "Temp Read Blocks": 0,                                                                                             +
                   "Temp Written Blocks": 0                                                                                           +
                 }                                                                                                                    +
               ]                                                                                                                      +
             }                                                                                                                        +
           ]                                                                                                                          +
         }                                                                                                                            +
       ]                                                                                                                              +
     },                                                                                                                               +
     "Planning Time": 2806.756,                                                                                                       +
     "Triggers": [                                                                                                                    +
     ],                                                                                                                               +
     "Execution Time": 19714.009                                                                                                      +
   }                                                                                                                                  +
 ]
(1 row)

