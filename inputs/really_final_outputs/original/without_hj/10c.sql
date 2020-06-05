                                        QUERY PLAN                                         
-------------------------------------------------------------------------------------------
 [                                                                                        +
   {                                                                                      +
     "Plan": {                                                                            +
       "Node Type": "Aggregate",                                                          +
       "Strategy": "Plain",                                                               +
       "Partial Mode": "Simple",                                                          +
       "Parallel Aware": false,                                                           +
       "Startup Cost": 54328.97,                                                          +
       "Total Cost": 54328.97,                                                            +
       "Plan Rows": 1,                                                                    +
       "Plan Width": 64,                                                                  +
       "Actual Startup Time": 19304.348,                                                  +
       "Actual Total Time": 19304.348,                                                    +
       "Actual Rows": 1,                                                                  +
       "Actual Loops": 1,                                                                 +
       "Shared Hit Blocks": 18,                                                           +
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
           "Node Type": "Nested Loop",                                                    +
           "Parent Relationship": "Outer",                                                +
           "Parallel Aware": false,                                                       +
           "Join Type": "Inner",                                                          +
           "Startup Cost": 53010.67,                                                      +
           "Total Cost": 54277.28,                                                        +
           "Plan Rows": 332865,                                                           +
           "Plan Width": 33,                                                              +
           "Actual Startup Time": 19292.408,                                              +
           "Actual Total Time": 19304.289,                                                +
           "Actual Rows": 10,                                                             +
           "Actual Loops": 1,                                                             +
           "Inner Unique": true,                                                          +
           "Join Filter": "(ci.role_id = rt.id)",                                         +
           "Rows Removed by Join Filter": 0,                                              +
           "Shared Hit Blocks": 18,                                                       +
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
               "Node Type": "Nested Loop",                                                +
               "Parent Relationship": "Outer",                                            +
               "Parallel Aware": false,                                                   +
               "Join Type": "Inner",                                                      +
               "Startup Cost": 53010.67,                                                  +
               "Total Cost": 53444.04,                                                    +
               "Plan Rows": 332865,                                                       +
               "Plan Width": 37,                                                          +
               "Actual Startup Time": 19292.400,                                          +
               "Actual Total Time": 19304.277,                                            +
               "Actual Rows": 10,                                                         +
               "Actual Loops": 1,                                                         +
               "Inner Unique": true,                                                      +
               "Join Filter": "(mc.company_type_id = ct.id)",                             +
               "Rows Removed by Join Filter": 4,                                          +
               "Shared Hit Blocks": 17,                                                   +
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
                   "Actual Startup Time": 19292.384,                                      +
                   "Actual Total Time": 19304.254,                                        +
                   "Actual Rows": 10,                                                     +
                   "Actual Loops": 1,                                                     +
                   "Inner Unique": true,                                                  +
                   "Merge Cond": "(mc.company_id = cn.id)",                               +
                   "Shared Hit Blocks": 16,                                               +
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
                       "Actual Startup Time": 19125.290,                                  +
                       "Actual Total Time": 19125.294,                                    +
                       "Actual Rows": 23,                                                 +
                       "Actual Loops": 1,                                                 +
                       "Sort Key": ["mc.company_id"],                                     +
                       "Sort Method": "quicksort",                                        +
                       "Sort Space Used": 27,                                             +
                       "Sort Space Type": "Memory",                                       +
                       "Shared Hit Blocks": 14,                                           +
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
                           "Actual Startup Time": 18874.390,                              +
                           "Actual Total Time": 19125.198,                                +
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
                               "Actual Startup Time": 17221.385,                          +
                               "Actual Total Time": 17343.134,                            +
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
                                   "Actual Startup Time": 14785.974,                      +
                                   "Actual Total Time": 14785.978,                        +
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
                                       "Actual Startup Time": 14555.821,                  +
                                       "Actual Total Time": 14785.956,                    +
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
                                           "Actual Startup Time": 2593.669,               +
                                           "Actual Total Time": 2703.156,                 +
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
                                               "Actual Startup Time": 24.996,             +
                                               "Actual Total Time": 1082.422,             +
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
                                           "Actual Startup Time": 11962.141,              +
                                           "Actual Total Time": 11962.144,                +
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
                                               "Actual Startup Time": 903.815,            +
                                               "Actual Total Time": 11663.950,            +
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
                                   "Actual Startup Time": 2111.956,                       +
                                   "Actual Total Time": 2319.690,                         +
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
                                       "Actual Startup Time": 9.701,                      +
                                       "Actual Total Time": 1179.462,                     +
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
                               "Actual Startup Time": 1507.694,                           +
                               "Actual Total Time": 1595.855,                             +
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
                                   "Actual Startup Time": 0.013,                          +
                                   "Actual Total Time": 546.176,                          +
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
                       "Actual Startup Time": 166.955,                                    +
                       "Actual Total Time": 172.714,                                      +
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
                           "Actual Startup Time": 11.585,                                 +
                           "Actual Total Time": 123.814,                                  +
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
                 },                                                                       +
                 {                                                                        +
                   "Node Type": "Materialize",                                            +
                   "Parent Relationship": "Inner",                                        +
                   "Parallel Aware": false,                                               +
                   "Startup Cost": 0.00,                                                  +
                   "Total Cost": 0.03,                                                    +
                   "Plan Rows": 4,                                                        +
                   "Plan Width": 4,                                                       +
                   "Actual Startup Time": 0.001,                                          +
                   "Actual Total Time": 0.001,                                            +
                   "Actual Rows": 1,                                                      +
                   "Actual Loops": 10,                                                    +
                   "Shared Hit Blocks": 1,                                                +
                   "Shared Read Blocks": 0,                                               +
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
                       "Node Type": "Seq Scan",                                           +
                       "Parent Relationship": "Outer",                                    +
                       "Parallel Aware": false,                                           +
                       "Relation Name": "company_type",                                   +
                       "Alias": "ct",                                                     +
                       "Startup Cost": 0.00,                                              +
                       "Total Cost": 0.03,                                                +
                       "Plan Rows": 4,                                                    +
                       "Plan Width": 4,                                                   +
                       "Actual Startup Time": 0.005,                                      +
                       "Actual Total Time": 0.006,                                        +
                       "Actual Rows": 2,                                                  +
                       "Actual Loops": 1,                                                 +
                       "Shared Hit Blocks": 1,                                            +
                       "Shared Read Blocks": 0,                                           +
                       "Shared Dirtied Blocks": 0,                                        +
                       "Shared Written Blocks": 0,                                        +
                       "Local Hit Blocks": 0,                                             +
                       "Local Read Blocks": 0,                                            +
                       "Local Dirtied Blocks": 0,                                         +
                       "Local Written Blocks": 0,                                         +
                       "Temp Read Blocks": 0,                                             +
                       "Temp Written Blocks": 0                                           +
                     }                                                                    +
                   ]                                                                      +
                 }                                                                        +
               ]                                                                          +
             },                                                                           +
             {                                                                            +
               "Node Type": "Materialize",                                                +
               "Parent Relationship": "Inner",                                            +
               "Parallel Aware": false,                                                   +
               "Startup Cost": 0.00,                                                      +
               "Total Cost": 0.03,                                                        +
               "Plan Rows": 12,                                                           +
               "Plan Width": 4,                                                           +
               "Actual Startup Time": 0.000,                                              +
               "Actual Total Time": 0.001,                                                +
               "Actual Rows": 1,                                                          +
               "Actual Loops": 10,                                                        +
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
                   "Relation Name": "role_type",                                          +
                   "Alias": "rt",                                                         +
                   "Startup Cost": 0.00,                                                  +
                   "Total Cost": 0.03,                                                    +
                   "Plan Rows": 12,                                                       +
                   "Plan Width": 4,                                                       +
                   "Actual Startup Time": 0.003,                                          +
                   "Actual Total Time": 0.003,                                            +
                   "Actual Rows": 1,                                                      +
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
     "Planning Time": 2820.775,                                                           +
     "Triggers": [                                                                        +
     ],                                                                                   +
     "Execution Time": 19367.553                                                          +
   }                                                                                      +
 ]
(1 row)

